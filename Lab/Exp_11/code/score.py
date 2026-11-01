import json, pickle, os
import pandas as pd
def init():
    global model
    model_path = os.path.join(os.getenv("AZUREML_MODEL_DIR", ""), "model.pkl")
    if not os.path.exists(model_path):
        model_path = "model.pkl"
    with open(model_path, "rb") as f:
        model = pickle.load(f)
def run(raw_data):
    try:
        data = json.loads(raw_data)
        if isinstance(data, dict) and "data" in data:
            rows = data["data"]
        elif isinstance(data, dict):
            rows = [data]
        else:
            rows = data
        cols = ["Age", "Gender", "ReadingScore", "WritingScore", "AttendanceRate", "StudyHoursPerWeek"]
        df = pd.DataFrame(rows, columns=cols)
        preds = model.predict(df)
        return json.dumps({"predictions": [float(x) for x in preds]})
    except Exception as e:
        return json.dumps({"error": str(e)})
