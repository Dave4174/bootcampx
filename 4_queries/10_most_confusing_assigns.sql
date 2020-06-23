SELECT assignments.id AS id,
       assignments.name AS name,
       assignments.day AS day,
       assignments.chapter AS chapter,
       COUNT(*) AS total_requests
FROM assignments
INNER JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;