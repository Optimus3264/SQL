-- applications having loan amount less than $250,000 

select count(*) from loan_applications
where loan_amount<250000;

