   ## ONLINE FOOD ORDERING SYSTEM ## 

The Online Food Ordering System is a PL/SQL-based digital solution developed to modernize and simplify how customers interact with restaurants. Instead of relying on manual ordering methods—which are slow, error-prone, and inefficient—this system automates the entire ordering process using a robust database-driven approach.

🧑‍💻 **Target Users**
*Customers*: Individuals looking to order food conveniently from restaurants

*Restaurant Businesses*: Cafés and eateries wanting to automate their order management and enhance customer satisfaction


**🗃️ Database Schema**
The database schema includes the following tables:

- **Customers**:customer_id (Primary Key),name
phone_number,
email,
address.

- **Restaurants** :restaurant_id (Primary Key),
restaurant_name,
location,
contact_number,
status (e.g., Active/Inactive).

- **Menu_Items** :item_id (Primary Key)
restaurant_id (Foreign Key),
item_name,
price,
availability (e.g., In stock, Out of stock).

- **Orders** :order_id (Primary Key),
customer_id (Foreign Key),
restaurant_id (Foreign Key),
order_date,
order_status (e.g. Pending, Preparing, Delivered).

- **Payments** :payment_id (Primary Key),
order_id (Foreign Key),
amount_paid,
payment_method (e.g., Card, Cash, Mobile Money),
payment_status (Paid, Failed, Pending).

- **Delivery_Personnel** :staff_id (Primary Key),
name,
phone_number,
availability_status (e.g., Available, On delivery),
assigned_order_id (nullable Foreign Key).
  
 🎯 **PROBLEM STATEMENT**

✅ Manual food ordering systems often result in:Delays and inefficiencies

✅ Miscommunication between staff and customers,

✅ Inaccurate or lost orders,


🎯 **Project Overview**
This repository includes practical work and learning exercises that focus on:

✅ SQL: Writing queries to retrieve and manage data efficiently

✅ PL/SQL: Creating stored procedures, functions, cursors, and handling exceptions

✅ Advanced Database Programming: Building efficient and secure routines for real-world database applications


 ## **PHASE II: Business Process Modeling (Related to Management Information Systems - MIS)**
 ![WhatsApp Image 2025-05-25 at 00 46 40_ae41b110](https://github.com/user-attachments/assets/24dda227-da2a-44c8-9498-6beb63a1d164)

## PhaseIII: Logical Model Design
![ERD](https://github.com/user-attachments/assets/379f2370-7f7e-49f8-a6c2-3cf8bf9d4661)


**DCL(Data Control Language)**

**Pluggable database created**

![WhatsApp Image 2025-05-13 at 17 05 44_1a3d56a5](https://github.com/user-attachments/assets/000f98eb-cfd0-4d3e-8418-bf64a27aef42)


**conceptual diagram**

![customer model](https://github.com/user-attachments/assets/087ac293-8a83-465a-ae36-230229a5b015)


![menu item model](https://github.com/user-attachments/assets/2ac25126-73fd-434d-bc03-883c82ff0bfc)



![orders](https://github.com/user-attachments/assets/858cda7e-4dd5-4320-b93b-29c830744680)

**CREATING TABLE**
![WhatsApp Image 2025-04-21 at 12 15 15_9b63bd99](https://github.com/user-attachments/assets/0ee8fd62-bad0-448d-b0b5-8d8f3479c654)

**CREATING TRIGGERS** :
Automatically updating stock after an order,
Logging when orders are deleted,
Sending alerts (e.g., low stock notification),

![WhatsApp Image 2025-05-06 at 17 33 46_08ee1d99](https://github.com/user-attachments/assets/3404c23a-8277-45fa-b5c2-f68ba5ba2696)

**CREATING FUNCTIONS** :
Calculating discounts or delivery fees,
Fetching customer loyalty points,
Returning menu item availability,

![WhatsApp Image 2025-05-06 at 17 16 40_902725b4](https://github.com/user-attachments/assets/fcf47159-e353-47b7-9873-017a9747d71c)

**CREATING PACKAGE** :
Keep related database logic (e.g., ordering, tracking, billing) organized,
Improve performance by loading all logic at once,
Hide internal workings and expose only what is needed,

![WhatsApp Image 2025-05-12 at 21 26 35_0c5d80e3](https://github.com/user-attachments/assets/99560101-25c2-4ec4-8642-8864b7338296)

**PROCEDURES** :
Placing orders,
Assigning deliveries,
Updating menu prices,
![image](https://github.com/user-attachments/assets/700002cd-597f-428d-bfd4-6ad444d3964f)

**DML (Data Manupulation Language)**

**INSERT INTO TABLES**
![WhatsApp Image 2025-04-22 at 22 18 02_d1b4c49a](https://github.com/user-attachments/assets/b188d9c2-402d-4121-878d-bf8c57fae948)

**UPDATE INTO TABLE**
![WhatsApp Image 2025-05-01 at 12 44 58_21f8d584](https://github.com/user-attachments/assets/24eba6c8-1aaf-4bbc-bfa6-b86ca6f6dc7b)

**DELETE**
![WhatsApp Image 2025-05-01 at 16 15 19_37a2497a](https://github.com/user-attachments/assets/316e825c-1d5d-45a0-a287-b51bdb42bf80)

🧠 **My Expectations**
Through this course, I aim to:

Gain solid hands-on experience in database programming

Understand the integration of procedural logic within SQL

Learn how to develop reliable, optimized, and secure database operations

🎯 **Anticipated Benefits**
✅ Automated Ordering: Reduces human error and speeds up service

✅ Real-time Tracking: Allows customers to track order status

✅ Inventory Management: Helps restaurants maintain stock levels

✅ Enhanced Experience: Improves customer satisfaction and restaurant performance

**NAMES: UWERA Maggy**
**ID:27519**

**PL&SQL DEVELOPMENT**

















