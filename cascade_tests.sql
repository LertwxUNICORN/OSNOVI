BEGIN;
UPDATE Clients
SET client_id = 100
WHERE client_id = 1;
SELECT *
FROM Orders
WHERE client_id = 100;
ROLLBACK;
BEGIN;
DELETE FROM Clients
WHERE client_id = 12;
SELECT *
FROM Orders
WHERE client_id = 12;
ROLLBACK;
