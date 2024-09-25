# assignment_sql_test

I designed an Entity-Relationship (ER) diagram with three main entities:
Customers: Represents customers with a unique ID and name.
Orders: Represents orders placed by customers, linked to the Customers table through a one-to-many relationship.
Products: Represents products available for purchase.
OrderDetails: A junction table that establishes a many-to-many relationship between Orders and Products, allowing multiple products to be associated with each order.

SQL Operations
1. Create Tables
We created four tables (Customers, Orders, Products, and OrderDetails) with appropriate primary and foreign keys to enforce relationships.
2. Insert Data
Sample data was inserted into each table to represent a customer, an order, and a product.
3. Update Data
We updated the name of a customer to demonstrate modifying existing records.
4. Delete Data
We deleted an entry from the OrderDetails table to show how to remove specific associations between orders and products.
5. Perform Joins
A SQL join was executed to retrieve the names of customers along with their corresponding order IDs.
6. Subqueries
A subquery was used to find all customers who have placed at least one order, demonstrating how to nest queries for more complex data retrieval.
