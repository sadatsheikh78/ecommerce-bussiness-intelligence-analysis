SELECT COUNT(*) 
FROM orders;


SELECT 
    ROUND(SUM(sales_amount),2) AS total_revenue,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(sales_amount))*100,2) AS profit_margin_percent
FROM orders;


SELECT 
    DATE_FORMAT(order_date,'%Y-%m') AS month,
    SUM(sales_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;


SELECT 
    p.category,
    ROUND(SUM(o.sales_amount),2) AS revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


SELECT 
    c.customer_name,
    SUM(o.sales_amount) AS revenue
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY revenue DESC
LIMIT 10;


WITH customer_revenue AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        SUM(o.sales_amount) AS revenue
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_id, c.customer_name
),
ranked_customers AS (
    SELECT 
        customer_name,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM customer_revenue
)
SELECT 
    customer_name,
    revenue,
    ROUND((cumulative_revenue / total_revenue) * 100,2) AS cumulative_revenue_percent
FROM ranked_customers;


WITH monthly_revenue AS (
    SELECT 
        DATE_FORMAT(order_date,'%Y-%m') AS month,
        SUM(sales_amount) AS revenue
    FROM orders
    GROUP BY month
)
SELECT 
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month)) * 100,2
    ) AS growth_percent
FROM monthly_revenue;
