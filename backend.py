import sqlite3
import os


DB_FILENAME = 'journeys.db'


def clear_old_db_file():
    if os.path.exists(DB_FILENAME):
        os.remove(DB_FILENAME)


def read_init_script():
    with open(r'queries.sql', 'r') as queries:
        return queries.read()


def init_database(sqliteConnection):
    try:
        init_script = read_init_script()

        cursor = sqliteConnection.cursor()
        cursor.executescript(init_script)        
        sqliteConnection.commit()
    except Exception as e:
        print('There was an error during the db initializaiton!', e)
        # code != 0 means failure
        exit(1)


def fetch_hours(cursor, stop_from_name, stop_to_name):
    cursor.execute(
        '''SELECT T.TIME FROM TIMETABLE T
             JOIN STOP S1 ON T.STOP_ID = S1.ID 
             JOIN STOP S2 ON S2.ROUTE_ID = S1.ROUTE_ID 
             WHERE S1.STOP_NAME = ? 
             AND S2.STOP_NAME = ? ORDER BY T.TIME ASC''', 
        (stop_from_name, stop_to_name))  # '?'s protect from sql injection.
    return cursor.fetchall()


def display_hours(hours):
    print('Departures: ' + ', '.join(map(lambda h: h[0], hours)))
    


if __name__ == '__main__':  
    try:
        clear_old_db_file()

        sqliteConnection = sqlite3.connect(DB_FILENAME)

        init_database(sqliteConnection)

        cursor = sqliteConnection.cursor()
        hours = fetch_hours(cursor, 'Smolajny', 'Dobre Miasto')

        display_hours(hours)
    finally:
        if (sqliteConnection):
            sqliteConnection.close()
