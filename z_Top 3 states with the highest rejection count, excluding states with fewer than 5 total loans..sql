SELECT
  state,
  COUNT(CASE WHEN loan_status = 'Rejected' THEN 1 END) AS rejection_count
FROM loans
GROUP BY state
HAVING COUNT(*) >= 5
ORDER BY rejection_count DESC
LIMIT 3;

-- Find the top 3 states with the highest rejection count,
-- excluding states with fewer than 5 total loans.