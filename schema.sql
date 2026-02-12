CREATE DATABASE finance_tracker;
USE finance_tracker;

CREATE TABLE categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    type ENUM('Income', 'Expense') NOT NULL
);