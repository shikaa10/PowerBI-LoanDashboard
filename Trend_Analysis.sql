- Monthly Loan Overview
SELECT 
    MONTH(issue_date) AS Month_Munber, 
    DATENAME(MONTH, issue_date) AS Month_name, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date) 
ORDER BY MONTH(issue_date);


-- State-wise Summary
SELECT 
    address_state AS State, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY address_state 
ORDER BY address_state;

-- Term-wise Summary
SELECT 
    term AS Term, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY term 
ORDER BY term;

-- Employee Length Summary
SELECT 
    emp_length AS Employee_Length, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY emp_length 
ORDER BY emp_length;

-- Purpose-wise Loan Summary
SELECT 
    purpose AS PURPOSE, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY purpose 
ORDER BY purpose;

-- Home Ownership Summary
SELECT 
    home_ownership AS Home_Ownership, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
GROUP BY home_ownership 
ORDER BY home_ownership;

-- Purpose-wise Summary (Filtered by Grade A)
SELECT 
    purpose AS PURPOSE, 
    COUNT(id) AS Total_Loan_Applications, 
    SUM(loan_amount) AS Total_Funded_Amount, 
    SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data 
WHERE grade = 'A' 
GROUP BY purpose 
ORDER BY purpose;
