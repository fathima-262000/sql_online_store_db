/*CREATE DATABASE online_store;

-- task 1 


USE online_store;

CREATE TABLE products ( product_id INT NOT NULL AUTO_INCREMENT , product_name VARCHAR (15 ) , product_category VARCHAR (30) ,PRIMARY KEY ( product_id ));
ALTER TABLE products AUTO_INCREMENT = 10 ; 

 CREATE TABLE customers ( customer_id INT NOT NULL AUTO_INCREMENT , customer_name VARCHAR (15 ) , PRIMARY KEY ( customer_id )) ;  
   ALTER TABLE customers AUTO_INCREMENT = 30 ; 
 
 CREATE TABLE orders ( order_id INT NOT NULL AUTO_INCREMENT , customer_id INT , product_id INT , PRIMARY KEY ( order_id ) , 
 FOREIGN KEY ( customer_id ) REFERENCES customers ( customer_id ) ,
 FOREIGN KEY ( product_id ) REFERENCES products ( product_id ) ); 
   ALTER TABLE orders AUTO_INCREMENT = 50 ; 
   
   INSERT INTO products ( product_name  , product_category ) VALUES ( " biscuits " , " bakery " ) ,( " soap " , " kitchen items " ) ,( " pen " , " education " ) ,
   ( " lipstick " , " cosmetics " ) ,( " face wash " , " beauty products " ) ,( " hair dryer " , " self care items " ) ,( " face cream " , " cosmetics " ) ,( " hand bag " , " self care items " ) ,
   ( " bangles " , " fancy items " ) ,( " chains " , " fancy items " ) ,( " salwar " , " outfits " ) ; 
   
 INSERT INTO customers ( customer_name ) VALUES ( " fathima " ) ,( " henna " ) ,( " geethu " ) ,( " shyam " ) ,( " mohan " ) ,( " amal " ) ,( " kareem " ) ;  
 
 INSERT INTO orders ( customer_id , product_id  ) VALUES ( 30 , 10 ) ,( 32 , 11 ) ,( 31 , 13 ) ,( 33 , 10 ) ,( 33 , 15 ) ,( 31 , 18 ) ,
 ( 36 , 19 ) ,( 34 , 14 ) ,( 35 , 12 ) ,( 32 , 11 ) ,( 33 , 19 ) ,( 30 , 20 ) ; 
 
 -- task 2
 
 ALTER TABLE products ADD COLUMN price INT  ;
 ALTER TABLE products ADD COLUMN discount INT ; 
 
  UPDATE products SET price = 29 WHERE product_id = 10 ;
  UPDATE products SET price = 500 WHERE product_id = 13 ;
 -- UPDATE products SET price = 453 WHERE product_id = 11 ;
 --  UPDATE products SET price = 323 WHERE product_id = 16 ;
  UPDATE products SET price = 89 WHERE product_id = 12 ;
  UPDATE products SET price = 78 WHERE product_id = 17 ;
  UPDATE products SET price = 54 WHERE product_id = 14 ;
  UPDATE products SET price = 68 WHERE product_id = 18 ;
  UPDATE products SET price = 60 WHERE product_id = 15 ;
 UPDATE products SET price = 543 WHERE product_id = 19 ;
 UPDATE products SET price = 900 WHERE product_id = 20 ; 
 
 UPDATE products SET discount = 10 WHERE product_id = 10 ; 
UPDATE products SET discount = 16 WHERE product_id = 11 ;
UPDATE products SET discount = 14 WHERE product_id = 12 ;
UPDATE products SET discount = 19 WHERE product_id = 13 ;
UPDATE products SET discount = 14 WHERE product_id = 14 ;
UPDATE products SET discount = 13 WHERE product_id = 15 ;
UPDATE products SET discount = 12 WHERE product_id = 16 ;
UPDATE products SET discount = 11 WHERE product_id = 17 ;
UPDATE products SET discount = 16 WHERE product_id = 18 ;
UPDATE products SET discount = 11 WHERE product_id = 19 ;
UPDATE products SET discount = 10 WHERE product_id = 20 ;



-- ALTER TABLE orders ADD COLUMN order_date DATE ;

UPDATE orders SET order_date = '2024-01-01' WHERE order_id =50 ;
UPDATE orders SET order_date = '2024-01-02' WHERE order_id =51 ;
UPDATE orders SET order_date = '2024-01-03' WHERE order_id =52 ;
UPDATE orders SET order_date = '2024-01-04' WHERE order_id =53 ;
UPDATE orders SET order_date = '2024-01-04' WHERE order_id =54 ;
UPDATE orders SET order_date = '2024-01-05' WHERE order_id =55 ;
UPDATE orders SET order_date = '2024-01-01' WHERE order_id =56 ;
UPDATE orders SET order_date = '2024-01-06' WHERE order_id =57 ;
UPDATE orders SET order_date = '2024-01-09' WHERE order_id =58 ;
UPDATE orders SET order_date = '2024-01-06' WHERE order_id =59 ;
UPDATE orders SET order_date = '2024-01-08' WHERE order_id =60 ;
UPDATE orders SET order_date = '2024-01-10' WHERE order_id =61 ;

ALTER TABLE products ADD COLUMN order_id INT ;
UPDATE products SET order_id = 50 WHERE product_id = 10 ;
UPDATE products SET order_id = 52 WHERE product_id = 11 ;
UPDATE products SET order_id = 50 WHERE product_id = 12 ;
UPDATE products SET order_id = 55 WHERE product_id = 13 ;
UPDATE products SET order_id = 53 WHERE product_id = 14 ;
UPDATE products SET order_id = 50 WHERE product_id = 15 ;
UPDATE products SET order_id = 55 WHERE product_id = 16 ;
UPDATE products SET order_id = 52 WHERE product_id = 17 ;
UPDATE products SET order_id = 50 WHERE product_id = 18 ;
UPDATE products SET order_id = 53 WHERE product_id = 19 ;
UPDATE products SET order_id = 52 WHERE product_id = 20 ;

ALTER TABLE products
ADD CONSTRAINT fk_products
FOREIGN KEY (order_ID) REFERENCES orders(order_ID

-- TASK 3

SELECT o.order_id , o.order_date , SUM(p.price) AS total_price FROM products p JOIN orders o USING ( order_id ) GROUP BY o.order_id HAVING total_price > 100 ORDER BY o.order_date DESC ;  

-- TASK 4

SELECT c.customer_id , c.customer_name , SUM(p.price) AS total_price FROM customers c JOIN orders o USING ( customer_id ) 
JOIN products p USING (product_id) GROUP BY c.customer_id ;    

-- task 5

SELECT c.customer_id , c.customer_name , SUM(p.price) AS total_price FROM customers c JOIN orders o USING ( customer_id ) 
JOIN products p USING (product_id) GROUP BY c.customer_id HAVING total_price < 500 ;  */

-- task 6 

-- query foe avg price of products
-- SELECT AVG(PRICE) AS average_price FROM products ;

-- maximum order value
-- SELECT SUM(price) AS maximum_order_value FROM products p JOIN orders o USING ( order_id ) GROUP BY o.order_id  ORDER BY maximum_order_value DESC LIMIT 1 ;

-- total no of distinct(unique) products in the store
-- SELECT count(product_id) AS total_no_of_distinct_products_in_the_store FROM products ;

-- task 7
-- find all products with prices between 20$ and 50$
-- SELECT * FROM products WHERE price BETWEEN 20 AND 50 OR product_name LIKE "%laptop%"

-- task8

-- SELECT c.customer_name , o.order_id , o.customer_id , o.product_id , o.order_date FROM customers c JOIN orders o USING (customer_id) ;

-- task 9

/*SELECT o.order_id , p.product_id , O.customer_id , o.order_date , p.product_name FROM products p LEFT JOIN orders o USING (product_id)
LEFT JOIN customers c USING ( customer_id ); */

-- task 10

-- SELECT c.customer_id , c.customer_name , o.order_id , o.product_id FROM orders o RIGHT JOIN customers c USING (customer_id); 






 
 
 
 
 
 

