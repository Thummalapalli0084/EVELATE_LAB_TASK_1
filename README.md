# 🧹 Data Cleaning and Preprocessing – Task 1

## 📁 Dataset Used
**Mall Customer Segmentation Data**

- **Rows:** 200  
- **Columns:** 5  
- **Source:** [Kaggle](https://www.kaggle.com/)  
- **Columns:** `CustomerID`, `Gender`, `Age`, `Annual Income (k$)`, `Spending Score (1-100)`

---

## 🧰 Tools and Libraries
- **Language:** Python  
- **Libraries Used:**  
  - `pandas`

---

## 🧼 Steps Performed

### 1. Imported Libraries
```python
import pandas as pd

### 2. Loaded the Dataset
mall_data = pd.read_csv("Mall_Customers.csv")

### 3. Viewed the Data

Used .head() to view the first few rows.

### 4.Checked Shape of Dataset
200 rows × 5 columns
### 5. Checked for Missing Values

No null values found.
mall_data.isnull().sum()
# Output: 0 for all columns

### 6. Checked for Duplicates

No duplicate rows found.
mall_data.duplicated().sum()
# Output: 0

### 7. Checked Data Types
Column	Data Type
CustomerID	int64
Gender	object
Age	int64
Annual Income (k$)	int64
Spending Score (1-100)	int64

All data types are appropriate.

### 8. Categorical Columns Check

Identified Gender as the only categorical feature.


### ✅ Final Dataset

- Data is clean and ready for further analysis.

- No missing or duplicate values.

- All columns have correct data types.

- Dataset is consistent and analysis-ready.

### 📊 Summary of Changes

✔ Verified data quality
✔ Confirmed no missing or duplicate values
✔ Ensured all columns have correct data types
✔ Dataset is clean and consistent
