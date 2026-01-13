# Technical Support Engineer Assessment

Welcome! Thank you for taking the time to complete this technical assessment for the Technical Support Engineer position at Cargas.

## Overview

This assessment is designed to evaluate your SQL fundamentals and support communication skills. It consists of two main sections:

1. **SQL Questions** - Testing your ability to query and analyze data
2. **Support Ticket Scenarios** - Testing your customer communication and problem-solving skills

**Estimated Time:** Less than 1 hour total

**Important:** This is a take-home assessment. Please complete it independently and submit your work by the deadline provided in your email.

---

## Getting Started

### What You'll Need

- **SQL Server** (or SQL Server Express - free download)
  - Download: https://www.microsoft.com/en-us/sql-server/sql-server-downloads
- **SQL Server Management Studio (SSMS)** or any SQL client
  - Download: https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms
- **Text editor** for writing your support ticket responses (Word, Google Docs, Notepad, etc.)

### Alternative: If You Don't Have SQL Server

If you prefer to use a different SQL database system (PostgreSQL, MySQL, SQLite), you may adapt the setup script. However:
- You'll need to adjust the SQL syntax (mainly `IDENTITY` to `AUTO_INCREMENT` or `SERIAL`)
- Please note which system you used in your submission
- We primarily use SQL Server, so familiarity with it is preferred

---

## Part 1: SQL Assessment

### Step 1: Set Up the Test Database

1. Open SQL Server Management Studio (or your SQL client)
2. Connect to your local SQL Server instance
3. Create a new database called `TSE_Assessment` (or any name you prefer)
4. Open the file `sql/setup_database.sql` from this assessment package
5. Execute the entire script to create tables and insert test data
6. Verify the setup by running:
   ```sql
   SELECT COUNT(*) FROM Customers;
   SELECT COUNT(*) FROM Products;
   SELECT COUNT(*) FROM Orders;
   SELECT COUNT(*) FROM OrderItems;
   ```
   You should see 50 customers, 30 products, 68 orders, and 68 order items.

### Step 2: Answer the SQL Questions

1. Open the file `sql/sql_questions.md`
2. Read each question carefully
3. Write SQL queries to answer each question
4. Save your queries in a file named `[YourName]_sql_solutions.sql`
   - Example: `JohnDoe_sql_solutions.sql`
5. Include comments in your file indicating which question each query answers

**Important Notes:**
- **Core Questions (1-7)** are required
- **Extra Credit Questions** are optional but encouraged
- Test your queries to make sure they work and return the expected results
- Focus on correctness first, then consider efficiency

---

## Part 2: Support Ticket Scenarios

### Step 1: Read the Scenarios

1. Open the file `support/ticket_scenarios.md`
2. Read both customer scenarios carefully
3. Review the evaluation criteria and tips provided

### Step 2: Write Your Responses

1. Create a file named `ticket_scenarios_answers.md` in the root of your repository
2. Write a professional support ticket response for each scenario
3. Label your responses clearly (Scenario 1, Scenario 2)

**What We're Looking For:**
- Professional, empathetic communication
- Logical problem-solving approach
- Appropriate clarifying questions
- Realistic expectation setting
- Clear next steps

**Note:** You don't need to know Python to complete these scenarios. We're evaluating your support communication skills, not your programming knowledge.

---

## Submission

### What to Submit

Please add the following files to your repository:

1. `[YourName]_sql_solutions.sql` - Your SQL query answers
2. `ticket_scenarios_answers.md` - Your support ticket responses

### How to Submit

**Option 1: Fork and Submit (Recommended)**
1. Fork this repository to your own GitHub account
2. Add your solution files to the forked repository
3. Commit and push your changes
4. Share the link to your repository: **[INSERT EMAIL ADDRESS HERE]**

**Option 2: Clone and Submit**
1. Clone this repository to your local machine
2. Add your solution files to the cloned repository
3. Create a new repository on GitHub (or your preferred git hosting service)
4. Push your changes to your new repository
5. Share the link to your repository: **[INSERT EMAIL ADDRESS HERE]**

**Deadline:** [INSERT DEADLINE HERE]

### Submission Checklist

Before submitting, please verify:
- [ ] All required SQL questions (1-7) are answered
- [ ] SQL queries are tested and working
- [ ] Both support scenarios have responses in `ticket_scenarios_answers.md`
- [ ] Files are named correctly
- [ ] Your repository is accessible and contains all solution files

---

## Questions or Technical Issues?

If you encounter technical difficulties setting up the database or have questions about the assessment instructions, please contact:

**[INSERT CONTACT NAME AND EMAIL HERE]**

**Important:** Questions about how to solve specific SQL problems or support scenarios are part of the assessment. We can help with technical setup issues, but not with the answers themselves.

---

## Database Schema Reference

For your convenience, here's a quick reference of the database structure:

### Customers Table
- `id` (INT, Primary Key)
- `name` (NVARCHAR)
- `email` (NVARCHAR) - *may contain NULLs*
- `signup_date` (DATE)
- `status` (NVARCHAR) - values: 'active', 'inactive'

### Products Table
- `id` (INT, Primary Key)
- `name` (NVARCHAR)
- `category` (NVARCHAR)
- `price` (DECIMAL)
- `stock_quantity` (INT)

### Orders Table
- `id` (INT, Primary Key)
- `customer_id` (INT, Foreign Key → Customers)
- `order_date` (DATE)
- `total_amount` (DECIMAL)
- `status` (NVARCHAR) - values: 'completed', 'pending', 'processing', 'cancelled'

### OrderItems Table
- `order_id` (INT, Foreign Key → Orders)
- `product_id` (INT, Foreign Key → Products)
- `quantity` (INT)
- `unit_price` (DECIMAL)
- Primary Key: (order_id, product_id)

---

## Good Luck!

We're excited to see your work. This assessment is designed to reflect the type of work you'd do in this role - analyzing data to solve customer problems and communicating effectively with customers.

Take your time, do your best, and don't hesitate to reach out if you have technical setup questions.

**- The Cargas Technical Support Team**
