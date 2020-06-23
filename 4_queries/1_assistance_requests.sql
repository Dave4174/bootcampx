SELECT count(*) as total_assistances, teachers.name as name
FROM teachers
INNER JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.id;