# Bank Loan Analysis - Power BI Project
## Overview
This project analyzes bank loan data to provide insights into loan distribution, approval rates, customer demographics, and risk assessment. The dashboard created in Power BI helps stakeholders understand key trends and make data-driven decisions.

## Objectives
- Analyze loan approval and rejection rates.
- Identify key factors affecting loan approval.
- Explore customer demographics and loan trends.
- Provide actionable insights for risk assessment and decision-making.

## Dataset
 
- **Fields Used in Data**:
- **Loan ID**:
Purpose: Loan ID is a unique identifier assigned to each loan application or loan account. It serves as a primary key for tracking and managing individual loans.
Use for Banks: Banks use Loan IDs to efficiently manage and track loans throughout their lifecycle. It aids in organizing loan records, monitoring repayments, and addressing customer inquiries.

- **Address State**:
Purpose: Address State indicates the borrower's location. It helps in assessing regional risk factors, compliance with state regulations, and estimating default probabilities.
Use for Banks: Banks use this information to identify regional trends in loan demand, adjust marketing strategies, and manage risk portfolios based on geographic regions.

- **Employee Length**:
Purpose: Employee Length provides insights into the borrower's employment stability. Longer employment durations may indicate greater job security.
Use for Banks: Banks consider employment length when assessing a borrower's ability to repay. Stable employment often translates to a lower default risk.

- **Employee Title**:
Purpose: Employee Title specifies the borrower's occupation or job title. It helps lenders understand the source of the borrower's income.
Use for Banks: Banks use this field to verify income sources, assess the borrower's financial capacity, and tailor loan offers to different professions.

- **Grade**:
Purpose: Grade represents a risk classification assigned to the loan based on creditworthiness. Higher grades signify lower risk.
Use for Banks: Banks use the grade to price loans and manage risk. Higher-grade loans typically receive lower interest rates and are more attractive to investors.

- **Sub Grade**:
Purpose: Sub Grade refines the risk assessment within a grade, providing additional risk differentiation.
Use for Banks: Sub Grades offer a finer level of risk assessment, helping banks tailor interest rates and lending terms to match borrower risk profiles.

- **Home Ownership**:
Purpose: Home Ownership indicates the borrower's housing status. It offers insights into financial stability.
Use for Banks: Banks use this field to assess collateral availability and borrower stability. Homeowners may have lower default rates.

- **Issue Date**:
Purpose: Issue Date marks the loan's origination date. It's crucial for loan tracking and maturity calculations.
Use for Banks: Banks use Issue Dates to track loan aging, calculate interest accruals, and manage loan portfolios.

- **Last Credit Pull Date**:
Purpose: Last Credit Pull Date records when the borrower's credit report was last accessed. It helps monitor creditworthiness.
Use for Banks: Banks use this date to track credit history updates, assess credit risk, and make informed lending decisions.

- **Last Payment Date**:
Purpose: Last Payment Date marks the most recent loan payment received. It tracks the borrower's payment history.
Use for Banks: Banks use this date to assess payment behavior, calculate delinquency, and project future payments.
Loan Status:
Purpose: Loan Status indicates the current state of the loan (e.g., fully paid, current, default). It tracks loan performance.
Use for Banks: Banks use Loan Status to monitor loan health, categorize loans for risk analysis, and determine provisioning requirements.

- **Next Payment Date**:
Purpose: Next Payment Date estimates the date of the next loan payment. It assists in cash flow forecasting.
Use for Banks: Banks use this date for liquidity planning and to project revenue from loan portfolios.

- **Purpose**:
Purpose: Purpose specifies the reason for the loan (e.g., debt consolidation, education). It helps understand borrower intentions.
Use for Banks: Banks use this field to segment and customize loan offerings, aligning loan terms with borrower needs.

- **Term**:
Purpose: Term defines the duration of the loan in months. It sets the repayment period.
Use for Banks: Banks use the term to structure loan agreements, calculate interest payments, and manage loan maturities.

