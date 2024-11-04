SELECT * FROM Bank_loan_data;

--Dashboard 1
--KPI: Total_Loan_Applications
SELECT COUNT(id) AS Total_Loan_Applications
FROM bank_loan_data;

SELECT COUNT(id) AS MTD_Total_Loan_Applications    --MTD : Month-To-Date
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT COUNT(id) AS PMTD_Total_Loan_Applications   --PMTD : Previous-Month-to-Date
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;



--KPI: Total_Funded_Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM Bank_loan_data;

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount    
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount   
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;


--KPI:Total_Amount_Received
SELECT SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data;

SELECT SUM(total_payment) AS MTD_Total_Amount_Received    
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT SUM(total_payment) AS PMTD_Total_Amount_Received  
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;



--KPI: Average_Interest_Rates
SELECT ROUND(AVG(int_rate),4)*100 AS Average_Interest_Rates
FROM Bank_loan_data;

SELECT ROUND(AVG(int_rate),4)*100 AS MTD_Average_Interest_Rates  
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(int_rate),4)*100 AS PMTD_Average_Interest_Rates  
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;



--KPI: Average_DTI
SELECT ROUND(AVG(dti),4)*100 AS Average_DTI
FROM Bank_loan_data;

SELECT ROUND(AVG(dti),4)*100 AS MTD_Average_DTI 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(dti),4)*100 AS PMTD_Average_DTI 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;



--GOOD LOAN:

--Good_Loan_Application_Percentage
SELECT 
     (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	 /COUNT(id) AS Good_Loan_Application_Percentage
FROM Bank_loan_data;

--Good_loan_Total_Application
SELECT COUNT(id) AS Good_loan_Total_Application 
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

--Good_loan_Funded_Amount
SELECT SUM(loan_amount) AS Good_loan_Funded_Amount 
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

--Good_loan_Received_Amount 
SELECT SUM(total_payment) AS Good_loan_Received_Amount 
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


--BAD LOAN

--Bad_Loan_Application_Percentage
SELECT 
     (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100)
	 /COUNT(id) AS Bad_Loan_Application_Percentage
FROM Bank_loan_data;

--Bad_loan_Total_Application
SELECT COUNT(id) AS Bad_loan_Total_Application 
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'

--Bad_loan_Funded_Amount
SELECT SUM(loan_amount) AS Bad_loan_Funded_Amount 
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'

--Bad_loan_Received_Amount 
SELECT SUM(total_payment) AS Bad_loan_Received_Amount 
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'


--Loan Status Grid View
SELECT loan_status,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Received_Amount,
	   ROUND(AVG(int_rate)*100,3) AS Average_Interest_Rate,
	   ROUND(AVG(dti)*100,3) AS Average_DTI
FROM Bank_loan_data
GROUP BY loan_status


SELECT loan_status,
	   SUM(loan_amount) AS MTD_Total_Funded_Amount,
	   SUM(total_payment) AS MTD_Total_Received_Amount
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12
GROUP BY loan_status

--Dashboard 2
--Monthly trends by issue date
SELECT MONTH(issue_date) AS Month_number,
	   DATENAME(MONTH,issue_date) AS Month_name,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY MONTH(issue_date),DATENAME(MONTH,issue_date)
ORDER BY Month_number


--Regional analysis by state
SELECT address_state,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY address_state
ORDER BY Total_Loan_Application DESC

--Long term analysis
SELECT term,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY term
ORDER BY term
		
--Employee length analysis
SELECT emp_length,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY emp_length
ORDER BY Total_Loan_Application DESC

--Loan purpose breakdown
SELECT purpose,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY purpose
ORDER BY Total_Loan_Application DESC

--Home ownership analysis
SELECT home_ownership,
	   COUNT(id) AS Total_Loan_Application,
	   SUM(loan_amount) AS Total_Funded_Amount,
	   SUM(total_payment) AS Total_Amount_Received
FROM Bank_loan_data
GROUP BY home_ownership
ORDER BY Total_Loan_Application DESC
 
