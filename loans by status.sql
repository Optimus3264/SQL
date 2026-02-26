select loan_status, count(*) as total_loans
from loans
group by loan_status;