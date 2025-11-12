-- Use the target database
USE alx_book_store;

-- Create AUTHORS table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT NOT NULL PRIMARY KEY,
    author_name_NAME VARCHAR(215) NOT NULL
);

-- Create BOOKS table
CREATE TABLE IF NOT EXISTS Books (
    BOOK_ID INT NOT NULL PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    AUTHOR_ID INT NOT NULL,
    price DOUBLE NOT NULL,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

-- Create CUSTOMERS table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT NOT NULL PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

-- Create ORDERS table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create ORDER_DETAILS table
CREATE TABLE IF NOT EXISTS Order_Details (
    ORDERDETAILID INT NOT NULL PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
