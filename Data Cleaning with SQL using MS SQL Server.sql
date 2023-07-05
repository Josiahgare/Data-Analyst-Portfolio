-- Data Cleaning with SQL using MS SQL Server

-- CLeaning CustomerAddress table
-- preview of our table
SELECT *
FROM CustomerAddress;

-- count of customer data
SELECT COUNT(customer_id)
FROM CustomerAddress

-- checking for null
SELECT *
FROM CustomerAddress
WHERE postcode IS NULL --no null value found

-- checking the distinct values in the column(s)
SELECT DISTINCT(state)
FROM CustomerAddress

-- cleaning state column to be consistent
UPDATE  CustomerAddress
SET state = 'VIC'
WHERE state = 'Victoria';

UPDATE  CustomerAddress
SET state = 'NSW'
WHERE state = 'New South Wales';

-- Cleaning CustomerDemographic table
-- preview of our table
SELECT *
FROM CustomerDemographic

-- count of customer data
SELECT COUNT(customer_id)
FROM CustomerDemographic

-- checking for null
SELECT *
FROM CustomerDemographic
WHERE job_title IS NULL

SELECT *
FROM CustomerDemographic
WHERE DOB IS NULL

-- replacing NULL values wih n/a
UPDATE  CustomerDemographic
SET job_title = 'n/a'
WHERE job_title IS NULL;

--deleting NULL records 
DELETE FROM CustomerDemographic
WHERE DOB IS NULL

-- removing default column from table because it cannot be cleaned
ALTER TABLE CustomerDemographic
DROP COLUMN default;

-- checking the distinct values in the column(s)
SELECT DISTINCT(deceased_indicator)
FROM CustomerDemographic

SELECT DISTINCT(gender)
FROM CustomerDemographic

-- deleting records of deceased
DELETE FROM CustomerDemographic
WHERE deceased_indicator = 'Y'

-- cleaning gender column
UPDATE CustomerDemographic
SET gender = 'Female'
WHERE gender IN ('F', 'Femal')

UPDATE CustomerDemographic
SET gender = 'Male'
WHERE gender = 'M'

DELETE FROM CustomerDemographic
WHERE gender = 'U'

-- changing data type of column before updating it
ALTER TABLE CustomerDemographic
ALTER COLUMN owns_car
varchar(3);

-- cleaning owns_car column
UPDATE CustomerDemographic
SET owns_car = 'Yes'
WHERE owns_car = '1';

UPDATE CustomerDemographic
SET owns_car = 'No'
WHERE owns_car = '0';

-- create new column
ALTER TABLE CustomerDemographic
ADD age tinyint;

UPDATE CustomerDemographic
SET age = DATEDIFF(YEAR , DOB, GETDATE());

SELECT MAX(age) AS Maximum_age, --92
	MIN(age) AS Minimum_age, -- 21
	AVG(age) as Average_age -- 45
FROM CustomerDemographic;

-- creating new column for full name
ALTER TABLE CustomerDemographic
ADD fullname AS CONCAT(first_name, ' ',  last_name);

-- creating new column
ALTER TABLE CustomerDemographic
ADD full_name
varchar(50);

-- copying values only from computed column to new column
UPDATE CustomerDemographic
SET full_name=fullname;

-- removing unnecessary column(s)
ALTER TABLE CustomerDemographic
DROP COLUMN fullname, first_name, last_name;

-- Cleaning Transactions table
-- preview of our table
SELECT *
FROM [dbo].[Transactions];

-- count of customer data
SELECT COUNT(DISTINCT(customer_id))
FROM Transactions;

-- counting NULL values
SELECT COUNT(*)
FROM Transactions
WHERE online_order IS NULL;

-- checking the data type of the column(s)
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Transactions'
AND COLUMN_NAME = 'online_order';

-- changing data type of the column(s)
ALTER TABLE Transactions
ALTER COLUMN online_order
varchar(5);

-- changing values in the column(s)
UPDATE Transactions
SET online_order = 'FALSE'
WHERE online_order = '0';

UPDATE Transactions
SET online_order = 'TRUE'
WHERE online_order = '1';

-- formatting the list_price column to 2 decimal places
UPDATE Transactions
SET list_price = ROUND(list_price, 2);

-- investigating NULL records
SELECT DISTINCT brand, product_line, product_class, product_size, list_price, standard_cost
FROM Transactions
ORDER BY list_price;

-- removing NULL records that will affect analysis
DELETE FROM Transactions
WHERE standard_cost IS NULL;

-- removing column not needed for analysis
ALTER TABLE Transactions
DROP COLUMN product_first_sold_date;

-- creaing new table and populating it
ALTER TABLE Transactions
ADD profit AS list_price - standard_cost;

SELECT AVG(profit) AS Average_profit, 
	MAX(profit) AS Maximum_profit, 
	MIN(profit) AS Minimum_profit,
	SUM(profit) AS Total_profit
FROM Transactions;

-- Data Preparation
-- Date manipulation
ALTER TABLE Transactions
ADD t_month AS DATENAME(MONTH, transaction_date);

ALTER TABLE Transactions
ADD t_weekday AS DATENAME(WEEKDAY, transaction_date);

ALTER TABLE Transactions
ADD t_week AS 'W' + DATENAME(WEEK, transaction_date);

ALTER TABLE Transactions
ADD t_quarter AS 'Q' + DATENAME(QUARTER, transaction_date);

SELECT COUNT(DISTINCT(product_id)) AS Total_num_product
FROM Transactions;
