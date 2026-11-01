# Experiment 09 - Evaluate a full data pipeline from raw data ingestion to visualization in Power BI

Course: Cloud Analytics-Lab, 25MCASC302L, Semester III, MCA, JAIN (Deemed-to-be University)
Student: ABHISHEK KUMAR, USN 25MCAR0141, Spec SCT
Faculty: Dr. Prabhakaran Abraham, Associate Professor

## Summary
Full pipeline: Blob Storage to ADF to Azure SQL Database to Power BI, with row count validated at each stage. No rows lost, no rows duplicated.

## Pipeline execution, verified
- ADF pipeline: PL_Exp09_FullPipeline
- Run: b2b9f84b-31b9-49d6-b6b5-6c0ab25e477a, Succeeded, duration 24,707 ms, 2026-11-02
- Activity: CopyBlobToSqlExp09, activity run 28e763d5-d60d-43b0-a56b-9a26d828cc45
- Rows read / copied: 50 / 50
- Data read / written: 3,174 bytes / 4,754 bytes
- Copy duration: 11 seconds, 4 Data Integration Units, AutoResolve Central India
- Source: calablake141, rawdata, student_performance.csv
- Sink: calab-db-141, table StudentPerformance_Exp09, new table for this experiment

## Power BI report
- Report: Exp09_PowerBI_FullPipeline
- Report URL: https://app.powerbi.com/groups/cfa9da9e-3370-4b81-b46c-b14de945b284/reports/d5f5e8a6-ad9b-4ccf-8b52-19415661c3ef/c019345000591b7a516d?experience=power-bi
- Report ID: d5f5e8a6-ad9b-4ccf-8b52-19415661c3ef
- Semantic model ID: 2c19698a-c0b2-4818-b9d7-38e7b5bc6f38
- Source: SqlServer calab-sql-141.database.windows.net, database calab-db-141, table StudentPerformance_Exp09, Microsoft account
- Connection mode: Import, last refresh succeeded 11/2/2026, 12:09:38 AM, no gateway needed
- KPIs: Count 50, Math 67.32, Reading 67.38, Writing 66.36
- Grades: A 16, B 12, C 10, D 6, F 6. Gender: Female 25, Male 25. Table total 50, 67.32, 67.38, 66.36.

## Files
- CA_Exp09_PowerBI_FullPipeline.pdf - lab record, college format, with Screenshots section
- README.md - this file
- screenshots/ - real Power BI browser screenshots
  - screenshot_powerbi_report_reading.jpg
  - screenshot_powerbi_report_edit.jpg
  - screenshot_powerbi_semantic_model.jpg
  - screenshot_powerbi_gateway.jpg
- code/ - pipeline and SQL
  - pipeline_PL_Exp09_FullPipeline.json
  - create_table_exp09.sql
  - dashboard_queries.sql
- images/ - architecture diagram
  - architecture_diagram.png

## Cost note
No new billable resource was created. Keep SQL database only until submission is complete, then delete it and, if no other experiment needs it, the server.
