IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentPerformance_Exp09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentPerformance_Exp09] (
    [StudentID] INT,
    [Name] NVARCHAR(100),
    [Age] INT,
    [Gender] NVARCHAR(20),
    [MathScore] INT,
    [ReadingScore] INT,
    [WritingScore] INT,
    [AttendanceRate] FLOAT,
    [StudyHoursPerWeek] FLOAT,
    [ParentEducation] NVARCHAR(50),
    [LunchType] NVARCHAR(50),
    [TestPrepCourse] NVARCHAR(50),
    [FinalGrade] NVARCHAR(10)
)
END
