WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&') AS primes
FROM numbers
WHERE n NOT IN (
    SELECT n FROM numbers AS a
    WHERE n > 1 AND EXISTS (
        SELECT 1 FROM numbers AS b
        WHERE b.n < a.n AND b.n > 1 AND a.n % b.n = 0
    )
);
