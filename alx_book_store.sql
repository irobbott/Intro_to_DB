import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute("""
	CREATE TABLE Authors (
		author_id INT AUTO_INCREMENT PRIMARY KEY,
		author_name VARCHAR(215)
	);
	""")
print("Table created successfully!")

mycursor.execute("""
	CREATE TABLE books (
		book_id INT AUTO_INCREMENT PRIMARY KEY,
		title VARCHAR(130),
		author_id INT,
		price DOUBLE,
		publication_date DATE,
		FOREIGN KEY (author_id) REFERENCES Authors(author_id)
	);
	""")
print("Table created successfully!")

mycursor.execute("""
	CREATE TABLE Customers (
		customer_id INT AUTO_INCREMENT PRIMARY KEY,
		customer_name VARCHAR(215),
		email VARCHAR(215),
		address TEXT
	);
	""")
print("Table created successfully!")

mycursor.execute("""
	CREATE TABLE Orders (
		order_id INT AUTO_INCREMENT PRIMARY KEY,
		customer_id INT,
		order_date DATE,
		FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
	);
	""")
print("Table created successfully!")

mycursor.execute("""
	CREATE TABLE Order_Details (
		orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
		order_id INT,
		book_id INT,
		quantity DOUBLE,
		FOREIGN KEY (order_id) REFERENCES Orders(order_id),
		FOREIGN KEY (book_id) REFERENCES Books(book_id)
	);
	""")
print("Table created successfully!")
	
# Commit the changes
mydb.commit()

# Close the connection
mycursor.close()
mydb.close()
