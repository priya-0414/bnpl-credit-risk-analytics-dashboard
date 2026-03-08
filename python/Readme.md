# Python Data Processing & Feature Engineering

This folder contains the Python notebook used for data preprocessing, exploratory data analysis (EDA), and feature engineering for the BNPL Credit Risk Analytics project.

## File

### Credit_risk.ipynb

This notebook performs the following steps:

1. **Data Loading**
   - Import the raw credit risk dataset.
   - Inspect structure, data types, and missing values.

2. **Exploratory Data Analysis (EDA)**
   - Analyze borrower demographics and loan attributes.
   - Examine income distribution, loan amount distribution, and loan status.
   - Identify patterns related to credit risk.

3. **Data Cleaning**
   - Handle missing values and incorrect data types.
   - Standardize column names and formats.

4. **Feature Engineering**
   New analytical features are created to support risk analysis:

   - **Risk Score** – Composite indicator derived from borrower characteristics.
   - **Risk Band** – Categorization of borrowers into Low, Medium, High, and Very High risk groups.
   - **Expected Loss** – Estimated financial loss based on loan amount and risk level.
   - **Credit Decision** – Simulated approval or rejection decision based on risk score.

5. **Export Processed Dataset**

   The processed dataset is exported as:

   ```
   bnpl_risk_featured.csv
   ```

   This dataset is later used for:

   - SQL Risk Data Mart creation
   - Analytical queries
   - Power BI dashboard development

## Output

The final dataset generated from this notebook serves as the **analytical foundation for the risk analytics pipeline**:

```
Raw Dataset → Python Feature Engineering → SQL Data Mart → Power BI Dashboard
```

## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib / Seaborn (for exploratory analysis)
