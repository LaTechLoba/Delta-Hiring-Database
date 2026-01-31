-- Query 1: Show Candidates and the Job Positions They Applied For
-- Purpose: Displays candidate name, job title, and application status

SELECT 
    Candidate.Name AS Candidate_Name,
    Job_Position.Title AS Job_Title,
    Application.Status
FROM 
    (Candidate
    INNER JOIN Application 
        ON Candidate.Candidate_ID = Application.Candidate_ID)
    INNER JOIN Job_Position
        ON Application.Position_ID = Job_Position.Position_ID;

-- Query 2: Count Applications Per Department
-- Purpose: Shows total number of applications received by each department

SELECT 
    Department.Name AS Department_Name,
    COUNT(Application.Application_ID) AS Total_Applications
FROM 
    (Department
    INNER JOIN Job_Position
        ON Department.Department_ID = Job_Position.Department_ID)
    INNER JOIN Application
        ON Job_Position.Position_ID = Application.Position_ID
GROUP BY 
    Department.Name;

-- Query 3: Show Candidate Assessment Results
-- Purpose: Displays assessment type, score, and date for each candidate

SELECT 
    Candidate.Name AS Candidate_Name,
    Assessment.[Type] AS Assessment_Type,
    Assessment.Score,
    Assessment.[Assessment_Date]
FROM 
    (Assessment
    INNER JOIN Application
        ON Assessment.Application_ID = Application.Application_ID)
    INNER JOIN Candidate
        ON Application.Candidate_ID = Candidate.Candidate_ID;





