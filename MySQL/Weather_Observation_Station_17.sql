-- Weather Observation Station 17

SELECT ROUND(long_w,4) FROM station
WHERE lat_n>38.7780
ORDER BY lat_n
LIMIT 1;


/*
SELECT ROUND(long_w,4) FROM station
WHERE lat_n = (SELECT MIN(lat_n) FROM station WHERE lat_n>38.7780);
*/
