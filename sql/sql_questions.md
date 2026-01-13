# SQL Assessment Questions

## Instructions

Please write SQL queries to answer the following questions. Use the test database you set up with the `setup_database.sql` script.

**Important Notes:**
- Write your queries in a separate file named `your_name_solutions.sql`
- Include comments explaining your approach for complex queries
- Test your queries to ensure they return the expected results
- Focus on correctness first, then consider query efficiency

---

## Core Questions (Required)

These questions test fundamental SQL skills that are essential for the Technical Support Engineer role.

### Question 1: Basic SELECT with WHERE
**Business Context:** A customer wants to know their account status.

Write a query to find the customer named "Alice Johnson" and display their name, email, signup date, and status.

**Expected Output:** One row with Alice Johnson's information

**What we're evaluating:** Basic SELECT and WHERE clause usage

---

### Question 2: Filtering with Multiple Conditions
**Business Context:** We need to identify inactive customers for a re-engagement campaign.

Write a query to find all customers who have an 'inactive' status AND signed up before June 1, 2024. Display their name, email, and signup date.

**Expected Output:** Multiple rows of inactive customers who signed up before 2024-06-01

**What we're evaluating:** Using AND/OR operators, date comparisons

---

### Question 3: Counting Records
**Business Context:** Management wants to know how many products we have in each category.

Write a query to count how many products exist in each category. Display the category name and the count of products.

**Expected Output:** Each category with its product count

**What we're evaluating:** COUNT function, GROUP BY clause

---

### Question 4: Calculating Totals
**Business Context:** Finance needs to know the total revenue from completed orders.

Write a query to calculate the total amount (sum) of all orders with a status of 'completed'.

**Expected Output:** A single number representing total completed order revenue

**What we're evaluating:** SUM function, WHERE filtering

---

### Question 5: Finding Averages
**Business Context:** Product team wants to understand our pricing strategy.

Write a query to find the average price of products in the 'Electronics' category. Round the result to 2 decimal places.

**Expected Output:** A single number representing the average price

**What we're evaluating:** AVG function, WHERE clause, ROUND function

---

### Question 6: Sorting and Limiting Results
**Business Context:** Customer service needs to see the 10 most recent orders.

Write a query to display the 10 most recent orders (by order_date). Show the order id, customer_id, order_date, total_amount, and status. Sort from newest to oldest.

**Expected Output:** 10 rows showing the most recent orders

**What we're evaluating:** ORDER BY with DESC, TOP/LIMIT clause

---

### Question 7: Using DISTINCT
**Business Context:** We want to know which unique statuses exist in our orders table.

Write a query to list all distinct (unique) order statuses that appear in the Orders table.

**Expected Output:** A list of unique status values (completed, pending, cancelled, etc.)

**What we're evaluating:** DISTINCT keyword usage

---

### Question 8: String Pattern Matching
**Business Context:** A customer called and said their email contains "smith" but they can't remember the exact address.

Write a query to find all customers whose email address contains the word "smith" (case-insensitive). Display their name and email.

**Expected Output:** Customers with "smith" anywhere in their email

**What we're evaluating:** LIKE operator with wildcards

---

### Question 9: Handling NULL Values
**Business Context:** Data quality check - we need to identify customers with missing email addresses.

Write a query to find all customers who do NOT have an email address (NULL email). Display their id, name, and signup_date.

**Expected Output:** Customers with NULL in the email column

**What we're evaluating:** IS NULL operator, understanding of NULL handling

---

### Question 10: Grouping with HAVING
**Business Context:** We want to identify our most valuable customers.

Write a query to find customers who have placed more than 2 orders. Display the customer_id and the count of their orders. Only show customers with more than 2 orders.

**Expected Output:** Customer IDs with their order counts (only those with >2 orders)

**What we're evaluating:** GROUP BY, COUNT, HAVING clause

---

### Question 11: Date Filtering and Formatting
**Business Context:** Marketing wants to analyze orders from Q4 2024.

Write a query to find all orders placed between October 1, 2024 and December 31, 2024 (inclusive). Display the order id, customer_id, order_date, and total_amount. Order by date.

**Expected Output:** All orders from Q4 2024, sorted by date

**What we're evaluating:** Date range filtering with BETWEEN or comparison operators

---

### Question 12: Using COALESCE/ISNULL
**Business Context:** We need to export customer data, but want to show "No Email Provided" instead of NULL for missing emails.

Write a query that displays all customer names and their email addresses. If the email is NULL, display "No Email Provided" instead.

**Expected Output:** All customers with either their email or "No Email Provided"

**What we're evaluating:** COALESCE or ISNULL function to handle NULL values

---

## Extra Credit Questions (Optional)

These questions involve JOINs and are optional. Completing them demonstrates additional SQL proficiency.

### Extra Credit 1: Basic INNER JOIN
**Business Context:** Customer service needs to see order details with customer names.

Write a query that shows the order id, order date, total amount, and customer name for all completed orders. Use an INNER JOIN between Orders and Customers tables.

**Expected Output:** Completed orders with customer names included

**What we're evaluating:** Basic INNER JOIN syntax and understanding

---

### Extra Credit 2: LEFT JOIN with NULL Checking
**Business Context:** We want to identify any products that have never been ordered.

Write a query using a LEFT JOIN to find all products that do NOT appear in the OrderItems table. Display the product id, name, and category.

**Hint:** Products that have never been ordered will have NULL values from the OrderItems table.

**Expected Output:** Products with no corresponding order items

**What we're evaluating:** LEFT JOIN, NULL checking to find unmatched records

---

### Extra Credit 3: Multi-Table JOIN
**Business Context:** Sales team wants a detailed report of what products each customer has purchased.

Write a query that displays customer name, order date, product name, quantity, and unit price. Join Customers, Orders, OrderItems, and Products tables. Only show completed orders. Order by customer name, then order date.

**Expected Output:** Detailed purchase history with customer and product information

**What we're evaluating:** Multi-table JOINs, understanding of table relationships

---

## Submission

Save all your SQL queries in a file named `your_name_solutions.sql` with clear comments indicating which question each query answers.

Example format:
```sql
-- Question 1: Basic SELECT with WHERE
SELECT name, email, signup_date, status
FROM Customers
WHERE name = 'Alice Johnson';

-- Question 2: Filtering with Multiple Conditions
-- Your query here...
```

Good luck!
