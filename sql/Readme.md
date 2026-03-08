# SQL Risk Data Mart

This folder contains SQL scripts used to create and manage the **BNPL Risk Data Mart** for credit risk analysis.

## File

### risk_data_mart.sql

This SQL script performs the following tasks:

1. **Table Creation**

Creates the main analytical table used for portfolio risk analysis.

```
CREATE TABLE bnpl_risk (
    person_age INT,
    person_income FLOAT,
    loan_amnt FLOAT,
    loan_status INT,
    risk_score FLOAT,
    risk_band VARCHAR(20),
    expected_loss FLOAT,
    credit_decision VARCHAR(20)
);
```

This table acts as the **central risk analytics dataset** used by the dashboard.

---

2. **Data Loading**

The processed dataset generated from the Python pipeline:

```
bnpl_risk_featured.csv
```

is imported into the SQL database and stored in the `bnpl_risk` table.

---

3. **Analytical Queries**

SQL queries are used to generate insights such as:

- Portfolio Risk Distribution
- Risk Decile Analysis
- Exposure Concentration
- Approval Strategy Impact

These queries help structure the data for **business intelligence reporting**.

---

## Role in Data Pipeline

SQL acts as the **data transformation and analytical layer** between data preparation and visualization.

```
Raw Dataset → Python Feature Engineering → SQL Risk Data Mart → Power BI Dashboard
```

---

## Tools Used

- MySQL
- SQL for data modeling and analysis
