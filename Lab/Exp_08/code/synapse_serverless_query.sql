-- Experiment 08, Azure Synapse serverless SQL pool
-- Server: calab-synapse-141-ondemand.sql.azuresynapse.net
-- Database: master
-- Source: https://calablake141.dfs.core.windows.net/rawdata/student_performance.csv
-- Power BI used this OPENROWSET statement directly. No view was created in
-- Synapse Studio, because Synapse Studio could not connect to the serverless
-- SQL pool in this workspace, see the PDF Section 4, Step 2.

SELECT * FROM OPENROWSET(
    BULK 'https://calablake141.dfs.core.windows.net/rawdata/student_performance.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE,
    FIELDTERMINATOR = ','
) WITH (
    StudentID INT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(20),
    MathScore INT,
    ReadingScore INT,
    WritingScore INT,
    AttendanceRate FLOAT,
    StudyHoursPerWeek FLOAT,
    ParentEducation VARCHAR(100),
    LunchType VARCHAR(50),
    TestPrepCourse VARCHAR(50),
    FinalGrade VARCHAR(10)
) AS StudentData;

-- Verification, run against the same OPENROWSET result in Power BI or Synapse:
-- COUNT(*) = 50; AVG(MathScore) = 67.32; AVG(ReadingScore) = 67.38; AVG(WritingScore) = 66.36.
-- FinalGrade counts: A 16, B 12, C 10, D 6, F 6. Gender counts: Female 25, Male 25.
