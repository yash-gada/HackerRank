-- Weather Observation Station 7

SELECT DISTINCT(city) FROM station 
WHERE RIGHT(city,1) IN ('a','e','i','o','u');
