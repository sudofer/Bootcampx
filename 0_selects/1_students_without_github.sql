SELECT id, name, email, cohort_id
FROM students where github IS NULL
ORDER BY cohort_id;