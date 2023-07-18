-- Average Population of Each Continent

SELECT cc.continent, FLOOR(AVG(c.population))
FROM city c INNER JOIN country cc
ON c.countrycode = cc.code
GROUP BY cc.continent;
