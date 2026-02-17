-- creating new column using sum

select borrower_id, credit_score, sum(borrower_id+credit_score) as new_column
from loan_applications
group by borrower_id, credit_score;