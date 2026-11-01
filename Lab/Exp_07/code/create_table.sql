IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentPerformance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentPerformance] (
    [StudentID] INT,
    [Name] NVARCHAR(100),
    [Age] INT,
    [Gender] NVARCHAR(20),
    [MathScore] INT,
    [ReadingScore] INT,
    [WritingScore] INT,
    [AttendanceRate] FLOAT,
    [StudyHoursPerWeek] INT,
    [ParentEducation] NVARCHAR(50),
    [LunchType] NVARCHAR(50),
    [TestPrepCourse] NVARCHAR(50),
    [FinalGrade] NVARCHAR(10)
)
END
