SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(amount) AS total_spent
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
WHERE c.type = 'Expense'
GROUP BY month;