- **Verification Status**:
Purpose: Verification Status indicates whether the borrower's financial information has been verified. It assesses data accuracy.
Use for Banks: Banks use this field to gauge data reliability, verify income, and evaluate loan application credibility.

- **Annual Income**:
Purpose: Annual Income reflects the borrower's total yearly earnings. It assesses repayment capacity.
Use for Banks: Banks use this income figure to determine loan eligibility, calculate debt-to-income ratios, and evaluate creditworthiness.

- **DTI (Debt-to-Income Ratio)**:
Purpose: DTI measures the borrower's debt burden relative to income. It gauges the borrower's capacity to take on additional debt.
Use for Banks: Banks use DTI to assess a borrower's ability to handle loan payments and make responsible lending decisions.

- **Instalment**:
Purpose: Instalment is the fixed monthly payment amount for loan repayment, including principal and interest.
Use for Banks: Banks use this field to structure loan terms, calculate amortization schedules, and assess payment affordability.

- **Interest Rate**:
Purpose: Interest Rate represents the annual cost of borrowing expressed as a percentage. It determines the loan's cost.
Use for Banks: Banks use interest rates to price loans, manage profit margins, and attract investors.

- **Loan Amount**:
Purpose: Loan Amount is the total borrowed sum. It defines the principal amount.
Use for Banks: Banks use Loan Amount to determine loan size

## Data
- **Data Import**: The dataset has been imported into Power BI by connecting to SQL Server for efficient data retrieval and transformation.

## Data Cleaning and Transformation
- Handled missing values for key fields like income and credit history.
- Standardized categorical values (e.g., property area, loan status).
- Created calculated columns for insights (e.g., debt-to-income ratio).
- Performed data modeling using Power BI’s data transformation tools.

## Key Performance Indicators (KPIs)
- **Total Loan Applications**
- **Total Funded Amount**
- **Total Amount Received from Customers**
- **Average Interest Rate**
- **Average Debt-to-Income (DTI) Ratio**
- **Good Loan Applications**
- **Charged Off Applications**
- **Monthly Trends by Issue Date**

## Dashboard Features
- **Regional Analysis by State (Filled Map)**: Geographical distribution of loan applications.
- **Loan Term Analysis (Donut Chart)**: Breakdown of loan durations.
- **Employee Length Analysis (Bar Chart)**: Loan distribution based on employment length.
- **Loan Purpose Breakdown (Bar Chart)**: Analysis of different loan purposes.
- **Home Ownership Analysis (Tree Map)**: Categorization of loans by homeownership status.
- **Loan Approval Rate**: Percentage of loans approved vs. rejected.
- **Income vs Loan Amount Analysis**: Relationship between applicant income and loan amount.
- **Credit History Impact**: How credit history affects approval chances.
- **Demographic Insights**: Analysis based on gender, location, and marital status.
- **Risk Assessment**: Identification of high-risk loan applicants.

## Tools & Technologies Used
- **Power BI**: Data visualization and report creation.
- **SQL**: Data extraction and transformation.
 
## How to Use
1. Open the Power BI file (`.pbix`).
2. Refresh data sources if connected to live data.
3. Navigate through different report pages to explore insights.

## Functionalities Used
- **SQL Functions**
-Creating Database
-Creating Table
-Select
-Datename
-Datepart
-Cast
-Decimal
-Month
-Hour
-Quarter
-Day
-Group by
-Order by
-Decimal
-Limit
-Count
-Distinct
-CTE
-Partition

- **Power BI Functions**
-Connecting to SQL Server
-Data Cleaning
-Data Modelling
-Data Processing
-Power Query
-Date Tables
-Time Intelligence Func
-DAX
-Date Function
-Text Function
-Filter Function
-Calculate
-SUM/ SUMX
-Creating KPI’s
-New Card Visual
-Creating Charts
-Formatting visuals
-Creating Functions
-Navigations

## Author
- **Santhiya K**
- **Contact**: santhiyak0111@gmail.com
- **LinkedIn**: www.linkedin.com/in/santhiya-k-4179ab188

---
Feel free to reach out for collaborations or further improvements!

