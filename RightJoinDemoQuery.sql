--Right join problm statement solution


--Q1)Fetch all courses and their enrolled students. Include courses that have no enrolled students

select 
    c.CourseName,
    s.StudentName
from 
    studentDetails.Enrollments as e
right join 
    studentDetails.Courses as c
on 
    e.CourseID = c.CourseID
left join 
    studentDetails.Students as s
on 
    e.StudentID = s.StudentID;

--Display all enrollment details along with the corresponding student names. Include enrollments without valid students.
select 
	e.*,s.StudentName
from 
	studentDetails.Students as s
right join 
	studentDetails.Enrollments as e
on
	s.StudentID=e.StudentID
