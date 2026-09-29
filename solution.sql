CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);


CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseID INT,
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology');

INSERT INTO Faculty VALUES
(101, 'Dr. Ravi', 1),
(102, 'Dr. Kumar', 2);

INSERT INTO Course VALUES
(201, 'DBMS', 101),
(202, 'Computer Networks', 102);

INSERT INTO Student VALUES
(1001, 'Arun', 201),
(1002, 'Priya', 202),
(1003, 'Karthik', 201);

SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Faculty;
SELECT * FROM Department;

