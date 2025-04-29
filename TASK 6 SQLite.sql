CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    product_id INTEGER,
    amount DECIMAL(10,2)
);

INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1, '2024-01-05', 101, 150.0),
(2, '2024-01-20', 102, 200.0),
(3, '2024-02-02', 103, 300.0),
(4, '2024-02-15', 104, 250.0),
(5, '2024-03-01', 105, 400.0),
(6, '2024-03-25', 106, 350.0),
(7, '2024-04-10', 107, 500.0),
(8, '2024-04-20', 108, 450.0);

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;
