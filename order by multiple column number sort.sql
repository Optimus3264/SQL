-- columns numbered as after SELECT & sorted after ORDER BY (3,1 ASC Default)

select loan_type, loan_amount, borrower_id from loan_applications
order by 3,1, 2 desc;