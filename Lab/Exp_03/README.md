# Experiment 03 - Query Data from Azure Data Lake Storage using Azure Synapse Analytics

**Name:** ABHISHEK KUMAR | **USN:** 25MCAR0141 | **Sem:** III | **Spec:** SCT
**Subject:** Cloud Analytics-Lab | **Code:** 25MCASC302L | **Faculty:** Dr. Prabhakaran Abraham, Associate Professor
**Course Outcome:** CO2

## Summary
titanic.csv in ADLS Gen2 queried from Synapse serverless SQL with OPENROWSET, results inspected in the results grid and chart.

## Results
- Source: https://calablake141.dfs.core.windows.net/rawdata/titanic.csv, 58.89 KiB
- Query: OPENROWSET, serverless SQL pool, CSV, first row as header
- Columns returned: PassengerId, Survived, Pclass, Name, Sex, Age, Fare, Cabin, Embarked
- Monitoring: 10.00 MB data processed

## Honest limitation
The file queried is structured CSV data. No unstructured file was queried in this work, and no unstructured result is claimed.

## Source of screenshots
Screenshots are copies of the original Experiment 01 files, kept under their original Step names, because this query work was first recorded under Experiment 01. Exp_01 itself is unchanged.

## Files
- `CA_Exp03_Synapse_Query_ADLS.pdf` - full experiment report, 8 pages
- `screenshots/` - 6 original Exp_01 ADLS/Synapse screenshots, landscape
- `code/` - synapse_openrowset_query.sql, the OPENROWSET query shown in Screenshot 3
- `images/` - architecture_diagram.png
