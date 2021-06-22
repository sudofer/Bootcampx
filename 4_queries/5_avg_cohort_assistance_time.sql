SELECT cohorts.name ,avg(assistance_requests.completed_at - assistance_requests.started_at) as  average_assistance_request_duration 
from assistance_requests
JOIN students on students.id = student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
ORDER BY average_assistance_request_duration;