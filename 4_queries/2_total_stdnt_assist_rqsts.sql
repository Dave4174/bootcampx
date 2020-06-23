SELECT count(*) as total_assistances, students.name as name
FROM students
INNER JOIN assistance_requests ON assistance_requests.student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.id;