SELECT cohorts.name as cohort, count(*) as total_submissions
FROM assignment_submissions
INNER JOIN students ON students.id = assignment_submissions.student_id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY total_submissions DESC;