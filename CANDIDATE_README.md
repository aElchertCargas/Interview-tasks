# Technical Support Engineer Assessment

Welcome! Thank you for taking the time to complete this technical assessment for the Technical Support Engineer position at Cargas.

## Overview

This assessment is designed to evaluate your SQL fundamentals and support communication skills. It consists of two main sections:

1. **SQL Questions** - Testing your ability to query and analyze data
2. **Support Ticket Scenarios** - Testing your customer communication and problem-solving skills

**Estimated Time:** 2-3 hours total

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
- **Core Questions (1-12)** are required
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

1. Create a document named `[YourName]_support_responses.txt` (or .docx, .pdf)
   - Example: `JohnDoe_support_responses.txt`
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

Please submit the following files:

1. `[YourName]_sql_solutions.sql` - Your SQL query answers
2. `[YourName]_support_responses.txt` (or .docx/.pdf) - Your support ticket responses

### How to Submit

Send your files to: **[INSERT EMAIL ADDRESS HERE]**

**Email Subject:** Technical Support Engineer Assessment - [Your Full Name]

**Deadline:** [INSERT DEADLINE HERE]

### Submission Checklist

Before submitting, please verify:
- [ ] All required SQL questions (1-12) are answered
- [ ] SQL queries are tested and working
- [ ] Both support scenarios have responses
- [ ] Files are named correctly with your name
- [ ] Your name is included in the email subject line

---

## Evaluation Criteria

Your assessment will be evaluated on:

### SQL Technical Skills (50 points)
- Query correctness and accuracy
- Proper use of SQL syntax and functions
- Understanding of data relationships
- Code clarity and commenting

### Support Communication (30 points)
- Professional and empathetic tone
- Clear, organized responses
- Diagnostic thinking and problem-solving
- Appropriate expectation management

### Attention to Detail (20 points)
- Following instructions
- Complete responses to all questions
- Proper formatting and presentation
- Testing your work before submission

---

## Tips for Success

### For SQL Questions:
1. Read each question carefully to understand what's being asked
2. Test your queries multiple times with different scenarios
3. Use comments to explain your logic, especially for complex queries
4. If you're stuck, move on and come back later
5. The database has some intentional quirks (NULLs, edge cases) - watch for them!

### For Support Scenarios:
1. Put yourself in the customer's shoes
2. Start with empathy before diving into technical details
3. Ask clarifying questions when information is unclear
4. Be honest about what you know and don't know
5. Provide clear next steps, even if it's "I need to investigate this"
6. Proofread for grammar and professionalism

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
