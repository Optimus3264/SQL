SELECT
  loan_status,
  COUNT(*) AS loan_count,
  AVG(original_balance) AS avg_balance
FROM loans
GROUP BY loan_status
ORDER BY avg_balance DESC;


--“This query aggregates loans by status to compare both volume and average exposure,
--allowing us to identify which loan statuses pose the highest financial risk.”