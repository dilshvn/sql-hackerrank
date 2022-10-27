SELECT city, LENGTH(city) AS size
FROM station
ORDER BY size, city
LIMIT 1;

SELECT city, LENGTH(city) AS size
FROM station
ORDER BY size DESC, city
LIMIT 1;