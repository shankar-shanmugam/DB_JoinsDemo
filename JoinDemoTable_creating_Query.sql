--create database DemoJoins
--go

create schema studentDetails
go

CREATE TABLE studentDetails.Students (
    StudentID INT PRIMARY KEY,
    StudentName NVARCHAR(100),
    CourseID INT
);

CREATE TABLE studentDetails.Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    CourseFee DECIMAL(10, 2)
);
CREATE TABLE studentDetails.Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES studentDetails.Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES studentDetails.Courses(CourseID)
);

-- Insert data into Students
INSERT INTO studentDetails.Students (StudentID, StudentName, CourseID)
VALUES 
    (5, 'Eve', NULL),
    (6, 'Frank', 104),
    (7, 'Grace', 105),
    (8, 'Hank', 106),
    (9, 'Ivy', 107),
    (10, 'Jack', 108),
    (11, 'Kathy', NULL),
    (12, 'Leo', 109),
    (13, 'Mia', 110),
    (14, 'Nina', 101),
    (15, 'Oscar', 102),
    (16, 'Paul', 103),
    (17, 'Quincy', NULL),
    (18, 'Rita', 104),
    (19, 'Steve', 105),
    (20, 'Tina', 106),
    (21, 'Uma', 107),
    (22, 'Victor', NULL),
    (23, 'Wendy', 108),
    (24, 'Xander', 109),
    (25, 'Yara', 110),
    (26, 'Zack', NULL);

-- Insert data into Courses
INSERT INTO studentDetails.Courses (CourseID, CourseName, CourseFee)
VALUES 
    (104, 'Biology', 800.00),
    (105, 'English', 400.00),
    (106, 'History', 550.00),
    (107, 'Geography', 450.00),
    (108, 'Computer Science', 900.00),
    (109, 'Art', 350.00),
    (110, 'Music', 300.00);

-- Insert data into Enrollments
INSERT INTO studentDetails.Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES 
    (1, 1, 101, '2025-01-01'),
    (2, 3, 102, '2025-01-02'),
    (3, 4, 103, '2025-01-03'),
    (4, 6, 104, '2025-01-04'),
    (5, 7, 105, '2025-01-05'),
    (6, 8, 106, '2025-01-06'),
    (7, 9, 107, '2025-01-07'),
    (8, 10, 108, '2025-01-08'),
    (9, 12, 109, '2025-01-09'),
    (10, 13, 110, '2025-01-10'),
    (11, 14, 101, '2025-01-11'),
    (12, 15, 102, '2025-01-12'),
    (13, 16, 103, '2025-01-13'),
    (14, 18, 104, '2025-01-14'),
    (15, 19, 105, '2025-01-15'),
    (16, 20, 106, '2025-01-16'),
    (17, 21, 107, '2025-01-17'),
    (18, 23, 108, '2025-01-18'),
    (19, 24, 109, '2025-01-19'),
    (20, 25, 110, '2025-01-20');

