# LendingClub Loan Data Analysis Report


### PROBLEM STATEMENT

**DASHBOARD 1: SUMMARY**

In order to monitor and assess our bank's lending activities and performance, we need to create a comprehensive Bank Loan Report. This report aims to provide insights into key loan-related metrics and their changes over time. The report will help us make data-driven decisions, track our loan portfolio's health, and identify trends that can inform our lending strategies.

#### Key Performance Indicators (KPIs) Requirements:

1. **Total Loan Applications:**
   - Calculate the total number of loan applications received during a specified period.
   - Monitor Month-to-Date (MTD) Loan Applications and track changes Month-over-Month (MoM).

2. **Total Funded Amount:**
   - Understand the total amount of funds disbursed as loans.
   - Monitor MTD Total Funded Amount and analyze MoM changes.

3. **Total Amount Received:**
   - Track the total amount received from borrowers.
   - Analyze MTD Total Amount Received and observe MoM changes.

4. **Average Interest Rate:**
   - Calculate the average interest rate across all loans.
   - Monitor MTD and track MoM variations in interest rates.

5. **Average Debt-to-Income Ratio (DTI):**
   - Evaluate the average DTI for our borrowers.
   - Compute the average DTI for all loans, MTD, and track MoM fluctuations.

#### Good Loan v Bad Loan KPIs

To evaluate the performance of our lending activities and assess the quality of our loan portfolio, we need to create a comprehensive report that distinguishes between 'Good Loans' and 'Bad Loans' based on specific loan status criteria.

#### Good Loan KPIs:

1. **Good Loan Application Percentage:**
   - Calculate the percentage of loan applications classified as 'Good Loans' (Fully Paid and Current).

2. **Good Loan Applications:**
   - Identify the total number of loan applications falling under the 'Good Loan' category.

3. **Good Loan Funded Amount:**
   - Determine the total amount of funds disbursed as 'Good Loans.'

4. **Good Loan Total Received Amount:**
   - Track the total amount received from borrowers for 'Good Loans.'

#### Bad Loan KPIs:

1. **Bad Loan Application Percentage:**
   - Calculate the percentage of loan applications categorized as 'Bad Loans' (Charged Off).

2. **Bad Loan Applications:**
   - Identify the total number of loan applications categorized as 'Bad Loans.'

3. **Bad Loan Funded Amount:**
   - Determine the total amount of funds disbursed as 'Bad Loans.'

4. **Bad Loan Total Received Amount:**
   - Track the total amount received from borrowers for 'Bad Loans.'

#### Loan Status Grid View

To gain a comprehensive overview of our lending operations and monitor the performance of loans, we aim to create a grid view report categorized by 'Loan Status.' This report will serve as a valuable tool for analyzing and understanding the key indicators associated with different loan statuses.

**DASHBOARD 2: OVERVIEW**

In our Bank Loan Report project, we aim to visually represent critical loan-related metrics and trends using a variety of chart types. These charts will provide a clear and insightful view of our lending operations, facilitating data-driven decision-making and enabling us to gain valuable insights into various loan parameters.

#### Specific Chart Requirements:

1. **Monthly Trends by Issue Date (Line Chart):**
   - Metrics: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received'
   - X-Axis: Month (based on 'Issue Date')
   - Y-Axis: Metrics' Values

   Objective: This line chart will showcase how 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received' vary over time, allowing us to identify seasonality and long-term trends in lending activities.

2. **Regional Analysis by State (Filled Map):**
   - Metrics: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received'
   - Geographic Regions: States

   Objective: This filled map will visually represent lending metrics categorized by state, enabling us to identify regions with significant lending activity and assess regional disparities.

3. **Loan Term Analysis (Donut Chart):**
   - Metrics: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received'
   - Segments: Loan Terms (e.g., 36 months, 60 months)

   Objective: This donut chart will depict loan statistics based on different loan terms, allowing us to understand the distribution of loans across various term lengths.

4. **Employee Length Analysis (Bar Chart):**
   - Metrics: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received'
   - X-Axis: Employee Length Categories (e.g., 1 year, 5 years, 10+ years)
   - Y-Axis: Metrics' Values

   Objective: This bar chart will illustrate how lending metrics are distributed among borrowers with different employment lengths, helping us assess the impact of employment history on loan.

## DASHBOARD

![Picture2](https://github.com/Abhishekkaddipudi/Bank_Loan_Data_Analysis/assets/65544284/da28397c-37a1-47f5-9d6e-e4e07e101368)
![Picture1](https://github.com/Abhishekkaddipudi/Bank_Loan_Data_Analysis/assets/65544284/230938b5-4403-4dd5-bb8b-3726a14a593f)

## Overview

This analysis focuses on a dataset from LendingClub, a peer-to-peer lending platform, providing insights into various aspects of loan applications, performance, and borrower characteristics. The data is rich with information, including borrower details, loan specifics, and financial outcomes.

### Dataset Summary

- **Total Entries:** 38,576
- **Total Loan Amount:** $435.76M
- **Total Payments Received:** $473.07M
- **Average Interest Rate:** 12.05%
- **Average Debt-to-Income Ratio (DTI):** 13.33%

## Monthly Trends

### Month-to-Date (MTD) Analysis

In the current month of December:

- **Loan Applications:** 4.31K
- **Total Amount Funded:** $53.98M
- **Total Amount Received:** $58.07M
- **Average Interest Rate:** 12.36%

### Previous Month-to-Date (PMTD) Analysis

In November:

- **Loan Applications:** 4.04K
- **Total Amount Funded:** $47.75M
- **Total Amount Received:** $50.13M
- **Average Interest Rate:** 11.94%

### Month-over-Month (MOM) Comparison

- **Loan Applications Growth:** +6.91%
- **Total Amount Funded Growth:** +13.04%
- **Total Amount Received Growth:** +15.84%
- **Average Interest Rate Change:** 15.84%

## Good Loan and Bad Loan Analysis

- **Bad Loans:** 5.33K applications, $65.53M funded, 13.88% average interest rate
- **Good Loans:** 33.24K applications, $370.22M funded, 11.76% average interest rate
- **Good Loan Percentage:** 86.12%
- **Bad Loan Percentage:** 13.88%

## Loan Status Breakdown

- **Charged Off:** 5.33K applications
- **Current:** 1.10K applications
- **Fully Paid:** 32.15K applications

## Monthly Distribution of Loan Applications

- January to December shows an increasing trend in loan applications, peaking at 4.31K in December.

## State-wise Analysis

Top 5 states by loan applications:

1. California (CA): 6.89K
2. Florida (FL): 2.77K
3. Texas (TX): 2.66K
4. New York (NY): 3.70K
5. New Jersey (NJ): 1.82K

## Loan Term Analysis

- **36 months:** 28.24K applications
- **60 months:** 10.34K applications

## Employment Length Analysis

- Most applicants have employment lengths between 2 to 10+ years.

## Loan Purpose Analysis

Top 5 loan purposes:

1. Debt consolidation: 18.21K applications
2. Credit card: 5.00K applications
3. Home improvement: 2.88K applications
4. Major purchase: 2.11K applications
5. Small business: 1.78K applications

## Home Ownership Analysis

- Most applicants reside in rented homes (18.44K applications), followed by mortgaged homes (17.20K applications).

## Conclusion

This analysis provides a comprehensive view of LendingClub loan data, offering valuable insights for stakeholders to make informed decisions. The dataset highlights positive trends in loan performance and a growing demand for loans, emphasizing the platform's relevance in the financial landscape.
