import pandas as pd

# Load Dataset
df = pd.read_csv(r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\dataset\Customer-Churn.csv")

# Data Cleaning
df["TotalCharges"] = df["TotalCharges"].replace(" ", 0)
df["TotalCharges"] = df["TotalCharges"].astype(float)

print("="*60)
print("      CUSTOMER CHURN ANALYTICS - BUSINESS INSIGHTS")
print("="*60)

print("\n1. Customers with Month-to-Month contracts have the highest churn rate.")

print("\n2. Customers without Tech Support are more likely to churn.")

print("\n3. Customers without Online Security have a higher churn rate.")

print("\n4. Customers with shorter tenure are more likely to leave the company.")

print("\n5. Customers who churn generally have higher Monthly Charges.")

print("\n6. Customers paying through Electronic Check have a higher churn rate.")

print("\n7. Customers without Dependents churn almost twice as much as customers with Dependents.")

print("\n8. Long-term contract customers (One Year and Two Year) are more loyal.")

print("\n9. Customers with Online Backup and Device Protection tend to stay longer.")

print("\n10. Providing value-added services like Tech Support and Online Security can improve customer retention.")

print("\n" + "="*60)
print("End of Business Insights")
print("="*60)