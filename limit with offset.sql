-- order by loan amount skipping first 12 rows

select * from loan_applications
order by loan_amount
offset 12 limit 6;