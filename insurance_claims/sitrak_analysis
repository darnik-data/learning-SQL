/* Выяснить общее количество по грузовикам бренда Sitrak и общую сумму по нему, но только для тех заявок, которые уже одобрены */

SELECT COUNT (claim_id) AS count_Sitrak, 
SUM (claim_amount) AS amount_Sitrak
FROM insurance_claims
WHERE car_brand = 'Sitrak' AND status = 'Approved';
