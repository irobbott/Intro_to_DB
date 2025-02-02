import mysql.connector
mydb = mysql.connector.connect(
	host="localhost",
	user="robbott",
	password="password",
	database="alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute("""
	CREATE TABLE Authors (
		author_id INT AUTP_INCREMENT PRIMARY KEY,
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
		FOREIGN KEY (author_id0 REFERENCES Authors(author_id)
	);
""")
print("Table created successfully!")

mycursor.execute("""
	CREATE TABLE customers (
		customer_id INT AUTP_INCREMENT PRIMARY KEY,
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
	CREATE TABLE Order_details (
		orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
		order_id InT,
		book_id INT,
		quantity DOUBLE,
		FOREIGN KEY (order_id) REFERENCES Orders(order_id),
		FOREIGN KEY (book_id) REFERENCES Books(book_id)
	);
""")
print("Table created successfully!")

mydb.commit()

mycursor.close()
myd.close()
