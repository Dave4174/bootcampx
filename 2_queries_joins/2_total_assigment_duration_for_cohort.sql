SELECT SUM(duration) as total_duration
FROM cohorts
INNER JOIN students ON students.cohort_id = cohorts.id
INNER JOIN assignment_submissions ON student_id = students.id
WHERE cohorts.name = 'FEB12';