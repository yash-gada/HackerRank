-- Print Prime Numbers

/*
NOT MY SOLUTION, found somewhere else. But I put my comments for your understanding.
This is the simplest solution I could find WITHOUT USING STORED PRECEDURE. AMAZING!
*/

SELECT GROUP_CONCAT(nums SEPARATOR '&')
    nums
FROM (SELECT @rows:=@rows+1 as nums
        FROM information_schema.tables t1, 
          information_schema.tables t2, 
          (SELECT @rows:=0) t
        ) numgen1 /* Number generator for values */
WHERE nums <= 1000
AND nums>1 /* 1 is not prime so excluding that */
AND NOT EXISTS (SELECT * 
                    FROM (SELECT @row:=@row+1 as facts
                            FROM information_schema.tables ft1,
                                information_schema.tables ft2,
                                (SELECT @row:=0) ft
                            LIMIT 1000
                          ) numgen2  /* Number generator for factors */
    WHERE nums > facts AND facts > 1 /* Factors should be less and number and greater than 1 */
    AND FLOOR(nums/facts) = (nums/facts) /* If number/factor is a decimal number, it is not a factor */
)
/* NOT EXISTS is used, meaning as soon as a factor is found, it will go to outer query to the next number... MORE EFFICIENT*/
