# Bank Loan Analysis 

This project conducts a comprehensive analysis of bank loan data by integrating SQL querying with Power BI for visualization. The analysis focuses on loan application trends, funding insights, loan statuses, and other key metrics that help assess lending patterns and loan quality.

## Project Overview

In this project, I:
- Imported bank loan data from a CSV file into MS SQL Server.
- Used SQL queries to derive key metrics and insights from the data.
- Connected MS SQL Server to Power BI to create dynamic dashboards for visual exploration.

## Key Metrics and Findings

The SQL queries provided insights into various aspects of the bank loan data, including:

- **Total Loan Applications**: The cumulative number of loan applications received.
- **Monthly Loan Applications**:
  - Metrics for Month-to-Date (MTD) and Previous Month-to-Date (PMTD) applications, helping track application trends across recent months.
- **Funding and Collections**:
  - Total loan amount funded, MTD and PMTD funding, and total collections from payments received.
- **Interest Rate**:
  - Average interest rate across loans, including MTD and PMTD averages, highlighting changes in lending costs.
- **Debt-to-Income (DTI) Ratio**:
  - Average DTI ratio, offering insights into borrower financial health.

### Good vs. Bad Loan Analysis

- **Good Loans**: Loans classified as either “Fully Paid” or “Current” status.
  - Key metrics include good loan percentage, funded amount, and total amount received.
- **Bad Loans**: Loans marked as “Charged Off.”
  - Analysis covers the percentage of bad loans, funded amount, and amount received.

### Loan Status Breakdown

Detailed insights on loan status, capturing:
- Total loan count, funded amount, payments received, average interest rates, and DTI, grouped by loan status.

### Additional Insights

- **Monthly Trend Analysis**: Loan application counts, funding, and repayments segmented by month.
- **Geographic Breakdown**: Analysis of applications, funding, and repayments by state.
- **Term-Based Analysis**: Metrics by loan term, such as 36 or 60 months.
- **Employment Length**: Loan distribution and funding trends based on borrower employment length.
- **Purpose of Loan**: Loan application distribution by purpose, showcasing the primary motivations for loans.
- **Home Ownership**: Loan data segmented by home ownership status of borrowers.

## Power BI Dashboard

The Power BI dashboard provides an interactive and comprehensive view of the bank loan data, enabling exploration and deeper analysis with key features such as:

- **KPI Cards**: Displaying top-level metrics like Total Applications, Total Funded Amount, Total Collections, and Average Interest Rate for quick insights.
- **Trend Visuals**: Line and bar charts illustrating monthly trends in loan applications, funding amounts, and payments collected.
- **Loan Status Segmentation**: Pie or bar charts breaking down good vs. bad loans, enabling easy assessment of loan performance.
- **Demographic and Loan Purpose Filters**: Options to filter data by borrower characteristics such as employment length, home ownership status, and loan purpose, allowing focused analysis of specific borrower segments.
- **State-wise Distribution**: Maps or bar charts that highlight state-wise distribution of loan applications and funding for geographic insights.
- **Detailed Loan Purpose Analysis**: Breakdown of loan applications and funding by purpose to understand the primary uses for which borrowers seek loans.

The dashboard also includes filters and slicers for attributes like loan grade, borrower state, and loan purpose, providing flexibility to view insights for specific segments.

---

## 📊 Dashboard Preview

### Dashboard Summary
![Dashboard Summary](https://github.com/krb647/Bank-Loan-Analysis/blob/main/dashboard_summary.png?raw=true)

### Dashboard Overview
![Dashboard Overview](https://github.com/krb647/Bank-Loan-Analysis/blob/main/dashboard_overview.png?raw=true)

### Dashboard Details
![Dashboard Details](https://github.com/krb647/Bank-Loan-Analysis/blob/main/dashboard_details.png?raw=true)


## Conclusion

This Bank Loan Analysis project provides a clear view of lending patterns and loan quality. By combining SQL and Power BI, the analysis highlights essential metrics and trends, offering insights that can support data-driven decisions for improving loan portfolio performance and identifying key factors in borrower behavior.
