-- A SQL script that ranks country 
-- the number of (non-unique) fans
-- Column names must be: origin 
-- Your script can be executed on any database
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
