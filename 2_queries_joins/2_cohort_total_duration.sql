SELECT sum(duration) as total_duration
FROM assignment_submissions as submissions
JOIN students on students.id = submissions.student_id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';










