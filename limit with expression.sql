-- limit with expression

select loan_amount, credit_score, borrower_id,(credit_score + borrower_id) as cb
from loan_applications
order by loan_amount
limit 10;