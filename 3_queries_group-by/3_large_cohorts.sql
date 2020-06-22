SELECT cohorts.name as cohort_name, COUNT(*) as student_count
FROM cohorts
INNER JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY student_count;