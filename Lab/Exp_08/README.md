# Experiment 08 - Visualize real-time data from Azure Synapse Analytics in Power BI

Course: Cloud Analytics-Lab, 25MCASC302L, Semester III, MCA, JAIN (Deemed-to-be University)
Student: ABHISHEK KUMAR, USN 25MCAR0141, Spec SCT
Faculty: Dr. Prabhakaran Abraham, Associate Professor

## Summary
Power BI report Exp08_PowerBI_Synapse, built from a direct query to the Azure Synapse serverless SQL pool, over student_performance.csv in Azure Data Lake Storage Gen2. No dedicated SQL pool and no Spark pool were created.

## Power BI report
- Report: Exp08_PowerBI_Synapse
- Report URL: https://app.powerbi.com/groups/cfa9da9e-3370-4b81-b46c-b14de945b284/reports/c179d7f7-ff78-424f-9008-9a7f501f0a63/04bf88715006c59c07d8?experience=power-bi
- Report ID: c179d7f7-ff78-424f-9008-9a7f501f0a63
- Semantic model ID: 58d8ce9b-ac91-45e9-9dab-dfa9f835608b
- Workspace: My workspace, cfa9da9e-3370-4b81-b46c-b14de945b284
- Source: Synapse serverless calab-synapse-141-ondemand.sql.azuresynapse.net, database master, Organizational account
- Query: OPENROWSET over https://calablake141.dfs.core.windows.net/rawdata/student_performance.csv, 50 rows, 13 columns, Power Query preview 1.52 seconds
- Connection mode: Import, verified in model view, Storage mode Import, Data refreshed 11/1/2026, 9:24:21 PM. Not DirectQuery, even though the experiment title refers to real-time data. Refresh is the real-time mechanism demonstrated here.
- Refreshed in workspace list: 11/1/2026, 9:24:22 PM

## Dashboard data, verified
- KPI cards: Count of StudentID 50; Average MathScore 67.32; Average ReadingScore 67.38; Average WritingScore 66.36
- Grade counts: A 16, B 12, C 10, D 6, F 6
- Gender: Female 25, Male 25
- Averages by FinalGrade, Math / Reading / Writing: A 87.50 / 90.38 / 88.63; B 73.17 / 76.58 / 74.83; C 57.60 / 53.80 / 53.10; D 46.67 / 43.67 / 42.17; F 38.67 / 34.00 / 36.33
- Totals: 50, 67.32, 67.38, 66.36. Sums: Math 3366, Reading 3369, Writing 3318.

## Azure resources
- Resource group: 25MCAR0141
- Storage: calablake141, Data Lake Storage Gen2, container rawdata, student_performance.csv
- Synapse workspace: calab-synapse-141, Central India, provisioning Succeeded
- Synapse serverless endpoint: calab-synapse-141-ondemand.sql.azuresynapse.net
- No dedicated SQL pool, no Spark pool

## Synapse Studio note, honest record
Synapse Studio could not connect to the serverless SQL pool in this workspace, with Run disabled and No database available, even after firewall rules AllowClientIP, AllowClientRange, and temporary AllowAllTemp, and even though the user already held Synapse Administrator. The view vw_StudentPerformance was therefore not created in Synapse Studio. The Power BI direct OPENROWSET query in Step 3 of the PDF is the verified route used instead.

## Files
- CA_Exp08_PowerBI_Synapse.pdf - lab record, college format, with Screenshots section
- README.md - this file
- screenshots/ - real Power BI browser screenshots, not replotted charts
  - screenshot_powerbi_report_reading.jpg - report reading view at 50 percent, all visuals
  - screenshot_powerbi_report_edit.jpg - report editing view
  - screenshot_powerbi_query_preview.jpg - Power Query preview, Synapse server, 50 rows, 13 columns
  - screenshot_powerbi_semantic_model.jpg - model view, Import, refreshed 9:24:21 PM
  - screenshot_powerbi_workspace.jpg - My workspace list, report and semantic model, refreshed 9:24:22 PM
- code/ - Synapse query and dashboard queries
  - synapse_serverless_query.sql - OPENROWSET statement used in Power BI
  - dashboard_queries.sql - KPI, chart, and table queries
- images/ - architecture diagram
  - architecture_diagram.png - Data Lake to Synapse serverless to Power BI

## Cost note
No hourly pool charge, because no dedicated or Spark pool was created. Remove the temporary firewall rule AllowAllTemp after submission, to restore the previous firewall posture.
