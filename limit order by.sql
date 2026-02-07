-- limit sort by loan amount

select loan_amount, loan_type from loan_applications 
order by loan_amount
limit 6;