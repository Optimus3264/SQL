CREATE DATABASE simcard_details;
USE simcard_details;

CREATE TABLE sim_info(
id INT,
company VARCHAR(255),
contact VARCHAR(255),
connectivity VARCHAR(255),
recharge VARCHAR (255),
status VARCHAR(255)
);

INSERT INTO sim_info values (1, 'VI', '9823324077', '5G', '250', 'Active');
INSERT INTO sim_info values (2, 'Idea', '9822331193', '5G', '350', 'Active');
INSERT INTO sim_info values (3, 'Gio', '8584868239', '5G', '300', 'Active');
INSERT INTO sim_info values (4, 'Airtel', '9049745863', '3G', '250', 'Active');
INSERT INTO sim_info values (5, 'Docomo', '9925368475', '4G', '200', 'InActive');
INSERT INTO sim_info values (6, 'Idea', '2200548596', '3G', '150', 'Active');
INSERT INTO sim_info values (7, 'Gio', '9637485521', '4G', '100', 'InActive');
INSERT INTO sim_info values (8, 'Idea', '9658363624', '5G', '50', 'InActive');
INSERT INTO sim_info values (9, 'Airtel', '9920485213', '4G', '400', 'Active');
INSERT INTO sim_info values (10, 'VI', '9922384265', '3G', '600', 'InActive');

SELECT * FROM sim_info WHERE (company = 'VI' AND status = 'Active' ); -- AND
SELECT * FROM sim_info WHERE (company = 'airtel' OR company = 'idea'); -- OR
SELECT * FROM sim_info WHERE NOT status = 'active'; -- NOT
SELECT * FROM sim_info ORDER BY recharge DESC LIMIT 8; -- Order by, ascending/descending, Limit
SELECT MIN(recharge) FROM sim_info; -- MIN
SELECT MAX(recharge) FROM sim_info; -- MAX
SELECT count(*) FROM sim_info; -- Count
SELECT avg(recharge) FROM sim_info; -- AVG
SELECT sum(recharge) FROM sim_info; -- SUM
SELECT * FROM sim_info WHERE company LIKE ('V%'); -- LIKE (to identify patterns in string type data)
SELECT * FROM sim_info WHERE company LIKE ('%o');
SELECT * FROM sim_info WHERE company LIKE ('%rt%');
SELECT * FROM sim_info WHERE connectivity IN ('4G', '3G'); -- IN (to find multiple values in a column)
SELECT connectivity, status, count(*) FROM sim_info GROUP BY connectivity, status; -- GROUP BY (groups the rows by both variables)
SELECT company, SUM(recharge) from sim_info GROUP BY company HAVING SUM(recharge) < 300;  -- HAVING (applied after using GROUP BY function)
														 -- * WHERE (applied before using GROUP BY function)
SELECT * FROM sim_info WHERE EXISTS ( SELECT 2 FROM sim_info WHERE company='VI' AND status='active');  -- The EXISTS operator in SQL is used to check if a subquery returns any rows.