import argparse, os, json, pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
import mlflow
def main():
    p=argparse.ArgumentParser()
    p.add_argument("--data", type=str, required=True)
    p.add_argument("--n_estimators", type=int, default=50)
    p.add_argument("--max_depth", type=int, default=5)
    p.add_argument("--min_samples_split", type=int, default=2)
    args=p.parse_args()
    df=pd.read_csv(os.path.join(args.data, "student_performance.csv")) if os.path.isdir(args.data) else pd.read_csv(args.data)
    df=df.copy()
    df["Gender"]=(df["Gender"]=="Male").astype(int)
    feats=["Age","Gender","ReadingScore","WritingScore","AttendanceRate","StudyHoursPerWeek"]
    for c in feats:
        df[c]=df[c].fillna(df[c].median())
    X=df[feats]
    y=df["MathScore"]
    Xtr,Xte,ytr,yte=train_test_split(X,y,test_size=0.2,random_state=42)
    m=RandomForestRegressor(n_estimators=args.n_estimators, max_depth=args.max_depth, min_samples_split=args.min_samples_split, random_state=42, n_jobs=-1)
    m.fit(Xtr,ytr)
    pred=m.predict(Xte)
    rmse=mean_squared_error(yte,pred)**0.5
    r2=r2_score(yte,pred)
    mlflow.log_metric("rmse", rmse)
    mlflow.log_metric("r2", r2)
    mlflow.log_params({"n_estimators":args.n_estimators,"max_depth":args.max_depth,"min_samples_split":args.min_samples_split})
    print(f"ROWS={len(df)} RMSE={rmse:.4f} R2={r2:.4f} n={args.n_estimators} depth={args.max_depth} split={args.min_samples_split}")
    os.makedirs("outputs", exist_ok=True)
    with open("outputs/metrics.json","w") as f:
        json.dump({"rows":int(len(df)),"rmse":rmse,"r2":r2,"n_estimators":args.n_estimators,"max_depth":args.max_depth,"min_samples_split":args.min_samples_split}, f, indent=2)
if __name__=="__main__":
    main()
