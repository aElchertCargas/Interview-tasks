# Support Ticket Response Scenarios

## Instructions

For each scenario below, write a professional support ticket response as if you were responding to a real customer. Your response should be sent via email or ticketing system.

**What we're evaluating:**
- Clear, professional communication
- Empathy and customer focus
- Diagnostic thinking and problem-solving approach
- Ability to ask the right clarifying questions
- Setting appropriate expectations

**Submission Format:**
- Write your responses in a file named `ticket_scenarios_answers.md`
- Label each response clearly (Scenario 1, Scenario 2)
- There is no strict length requirement, but aim for responses that are thorough yet concise

---

## Scenario 1: Customer Reports Python Script Error

### Customer's Ticket:

**Subject:** Urgent - Data Export Script Failing

**From:** Sarah Martinez, Operations Manager at Acme Corp

**Message:**
> Hi Support Team,
>
> Our automated data export script stopped working this morning and we need this data for our weekly reports. I'm getting an error when I run it. Here's what it says:
>
> ```
> Traceback (most recent call last):
>   File "export_data.py", line 47, in <module>
>     process_records(data)
>   File "export_data.py", line 23, in process_records
>     formatted_date = record['date'].strftime('%Y-%m-%d')
> AttributeError: 'NoneType' object has no attribute 'strftime'
> ```
>
> This worked fine last week! Nothing has changed on our end. Please help ASAP as my team is waiting on this data.
>
> Thanks,
> Sarah

---



### Your Task:

Write a support ticket response to Sarah as if you were responding to this customer in a real support scenario. 

**The technical answer to the problem is provided below for your reference.** Use this information to craft a professional, helpful response that addresses the customer's needs.

Consider what information would be helpful to include in your response, how you would communicate with the customer, and what next steps would be appropriate. Write your response in your own words as if you were emailing the customer directly.

**The answer to the technical problem is:**

The error is occurring because at least one of the records has a missing (`None`) value for the `date` field, so calling `.strftime()` on it fails. This may be due to new or changed data with null or blank dates. The script needs to check if `record['date']` is not `None` before calling `.strftime()`—for example:

```python
if record['date']:
    formatted_date = record['date'].strftime('%Y-%m-%d')
else:
    formatted_date = ''
```

---

## Scenario 2: Customer Asks "How Do I...?" Question

### Customer's Ticket:

**Subject:** Question about automating monthly reports

**From:** James Chen, Finance Analyst at TechStart Inc.

**Message:**
> Hello,
>
> I've been manually running the same report every month and exporting it to Excel, then doing some calculations and formatting before sending it to my manager. It's taking me about 2 hours each month.
>
> Someone mentioned that I might be able to use Python to automate this process, but I'm not really a programmer. Is this something your software supports? Can you help me set this up? I'd like to have it automatically email the formatted report to my manager on the first Monday of each month.
>
> Let me know what's possible.
>
> Thanks,
> James

### Your Task:

Write a support ticket response to James as if you were responding to this customer in a real support scenario.

Consider what information would be helpful to include in your response, how you would communicate with the customer, and what next steps would be appropriate. Write your response in your own words as if you were emailing the customer directly.

---

## Scenario 3: Data Accuracy / Report Investigation

### Customer's Ticket:

**Subject:** Report showing wrong numbers

**From:** Maria Rodriguez, Finance Director at Global Manufacturing Inc.

**Message:**
> Hi Support,
>
> Our monthly revenue report is showing $45,000 for last month, but when I manually add up all our invoices, I'm getting $52,000. This is a huge discrepancy and my CFO is asking questions.
>
> I've checked our data entry - everything looks correct on our end. The report has been working fine for the past 6 months, so I don't know what changed. Can you help me figure out why the numbers don't match?
>
> This is urgent - I need to present accurate numbers to the board next week.
>
> Thanks,
> Maria Rodriguez

### Provided Information:

After initial investigation, you've discovered the following:
- The report query filters orders by `status = 'completed'` only
- There are orders in the database with statuses: 'completed', 'pending', 'processing', 'cancelled'
- The report uses the `total_amount` field directly from the Orders table
- Some orders have order_date in the previous month but were completed in the current month
- The customer's manual calculation includes all invoices regardless of status

### Your Task:

Write a support ticket response to Maria. Use the provided information to ask specific, technical questions that will help diagnose the discrepancy. Consider:
- What technical details do you need to understand the root cause?
- How would you explain the potential issues you've identified?
- What questions would help you determine if this is a data issue, query logic issue, or reporting configuration issue?
- How would you manage the urgency while ensuring accuracy?

Write your response in your own words as if you were emailing the customer directly.

---

## Scenario 5: Multi-Step Issue / Integration Problem

### Customer's Ticket:

**Subject:** Data not syncing correctly

**From:** Jennifer Park, Customer Success Manager at TechSolutions LLC

**Message:**
> Hi Support Team,
>
> We're having an issue where customer data from our CRM isn't showing up in your system. We imported 200 new customers last week, but only 150 are appearing. The other 50 seem to have just disappeared.
>
> Our IT team checked the import logs and everything looks successful on our end. They say the data was sent correctly. But it's not showing up in your system.
>
> We need all our customer data to be accurate. Can you help us figure out what happened to those 50 customers?
>
> Best regards,
> Jennifer Park

### Your Task:

Write a support ticket response to Jennifer. Consider:
- How would you approach investigating a multi-system integration issue?
- What specific technical information do you need from the customer or their IT team?
- How would you explain potential causes (data validation, field mapping, error handling)?
- What questions would help you determine if this is a data format issue, validation failure, or system error?
- How would you coordinate with the customer's IT team while maintaining ownership of the issue?

Write your response in your own words as if you were emailing the customer directly.

---

## Scenario 6: Ambiguous Problem / Needs Investigation

### Customer's Ticket:

**Subject:** Something's wrong but I don't know what

**From:** Robert Chen, Operations Manager

**Message:**
> Hi,
>
> Our reports just don't look right lately. The numbers seem off, but I can't put my finger on exactly what's wrong. Can someone take a look?
>
> Thanks,
> Robert Chen

### Your Task:

Write a support ticket response to Robert. Consider:
- How would you handle a vague or incomplete problem description?
- What targeted questions would help you narrow down what "doesn't look right" means?
- How would you maintain professionalism and helpfulness when the issue is unclear?
- What approach would you take to systematically investigate without dismissing the concern?
- How would you gather enough information to diagnose the issue?

Write your response in your own words as if you were emailing the customer directly.

---

**Remember:** Save all your responses in `ticket_scenarios_answers.md` with clear labels for each scenario.

Good luck!
