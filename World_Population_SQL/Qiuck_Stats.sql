--Population Among Years
SELECT rank , country , SUM(popultion_2022) As P2022 , SUM(popultion_2020) As P2020 , SUM(popultion_2015) As P2015 , SUM(popultion_2010) As P2010,SUM(popultion_2000) As P2000,SUM(popultion_1990) As P1990,SUM(popultion_1980) As P1980,SUM(popultion_1970) As P1970
From world_population
GROUP BY rank , country
ORDER BY rank ASC;

------------------------------------------------------------------------------------------------------------------------------------

--Number Of Countrirs In Ever Continant
SELECT continent , count(country) As Countries_Number
FROM world_population
GROUP BY continent
ORDER BY Countries_Number DESC;

-------------------------------------------------------------------------------------------------------------------------------------

--Percentage World Wise
SELECT Country , world_pop_percentage
FROM world_population
ORDER BY world_pop_percentage DESC;

-------------------------------------------------------------------------------------------------------------------------------------

--Biggest Country in Wolrd Based on Area
SELECT country,area_km As area
From world_population
ORDER BY Area DESC;

-------------------------------------------------------------------------------------------------------------------------------------

--Highest Growth Rate
SELECT country,growth_rate
From world_population
ORDER BY growth_rate DESC;

-------------------------------------------------------------------------------------------------------------------------------------

--Country Has Decline in Population
SELECT country,SUM(popultion_2022) As P2022,SUM(popultion_2020) as P2020
FROM world_population
WHERE popultion_2020 > popultion_2022
GROUP BY country
ORDER BY P2020 DESC