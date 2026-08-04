import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load Dataset
df=pd.read_csv(r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\dataset\Customer-Churn.csv")

# Data Cleaning
df["TotalCharges"] = df["TotalCharges"].replace(" ", 0)
df["TotalCharges"] = df["TotalCharges"].astype(float)


#Visualization 1 — Customer Churn Distribution
# plt.figure(figsize=(6,4))

# sns.countplot(
#     x="Churn",
#     data=df,
#     hue="Churn",
#     palette="Set2"
# )

# plt.title("Customer Churn Distribution", fontsize=14)
# plt.xlabel("Churn Status")
# plt.ylabel("Number of Customers")

# plt.tight_layout()
# plt.show()

#------------------------------------------------------------------------------------

#Visualization 2 — Contract vs Churn
plt.figure(figsize=(8,5))

sns.countplot(
    x="Contract",
    hue="Churn",
    data=df,
    palette="Set2"
)

plt.title("Customer Churn by Contract Type", fontsize=14)
plt.xlabel("Contract Type")
plt.ylabel("Number of Customers")

plt.tight_layout()
plt.savefig(
    r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\images\contract_vs_churn.png",
    dpi=300,
    bbox_inches="tight"
)
plt.show()

#------------------------------------------------------------------------------------


#Visualization 3 — Tenure vs Churn
# plt.figure(figsize=(8,5))

# sns.boxplot(
#     x="Churn",
#     y="tenure",
#     data=df,
#     hue="Churn",
#     palette="Set2",
#     legend=False
# )

# plt.title("Customer Tenure by Churn Status", fontsize=14)
# plt.xlabel("Churn Status")
# plt.ylabel("Tenure (Months)")

# plt.tight_layout()
# plt.show()

#------------------------------------------------------------------------------------

#Visualization 4 — Monthly Charges vs Churn
plt.figure(figsize=(8,5))

sns.boxplot(
    x="Churn",
    y="MonthlyCharges",
    data=df,
    hue="Churn",
    palette="Set2",
    legend=False
)

plt.title("Monthly Charges by Churn Status", fontsize=14)
plt.xlabel("Churn Status")
plt.ylabel("Monthly Charges")

plt.tight_layout()
plt.savefig(
    r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\images\monthlycharges_vs_churn.png",
    dpi=300,
    bbox_inches="tight"
)
plt.show()

#------------------------------------------------------------------------------------

#Visualization 5 — Internet Service vs Churn
# plt.figure(figsize=(8,5))

# sns.countplot(
#     x="InternetService",
#     hue="Churn",
#     data=df,
#     palette="Set2"
# )

# plt.title("Internet Service vs Customer Churn", fontsize=14)
# plt.xlabel("Internet Service")
# plt.ylabel("Number of Customers")

# plt.tight_layout()
# plt.show()

#------------------------------------------------------------------------------------


#Visualization 6 — Tech Support vs Churn
plt.figure(figsize=(8,5))

sns.countplot(
    x="TechSupport",
    hue="Churn",
    data=df,
    palette="Set2"
)

plt.title("Tech Support vs Customer Churn", fontsize=14)
plt.xlabel("Tech Support")
plt.ylabel("Number of Customers")

plt.tight_layout()
plt.savefig(
    r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\images\techsupport_vs_churn.png",
    dpi=300,
    bbox_inches="tight"
)
plt.show()

#------------------------------------------------------------------------------------


#Visualization 7 — Online Security vs Churn
# plt.figure(figsize=(8,5))

# sns.countplot(
#     x="OnlineSecurity",
#     hue="Churn",
#     data=df,
#     palette="Set2"
# )

# plt.title("Online Security vs Customer Churn", fontsize=14)
# plt.xlabel("Online Security")
# plt.ylabel("Number of Customers")

# plt.tight_layout()
# plt.show()

#------------------------------------------------------------------------------------


#Visualization 8 — Correlation Heatmap
numeric_df = df.select_dtypes(include=["int64", "float64"])
plt.figure(figsize=(8,6))

sns.heatmap(
    numeric_df.corr(),
    annot=True,
    cmap="coolwarm",
    fmt=".2f"
)

plt.title("Correlation Heatmap", fontsize=14)

plt.tight_layout()
plt.savefig(
    r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\images\correlation_heatmap.png",
    dpi=300,
    bbox_inches="tight"
)
plt.show()