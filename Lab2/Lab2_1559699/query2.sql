-- Eduardo Chavez (echavez9@ucsc.edu)
-- CMPS 180 Winter 2018
-- Lab 2
-- Query 2

SELECT b.taxpayerID
FROM Businesses b
WHERE b.name LIKE 'TI%'
    AND b.taxpayerID NOT IN ( SELECT DISTINCT t.taxpayerID
                              FROM TaxReturns t
                              WHERE t.kind = 'B');
