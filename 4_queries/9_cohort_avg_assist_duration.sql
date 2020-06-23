SELECT AVG(sq.total_duration) AS average_total_duration
FROM (SELECT cohorts.name AS name, SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
INNER JOIN students ON students.id = assistance_requests.student_id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY total_duration) AS sq;