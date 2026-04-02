--
SELECT state_name, COUNT(*)
FROM loans
GROUP BY state_name
HAVING COUNT(*) > 2;
