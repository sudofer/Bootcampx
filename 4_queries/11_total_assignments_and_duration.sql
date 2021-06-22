select 
assignments.day,
count(assignments.*),
sum(assignments.duration)
from assignments
GROUP by assignments.day
ORDER BY day;