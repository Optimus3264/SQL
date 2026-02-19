-- sum with group by

select loan_type, sum(loan_amount) from loan_applications group by loan_type;