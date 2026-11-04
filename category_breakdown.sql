SELECT 
    c.category_name, 
    SUM(t.amount) AS total_amount,
    ROUND(SUM(t.amount) * 100 / SUM(SUM(t.amount)) OVER (), 2) AS percentage
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
WHERE c.type = 'Expense'
GROUP BY c.category_name;