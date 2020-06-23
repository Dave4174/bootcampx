SELECT teachers.name as teacher,
       cohorts.name as cohort,
       COUNT(*) as total_assistances
FROM assistance_requests
INNER JOIN students ON students.id = assistance_requests.student_id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
INNER JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;