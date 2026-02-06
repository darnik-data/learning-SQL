/* Вывести список всех марок машин, у которых  общая сумма одобренных выплат превышает 100 000 */

SELECT car_brand, 
SUM (claim_amount) AS total_car
FROM insurance_claims
WHERE status = 'Approved'
GROUP BY car_brand
HAVING UM (claim_amount) > 100000;
