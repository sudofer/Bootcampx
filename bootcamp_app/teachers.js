const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

cohort = process.argv.slice(2)[0];
const values = [`${cohort}`]
pool.query(`select
teachers.name as teacher,
cohorts.name as cohort,
count(teachers.name)
from teachers
join assistance_requests on teachers.id = teacher_id 
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
WHERE cohorts.name = $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`,values).then(res => {
  console.log(res.rows);
}).catch(err => {
  console.log(error);
})