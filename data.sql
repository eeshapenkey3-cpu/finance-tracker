-- CREATE DATABASE finance_tracker;
USE finance_tracker;

USE TABLE categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    type ENUM('Income', 'Expense') NOT NULL
    
);
USE TABLE transactions (
	transaction_id INT AUTO_INCREMENT PRIMARY KEY,
	amount DECIMAL(10,2) NOT NULL,
    transaction_date DATE NOT NULL,
    description VARCHAR(50) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
)