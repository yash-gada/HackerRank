-- Top Competitors

SELECT h.hacker_id, h.name
FROM hackers h 
JOIN submissions s
ON h.hacker_id = s.hacker_id 
JOIN challenges c
ON s.challenge_id = c.challenge_id 
JOIN difficulty d 
ON d.difficulty_level = c.difficulty_level 
WHERE d.score = s.score 
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.challenge_id) > 1
ORDER BY COUNT(s.challenge_id) DESC,  h.hacker_id ASC;
