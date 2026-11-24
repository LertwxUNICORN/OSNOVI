BEGIN;
UPDATE Clients
SET client_id = 100
WHERE client_id = 1;
SELECT *
FROM Orders
WHERE client_id = 100;
ROLLBACK;
BEGIN;
INSERT INTO Clients
(surname, first_name, patronymic, birth_date,
company_representative, address, contact_phone)
VALUES
('Тестов', 'Тест', 'Тестович', '2000-01-01',
'Тестовая фирма', 'Москва, ул. Тестовая, 1', '+79991234567');
SELECT client_id FROM Clients
WHERE surname = 'Тестов';
DELETE FROM Clients
WHERE surname = 'Тестов'
AND first_name = 'Тест';
SELECT *
FROM Orders
WHERE client_id NOT IN (
SELECT client_id FROM Clients
);
ROLLBACK;
