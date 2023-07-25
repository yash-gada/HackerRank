-- Placements

SELECT
    s.Name
FROM Students s
INNER JOIN Friends f ON s.id = f.id
INNER JOIN Packages p ON s.id = p.id
INNER JOIN Packages fp ON fp.id = f.Friend_ID
WHERE fp.Salary>p.Salary
ORDER BY fp.Salary;
