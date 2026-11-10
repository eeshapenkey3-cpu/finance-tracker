CREATE DATABASE finance_tracker;
USE finance_tracker;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    type ENUM('Income', 'Expense') NOT NULL
    
); 

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    transaction_date DATE NOT NULL,
    description VARCHAR(50) NOT NULL,
    category_id INT,
    store_name VARCHAR(50) NOT NULL, 
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);