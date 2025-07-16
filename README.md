# 🛒 SQL Module End Assignment – Online Store Database

This project demonstrates the creation and manipulation of a relational database for an e-commerce store using SQL. It covers essential topics such as table creation, data insertion, schema alteration, advanced queries, and join operations. Perfect for showcasing fundamental and intermediate SQL skills.

📁 Project Structure

The database includes three core tables:

- Products: Stores product details such as name, price, and discounts.
- Customers: Contains customer information.
- Orders: Records each purchase including total value and order date.

🧩 Tasks Overview

 🏗️ Task 1: Table Creation & Data Insertion
- Create `Products`, `Customers`, and `Orders` tables.
- Insert sample data:
  - 10 products
  - 5 customers
  - 10 orders

 🔧 Task 2: Schema Alteration & Updates
- Add new columns like `discount` to `Products`.
- Use `UPDATE` to modify selected records.

 📦 Task 3: High-Value Orders
- Select orders with a total value **above $100**
- Sort by `order_date` in **descending** order.

👥 Task 4: Customer Spending Summary
- Group orders by `customer_id`.
- Calculate **total amount spent** by each customer.

🚫 Task 5: Filter Customers by Spending
- Use `HAVING` clause to **exclude customers who spent less than $500.**

📊 Task 6: Aggregate Analysis
- `AVG()` – Average product price
- `MAX()` – Maximum order value
- `COUNT()` – Total products in the store

🔍 Task 7: Conditional Product Search
- Use comparison and logical operators:
  - Products priced between `$20` and `$50`
  - Products with `"Laptop"` in the name

🔗 Task 8: INNER JOIN
- Retrieve **customer names** with their **order details**

↩️ Task 9: LEFT JOIN
- Show **all products** and their **orders**
- Include products with **no orders**

➡️ Task 10: RIGHT JOIN
- Show **all customers** and their **orders**
- Include customers who **haven’t placed any orders**

🚀 How to Run
1. Set up a relational database (e.g., MySQL, PostgreSQL).
2. Execute the SQL scripts provided in each task sequentially.
3. View and validate outputs using `SELECT` queries or your DBMS GUI.




