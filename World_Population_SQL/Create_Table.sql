Create Table World_Population
(
    Rank int, 
    Country_Code VARCHAR(20),
    Country VARCHAR(100),
    Capital VARCHAR(100),
    Continent VARCHAR(50),
    popultion_2022 int,
    popultion_2020 int,
    popultion_2015 int,
    popultion_2010 int,
    popultion_2000 int,
    popultion_1990 int,
    popultion_1980 int,
    popultion_1970 int,
    Area_KM NUMERIC,
    Density_per_Km NUMERIC ,
    Growth_Rate NUMERIC(5,2),
    World_pop_Percentage NUMERIC(5,2)
);

COPY PUBLIC.world_population
From 'C:\Users\mohamedhassan\Documents\Python\world_population.csv' DELIMITER ',' CSV HEADER ;

\copy world_population FROM 'C:\Users\mohamedhassan\Documents\Python\world_population.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');



