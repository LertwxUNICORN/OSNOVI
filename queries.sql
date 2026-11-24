-Просмотр всех клиентов
SELECT * FROM Clients;
-Просмотр всех заказов
SELECT * FROM Orders;
-Объединение клиентов и заказов
SELECT
Clients.client_id,
Clients.surname,
Clients.first_name,
Orders.order_id,
Orders.order_date,
Orders.assembly_term,
Orders.delivery_address
FROM Clients
INNER JOIN Orders
ON Clients.client_id = Orders.client_id
ORDER BY Clients.client_id;
