# Experiment 12 - Azure AutoML Classification

**Name:** ABHISHEK KUMAR | **USN:** 25MCAR0141 | **Sem:** III | **Spec:** SCT
**Subject:** Cloud Analytics-Lab | **Code:** 25MCASC302L | **Faculty:** Dr. Prabhakaran Abraham, Associate Professor
**Course Outcome:** CO5

## Summary
AutoML classification on student performance, target FinalGrade, 50 rows, 10 models, best model by accuracy.

## Results
- AutoML job: quirky_nut_278gnp0lrk, Completed, 10m 2s, experiment exp12-automl
- Data: student-performance-table:2, clean file, 50 rows, 10 columns, 0 missing values
- Best model: MaxAbsScaler, LightGBM, child quirky_nut_278gnp0lrk_0, accuracy 1.00000
- Best model metrics: accuracy, precision, recall, F1, AUC macro/weighted/micro 1.0000, log loss 0.0001, balanced accuracy 1.0000, Matthews 1.0000
- Confusion matrix: A 16, B 12, C 10, D 6, F 6, total 50, off-diagonal 0
- Models: 9 at 1.00000, SGD at 0.98000
- Compute: cpu-cluster, Standard_DS2_v2, min 0, max 2 by CLI

## Limitations, stated in the PDF
- First two AutoML jobs failed at setup: 45 usable training rows after default 90/10 split, below AutoML minimum 50.
- Successful job used validation_data set to the same clean file, so training is all 50 rows, validation is training rows, accuracy is training accuracy, not held-out accuracy.
- FinalGrade is derived from scores, so perfect accuracy on training rows is expected, not proof of generalisation.

## Files
- `CA_Exp12_AzureML_AutoML.pdf` - full experiment report
- `screenshots/` - 6 real Azure ML Studio page captures, true portrait aspect
- `code/` - automl.yaml, student_performance_clean.csv, MLTable_clean
- `images/` - architecture_diagram.png
