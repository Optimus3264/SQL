-- order by Sorting with NULL handling (NULLS FIRST/NULLS LAST)

select application_date, loan_amount, loan_type from loan_applications
order by application_date desc nulls last;