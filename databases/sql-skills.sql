-- ARTIST TABLE

-- 1
INSERT INTO artist (name)
VALUES ('Ed Sheeren'), ('DMX'), ('Pearl Jam');

-- 2
SELECT * FROM artist
ORDER BY name ASC LIMIT 5

-- EMPLOYEE TABLE

-- 1
SELECT last_name, first_name FROM employee
WHERE city = 'Calgary';

-- 2
SELECT employee_id from employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

-- 3
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'

-- INVOICE TABLE

-- 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2
SELECT total from invoice
ORDER BY total DESC LIMIT 1

-- 3
SELECT total from invoice
ORDER BY total ASC LIMIT 1

-- 4
SELECT * FROM invoice
WHERE total > 5

-- 5
SELECT * FROM invoice
WHERE total < 5

-- 6
SELECT SUM(total) FROM invoice

-- JOIN QUERIES

-- 1
SELECT * FROM invoice a
JOIN invoice_line b ON a.invoice_id = b.invoice_id
WHERE unit_price > .99

-- 2
SELECT invoice_date, first_name, last_name, total FROM invoice a
JOIN customer b ON a.customer_id = b.customer_id

-- 3
SELECT a.first_name, a.last_name, b.first_name, b.last_name FROM customer a
JOIN employee b ON a.support_rep_id = b.employee_id

-- 4
SELECT a.title, b.name FROM album a
JOIN artist b ON a.artist_id = b.artist_id