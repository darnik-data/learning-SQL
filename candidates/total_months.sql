/* Вывести список всех кандидатов и посчитать их "условный стаж в месяцах" */

SELECT UPPER(full_name), experience_years * 12 AS total_months
FROM candidates
ORDER BY total_months DESC;
