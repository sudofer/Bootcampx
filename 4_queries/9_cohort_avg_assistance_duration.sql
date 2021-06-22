
SELECT avg(total_duration)
FROM ( 
  SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  from assistance_requests 
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration) as average_total_duration;

