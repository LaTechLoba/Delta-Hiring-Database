# Delta Airlines Hiring Database

## Overview
This project demonstrates the design and implementation of a relational hiring database for Delta Airlines.

## Tools Used
- Microsoft Access
- SQL
- Microsoft Visio

## Project Description
I designed a relational database to manage applicant information, job postings, interviews, and hiring decisions. SQL queries were written to analyze application status, hiring progress, and recruitment metrics.

## Documentation

The full database design report, including business rules, normalized ERD, simplified data dictionary, and implementation notes, can be found in the `documentation/` folder.

## Repository Structure
- `/sql` – SQL queries used for analysis
- `/erd` – Entity Relationship Diagram created in Visio
- `/screenshots` – Query results and Access screenshots
- `/documentation` – Supporting documentation

 ## Entity Relationship Diagram (ERD)
The ERD for this project was created using Microsoft Visio to visually model the relational database structure before implementation.

Visio was used to:
- Identify core entities (Candidate, Application, Job_Position, Department, etc.)
- Define primary keys and foreign key relationships
- Establish one-to-many relationships between tables
- Ensure proper normalization (1NF, 2NF, 3NF)
- Validate relational integrity before writing SQL code

Designing the ERD in Visio allowed the team to clearly visualize data flow across the hiring process, from application submission through interviews, offers, background checks, and onboarding.

The finalized ERD served as the blueprint for implementing the database schema in Microsoft Access.
The ERD was iteratively refined to reduce redundancy and ensure referential integrity across all tables.

## How to Use This Project

1. Review the Entity Relationship Diagram in the `erd/` folder.
2. Run the `schema.sql` file to create all database tables and relationships.
3. Run the `queries.sql` file to execute sample SELECT JOIN queries and view data analysis results.

This project was built using Microsoft Access SQL syntax.
