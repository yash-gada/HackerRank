-- Symmetric Pairs

/* This is the SIMPLEST QUERY you will find for this question online */
SELECT DISTINCT
    f1.x,
    f1.y
FROM (SELECT
            x,
            y,
            ROW_NUMBER() OVER(ORDER BY x, y) as rnum
        FROM Functions) f1
INNER JOIN (SELECT
            x,
            y,
            ROW_NUMBER() OVER(ORDER BY x, y) as rnum
        FROM Functions) f2
ON f1.rnum != f2.rnum
WHERE f1.x = f2.y AND f1.y = f2.x
AND f1.x<=f1.y
ORDER BY f1.x;
