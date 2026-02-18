USE finance_tracker;

INSERT INTO categories (category_name, type) VALUES 
('Salary', 'Income'),
('Freelance', 'Income'),
('Rent', 'Expense'),
('Groceries', 'Expense'),
('Entertainment', 'Expense'),
('Utilities', 'Expense'),
('makeup shopping', 'Expense');

INSERT INTO transactions (amount, transaction_date, description, category_id, store_name) VALUES 
(4500.00, '2024-01-01', 'Monthly Paycheck', 1, 'google'),
(1200.00, '2024-01-02', 'Monthly Rent', 3, 'glenveagh'),
(85.50,   '2024-01-05', 'Grocery Store Run', 4, 'dunnes'),
(120.00,  '2024-01-10', 'Electric Bill', 6, 'airtricity'),
(50.00,   '2024-01-15', 'Movie Night', 5, 'odeon'),
(500.00,  '2024-01-20', 'Side Project Payment', 2, 'alo'),
(65.00,   '2024-01-25', 'Dining Out', 5, 'eddie rockets'),
(50.00, '2026-02-17', 'makeup shopping', 7, 'sephora');