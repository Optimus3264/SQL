-- order by sorting as expression or calculation

select borrower_id, credit_score, (borrower_id + credit_score) as new_column
from loan_applications
order by (borrower_id + credit_score), borrower_id desc;