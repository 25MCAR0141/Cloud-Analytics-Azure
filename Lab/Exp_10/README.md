# Experiment 10 - Optimize a Machine Learning Model by Tuning Hyperparameters Using Azure ML HyperDrive

**Name:** ABHISHEK KUMAR | **USN:** 25MCAR0141 | **Sem:** III | **Spec:** SCT
**Subject:** Cloud Analytics-Lab | **Code:** 25MCASC302L | **Faculty:** Dr. Prabhakaran Abraham, Associate Professor
**Course Outcome:** CO5

## Summary
Random Forest regressor predicting MathScore from Age, Gender, ReadingScore, WritingScore, AttendanceRate, and StudyHoursPerWeek, tuned with an Azure ML CLI v2 sweep job (HyperDrive process), 8 trials, primary metric RMSE, goal minimize.

## Results
- Sweep job: `stoic_date_sllzbmj5xh`, Completed, 12m 7s, 8 completed, 0 failed, 0 canceled
- Best trial: `stoic_date_sllzbmj5xh_4`, RMSE 1.487349, R2 0.993999
- Best hyperparameters: n_estimators 100, max_depth 3, min_samples_split 2
- Best model retrain job: `teal_owl_f1rn3x3nk6`, Completed, same RMSE and R2
- Registered model: `student-mathscore-rf`, version 1, workspace `calab-ml-141`
- Compute: `cpu-cluster`, Standard_DS2_v2, min 0, max 2, idle 120s, Central India
- Data asset: `student-performance:1`, 50 rows, 40 train / 10 test, median imputation for Age, AttendanceRate, StudyHoursPerWeek

## Files
- `CA_Exp10_AzureML_HyperDrive.pdf` - full experiment report
- `screenshots/` - 6 real Azure ML Studio page captures
- `code/` - train.py, sweep.yaml, train_best.py, best_job.yaml, student_performance.csv
- `images/` - architecture_diagram.png

## Notes
- HyperDrive is the Azure ML v1 name; the current CLI v2 equivalent used here is a sweep job. The report states this equivalence explicitly.
- The first sweep submission failed on environment name (sklearn 1.5 not available, corrected to 1.0, version 36). The second sweep failed on NaN values in Age, corrected by median imputation. No metric from either failed attempt is used.
- Studio URLs are in Section 5 of the PDF.
