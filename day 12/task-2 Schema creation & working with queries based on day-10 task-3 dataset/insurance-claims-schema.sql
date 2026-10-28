CREATE DATABASE DB_DAY_12_TASK_2;

USE DB_DAY_12_TASK_2;

CREATE TABLE InsuranceClaims(
    customer_id VARCHAR(16) NOT NULL,
    age INTEGER NOT NULL CHECK (age > 18),
    annual_income FLOAT NOT NULL CHECK (annual_income >= 0),
    insurance_type VARCHAR(32) NOT NULL,
    premium_amount FLOAT NOT NULL CHECK (premium_amount >= 2000),
    claim_amount FLOAT NOT NULL CHECK (claim_amount >= 0),
    policy_status VARCHAR(16)
);

INSERT INTO InsuranceClaims VALUES ('C-1001', 25, 350000, 'Health', 12000, 0, 'Active');
INSERT INTO InsuranceClaims VALUES ('C-1002', 42, 850000, 'Life', 18000, 50000, 'Active');
INSERT INTO InsuranceClaims VALUES ('C-1003', 36, 620000, 'Vehicle', 15000, 22000, 'Active');
INSERT INTO InsuranceClaims VALUES ('C-1004', 55, 1100000, 'Health', 24000, 175000, 'Expired');
INSERT INTO InsuranceClaims VALUES ('C-1005', 29, 450000, 'Vehicle', 10000, 8000, 'Active');
INSERT INTO InsuranceClaims VALUES ('C-1006', 48, 950000, 'Life', 22000, 0, 'Expired');

SELECT insurance_type, SUM(claim_amount) AS total_claim_amount FROM InsuranceClaims GROUP BY insurance_type ORDER BY total_claim_amount;

SELECT customer_id, annual_income, premium_amount, claim_amount FROM InsuranceClaims WHERE insurance_type = 'Vehicle';

SELECT customer_id, annual_income, insurance_type FROM InsuranceClaims WHERE policy_status = 'Active';

SELECT insurance_type, AVG(annual_income) as average_annual_income FROM InsuranceClaims GROUP BY insurance_type ORDER BY average_annual_income DESC LIMIT 1; 