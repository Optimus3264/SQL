-- borrower id & loan status having credit score more than 700

select borrower_id, loan_status
from loan_applications
where credit_score > 700;