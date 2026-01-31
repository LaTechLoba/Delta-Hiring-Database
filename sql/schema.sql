-- =========================================
-- Delta Hiring Database Schema
-- =========================================
-- This schema defines the relational structure for managing
-- candidates, applications, interviews, offers, and hiring workflow.

-- Table: Candidate
-- Stores applicant personal and contact information

CREATE TABLE Candidate (
    Candidate_ID AUTOINCREMENT PRIMARY KEY,
    Name TEXT (100),
    Resume_Link TEXT (255),
    DOB DATE,
    Application_Date DATE,
    Email TEXT (100),
    SSN TEXT (20),
    Age INTEGER,
    Address TEXT (255)
);
-- ---------------------------------------------------------
-- Table: Department
-- Stores company department information

CREATE TABLE Department (
    Department_ID AUTOINCREMENT PRIMARY KEY,
    Name TEXT (100),
    Manager TEXT (100),
    Location TEXT (100)
);
-- ---------------------------------------------------------
-- Table: Job_Position
-- Stores available job roles within departments

CREATE TABLE Job_Position (
    Position_ID AUTOINCREMENT PRIMARY KEY,
    Title TEXT (100),
    Department TEXT (100),
    Location TEXT (100),
    Salary CURRENCY
);
-- ---------------------------------------------------------
-- Table: Application
-- Links candidates to job positions

CREATE TABLE Application (
    Application_ID AUTOINCREMENT PRIMARY KEY,
    Candidate_ID LONG,
    Position_ID LONG,
    Status TEXT (50),
    Submission_Date DATE,
    FOREIGN KEY (Candidate_ID) REFERENCES Candidate (Candidate_ID),
    FOREIGN KEY (Position_ID) REFERENCES Job_Position (Position_ID)
);
-- ---------------------------------------------------------
-- Table: Assessment
-- Stores candidate assessment results

CREATE TABLE Assessment (
    Assessment_ID AUTOINCREMENT PRIMARY KEY,
    Application_ID LONG,
    [Type] TEXT (50),
    Score DOUBLE,
    [Assessment_Date] DATE,
    CONSTRAINT FK_Assessment_Application 
        FOREIGN KEY (Application_ID) 
        REFERENCES Application (Application_ID)
);
-- ---------------------------------------------------------
-- Table: Interview
-- Records interview details and outcomes

CREATE TABLE Interview (
    Interview_ID AUTOINCREMENT PRIMARY KEY,
    Application_ID LONG,
    [Interview_Date] DATE,
    [Interview_Type] TEXT (50),
    Feedback TEXT (255),
    Result TEXT (50),
    CONSTRAINT FK_Interview_Application 
        FOREIGN KEY (Application_ID) 
        REFERENCES Application (Application_ID)
);
-- ---------------------------------------------------------
-- Table: Offer
-- Stores job offers extended to candidates
