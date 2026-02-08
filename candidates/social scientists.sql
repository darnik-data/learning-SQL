/* Вывести список кандилататов старше 30 лет, у которых гуманитарное образование* /

SELECT full_name,current_skills
FROM candidates
WHERE (education LIKE '%logy' OR education LIKE '%istics') AND age > 30;
