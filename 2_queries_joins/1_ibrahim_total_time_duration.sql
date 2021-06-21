SELECT sum(submissions.duration) as total_duration
from assignment_submissions as submissions
JOIN students 
ON students.id = submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';