--cross join

--Generate all possible combinations of students and courses to simulate hypothetical enrollment options.

select 
    s.StudentName, 
    c.CourseName 
from 
    studentDetails.Students as s
cross join 
    studentDetails.Courses as c;

	
