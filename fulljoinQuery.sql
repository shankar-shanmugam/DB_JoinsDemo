--Full outer join Demo

--Q1)Retrieve all students and courses, including students without enrollments and courses without any students.
select
    s.StudentID,
    s.StudentName,
    c.CourseID,
    c.CourseName
from
    studentDetails.Students as s
full join
    studentDetails.Enrollments as e
on
    s.StudentID = e.StudentID
full join
    studentDetails.Courses as c
on
    e.CourseID = c.CourseID;

--Q2)List all possible matches of students and courses, showing NULL for missing matches
select 
    s.StudentID,
    s.StudentName,
    c.CourseID,
    c.CourseName,
    e.EnrollmentDate
from 
    studentDetails.Students as s
cross join 
    studentDetails.Courses as c
full join 
    studentDetails.Enrollments as e
on 
    s.StudentID = e.StudentID and c.CourseID = e.CourseID;

