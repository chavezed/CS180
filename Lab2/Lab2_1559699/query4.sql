-- Eduardo Chavez (echavez9@ucsc.edu)
-- CMPS 180 Winter 2018
-- Lab 2
-- Query 4

SELECT i.name AS taxpayerName, i2.name AS spouseName
FROM Individuals i, Individuals i2
WHERE i.spouseID IS NOT NULL
    AND i2.spouseID IS NOT NULL
    AND i.spouseID = i2.taxpayerID
    AND i.taxpayerID = i2.spouseID;
