-- multiple column sort with credit score highest to lowest 
-- AND application date earlier to recent

select loan_type, application_date, credit_score from loan_applications
order by credit_score desc, application_date asc;