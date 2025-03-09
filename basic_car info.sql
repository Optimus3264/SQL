CREATE DATABASE car_info;
USE car_info;
CREATE TABLE car_details(
id INT,
Company VARCHAR (255),
Model VARCHAR (255),
Manufactured VARCHAR (255),
Price VARCHAR (255),
Segment VARCHAR (255)
);

INSERT INTO car_details VALUES (1, 'Maruti Suzuki', 'Swift', '2020', '500000', 'Sedan');
INSERT INTO car_details VALUES (2, 'Maruti Suzuki', 'Ertiga', '2021', '900000', 'Family');
INSERT INTO car_details VALUES (3, 'Hyundai', 'i20', '2022', '600000', 'Sport');
INSERT INTO car_details VALUES (4, 'KIA', 'Seltos', '2023', '800000', 'Sedan');
INSERT INTO car_details VALUES (5, 'MG', 'Hector', '2024', '700000', 'Sport');

SELECT * FROM car_details WHERE price = 900000;
SELECT * FROM car_details WHERE price BETWEEN 500000 AND 800000;
SELECT * FROM car_details WHERE price > 600000;
SELECT * FROM car_details WHERE price < 700000;
SELECT * FROM car_details order by company asc;
SELECT * FROM car_details order by price desc;