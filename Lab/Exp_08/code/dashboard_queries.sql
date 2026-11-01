-- Experiment 08, dashboard queries, table StudentData in Power BI
-- Source: Synapse serverless OPENROWSET over student_performance.csv, 50 rows.

-- KPI cards
-- SELECT COUNT(StudentID) AS TotalStudents FROM StudentData; -- 50
-- SELECT AVG(MathScore) AS AvgMath FROM StudentData; -- 67.32
-- SELECT AVG(ReadingScore) AS AvgReading FROM StudentData; -- 67.38
-- SELECT AVG(WritingScore) AS AvgWriting FROM StudentData; -- 66.36

-- Clustered column chart, average scores by FinalGrade
-- SELECT FinalGrade, AVG(MathScore) AS AvgMath, AVG(ReadingScore) AS AvgReading,
--        AVG(WritingScore) AS AvgWriting FROM StudentData GROUP BY FinalGrade;

-- Clustered bar chart, count by FinalGrade
-- SELECT FinalGrade, COUNT(StudentID) AS StudentCount FROM StudentData GROUP BY FinalGrade;

-- Donut chart, count by Gender
-- SELECT Gender, COUNT(StudentID) AS StudentCount FROM StudentData GROUP BY Gender;

-- Table, FinalGrade, count, average scores
-- SELECT FinalGrade, COUNT(StudentID) AS StudentCount, AVG(MathScore) AS AvgMath,
--        AVG(ReadingScore) AS AvgReading, AVG(WritingScore) AS AvgWriting
-- FROM StudentData GROUP BY FinalGrade ORDER BY FinalGrade;
