SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students on students.id = student_id
where name = 'Elliot Dickinson'
group by name;