/*Obtener los nombres de los clientes que más gastan en alquileres*/
'''SQL
CREATE VIEW top_clientes_gastadores AS
SELECT customer.customer_id, CONCAT(customer.first_name, ' ', customer.last_name) AS nombre_cliente, SUM(payment.amount) AS total_gastado
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY total_gastado DESC
LIMIT 10;
