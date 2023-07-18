-- Weather Observation Station 18

SELECT ROUND(ABS(MIN(long_W)-MAX(long_w))+ABS(MIN(lat_n)-MAX(lat_n)),4)
FROM station;
