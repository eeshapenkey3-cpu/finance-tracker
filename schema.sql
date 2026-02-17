USE finance_tracker;

INSERT INTO categories (category_name, type) VALUES 
('Salary', 'Income'),
('Freelance', 'Income'),
('Rent', 'Expense'),
('Groceries', 'Expense'),
('Entertainment', 'Expense'),
('Utilities', 'Expense');

-- Note: The numbers at the end (1, 2, 3, etc.) match the category_ids above
INSERT INTO transactions (amount, transaction_date, description, category_id) VALUES 
(4500.00, '2024-01-01', 'Monthly Paycheck', 1),
(1200.00, '2024-01-02', 'Monthly Rent', 3),
(85.50,   '2024-01-05', 'Grocery Store Run', 4),
(120.00,  '2024-01-10', 'Electric Bill', 6),
(50.00,   '2024-01-15', 'Movie Night', 5),
(500.00,  '2024-01-20', 'Side Project Payment', 2),
(65.00,   '2024-01-25', 'Dining Out', 5);