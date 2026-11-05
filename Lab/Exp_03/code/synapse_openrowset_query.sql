-- Experiment 03: query titanic.csv in ADLS Gen2 from Synapse serverless SQL
-- File shown in Screenshot 3, Step_11, Experiment 01 source
SELECT TOP 100 *
FROM OPENROWSET(
    BULK 'https://calablake141.dfs.core.windows.net/rawdata/titanic.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS [result];
