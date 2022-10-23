/*
1. Mondial: Use a sub-query to list, from the city table, all of the cities in the
   provinces of Canada (country code CDN). Order the results by the name of the
   province and then my the name of the city.
*/

SELECT name, area FROM province WHERE country = 'CDN'; -- subquery

SELECT *
FROM city
WHERE country = 'CDN' AND city.province IN (SELECT name FROM province WHERE country = 'CDN') -- using IN to take from the subquery result list
--more than one result, need to us IN not ON
--non-correlated subquery (not table = table)

-- 2. Write question 1 as a join . . .

SELECT province.name, city.province
FROM country
INNER JOIN province
  ON country.code = province.country
INNER JOIN city
  ON province.country = city.country AND province.name = city.province
WHERE province.country = 'CDN'


/*
3. Mondial: For every island in the United States, print out the islands it belongs to, the name of the island, and the latitude and longitude where the island is
located.

You will need 2 sub-queries: one to get the country code (do NOT use USA, get the code from the country table by using the country name) and another sub-query that goes against the geo_island table in order to get island name based on the country code that is returned by the sub-query that goes against the country table. Then use the island table to get the required data.

Sort your results by Islands and then the island name.
*/

SELECT code FROM country;

SELECT island FROM geo_island;

SELECT island.name, island.longitude, island.latitude, islands
FROM island
WHERE island.name IN (SELECT island FROM geo_island WHERE geo_island.country = (SELECT code FROM country WHERE country.name = 'United States'))

-- 4. Rewrite question 3 as a series of JOINS . . .

SELECT geo_island.island, island.longitude, island.latitude, islands
FROM country
INNER JOIN geo_island
  ON country.code = geo_island.country
INNER JOIN island
    ON geo_island.island = island.name
WHERE geo_island.country = 'USA'

/*
5. From the classicmodels database, use a subquery with the ANY keyword that prints out the customer number, customer name, and credit for all of the customers that placed an order between November 1, 2004 to December 31, 2004. Order the report by
the customer's name.
*/
SELECT orderDate FROM Orders WHERE orderDate BETWEEN '2004-11-1' AND '2004-12-31'

SELECT Customers.customerNumber, Customers.customerName, Customers.creditLimit
FROM Customers INNER JOIN Orders
  ON Customers.customerNumber = Orders.customerNumber
WHERE orderDate = ANY (SELECT orderDate FROM Orders WHERE orderDate BETWEEN '2004-11-1' AND '2004-12-31')
ORDER BY Customers.customerName;

/*
6. Mondial: use a sub-query and the EXISTS keyword to list all of the countries that
do NOT have a river (yes, you will have to NOT as well . . .):
*/

SELECT country FROM geo_river

SELECT country.name
FROM country
WHERE country.name NOT EXISTS (SELECT geo_river.country FROM geo_river WHERE country.code = geo_river.country)


/*
7. Mondial: Join the country and the geo_desert tables together. Use a sub-query to find the countries that have at least one desert whose area is greater than or equal 50000. You will need a 'correlated' sub-query . . . The table "geo_desert" has the
country code and the "desert" table has the area of the desert.
*/

SELECT country.name
FROM country INNER JOIN geo_desert
  ON country.code = geo_desert.country
WHERE geo_desert.desert = (SELECT name FROM desert WHERE geo_desert.desert = desert.name AND area >= 50000)


/*
8. List the countries name and area for those countries whose area is smaller than
all of the world's desert areas . . . .
*/

SELECT country.name, country.area
FROM country
WHERE country.area < ALL (SELECT area FROM desert)


/*
9. From the FilmsDB database, produce a report giving the filmid, the name of the
film, the year released, and the plot summary for every film in the "Sci-fi"
category. Use a sub-query to get the categoryid from the Category table.
*/

SELECT FilmId, FilmName, YearReleased, PlotSummary
FROM Films
WHERE CategoryID = (SELECT CategoryID FROM Category WHERE Category = 'Sci-fi')


/*
10. From Mondial: list all of the countries that are in (or partially in) the
continent of Europe. You will need to use the country and encompasses tables;
*/

SELECT country.name
FROM country INNER JOIN encompasses
  ON country.code = encompasses.country
WHERE country IN (SELECT country FROM encompasses WHERE percentage <= 100 AND continent = 'Europe')

/*
11. List of the names of the countries that are NOT a member of NATO via a
sub-query.
*/

SELECT country.name
FROM country INNER JOIN isMember
  ON country.code = isMember.country
WHERE organization NOT IN (SELECT isMember.country FROM isMember WHERE organization = 'NATO')


/*12. List the names of the capital cities for which we do not have data about where
the city is located.*/

SELECT province.capital
FROM country INNER JOIN province
  ON country.capital = province.capital
WHERE NOT EXISTS (SELECT * FROM located WHERE province.capital = located.city)

-- ALTERNATIVELY --

/* SELECT captial
  FROM country
  WHERE captial NOT IN (SELECT city from located)
  ORDER BY capital*/

/*
13. Return  the names of all cities that have the same name as the country in
which they are located.
*/

SELECT city.name
FROM city INNER JOIN country
  ON city.country = country.code
WHERE city.name IN (SELECT name FROM country)

/*
14. Produce a report showing the product line name, product line description, and
the MSRP of the product lines most expensive product. Of course, do this via a
sub-query. This sub-query will be in the SELECT list . . .
*/

SELECT productLine, textDescription, (SELECT MAX(MSRP) FROM Products WHERE Products.productLine = ProductLines.productLine)
FROM ProductLines
