-- Challenges

SELECT
    hacker_id,
    name,
    cnt
FROM (SELECT
            *,
            COUNT(cnt) OVER(PARTITION BY cnt) as rnum
        FROM (SELECT
                    h.hacker_id,
                    h.name,
                    COUNT(challenge_id) as cnt
                FROM Hackers h
                INNER JOIN Challenges c
                ON h.hacker_id = c.hacker_id
                GROUP BY h.hacker_id, h.name) t
                
     ) t
WHERE rnum = 1

UNION
SELECT
    h.hacker_id,
    h.name,
    COUNT(challenge_id) as cnt
FROM Hackers h
INNER JOIN Challenges c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(challenge_id) = (SELECT MAX(cnt)
                                FROM (SELECT
                                            COUNT(challenge_id) as cnt
                                        FROM Hackers h
                                        INNER JOIN Challenges c
                                        ON h.hacker_id = c.hacker_id
                                        GROUP BY h.hacker_id)t)
ORDER BY cnt DESC, hacker_id

-- Find MAX of count of challenge_id
/* 
SELECT MAX(cnt)
FROM (SELECT
        COUNT(challenge_id) as cnt
    FROM Hackers h
    INNER JOIN Challenges c
    ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id) t
*/

-- Finding all the values with MAX count
-- These values and then UNIONed in the first query with other values that have no duplicates
/*
SELECT
    h.hacker_id,
    h.name,
    COUNT(challenge_id) as cnt
FROM Hackers h
INNER JOIN Challenges c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(challenge_id) = (SELECT MAX(cnt)
                                FROM (SELECT
                                            COUNT(challenge_id) as cnt
                                        FROM Hackers h
                                        INNER JOIN Challenges c
                                        ON h.hacker_id = c.hacker_id
                                        GROUP BY h.hacker_id)t)
ORDER BY cnt DESC, h.hacker_id
*/
