select
  teachers.name as teacher,
  cohorts.name as cohort,
  count(teachers.name)
from teachers
join assistance_requests on teachers.id = teacher_id 
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;