--select * from studentDetails.Courses
--select * from studentDetails.Students
--select * from studentDetails.Enrollments
--joins demo

--1)inner join
--Q1)Retrieve the names of all students along with the names of the courses they are enrolled in
select s.StudentName,c.CourseName
from studentDetails.Students as s
inner join studentDetails.Courses as c
on s.CourseID=c.CourseID

--Q2)Fetch the list of students who are enrolled in the course named "Mathematics.
select s.*
from studentDetails.Students as s
inner join studentDetails.Courses as c 
on s.CourseID= c.CourseID
where c.CourseName='Mathematics'

--Q3)Find the courses along with the enrollment date for each student.
select s.StudentName,e.EnrollmentDate,c.CourseName
from studentDetails.Students as s
inner join studentDetails.Enrollments as e
on s.StudentId=e.StudentId
inner join studentDetails.Courses as c 
on e.CourseID= c.CourseID