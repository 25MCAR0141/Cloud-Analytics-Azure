import os, json, pickle, pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
import argparse
p=argparse.ArgumentParser(); p.add_argument("--data", required=True); a=p.parse_args()
df=pd.read_csv(os.path.join(a.data, "student_performance.csv")) if os.path.isdir(a.data) else pd.read_csv(a.data)
df=df.copy(); df["Gender"]=(df["Gender"]=="Male").astype(int)
feats=["Age","Gender","ReadingScore","WritingScore","AttendanceRate","StudyHoursPerWeek"]
for c in feats: df[c]=df[c].fillna(df[c].median())
X=df[feats]; y=df["MathScore"]
Xtr,Xte,ytr,yte=train_test_split(X,y,test_size=0.2,random_state=42)
m=RandomForestRegressor(n_estimators=100, max_depth=3, min_samples_split=2, random_state=42, n_jobs=-1)
m.fit(Xtr,ytr); pred=m.predict(Xte)
rmse=mean_squared_error(yte,pred)**0.5; r2=r2_score(yte,pred)
print(f"BEST RMSE={rmse:.4f} R2={r2:.4f} rows={len(df)}")
os.makedirs("outputs", exist_ok=True)
with open("outputs/model.pkl","wb") as f: pickle.dump(m,f)
with open("outputs/metrics.json","w") as f: json.dump({"rows":int(len(df)),"rmse":rmse,"r2":r2,"n_estimators":100,"max_depth":3,"min_samples_split":2,"features":feats},f,indent=2)
