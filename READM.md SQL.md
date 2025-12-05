# 📄 README.md

## 📌 Project: EcommerceDB -- SQL Database & Queries

This project contains SQL code for creating and managing a simple
**E-commerce Database** named **EcommerceDB**.\
The script includes table creation, data insertion, updates, deletions,
and various SQL queries for analysis.

## 📂 Database Structure

### **1. Customers Table**

Stores customer information.\
Fields: - CustomerID\
- Name\
- Email\
- Address

### **2. Orders Table**

Stores customer orders.\
Fields: - OrderID\
- CustomerID (FK → Customers)\
- OrderDate\
- TotalAmount

### **3. Products Table**

Stores product details.\
Fields: - ProductID\
- ProductName\
- Price\
- Stock

### **4. OrderDetails Table**

Stores product-level details for each order.\
Fields: - OrderDetailID\
- OrderID (FK → Orders)\
- ProductID (FK → Products)\
- Quantity\
- SubTotal

## 🧩 Features Included in SQL File

The script performs:

### ✔ Database Creation

    CREATE DATABASE IF NOT EXISTS EcommerceDB;
    USE EcommerceDB;

### ✔ Table Creation

Creates 4 main tables:\
- Customers\
- Orders\
- Products\
- OrderDetails

### ✔ Insert Sample Data

`INSERT INTO` statements add sample customers, orders, products, and
order details.

### ✔ Update Operations

Examples: - Update customer address\
- Update order total amount\
- Update product price

### ✔ Delete Operations

Examples: - Delete a customer\
- Delete an order\
- Delete products based on stock

### ✔ Select Queries

Includes: - View all customers\
- Filter by name\
- Orders in last 30 days\
- Highest/lowest/average total amount\
- Products sorted by price\
- Price range queries\
- Revenue calculations\
- Top-selling products

## 📊 Analysis Queries Included

Examples:

-   Get highest, lowest, and average order amounts\
-   Get total revenue\
-   Top 3 products by quantity sold\
-   Count how many times a product was sold

## ▶ How to Run

1.  Open **MySQL Workbench / XAMPP / phpMyAdmin**\
2.  Copy the SQL script\
3.  Run it step-by-step or all at once\
4.  The database **EcommerceDB** will be created with sample data
