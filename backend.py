import sqlite3

try:
    sqliteConnection = sqlite3.connect('journeys.db')

    cursor = sqliteConnection.cursor()

    with open(r'E:\autobusy\autobusy-backend\queries.sql', 'r') as queries:
        sql_script = queries.read()

    # cursor.executescript(sql_script)

    print("Scripts successfully executed")

    cursor.execute(
        "")

    rows = cursor.fetchall()

    for row in rows:
        print(row[0])

    sqliteConnection.commit()

    cursor.close()

except sqlite3.Error as error:
    print("Error while connecting to sqlite", error)
finally:
    if (sqliteConnection):
        sqliteConnection.close()
        print("The SQLite connection is closed")

