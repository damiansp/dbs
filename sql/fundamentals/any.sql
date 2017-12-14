SELECT title, category_id
FROM film
  INNER JOIN film_category
    USING(film_id)
WHERE category_id = ANY(
  SELECT category_id
  FROM category
  WHERE NAME = 'Action' OR NAME = 'Drama');
