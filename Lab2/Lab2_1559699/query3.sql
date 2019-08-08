-- Eduardo Chavez (echavez9@ucsc.edu)
-- CMPS 180 Winter 2018
-- Lab 2
-- Query 3

(SELECT i.name, i.address, p.datePaid, p.amountPaid  
FROM Payments p, Individuals i
WHERE p.datePaid >= DATE '03/01/2017'
    AND i.taxpayerID = p.taxpayerID)
UNION
(SELECT b.name, b.address, p2.datePaid, p2.amountPaid
FROM Payments p2, Businesses b
WHERE p2.datePaid >= DATE '03/01/2017'
    AND b.taxpayerID = p2.taxpayerID); 
