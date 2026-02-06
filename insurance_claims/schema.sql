CREATE TABLE insurance_claims (
 claim_id INT PRIMARY KEY AUTO_INCREMENT,
 policy_holder VARCHAR (255) NOT NULL,
 city VARCHAR (255) NOT NULL,
 car_brand VARCHAR (255) NOT NULL,
 claim_amount INT NOT NULL,
 claim_date DATE NOT NULL,
 status VARCHAR (255) NOT NULL
);
