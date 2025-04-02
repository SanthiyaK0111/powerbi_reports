CREATE DATABASE Bank_loan;

USE Bank_loan;

SELECT * FROM Bank_loan_data;

---TOTAL_LOAN_APPLICATIONS
SELECT COUNT(ID) AS TOTAL_LOAN_APPLICATIONS FROM BANK_LOAN_DATA;

---MTD_TOTAL_APPLICATIONS
SELECT COUNT(ID) AS MTD_TOTAL_APPLICATIONS FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 12;

---PMTD_TOTAL_APPLICATIONS
SELECT COUNT(ID) AS PMTD_TOTAL_APPLICATIONS FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 11;

---TOTAL_FUNDED_AMOUNT
SELECT SUM(LOAN_AMOUNT) AS TOTAL_FUNDED_AMOUNT FROM BANK_LOAN_DATA;

---MTD Total Funded Amount
SELECT SUM(LOAN_AMOUNT) AS MTD_TOTAL_FUNDED_AMOUNT FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 12;

---PMTD Total Funded Amount
SELECT SUM(LOAN_AMOUNT) AS MTD_TOTAL_FUNDED_AMOUNT FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 11;

---Total Amount Received
SELECT SUM(TOTAL_PAYMENT) AS TOTAL_AMOUNT_RECEIVED FROM BANK_LOAN_DATA

---MTD Total Amount Received
SELECT SUM(TOTAL_PAYMENT) AS MTD_TOTAL_AMOUNT_RECEIVED FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 12;

---PMTD Total Amount Received
SELECT SUM(TOTAL_PAYMENT) AS PMTD_TOTAL_AMOUNT_RECEIVED FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 11;

---Average Interest Rate
SELECT ROUND(AVG(INT_RATE),4)*100 AS AVERAGE_INTEREST_RATE FROM BANK_LOAN_DATA;

---MTD Average Interest
SELECT ROUND(AVG(INT_RATE),4)*100 AS MTD_AVERAGE_INTEREST_RATE FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 12 AND YEAR(ISSUE_DATE) = 2021

---PMTD Average Interest
SELECT ROUND(AVG(INT_RATE),4)*100 AS PMTD_AVERAGE_INTEREST_RATE FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 11 AND YEAR(ISSUE_DATE) = 2021

---Avg DTI
SELECT ROUND(AVG(DTI),4)*100 AS AVERAGE_DTI FROM BANK_LOAN_DATA;

---MTD Avg DTI
SELECT ROUND(AVG(DTI),4)*100 AS MTD_AVERAGE_DTI FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) =12 AND YEAR(ISSUE_DATE) = 2021

---PMTD Avg DTI
SELECT ROUND(AVG(DTI),4)*100 AS MTD_AVERAGE_DTI FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) =11 AND YEAR(ISSUE_DATE) = 2021


---GOOD LOAN ISSUED
---Good loan Application percentage
SELECT 
	 ((COUNT(CASE WHEN LOAN_STATUS = 'Fully Paid' OR LOAN_STATUS = 'Current' THEN id END) * 100) 
	 /
	 COUNT(ID)) AS GOOD_LOAN_PERCENTAGE
FROM BANK_LOAN_DATA;

---Number of Good loan Application

SELECT COUNT(ID) AS NO_OF_GOOD_LOAN_APPLICATIONS FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Fully Paid' OR LOAN_STATUS ='Current'

---Good Loan funded Amount
SELECT * FROM Bank_loan_data
SELECT SUM(LOAN_AMOUNT) AS GOOD_LOAN_FUNDED_AMOUNT FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Fully Paid' OR LOAN_STATUS ='Current';


---Good Loan Total received Amount
SELECT SUM(TOTAL_PAYMENT) AS GOOD_LOAN_RECEIVED_AMOUNT FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Fully Paid' OR LOAN_STATUS ='Current';

---Bad Loan Application Percentage
SELECT 
	 ((COUNT(CASE WHEN LOAN_STATUS = 'Charged off' THEN id END) * 100.0) 
	 /
	 COUNT(ID)) AS BAD_LOAN_PERCENTAGE
FROM BANK_LOAN_DATA;
---Number of Bad Loan Applications
SELECT COUNT(ID) AS BAD_LOAN_APPLICATIONS FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Charged off';

---Bad Loan Funded Amount
SELECT SUM(LOAN_AMOUNT) AS BAD_LOAN_FUNDED_AMOUNT FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Charged off';


---Bad Loan Total Received Amount
SELECT SUM(TOTAL_PAYMENT) AS BAD_LOAN_RECEIVED_AMOUNT FROM BANK_LOAN_DATA WHERE LOAN_STATUS = 'Charged off';

 ---Loan Status

SELECT LOAN_STATUS, 
	COUNT(ID) AS LOAN_COUNT,
	SUM(LOAN_AMOUNT) AS TOTAL_FUNDED_AMOUNT, 
	SUM(TOTAL_PAYMENT) AS TOTAL_AMOUNT_RECEIVED, 
	AVG(INT_RATE * 100) AS INTEREST_RATE,
	AVG(DTI *100) AS DTI
FROM BANK_LOAN_DATA 
GROUP BY LOAN_STATUS

SELECT LOAN_STATUS,
	SUM(TOTAL_PAYMENT) AS MTD_TOTAL_AMOUNT_RECEIVED,
	SUM(LOAN_AMOUNT) AS MTD_TOTAL_FUNDED_AMOUNT
FROM BANK_LOAN_DATA
WHERE MONTH(ISSUE_DATE) = 12
GROUP BY LOAN_STATUS;


