-- application date between time frame

select loan_status, borrower_id
from loan_applications
where application_date between '05-01-2022' and '08-30-2023';