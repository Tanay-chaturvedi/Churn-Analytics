import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df=pd.read_csv(r"C:\Users\USER\OneDrive\Desktop\Churn-Analytics\dataset\Customer-Churn.csv")
print(df["Churn"].value_counts())
print(df.columns)

# sns.countplot(x="Churn",data=df,hue="Churn")
# plt.show()

print(df["Churn"].value_counts(normalize=True)*100)

print(df.groupby("Contract")["Churn"].value_counts(normalize=True)*100)


print(df.groupby("Churn")["tenure"].mean())
# sns.boxplot(x="tenure",y="Churn",data=df)
# plt.title("Tenure vs Churning")
# plt.xlabel("Tenure (Months)")
# plt.ylabel("Churn Status")
# plt.show()

print(df.groupby("Churn")["MonthlyCharges"].mean())# sns.boxplot(x="tenure",y="Churn",data=df)
# sns.boxplot(x="MonthlyCharges",y="Churn",data=df)
# plt.title("MonthlyCharges vs Churning")
# plt.xlabel("Monthly charges")
# plt.ylabel("Churn Status")
# plt.show()
print(df.groupby('TechSupport')['Churn'].value_counts(normalize=True))
no_tech = df[df["TechSupport"] == "No"]

print("*"*60)
print(no_tech.groupby("Churn")[['MonthlyCharges','tenure']].mean())

print(df.groupby("Dependents")["Churn"].value_counts(normalize=True))
# sns.countplot(x="Dependents", hue="Churn", data=df)
# plt.show()
print(df.groupby("Partner")["Churn"].value_counts(normalize=True))


print(df.groupby("InternetService")["Churn"].value_counts(normalize=True))
# sns.countplot(x="InternetService",data=df,hue="Churn")
# plt.show()

print(df.groupby("OnlineSecurity")["Churn"].value_counts(normalize=True))
print(df.groupby("MultipleLines")["Churn"].value_counts(normalize=True))

c_yes=df[df["Churn"]=="Yes"]
print(c_yes["Contract"].value_counts())

c_m=df[df["Contract"]=="Month-to-month"]
print(c_m["Churn"].value_counts(normalize=True)*100)

c_y=df[df["Churn"]=="Yes"]
print(df.groupby("PaymentMethod")["Churn"].value_counts(normalize=True)*100)
print(c_y["PaymentMethod"].value_counts())

print(df.groupby("PaymentMethod")["MonthlyCharges"].mean())
print("*"*60)
print(df.groupby("OnlineBackup")["Churn"].value_counts(normalize=True)*100 )
print(df.groupby("DeviceProtection")["Churn"].value_counts(normalize=True)*100 )
print(df.groupby("StreamingTV")["Churn"].value_counts(normalize=True)*100 )
print(df.groupby("StreamingMovies")["Churn"].value_counts(normalize=True)*100 )
print(df.groupby("PaperlessBilling")["Churn"].value_counts(normalize=True)*100 )
print(df["InternetService"].unique())
f_o=df[df["InternetService"]=="Fiber optic"]
print(f_o.groupby("TechSupport")["Churn"].value_counts(normalize=True)*100)
print(df.groupby("Dependents")["Churn"].value_counts(normalize=True)*100)
print("*"*70)
print(df.groupby("Contract")["Churn"].value_counts(normalize=True)*100)
print(df.groupby("InternetService")["Churn"].value_counts(normalize=True)*100)
print(df.groupby("TechSupport")["Churn"].value_counts(normalize=True)*100)
print(df.groupby("OnlineSecurity")["Churn"].value_counts(normalize=True)*100)
print(df.groupby("Churn")["tenure"].mean())
print(df.groupby("Churn")["MonthlyCharges"].mean())