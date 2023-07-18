-- Weather Observation Station 4

select (count(CITY)- count(distinct CITY)) from STATION;

/*SELECT ((SELECT COUNT(city) FROM station -  
SELECT DISTINCT COUNT(city) FROM station)) from station;*/

/*
SELECT COUNT(city) FROM station as q1;
SELECT DISTINCT COUNT(city) FROM station as q2;
SELECT (q1 - q2) from station;   
*/
