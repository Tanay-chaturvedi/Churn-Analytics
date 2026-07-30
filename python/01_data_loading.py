import pandas as pd

df = pd.read_csv(
    r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\dataset\Customer-Churn.csv"
)

#BASIC INFORMATION

print("=" * 60)
print("FIRST 5 ROWS")
print("=" * 60)
print(df.head())

print("\n" + "=" * 60)
print("DATASET INFO")
print("=" * 60)
df.info()

print("\n" + "=" * 60)
print("DATASET DIMENSIONS")
print("=" * 60)
print(df.shape)

print("\n" + "=" * 60)
print("STATISTICAL SUMMARY")
print("=" * 60)
print(df.describe())