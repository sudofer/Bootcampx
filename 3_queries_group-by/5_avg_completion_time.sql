SELECT students.name, AVG(assignment_submissions.duration) as average_time
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_time DESC;




