SELECT 
    Car_Model, COUNT(*)
FROM
    tata_cars_dataset
GROUP BY Car_Model
HAVING COUNT(*) > 1;
SELECT 
    MAX(Price_INR_Lakhs) AS second_highest_price
FROM
    tata_cars_dataset
WHERE
    Price_INR_Lakhs < (SELECT 
            MAX(Price_INR_Lakhs)
        FROM
            tata_cars_dataset);
SELECT DISTINCT
    Price_INR_Lakhs, Car_Model
FROM
    tata_cars_dataset
WHERE
    Car_Model = 'nexon'
ORDER BY Price_INR_Lakhs;
SELECT 
    *
FROM
    tata_cars_dataset;
SELECT 
    Car_Model, AVG(mileage_kmpl) AS average_mileage
FROM
    tata_cars_dataset
GROUP BY Car_Model
HAVING average_mileage > 20
ORDER BY AVG(Mileage_kmpl) DESC;
SELECT 
    Sales_Region, Variant
FROM
    tata_cars_dataset
WHERE
    Sales_Region = 'North'
GROUP BY Sales_Region , Variant
LIMIT 5 OFFSET 1;
SELECT 
    *
FROM
    tata_cars_dataset;
SELECT DISTINCT
    Mileage_kmpl, Engine_Type, Car_Model
FROM
    tata_cars_dataset
WHERE
    Engine_Type = 'ELECTRIC'
GROUP BY Mileage_kmpl
ORDER BY Mileage_kmpl DESC , Car_Model DESC;

   SELECT  Mileage_kmpl, Engine_Type, Car_Model
FROM
    tata_cars_dataset
WHERE
    Engine_Type = 'ELECTRIC'
GROUP BY Mileage_kmpl , Engine_Type , Car_Model
ORDER BY Mileage_kmpl DESC;

SELECT 
    Safety_Rating, Transmission, Engine_Type
FROM
    tata_cars_dataset
WHERE
    Safety_Rating >= 4
ORDER BY Engine_Type limit 10;
SELECT 
    Sales_Region, Engine_Type
FROM
    tata_cars_dataset
ORDER BY Engine_Type;
SELECT 
    *
FROM
    tata_cars_dataset;
SELECT DISTINCT
    Price_INR_Lakhs, Transmission, Car_Model, Safety_Rating
FROM
    tata_cars_dataset
ORDER BY Price_INR_Lakhs DESC , Safety_Rating DESC;



