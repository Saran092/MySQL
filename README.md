# SQL README

## Project Overview
This project contains an SQL script  that sets up a basic e-commerce database. It includes essential tables, relationships, and sample data to manage users, products, and orders.

## Technologies Used
- **Database**: MySQL
- **Query Language**: SQL
- **Tools**: MySQL Workbench & any preferred SQL client

## Features
- User, Product, Order, and Order Items tables
- Primary and foreign key relationships
- Sample data insertion
- Basic indexing for performance
- Stored procedures and triggers
## Indexing in MySQL
- Indexing in MySQL is a technique used to improve the speed of data retrieval operations in a database. It works similarly to an index in a book, allowing the database to locate data quickly without scanning the entire table.
   
**Types of Indexes in MySQL**

  - Primary Index
  - Unique Index
  - Composite Index
  - Full-Text Index
  - Spatial Index
    
## Transactions in MySQL

- A transaction in MySQL is a sequence of one or more SQL statements executed as a single unit of work. It ensures data integrity by allowing you to commit all changes at once or roll back if something goes wrong.

**Key Properties of Transactions**

 - Atomicity →   All operations in a transaction succeed, or none do.
 - Consistency → The database remains in a valid state before and after the transaction.
 - Isolation →   Transactions do not interfere with each other.
 - Durability →  Once a transaction is committed, it is permanently stored.
