
-------- Zomato Delivery Analysis Project-------------

 
CREATE DATABASE zomato_db;
USE zomato_db;


--  Total Records
SELECT * FROM zomato;


-- Duplicate IDs
SELECT ID , COUNT(*)
FROM zomato
GROUP BY ID
HAVING COUNT(*) > 1 ;

-- Age null check
SELECT * 
FROM zomato
WHERE delivery_person_age IS NULL ;


-- blank age
SELECT * 
FROM zomato 
WHERE delivery_person_age = '';



-- DISTINCT ages
SELECT DISTINCT delivery_person_age
FROM zomato ;



--  DISTINCT ratings
SELECT DISTINCT delivery_person_ratings
FROM zomato;




--  DISTINCT traffic
SELECT DISTINCT road_traffic_density
FROM zomato ;



-- weather conditons
SELECT DISTINCT weather_conditions 
FROM zomato ; 

SET SQL_SAFE_UPDATES = 0;

-- trim city columns
UPDATE zomato 
SET city = TRIM(city);


UPDATE zomato 
SET city = "Pune"
WHERE city = "NaN";

SELECT city FROM zomato;


-- ALTER DATA types
ALTER TABLE zomato
MODIFY COLUMN delivery_person_age INT ;

ALTER TABLE zomato
MODIFY COLUMN  delivery_person_ratings DECIMAL(3,2);


-- Invalid ages
SELECT * 
FROM zomato 
WHERE delivery_person_age < 18 OR delivery_person_age  >=50  ;

-- invalid ratings
SELECT *
FROM zomato
WHERE  delivery_person_ratings < 1 OR delivery_person_ratings > 5 ;


-- KPIS Values

-- Total Orders
SELECT COUNT(*) as total_orders
FROM zomato ; 

-- ANS :- 42743


-- Total delivery partners
SELECT COUNT(DISTINCT delivery_person_id)
FROM  zomato;

-- ANS :-  1320


-- Total cities
SELECT COUNT(DISTINCT city)
FROM zomato ;

-- ANS :- 4




-- avg delivery time in minutes
SELECT AVG(`Time_taken (min)`)
FROM zomato;
-- ANS:-  26 min



-- total orders by city 
SELECT city , COUNT(*) as total_orders
FROM  zomato
GROUP BY city
ORDER BY total_orders DESC ;




--  avg delivery time by cities
SELECT city , AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY city
ORDER BY avg_time DESC  ;


--  slow delivery city 
SELECT city , AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY city
ORDER BY avg_time DESC
LIMIT 1 ;

-- ANS :- Semi-Urban


-- Top 10 Fastest Delivery Partners
SELECT delivery_person_id ,  AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY delivery_person_id
ORDER BY avg_time ASC
LIMIT 10 ;


-- Top Rated Delivery Partners
SELECT delivery_person_id , AVG(delivery_person_ratings) AS avg_rating
FROM zomato
GROUP BY delivery_person_id
ORDER BY avg_rating  DESC ;



-- Rating vs Delivery Time
SELECT Delivery_person_Ratings as rating_group,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY rating_group
ORDER BY rating_group;



-- Delivery Time by Weather
SELECT  Weather_conditions ,
        AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Weather_conditions
ORDER BY avg_time DESC ;
--  ANS :- MAXIMUM deley "Fog"-- 



-- Delivery Time by Traffic Density
SELECT Road_traffic_density ,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Road_traffic_density
ORDER BY avg_time  DESC ;
-- ANS :-[ Jam ]



-- Delivery Time by Vehicle Type
SELECT Type_of_vehicle , 
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Type_of_vehicle
ORDER BY avg_time DESC ;



--  Vehicle Condition Impact
SELECT Vehicle_condition,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Vehicle_condition
ORDER BY avg_time ;



--  ORDER ANALYSIS
-- Order Type Analysis
SELECT Type_of_order,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Type_of_order
ORDER BY avg_time DESC ;


-- MULTIPLE DELIVERY ANALYSIS
-- Impact of Multiple Deliveries 
SELECT multiple_deliveries,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY multiple_deliveries
ORDER BY avg_time DESC ;
-- Does carrying multiple orders increase delivery time? -- >>> YES



-- FESTIVAL ANALYSIS
-- Festival vs Non Festival
SELECT    Festival, 
          AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Festival
ORDER BY avg_time DESC ;
-- Do festivals cause delivery delays? ----->>>>.YES


-- Top 2 Cities with Fastest Deliveries
SELECT city ,
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY city
ORDER BY avg_time 
LIMIT 2 ; 
-- ANSWER :- PUNE & Urban



-- Best Delivery Person in Each City 

WITH cte AS (


SELECT city , Delivery_person_ID, 
	   AVG(`Time_taken (min)`) AS avg_time,
ROW_NUMBER() OVER (PARTITION BY city ORDER BY AVG(`Time_taken (min)`)) as rn
FROM zomato
GROUP BY city , Delivery_person_ID
)
SELECT * FROM cte
WHERE rn = 1 ;


-- Traffic Impact Percentage
SELECT  Road_traffic_density,
		AVG(`Time_taken (min)`) AS avg_time
FROM zomato
GROUP BY Road_traffic_density
ORDER BY avg_time ;


-- Rank Cities Based on Delivery Efficiency
SELECT city , AVG(`Time_taken (min)`) AS avg_time,
       RANK() OVER (ORDER BY AVG(`Time_taken (min)`) ) as city_rank
FROM zomato
GROUP BY city ;




-- Find Delivery Persons Performing Better Than Overall Average
SELECT  AVG(`Time_taken (min)`) AS avg_time FROM zomato ;

SELECT Delivery_person_ID , 
       AVG(`Time_taken (min)`) AS avg_time
FROM zomato 
GROUP BY Delivery_person_ID
HAVING AVG(`Time_taken (min)`) < (SELECT  AVG(`Time_taken (min)`)  FROM zomato) ;

       






              


 








        




 



 