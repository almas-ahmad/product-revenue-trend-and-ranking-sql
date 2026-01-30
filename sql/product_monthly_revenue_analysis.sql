 -- Product Revenue Trend & Ranking Analysis
-- Business Goal:
-- 1. Track monthly revenue by product
-- 2. Measure month-over-month revenue change
-- 3. Rank products by revenue performance each month

WITH monthly_revenue AS (
    SELECT
        product_id,
        DATE_TRUNC('month', order_date) AS month,
        SUM(amount) AS revenue
    FROM sales
    GROUP BY product_id, month
)

SELECT
    product_id,
    month,
    revenue,

    -- Month-over-month revenue change
    revenue - LAG(revenue) OVER (
        PARTITION BY product_id
        ORDER BY month
    ) AS revenue_change,

    -- Product ranking by revenue each month
    RANK() OVER (
        PARTITION BY month
        ORDER BY revenue DESC
    ) AS product_rank

FROM monthly_revenue
ORDER BY month, product_rank;
