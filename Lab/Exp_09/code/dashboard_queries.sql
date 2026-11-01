SELECT COUNT(*) AS TotalStudents FROM StudentPerformance;

SELECT
    FinalGrade,
    COUNT(*) AS StudentCount,
    AVG(CAST(MathScore AS FLOAT)) AS AvgMathScore,
    AVG(CAST(ReadingScore AS FLOAT)) AS AvgReadingScore,
    AVG(CAST(WritingScore AS FLOAT)) AS AvgWritingScore
FROM StudentPerformance
GROUP BY FinalGrade
ORDER BY FinalGrade;

SELECT
    Gender,
    COUNT(*) AS StudentCount
FROM StudentPerformance
GROUP BY Gender;

SELECT
    AVG(CAST(MathScore AS FLOAT)) AS AvgMathScore,
    AVG(CAST(ReadingScore AS FLOAT)) AS AvgReadingScore,
    AVG(CAST(WritingScore AS FLOAT)) AS AvgWritingScore,
    AVG(AttendanceRate) AS AvgAttendanceRate,
    AVG(CAST(StudyHoursPerWeek AS FLOAT)) AS AvgStudyHoursPerWeek
FROM StudentPerformance;
