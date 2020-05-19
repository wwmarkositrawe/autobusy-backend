import sqlite3

try:
    sqliteConnection = sqlite3.connect('journeys.db')

    cursor = sqliteConnection.cursor()


    with open(r'E:\udemy-app\autobusy-backend\queries.sql', 'r') as queries:
        sql_script = queries.read()
   
   
    cursor.executescript(sql_script)
    
    
    print("Scripts successfully executed")




    
    

    sqliteConnection.commit()


    # cursor.execute("SELECT * from route")

    # rows = cursor.fetchall()

    # for row in rows:
    #     print(row[0])

          
    
    cursor.close()

except sqlite3.Error as error:
    print("Error while connecting to sqlite", error)
finally:
    if (sqliteConnection):
        sqliteConnection.close()
        print("The SQLite connection is closed")


