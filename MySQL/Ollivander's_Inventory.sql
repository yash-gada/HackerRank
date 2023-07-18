-- Ollivander's Inventory

WITH min_coins as (
SELECT ROW_NUMBER() OVER(PARTITION BY code, power ORDER BY code, power, coins_needed) as rownumber,
code, id, power, coins_needed
FROM Wands
--ORDER BY code, power
)

SELECT id, age, coins_needed, power
FROM Wands_property wp JOIN min_coins mc
ON mc.code = wp.code AND rownumber = 1
WHERE is_evil = 0
ORDER BY power desc, age desc;
