DROP TABLE IF EXISTS fct_loan_applications CASCADE;

CREATE TABLE fct_loan_applications AS
SELECT
    ROW_NUMBER() OVER () AS loan_application_key,
    dg.geography_key,
    db.borrower_key,
    dlp.loan_product_key,
    dp.property_key,
    dd.date_key,
    f.legal_entity_identifier,
    f.loan_amount,
    f.property_value,
    f.borrower_income,
    f.ltv_ratio,
    f.interest_rate,
    f.rate_spread,
    f.loan_status,
    f.loan_status_description,
    f.is_approved,
    f.is_high_risk,
    f.ltv_bucket,
    f.dti_bucket,
    f.loan_amount_bucket,
    f.interest_rate_bucket,
    f.income_bucket,
    f.has_senior_borrower
FROM int_hmda__loans_enhanced f
LEFT JOIN dim_geography dg ON f.state_code = dg.state_code AND f.county_code = dg.county_code AND f.census_tract = dg.census_tract
LEFT JOIN dim_borrower db ON f.borrower_ethnicity = db.borrower_ethnicity AND f.borrower_race = db.borrower_race AND f.borrower_sex = db.borrower_sex
LEFT JOIN dim_loan_product dlp ON f.loan_product_type = dlp.loan_product_type AND f.loan_type = dlp.loan_type AND f.loan_purpose = dlp.loan_purpose
LEFT JOIN dim_property dp ON f.dwelling_category = dp.dwelling_category AND f.occupancy_type = dp.occupancy_type AND f.total_units = dp.total_units
LEFT JOIN dim_date dd ON f.loan_year = dd.date_key
LIMIT 100000;

ALTER TABLE fct_loan_applications ADD PRIMARY KEY (loan_application_key);