
CREATE DATABASE video_game_analytics;
USE video_game_analytics;

CREATE TABLE dim_game (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    game_name VARCHAR(255)
);

CREATE TABLE dim_platform (
    platform_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_name VARCHAR(100)
);

CREATE TABLE dim_publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(255)
);

CREATE TABLE fact_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    game_id INT,
    platform_id INT,
    publisher_id INT,
    year INT,
    na_sales FLOAT,
    eu_sales FLOAT,
    jp_sales FLOAT,
    other_sales FLOAT,
    global_sales FLOAT
);
