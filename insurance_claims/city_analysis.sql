/* Узнать среднюю сумму выплаты для каждого города, но учитывать только те заявки, которые были одобрены. Отсортировать результат по убыванию средней суммы */

SELECT city,
AVG (claim_amount) AS average_payout
FROM insurance_claims
WHERE status = 'Approved'
GROUP BY city
ORDER BY average_payout DESC;
