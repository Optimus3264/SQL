-- applications with status not pending

select * from loan_applications
where loan_status <>'Pending';