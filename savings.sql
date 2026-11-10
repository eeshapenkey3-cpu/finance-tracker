SELECT 
((SUM(CASE WHEN c.type = 'Income' THEN t.amount ELSE 0 END) -
SUM(CASE WHEN c.type = 'Expense' THEN t.amount ELSE 0 END))
/ NULLIF(SUM(CASE WHEN c.type = 'Income' THEN t.amount ELSE 0 END), 0)) * 100 AS savings_rate
 FROM transactions t
JOIN categories c ON t.category_id = c.category_id;