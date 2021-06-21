SELECT name, id, cohort_id
FROM students
WHERE email is null 
  OR phone is null; 