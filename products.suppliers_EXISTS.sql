CREATE DATABASE Business;
USE Business;
CREATE TABLE Products(
ProductID INT,
ProductName VARCHAR(255),
SupplierID INT,
CategoryID INT,
Unit VARCHAR(255),
Price FLOAT
);

INSERT INTO Products VALUES (1, 'Chais', 1, 1, '10 boxes x 20 bags', 18);
INSERT INTO Products VALUES (2, 'Chang', 1, 1, '24-12 oz bottles', 19);
INSERT INTO Products VALUES (3, 'Annised Syrup', 1, 2, '12-550 ml bottles', 10);
INSERT INTO Products VALUES (4, "Chef Anton's Cajun Seasoning", 2, 2, '48-6 oz jars', 22);
INSERT INTO Products VALUES (5, "Chef Anton's Gumbo Mix", 2, 2, '36 boxes', 21.35);

CREATE TABLE Suppliers(
SupplierID INT,
SupplierName VARCHAR(255),
ContactName VARCHAR(255),
Address VARCHAR(255),
City VARCHAR(255),
PostalCode VARCHAR(255),
Country VARCHAR(255)
);

INSERT INTO Suppliers VALUES (1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK');
INSERT INTO Suppliers VALUES (2, 'New Orleans Cajun Delight', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA');
INSERT INTO Suppliers VALUES (3, "Grandma Kelly's Homestead", 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA');
INSERT INTO Suppliers VALUES (4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan');

-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS ( SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.SupplierID AND Price < 20);

-- The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.SupplierID AND Price = 22);