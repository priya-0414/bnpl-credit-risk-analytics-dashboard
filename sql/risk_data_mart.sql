CREATE DATABASE risk_data_mart;

USE risk_data_mart;

CREATE TABLE bnpl_risk_featured (
person_age INT,
person_income INT,
person_home_ownership VARCHAR(50),
person_emp_length INT,
loan_intent VARCHAR(50),
loan_grade VARCHAR(50),
loan_amnt INT,
loan_int_rate DOUBLE,
loan_status INT,
loan_percent_income DOUBLE,
cb_person_default_on_file VARCHAR(50),
cb_person_cred_hist_length INT,
loan_interest_burden DOUBLE,
loan_income_ratio DOUBLE,
stable_employment INT,
risk_score DOUBLE,
risk_band VARCHAR(20),
PD INT,
LGD DOUBLE,
EAD INT,
expected_loss INT,
credit_decision VARCHAR(20)
);

SELECT * FROM bnpl_risk_featured;

#1.Portfolio Risk Distribution
CREATE VIEW portfolio_summary AS
SELECT
  risk_band,
  COUNT(*) total_accounts,
  SUM(loan_amnt) total_exposure,
  ROUND(AVG(loan_status)*100,2) default_rate,
  SUM(expected_loss) expected_loss
FROM bnpl_risk_featured
GROUP BY risk_band;

#2.Risk Decile Analysis (Banking Standard)
SELECT *,
  NTILE(10) OVER (ORDER BY risk_score DESC) risk_decile
FROM bnpl_risk_featured;

#3.Exposure Concentration
SELECT 
  risk_band,
  SUM(loan_amnt) exposure,
  ROUND(SUM(loan_amnt)*100.0/
     (SELECT SUM(loan_amnt) FROM bnpl_risk_featured),2) exposure_share
  FROM bnpl_risk_featured
  GROUP BY risk_band
  
#4.Approval Strategy Impact
SELECT
  credit_decision,
  COUNT(*) total_loans,
  ROUND(AVG(loan_status)*100,2) default_rate,
  SUM(loan_amnt) exposure
FROM bnpl_risk_featured
GROUP BY credit_decision
