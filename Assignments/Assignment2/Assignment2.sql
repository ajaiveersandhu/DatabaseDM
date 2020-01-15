/* Display all the databases */
SHOW databases;

/* Select the database => ap */
USE my_guitar_shop;

/* Show all the tables in SELECTED database */
SHOW tables;


/*  ***********   ASSIGNMENT 2   ***********  */

/* STEP 1 */
SELECT product_code, product_name, list_price, discount_percent 
FROM products
ORDER BY list_price DESC;

/* STEP 2 */
SELECT CONCAT(last_name, ', ', first_name) AS full_name 
FROM customers
WHERE LEFT(last_name, 1) > 'M' AND LEFT(last_name, 1) < 'Z'
ORDER BY last_name ASC;

/* STEP 3 */
SELECT product_name, list_price, date_added
FROM products
WHERE list_price > 500 AND list_price < 2000
ORDER BY date_added DESC;

/* STEP 4 */
SELECT product_name, list_price, discount_percent, ROUND(((list_price * discount_percent)/100), 2) AS discount_amount, ROUND((list_price - ((list_price * discount_percent)/100)), 2) AS discount_price 
FROM products
ORDER BY discount_price DESC LIMIT 5;

/* STEP 5 */
SELECT item_id, item_price, discount_amount, quantity, (item_price * quantity) AS price_total, (discount_amount * quantity) AS discount_price, ((item_price - discount_amount) * quantity) AS item_total
FROM order_items
WHERE ((item_price - discount_amount) * quantity) > 500
ORDER BY item_total DESC;
