/*Obtener el número total de películas en cada categoría*/
'''SQL
CREATE VIEW total_peliculas_por_categoria AS
SELECT category.name AS categoria, COUNT(film.film_id) AS total_peliculas
FROM category
LEFT JOIN film_category ON category.category_id = film_category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name;
