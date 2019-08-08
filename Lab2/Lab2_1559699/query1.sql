-- Eduardo Chavez (echavez9@ucsc.edu)
-- CMPS 180 Winter 2018
-- Lab 2
-- Query 1

SELECT DISTINCT jobLevel
FROM IRSagents
WHERE active = TRUE 
ORDER BY jobLevel DESC;
