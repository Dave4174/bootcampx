SELECT cohorts.name as name, SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
INNER JOIN students ON students.id = assistance_requests.student_id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY total_duration;