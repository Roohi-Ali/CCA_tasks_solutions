

--task 3) Write an SQL query to find all users who registered in the last 30 days

SELECT * FROM users WHERE DATEDIFF(day, registration_date ,GETDATE()) <= 30;

--------------------------------------------------------------------------------------------------------

--task 4)Given a table named orders, write a query to find the total sales for each product category.

/*Orders Table
order_id / product_name / product_category / sales_amount
1 / bottle / kitchen / 10.00
2 / chair / home / 40.00
3 / table / home / 50.00
4 / glasses / kitchen / 5.00
*/

SELECT product_category, SUM(sales_amount) AS total_sales
FROM orders 
GROUP BY product_category;

--------------------------------------------------------------------------------------------------------

--task 5 )Write a query to find duplicate entries in a table named employees based on the email field. 

DELETE emp1 FROM employees emp1
INNER JOIN employees emp2
WHERE emp1.id < emp2.id AND emp1.email = emp2.email