-- African Cities

SELECT c.name 
FROM CITY c INNER JOIN COUNTRY cc
ON c.countrycode = cc.code
WHERE continent = 'Africa';
