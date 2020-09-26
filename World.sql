--1--
SELECT name,language, percentage
FROM languages
JOIN countries On countries.code = languages.country_code
WHERE language = 'Slovene'
ORDER By percentage DESC;

--2--
 SELECT countries.name AS country, COUNT(cities.id) AS number_cities
 FROM countries
 JOIN cities ON countries.code = cities.country_code
 GROUP BY countries.code
 ORDER BY COUNT(cities.id) DESC

 --3--
 
 SELECT cities.name, cities.population 
 FROM cities 
 JOIN countries ON cities.country_id = countries.id
 WHERE countries.name = 'Mexico' and cities.population > 500000
 ORDER BY cities.population desc

 --4--
SELECT countries.name, languages.percentage 
FROM countries
JOIN languages ON countries.code = languages.country_code 
WHERE languages.percentage > 89
ORDER BY languages.percentage desc

--5--
SELECT name, surface_area, population 
FROM countries 
WHERE surface_area < 501 and population > 100000

--6--
SELECT name, government_form, capital, life_expectancy
FROM countries 
WHERE government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75

--7--
SELECT countries.name AS country_name, cities.name AS city_name, cities.district, cities.population 
FROM cities 
JOIN countries ON cities.country_id = countries.id 
WHERE countries.name = 'Argentina' and cities.district = 'Buenos Aires' and cities.population > 500000

--8--
SELECT region, COUNT(id) AS number_countries
FROM countries
GROUP BY region 
ORDER BY COUNT(id) desc
