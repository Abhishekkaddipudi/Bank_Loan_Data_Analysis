use bank_db;
select * from financial_loan;
select count(*) from financial_loan;
SELECT COUNT(id) AS Total_Applications FROM financial_loan
WHERE MONTH(issue_date) = (SELECT MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1);
SELECT COUNT(id) AS Total_Applications FROM financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1,1);
select sum(loan_amount) from financial_loan;
select sum(loan_amount) from financial_loan
WHERE MONTH(issue_date) = (SELECT MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1);

select sum(loan_amount) from financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1,1);

select sum(total_payment) from financial_loan;
select sum(total_payment) from financial_loan
WHERE MONTH(issue_date) = (SELECT MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1);

select sum(total_payment) from financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1,1);

select AVG(int_rate)*100 As avg_interest_rate from financial_loan;

select AVG(int_rate)*100 As avg_interest_rate from financial_loan
WHERE MONTH(issue_date) = (SELECT MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1);

select AVG(int_rate)*100 As avg_interest_rate from financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1,1);
select AVG(dti)*100 As avg_interest_rate from financial_loan;
select AVG(dti)*100 As avg_interest_rate from financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1);
select AVG(dti)*100 As avg_interest_rate from financial_loan
WHERE MONTH(issue_date) = (SELECT distinct MONTH(issue_date)
FROM financial_loan
ORDER BY MONTH(issue_date) DESC
LIMIT 1,1);


select (B.good_loan_application)*100/A.loan_application as Good_Loan_Application_percentage from
(SELECT COUNT(id) as loan_application  FROM financial_loan ) A ,
(SELECT COUNT(id) as good_loan_application FROM financial_loan WHERE loan_status = 'Fully Paid' OR loan_status = 'Current' ) B;
SELECT COUNT(id) as good_loan_applications FROM financial_loan WHERE loan_status = 'Fully Paid' OR loan_status = 'Current' ;
SELECT sum(loan_amount) as good_loan_funded_amount FROM financial_loan WHERE loan_status = 'Fully Paid' OR loan_status = 'Current' ;
SELECT sum(total_payment) as good_loan_recieved_amount FROM financial_loan WHERE loan_status = 'Fully Paid' OR loan_status = 'Current' ;


select (B.bad_loan_application)*100/A.loan_application as bad_loan_application_percentage from
(SELECT COUNT(id) as loan_application  FROM financial_loan ) A ,
(SELECT COUNT(id) as bad_loan_application FROM financial_loan WHERE loan_status = 'Charged Off'  ) B;
SELECT COUNT(id) as bad_loan_applications FROM financial_loan WHERE loan_status = 'Charged Off' ;
SELECT sum(loan_amount) as bad_loan_funded_amount FROM financial_loan WHERE loan_status = 'Charged Off'  ;
SELECT sum(total_payment) as bad_loan_recieved_amount FROM financial_loan WHERE loan_status = 'Charged Off'  ;


select  loan_status,
		count(id)  as Loan_count,        
		SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
 from financial_loan group by loan_status;
 
SELECT loan_status, SUM(total_payment) AS MTD_Total_Amount_Received, SUM(loan_amount) AS MTD_Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = (SELECT MONTH(issue_date) FROM financial_loan ORDER BY MONTH(issue_date) DESC LIMIT 1) 
GROUP BY loan_status;


SELECT 
	MONTH(issue_date) AS Month_Munber, 
	date_format(issue_date,'%M') AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), date_format(issue_date,'%M')
ORDER BY MONTH(issue_date);

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY Total_Loan_Applications desc;
