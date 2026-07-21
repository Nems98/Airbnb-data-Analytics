use airbnb_db

SELECT COUNT(*) AS Total_Listings
FROM listings;

#Total Listings
SELECT COUNT(DISTINCT host_id) AS Total_Hosts
FROM listings;

select *from listings;

#Total Hosts
SELECT room_type,
COUNT(*) AS Listings
FROM listings
GROUP BY room_type
ORDER BY Listings DESC;

#Different Room Types
SELECT property_type,
COUNT(*) AS Listings
FROM listings
GROUP BY property_type
ORDER BY Listings DESC;

#Different Property Types
SELECT
ROUND(AVG(CAST(REPLACE(REPLACE(price,'$',''),',','') AS DECIMAL(10,2))),2)
AS Average_Price
FROM listings;

#Average Price
SELECT
ROUND(AVG(CAST(REPLACE(REPLACE(price,'$',''),',','') AS DECIMAL(10,2))),2)
AS Average_Price
FROM listings;

#Highest Price
SELECT *
FROM listings
ORDER BY CAST(REPLACE(REPLACE(price,'$',''),',','') AS DECIMAL(10,2)) DESC
LIMIT 10;

#Lowest Price
SELECT *
FROM listings
ORDER BY CAST(REPLACE(REPLACE(price,'$',''),',','') AS DECIMAL(10,2))
LIMIT 10;

#Average Rating
SELECT
ROUND(AVG(review_scores_rating),2) AS Average_Rating
FROM listings;

#Most Common Neighbourhood
SELECT neighbourhood_cleansed,
COUNT(*) AS Listings
FROM listings
GROUP BY neighbourhood_cleansed
ORDER BY Listings DESC;

#Top Hosts
SELECT host_name,
COUNT(*) AS Total_Listings
FROM listings
GROUP BY host_name
ORDER BY Total_Listings DESC
LIMIT 10;