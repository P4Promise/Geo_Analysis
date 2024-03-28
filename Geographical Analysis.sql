SELECT 
       COUNT(d.Name) AS Number_of_Cities,
       d.CountryCode,
       c.Name AS Country,
       c.Region,
       c.Continent,
       c.Population,
       c.GNP,
       c.LifeExpectancy
FROM country c
LEFT JOIN city d ON d.CountryCode = c.Code
WHERE CountryCode is not null and LifeExpectancy is not null
GROUP BY d.CountryCode, c.Name, c.Region, c.Continent, c.Population, c.GNP, c.LifeExpectancy;