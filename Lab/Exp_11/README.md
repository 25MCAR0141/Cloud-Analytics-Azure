# Experiment 11 - Deploy a Trained Machine Learning Model as a REST API

**Name:** ABHISHEK KUMAR | **USN:** 25MCAR0141 | **Sem:** III | **Spec:** SCT
**Subject:** Cloud Analytics-Lab | **Code:** 25MCASC302L | **Faculty:** Dr. Prabhakaran Abraham, Associate Professor
**Course Outcome:** CO5

## Summary
Best model from Experiment 10, student-mathscore-rf version 1, deployed as a managed online endpoint in Azure ML, tested with a real JSON request.

## Results
- Endpoint: mathscore-endpoint-141, Managed, Central India, Succeeded
- Scoring URI: https://mathscore-endpoint-141.centralindia.inference.ml.azure.com/score
- Deployment: blue, Standard_DS2_v2, 1 instance, traffic 100 percent, Succeeded
- Model: student-mathscore-rf:1, custom_model, Exp10 best trial RMSE 1.487349, R2 0.993999
- Test request: [[21, 1, 85, 88, 90, 10], [22, 0, 70, 72, 80, 6]]
- Test response: predictions [76.71210822510825, 68.7096626984127]
- No endpoint key is recorded in this repository.

## Files
- `CA_Exp11_AzureML_ModelDeployment.pdf` - full experiment report
- `screenshots/` - 4 real Azure ML Studio page captures, true portrait aspect
- `code/` - score.py, endpoint.yaml, deployment.yaml, sample_request.json
- `images/` - architecture_diagram.png

## Note
Endpoint deletion after testing is planned to stop hourly DS2_v2 charge. The scoring URI in the report is the URI tested while live.
