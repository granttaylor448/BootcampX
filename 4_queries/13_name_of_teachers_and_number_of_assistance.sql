  SELECT  teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.*) as total_assistances
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN teachers ON teachers.id = assistance_requests.teacher_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name = 'JUL02'
  GROUP BY cohorts.name, teachers.name
  ORDER BY teachers.name;
