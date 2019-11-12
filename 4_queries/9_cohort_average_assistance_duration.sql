SELECT AVG(total_duration) as average_total_duration 
FROM (
  SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration, cohorts.name as name 
  FROM students
  JOIN assistance_requests ON assistance_requests.student_id = students.id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;