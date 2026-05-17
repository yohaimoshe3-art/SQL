--------------------TOPIC 5 <> ALTER TABLE------------------- 

CREATE TABLE sales(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	REP_NAME TEXT NOT NULL,
	REGION TEXT NOT NULL,
	PRODUCT TEXT NOT NULL,
	AMOUNT REAL,
	SALE_DATE date NOT NULL
	);

INSERT INTO sales(REP_NAME,REGION,PRODUCT,AMOUNT,SALE_DATE)
VALUES
('Dana','North','Laptop',	1200.00	,'2026-01-10'),
('Omar','South','Phone',	650.00	,'2026-01-12'),
('Dana','North','Tablet',	NULL	,'2026-01-15'),
('Noa','East','Laptop'	,1350.00	,'2026-01-18'),
('Omar'	,'South','Laptop',	1100.00	,'2026-01-20'),
('Dana'	,'North','Phone',	720.00	,'2026-01-22'),
('Noa' ,'East',	'Phone',	690.00	,'2026-01-25'),
('Liam','West',	'Tablet',	480.00	,'2026-01-28'),
('Liam','West',	'Laptop',	1050.00	,'2026-02-01'),
('Omar','South','Tablet',	NULL	,'2026-02-03');

--1)
ALTER TABLE sales
ADD tier TEXT;

UPDATE sales
SET tier =  'high'
 WHERE AMOUNT > 1000;
 
UPDATE sales
SET tier =  'low'
WHERE AMOUNT <= 1000 OR AMOUNT IS NULL;

--2)
ALTER TABLE sales
ADD tax REAL DEFAULT 0;

UPDATE sales
SET tax = AMOUNT * 0.07
WHERE AMOUNT IS NOT NULL;

--3)
ALTER TABLE sales RENAME TO sales_backup;

--rename it back,
ALTER TABLE sales_backup RENAME TO sales;

--4)
ALTER TABLE sales
RENAME COLUMN PRODUCT TO item;

--5)
ALTER TABLE sales
DROP COLUMN tier;

PRAGMA table_info(sales);


