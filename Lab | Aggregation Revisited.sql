"""Write the SQL queries to answer the following questions:





Select the name and email address of all the customers who have rented the "Action" movies.



"""
"1. Select the first name, last name, and email address of
 all the customers who have rented a movie."
 
 
 SELECT first_name, last_name, email 
 FROM customer c
 LEFT JOIN rental r
 ON c.customer_id = r.customer_id
 WHERE rental_date != 0;
 
 "2. What is the average payment made by each customer (display the customer id, 
 customer name (concatenated), and the average payment made)."
 

SELECT c.customer_id, CONCAT(first_name, " ", last_name) AS full_name,
(SELECT AVG(p.amount) FROM sakila.payment p) AS average_paid
FROM customer c
ORDER BY c.customer_id;

"""3. Select the name and email address of all the customers who have rented the Action movies."""

 "Write the query using multiple join statements
Write the query using sub queries with multiple WHERE clause and IN condition
Verify if the above two queries produce the same results or not
Use the case statement to create a new column classifying existing columns as either or high value transactions based on the amount of payment. If the amount is between 0 and 2,
 label should be low and if the amount is between 2 and 4,
 the label should be medium, and if it is more than 4, then it should be high."
 
SELECT CONCAT(first_name, " ", last_name) AS full_name, email,
(SELECT * FROM category  WHERE name = 'Action') AS Category
FROM customer d
ORDER BY full_name;

SELECT *
FROM film;

USE sakila;

SELECT *
FROM category;