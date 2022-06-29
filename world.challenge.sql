USE world;

-- Question 1
SELECT COUNT(name) AS Cities
FROM city
WHERE CountryCode = "USA";

-- Question 2 
SELECT Name, Population, LifeExpectancy
FROM country
WHERE Name = "Argentina"; 

-- Question 3
SELECT * 
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC LIMIT 1;

-- Question 4 
SELECT country.Name AS Country, city.Name AS City
FROM country
INNER JOIN city ON country.capital = city.ID
WHERE country.name = 'Spain';

-- Question 5
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT Name, language, region
FROM country 
JOIN countrylanguage  ON country.code = countrylanguage.CountryCode
WHERE country.region = 'Southeast Asia'
GROUP BY language;

-- Question 6
SELECT name as CityWihF
FROM city
WHERE name LIKE "F%" LIMIT 25;

-- Question 7 
SELECT co.name, COUNT(ci.ID) AS city_count
FROM country co
INNER JOIN city ci ON co.code = ci.CountryCode
WHERE co.name = "China";

-- Question 8 
SELECT population, name
FROM country
WHERE population IS NOT NULL
ORDER BY population ASC 
LIMIT 1;

-- Question 9
SELECT COUNT(name)
FROM country;

-- Question 10 
SELECT SurfaceArea, name
FROM country 
ORDER BY SurfaceArea DESC LIMIT 10;

-- Question 11
SELECT country.Name, city.Name, city.population
FROM country
INNER JOIN city ON country.code = city.CountryCode
WHERE country.name = "Japan"
ORDER BY population DESC LIMIT 5;

-- Question 12 
UPDATE country SET HeadOfState = "Elizabeth II"
WHERE headofstate = "Elisabeth II";

SELECT name, code, headofstate
FROM country
WHERE headofstate= "Elizabeth II";

-- Question 13
-- CREATE VIEW ratios
-- AS
	-- SELECT name,population/surfacearea AS pop_surfacearea_ratio
	-- FROM country;
    
-- SELECT Name,pop_surfacearea_ratio
-- FROM ratios
-- WHERE pop_surfacearea_ratio != 0
-- GROUP BY Name
-- ORDER BY pop_surfacearea_ratio ASC;

-- Question 14 
SELECT DISTINCT language
FROM countrylanguage;

-- Question 15 
SELECT name, GNP
FROM country
ORDER BY GNP DESC LIMIT 10;

-- Question 16 
SELECT country.name, COUNT(countrylanguage.Language) as MULTILANG
FROM country
INNER JOIN countrylanguage ON country.code = countrylanguage.countrycode
GROUP BY country.name
ORDER BY MULTILANG DESC LIMIT 10;

-- Question 17
-- List every country where over 50% of its population can speak German
SELECT co.name AS Country,cl.Percentage AS GermanPercent
FROM country co
JOIN countrylanguage cl ON co.Code = cl.CountryCode
WHERE cl.Language = 'German'
AND cl.Percentage >= 50;

-- Question 18
SELECT LifeExpectancy, name
FROM country
WHERE lifeexpectancy >0
AND lifeexpectancy IS NOT NULL
ORDER BY LifeExpectancy ASC LIMIT 1;

-- Question 19
SELECT governmentform, COUNT(governmentform)
FROM country
GROUP BY governmentform
ORDER BY COUNT(governmentform) DESC LIMIT 3;

-- Question 20 
SELECT COUNT(IndepYear)
FROM country
WHERE IndepYear IS NOT NULL









