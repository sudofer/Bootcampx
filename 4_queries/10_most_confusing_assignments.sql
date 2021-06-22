select assignments.id,
assignments.day,
assignments.chapter,
count(assistance_requests.assignment_id)