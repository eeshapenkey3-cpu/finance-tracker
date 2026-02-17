-- CREATE DATABASE finance_tracker;
USE finance_tracker;

CREATE TABLE categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name DECIMAL(10,2) NOT NULL,
    type ENUM('Income', 'Expense') NOT NULL
    
);
CREATE TABLE transactions (
	amount VARCHAR(50) NOT NULL,
    transaction_date VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL,
    category_id INT AUTO_INCREMENT PRIMARY KEY
)