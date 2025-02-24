
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN teachers ON teachers.id = assistance_requests.teacher_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name = 'JUL02'
  ORDER BY teachers.name;