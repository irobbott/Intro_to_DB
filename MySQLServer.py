import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL Server (without specifying a database initially)
    mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="alx_book_store"
)
    mycursor.mydb.cursor()

    # Create database if it doesn't exist
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    # Close cursor and database connection
    if 'mycursor' in locals():
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
