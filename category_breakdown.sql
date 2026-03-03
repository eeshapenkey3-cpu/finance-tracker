SELECT 
    c.category_name, 
    SUM(t.amount) AS total_amount,
    (SUM(t.amount) / (SELECT SUM(amount) FROM transactions)) * 100 AS percentage
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
WHERE c.type = 'Expense'
GROUP BY c.category_name;