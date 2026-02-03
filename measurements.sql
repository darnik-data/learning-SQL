CREATE TABLE measurements (
 id INT PRIMARY KEY AUTO_INCREMENT,
 metal_name VARCHAR (255) NOT NULL,
 melting_point_fahrenheit DECIMAL (10,1) NOT NULL
);

INSERT INTO measurements (metal_name, melting_point_fahrenheit) VALUES 
 ('Copper', 1981.4),
 ('Gold', 1947.5),
 ('Iron', 2800.4),
 ('Zinc', 787.2),
 ('Silver', 1761.0);

SELECT metal_name,
ROUND ((melting_point_fahrenheit - 32)*5/9, 1) AS melting_point_celsius
FROM measurements
ORDER BY melting_point_celsius DESC;
