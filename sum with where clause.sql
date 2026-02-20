-- sum with where clause

select sum(loan_amount) from loan_applications where loan_status='Rejected';