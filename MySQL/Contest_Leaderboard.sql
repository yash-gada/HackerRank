-- Contest Leaderboard

SELECT
    h.hacker_id,
    h.name,
    SUM(m.ms) as total
FROM Hackers h
INNER JOIN (SELECT
        hacker_id,
        challenge_id,
        MAX(score) as ms
    FROM Submissions
    WHERE score != '0'
    GROUP BY hacker_id, challenge_id) m
ON h.hacker_id = m.hacker_id
GROUP BY hacker_id, h.name
ORDER BY total DESC, hacker_id;
