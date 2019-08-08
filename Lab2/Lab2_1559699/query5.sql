-- Eduardo Chavez (echavez9@ucsc.edu)
-- CMPS 180 Winter 2018
-- Lab 2
-- Query 5

SELECT p.taxpayerID AS payingTaxpayer,
        COUNT(p.taxpayerID) AS howmanyPayments,
        SUM(p.amountPaid) AS sumPayments
FROM Payments p
GROUP BY p.taxpayerID
HAVING COUNT(p.taxpayerID) > 0;
