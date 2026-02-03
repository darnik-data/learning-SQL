CREATE TABLE virus_damage (
 id INT PRIMARY KEY AUTO_INCREMENT,
 virus_name VARCHAR (255) NOT NULL,
 damage_level_percentage DECIMAL (10,2) NOT NULL
);

INSERT INTO virus_damage (virus_name, damage_level_percentage) VALUES 
 ('Trojan', 85.5),
 ('Worm', 70.0),
 ('Ransomware', 95.9),
 ('Spyware', 60.55),
 ('Adware', 55.88);

SELECT virus_name,
ROUND (damage_level_percentage / 10, 1) AS damage_level_tenths
FROM virus_damage
ORDER BY damage_level_tenths ASC;
