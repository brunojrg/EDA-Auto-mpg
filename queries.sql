-- 1.Which car models are the most common per origin?
SELECT origin AS "Origin", car_name AS "Car Name", MAX(freq) AS "Frequency"
FROM (SELECT origin, car_name, COUNT(*) AS freq FROM cleaned_data
GROUP BY origin, car_name)
GROUP BY origin
ORDER BY frequency DESC;

-- 2.Which cars are the most fuel-efficient? In other words, which have the highest MPG?
SELECT car_name AS "Car Name", mpg AS "MPG"
FROM cleaned_data
GROUP BY car_name
ORDER BY mpg DESC
LIMIT 10;

-- 3.Do high-power cars have lower fuel efficiency (need to choose a hp threshold)?
SELECT
CASE
WHEN horsepower >= 100 THEN 'High HP' -- choosing 100 hp as the threshold
ELSE 'Low HP'
END AS HP, round(AVG(mpg), 1) AS "MPG"
FROM cleaned_data
GROUP BY HP;

-- 4.What is the average MPG per model year? Are the cars becoming more efficient?
SELECT
model_year,
round(AVG(mpg), 1) AS "MPG"
FROM cleaned_data
GROUP BY model_year
ORDER BY model_year;

-- 5.How do car and engine characteristics compare between high and low mpg cars?
SELECT
CASE
WHEN mpg >= 25 THEN 'High MPG'-- assuming 25 mpg as the threshold
ELSE 'Low MPG'
END AS mpg_cat,
round(AVG(horsepower), 1) AS "Horsepower",
round(AVG(weight), 1) AS "Weight",
round(AVG(displacement), 1) AS "Displacement"
FROM cleaned_data
GROUP BY mpg_cat;

-- 6.How does power-to-weight ratio varies according the origin?
SELECT origin AS "Origin", round((AVG(horsepower)/AVG(weight)), 3) AS "Power-to-weight ratio" 
FROM cleaned_data 
GROUP BY origin 
ORDER BY "Power-to-weight ratio" DESC;

-- 7. How does power-to-weight ratio influences acceleration?
SELECT origin AS "Origin", round((AVG(horsepower)/AVG(weight)), 3) AS "Power-to-weight ratio", acceleration AS "Acceleration" 
FROM cleaned_data 
GROUP BY origin 
ORDER BY "Power-to-weight ratio" DESC;

-- 8.The acceleration of american cars increases over time. Is this correlated with the variation of power-to-weight ratio?
SELECT model_year AS "Year", round((AVG(horsepower)/AVG(weight)), 3) AS "Power-to-weight ratio" 
FROM cleaned_data 
WHERE origin = "USA" 
GROUP BY origin, model_year 
ORDER BY model_year ASC;

-- 9.How do mpg and horsepower compare among 4-cylinder cars from different origins?
SELECT origin AS "Origin", round(AVG(mpg), 1) AS "MPG", round(AVG(horsepower), 1) AS "Horsepower" 
FROM cleaned_data 
WHERE cylinders = 4 
GROUP BY origin 
ORDER BY "MPG" DESC;

-- 10.What is the average displacement value for each cylinder count?
SELECT cylinders AS "Engine Cylinders", round(AVG(displacement), 1) AS "Displacement" 
FROM cleaned_data 
GROUP BY cylinders 
ORDER BY cylinders ASC;

-- 11.What is the average horsepower per cylinder count?
SELECT cylinders AS "Engine Cylinders", round(AVG(horsepower), 1) AS "Horsepower" 
FROM cleaned_data 
GROUP BY cylinders 
ORDER BY cylinders ASC;