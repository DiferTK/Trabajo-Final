/* Obtener el promedio de calificaciones de las películas por categoría */
'''SQL
CREATE VIEW promedio_calificaciones_por_categoria AS
SELECT category.name AS categoria, AVG(film.rating) AS promedio_calificacion
FROM category
LEFT JOIN film_category ON category.category_id = film_category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name;

