select state_name, count(*) as rejected_count
from loans
where loan_status='Rejected'
group by state_name
having count(*)>20;