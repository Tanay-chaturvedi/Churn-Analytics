import pandas as pd
df=pd.read_csv(r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\dataset\Customer-Churn.csv")

print("Data types:\n")
print(df.dtypes)

print("\n"+"*"*60)
print("Number of Null values in each column:\n")
print(df.isnull().sum())

print("\n"+"*"*60)
print("Check for duplicate rows:\n")
print(df.duplicated().sum())


df["TotalCharges"] = pd.to_numeric(df["TotalCharges"],errors="coerce")
# #Here if any value is not convertable to number, it converts it to NaN
print(df.isnull().sum()) #shows TotalCustomers=11
print(df[df["TotalCharges"].isnull()][
    ["customerID", "tenure", "MonthlyCharges", "TotalCharges", "Contract", "Churn"]
]) #shows tenure = 0 for all 11 customers= they just joined and churn is no so it means non of them left. hence they didnt complete there billing cycle

df["TotalCharges"]=df["TotalCharges"].fillna(0)

print("\n"+"*"*60)
print("\nValidation Check")
print("\n"+"*"*60)

print(df.isnull().sum())
print(df.dtypes)
print(df.info())