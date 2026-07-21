USE airbnb_db;

CREATE TABLE listings (
    id BIGINT,
    host_id BIGINT,
    host_name VARCHAR(255),
    neighbourhood_cleansed VARCHAR(255),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    property_type VARCHAR(255),
    room_type VARCHAR(100),
    accommodates INT,
    bathrooms DECIMAL(3,1),
    bedrooms INT,
    beds INT,
    price VARCHAR(20),
    minimum_nights INT,
    maximum_nights INT,
    availability_365 INT,
    number_of_reviews INT,
    review_scores_rating DECIMAL(4,2)
);

LOAD DATA LOCAL INFILE 'E:/Airbnb-Data-Analysis/Dataset/cleaned_data/airbnb_df.csv'
INTO TABLE listings
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
id,
host_id,
host_name,
neighbourhood_cleansed,
latitude,
longitude,
property_type,
room_type,
accommodates,
bathrooms,
bedrooms,
beds,
price,
minimum_nights,
maximum_nights,
availability_365,
number_of_reviews,
review_scores_rating
);

SHOW VARIABLES LIKE 'basedir';

SHOW GLOBAL VARIABLES LIKE 'local_infile';