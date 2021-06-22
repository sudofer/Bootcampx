


Select teachers.name, 
students.name, 
assignments.name,
(assistance_requests.completed_at - assistance_requests.started_at) as duration
from teachers 
JOIN assistance_requests on teachers.id = teacher_id
join students on students.id = student_id
join assignments on assignments.id = assignment_id
ORDER BY duration;









