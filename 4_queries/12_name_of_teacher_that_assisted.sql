select distinct
  teachers.name as teacher,
  cohorts.name as cohort
from teachers
join assistance_requests on teachers.id = teacher_id 
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;