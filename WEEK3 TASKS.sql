SELECT *
FROM sales_data
WHERE OrderStatus = 'Shipped';

SELECT *
FROM sales_data
WHERE TotalPrice > 1000 AND OrderStatus = 'Delivered';

SELECT OrderID, Product, TotalPrice
FROM sales_data
ORDER BY TotalPrice DESC;

SELECT COUNT(*) AS total_orders
FROM sales_data;

SELECT Product,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue,
       AVG(TotalPrice) AS avg_order_value
FROM sales_data
GROUP BY Product;

SELECT PaymentMethod,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue
FROM sales_data
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;

SELECT OrderStatus,
       COUNT(*) AS total_orders,
       SUM(TotalPrice) AS total_revenue
FROM sales_data
GROUP BY OrderStatus;


SELECT CouponCode,
       COUNT(*) AS times_used,
       SUM(TotalPrice) AS total_revenue
FROM sales_data
GROUP BY CouponCode
ORDER BY times_used DESC;
