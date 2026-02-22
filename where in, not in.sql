-- VA & USDA loans which are not rejected

select * from loan_applications
where loan_type in ('USDA','VA') and loan_status not in ('Rejected');