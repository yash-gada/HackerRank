-- The Report

SELECT 
  CASE
      WHEN Grade < 8 THEN NULL
      ELSE s.name
  END,
  g.grade, s.marks
FROM Students s, Grades g 
WHERE s.marks >= g.min_mark AND s.marks <= g.max_mark
ORDER BY g.grade DESC, s.name;
