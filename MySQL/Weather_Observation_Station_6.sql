-- Weather Observation Station 6

SELECT DISTINCT(CITY) FROM STATION WHERE SUBSTR(CITY,1,1) IN ('a','e','i','o','u');
