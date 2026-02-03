CREATE TABLE antivirus_efficiencys (
 id INT PRIMARY KEY AUTO_INCREMENT,
 antivirus_name VARCHAR (255) NOT NULL,
 detection_percentage DECIMAL (10,2) NOT NULL,
 false_positive_rate DECIMAL (10,2) NOT NULL,
 system_impact INT NOT NULL,
 price DECIMAL (10,2) NOT NULL
);

INSERT INTO antivirus_efficiencys (antivirus_name, detection_percentage, false_positive_rate, system_impact, price) VALUES 
 ('Avast', 98.50, 0.50, 15, 40.00),
 ('AVG', 97.20, 0.70, 20, 50.00),
 ('Avira', 99.10, 0.30, 10, 30.00),
 ('Bitdefender', 99.60, 0.20, 12, 60.00),
 ('Kaspersky', 99.80, 0.10, 18, 70.00),
 ('Norton', 99.40, 0.40, 25, 80.00),
 ('McAfee', 98.80, 0.60, 30, 90.00),
 ('ESET', 99.20, 0.20, 13, 50.00),
 ('Trend Micro', 98.90, 0.50, 20, 40.00),
 ('Webroot', 97.50, 0.80, 5, 30.00);

SELECT antivirus_name,
ROUND ((detection_percentage - false_positive_rate) / (system_impact *price), 2)  AS optimality_coefficient
FROM antivirus_efficiencys
ORDER BY optimality_coefficient DESC
LIMIT 5;
