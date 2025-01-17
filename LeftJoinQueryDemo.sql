--select * from studentDetails.Courses
--select * from studentDetails.Students
--select * from studentDetails.Enrollments

--Left Join
--Q1)Retrieve all students and their enrolled courses. Include students who are not enrolled in any course
select
	s.StudentId,
	s.StudentName,
	c.CourseId,
	c.CourseName
from 
	studentDetails.Students as s
left join
	studentDetails.Courses as c
on
	s.CourseID=c.CourseID

--Q2)Get a list of all courses along with the names of students enrolled in them. Include courses with no enrolled students.

select 
    c.CourseName,
    s.StudentName
from 
    studentDetails.Courses as c
left join 
    studentDetails.Enrollments as e 
on 
    c.CourseID = e.CourseID
left join 
    studentDetails.Students as s 
on 
    e.StudentID = s.StudentID;
 
 --Q3)Display all students and their enrollment details, including students with no enrollment

 select
	s.StudentID,s.StudentName,e.EnrollmentID,e.EnrollmentDate
from 
	studentDetails.Students as s
left join 
	studentDetails.Enrollments as e
on
	s.StudentID=e.StudentID



