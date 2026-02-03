CREATE TABLE programming_languages (
 id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR (255) NOT NULL,
 type VARCHAR (255) NOT NULL,
 direction VARCHAR (255) NOT NULL,
 popularity INT NOT NULL
);

INSERT INTO programming_languages (name, type, direction, popularity) VALUES 
 ('Python', 'интерпретируемый', 'веб-разработка, ИИ', 1000),
 ('Java', 'компилируемо интерпретируемый', 'десктоп, мобильная разработка', 800),
 ('JavaScript', 'интерпретируемый', 'веб-разработка, мобильная разработка', 900),
 ('C++', 'компилируемый', 'игры, оконные приложения', 700),
 ('PHP', 'интерпретируемый', 'веб-разработка', 600),
 ('Ruby', 'интерпретируемый', 'веб-разработка', 400),
 ('Go', 'компилируемый', 'веб-разработка', 400),
 ('Swift', 'компилируемый', 'мобильная разработка', 300),
 ('TypeScript', 'интерпретируемый', 'веб-разработка', 400),
 ('Kotlin', 'компилируемый', 'мобильная разработка', 200),
 ('C#', 'компилируемо интерпретируемый', 'веб-разработка, игры, десктоп', 500)

SELECT CONCAT(UPPER(name),'-', type, ':', direction) AS summary
FROM programming_languages
WHERE direction LIKE '%веб-разработка%'
ORDER BY popularity DESC, name ASC;
