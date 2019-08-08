-- combine.sql
-- 
BEGIN;
	INSERT INTO Payments(taxpayerID, datePaid, amountPaid)
		SELECT np2.taxpayerID, np2.datePaid, np2.amountPaid
		FROM NewPayments np2
		WHERE (np2.taxpayerID, np2.datePaid) NOT IN
								(SELECT p2.taxpayerID, p2.datePaid
								 FROM Payments p2);
		UPDATE Payments p
		SET amountPaid = p.amountPaid + np.amountPaid
		FROM NewPayments np
		WHERE p.taxpayerID = np.taxpayerID
			AND p.datePaid = np.datePaid;
	
COMMIT;