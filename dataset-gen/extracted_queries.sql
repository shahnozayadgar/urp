SELECT student_id FROM Student_Course_Attendance WHERE course_id = 301	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE registration_date > '2008-11-01'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE date_of_attendance BETWEEN '2008-11-01' AND '2008-11-30'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE course_id = '301'	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE registration_date > '2008-11-01'	student_assessment
SELECT student_id FROM Students WHERE student_details LIKE '%a%'	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE course_id = 301	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE date_of_attendance > '2010-01-01'	student_assessment
SELECT student_id FROM Students WHERE student_details LIKE '%a%'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE course_id = '301'	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE registration_date > '2008-11-01'	student_assessment
SELECT student_id FROM Students WHERE student_details LIKE '%Marry%'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE course_id = '301'	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE registration_date > '2008-11-01'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE date_of_attendance = '2008-11-04 10:35:13'	student_assessment
SELECT student_id FROM Student_Course_Attendance WHERE course_id = 301	student_assessment
SELECT student_id FROM Student_Course_Registrations WHERE registration_date >= '2008-11-01'	student_assessment
SELECT DISTINCT student_id FROM Student_Course_Attendance WHERE date_of_attendance BETWEEN '2008-11-01' AND '2008-11-30'	student_assessment
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT country, COUNT(*) FROM customers GROUP BY country ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_state, COUNT(*) FROM invoices GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_country, COUNT(customer_id) AS customer_count FROM invoices GROUP BY billing_country ORDER BY customer_count DESC LIMIT 8	store_1
SELECT billing_country, COUNT(invoice_id) AS invoice_count FROM invoices GROUP BY billing_country ORDER BY invoice_count DESC LIMIT 8	store_1
SELECT billing_country, SUM(total) AS total_revenue FROM invoices GROUP BY billing_country ORDER BY total_revenue DESC LIMIT 8	store_1
SELECT billing_country, COUNT(customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(customer_id) DESC LIMIT 10	store_1
SELECT billing_country, SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 10	store_1
SELECT billing_country, COUNT(DISTINCT customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(DISTINCT customer_id) DESC LIMIT 10	store_1
SELECT billing_country, COUNT(customer_id) AS total_customers FROM invoices GROUP BY billing_country ORDER BY total_customers DESC LIMIT 10	store_1
SELECT billing_country, SUM(invoice_id) AS total_invoices FROM invoices GROUP BY billing_country ORDER BY total_invoices DESC LIMIT 10	store_1
SELECT billing_country, AVG(billing_postal_code) AS average_postal_code FROM invoices GROUP BY billing_country ORDER BY average_postal_code DESC LIMIT 10	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'F%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'L%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'F%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' OR title LIKE 'B%' ORDER BY title	store_1
SELECT SUM(total) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'MA'	store_1
SELECT SUM(total) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT SUM(total) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT SUM(invoice_lines.quantity) FROM invoices JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id WHERE invoices.billing_city = 'Stuttgart' AND invoices.billing_state = 'MA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT AVG(invoice_lines.quantity) FROM invoices JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id WHERE invoices.billing_country = 'Germany'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT billing_postal_code, COUNT(*) FROM invoices WHERE billing_country = 'Norway' GROUP BY billing_postal_code	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_country = 'Norway' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_state = 'MA' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_country, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_postal_code, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT company FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT email, phone FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT count(*) FROM customers WHERE state = 'SP'	store_1
SELECT count(*) FROM employees WHERE state = 'AB'	store_1
SELECT count(*) FROM invoices WHERE billing_state = 'MA'	store_1
SELECT country FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT address FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT city FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT email FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT phone FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT phone FROM employees WHERE title = 'Sales Support Agent' AND city = 'Calgary'	store_1
SELECT phone FROM employees WHERE reports_to = 2	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY first_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY reports_to DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Manager' ORDER BY first_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY city ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees ORDER BY city ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees ORDER BY reports_to ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY last_name ASC LIMIT 10	store_1
SELECT count(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*), city FROM customers GROUP BY city	store_1
SELECT count(*), city FROM employees WHERE reports_to = 1 GROUP BY city	store_1
SELECT count(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*), state FROM employees WHERE title = 'General Manager' GROUP BY state	store_1
SELECT count(*), country FROM employees WHERE title = 'Sales Manager' GROUP BY country	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_city, COUNT(*) FROM invoices GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_state, COUNT(*) FROM invoices GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_country, COUNT(*) AS invoice_count FROM invoices GROUP BY billing_country ORDER BY invoice_count DESC LIMIT 8	store_1
SELECT billing_country, SUM(quantity) AS total_quantity FROM invoices INNER JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id GROUP BY billing_country ORDER BY total_quantity DESC LIMIT 8	store_1
SELECT billing_country, AVG(total) AS average_total FROM invoices GROUP BY billing_country ORDER BY average_total DESC LIMIT 8	store_1
SELECT billing_country, COUNT(*) as invoice_count FROM invoices GROUP BY billing_country ORDER BY invoice_count DESC LIMIT 10	store_1
SELECT billing_country, SUM(total) as total_revenue FROM invoices GROUP BY billing_country ORDER BY total_revenue DESC LIMIT 10	store_1
SELECT billing_country, AVG(quantity) as average_quantity FROM invoice_lines INNER JOIN invoices ON invoice_lines.invoice_id = invoices.customer_id GROUP BY billing_country ORDER BY average_quantity DESC LIMIT 10	store_1
SELECT billing_country, COUNT(*) as invoice_count FROM invoices GROUP BY billing_country ORDER BY invoice_count DESC LIMIT 10	store_1
SELECT billing_country, SUM(invoice_id) as total_invoices FROM invoices GROUP BY billing_country ORDER BY total_invoices DESC LIMIT 10	store_1
SELECT billing_country, AVG(billing_postal_code) as average_postal_code FROM invoices GROUP BY billing_country ORDER BY average_postal_code DESC LIMIT 10	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' AND artist_id = 1 ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' AND artist_id IN (1, 2) ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'F%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title	store_1
SELECT SUM(invoice_id) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(customer_id) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'MA'	store_1
SELECT AVG(customer_id) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'WA'	store_1
SELECT SUM(invoice_id) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(customer_id) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'MA'	store_1
SELECT AVG(billing_postal_code) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'WA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'MA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'WA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_country = 'Brazil' GROUP BY customer_id	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_country = 'USA' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'USA' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'USA' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_country = 'USA' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_country, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_country = 'Canada'	store_1
SELECT billing_postal_code, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_postal_code LIKE 'T6G%'	store_1
SELECT billing_city, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_country, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_address, COUNT(*), SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Leonie' AND last_name = 'Köhler'	store_1
SELECT email, phone FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT count(*) FROM customers WHERE state = 'SP'	store_1
SELECT count(*) FROM customers WHERE country = 'Canada'	store_1
SELECT count(*) FROM employees WHERE city = 'Calgary'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT address FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT address FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT address FROM employees WHERE reports_to = 2	store_1
SELECT phone FROM employees WHERE first_name = 'Jane' AND last_name = 'Peacock'	store_1
SELECT phone FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT phone FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Manager' ORDER BY last_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY city ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY last_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Manager' ORDER BY first_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY address DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 2 ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY last_name ASC LIMIT 10	store_1
SELECT COUNT(*) AS employee_count, city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT COUNT(*) AS customer_count, city FROM customers GROUP BY city	store_1
SELECT COUNT(*) AS track_count, genre_id FROM tracks GROUP BY genre_id	store_1
SELECT count(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*), city FROM employees WHERE reports_to = 2 GROUP BY city	store_1
SELECT count(*), city FROM employees WHERE state = 'AB' GROUP BY city	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Diana%'	insurance_and_eClaims
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Hanna%'	insurance_and_eClaims
SELECT Staff_Details FROM Staff WHERE Staff_Details LIKE '%Diana%'	insurance_and_eClaims
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT aid FROM flight WHERE price < 300	flight_1
SELECT aid FROM flight WHERE destination = 'Chicago'	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT aid FROM flight WHERE price < 300	flight_1
SELECT aid FROM flight WHERE destination = 'Chicago'	flight_1
SELECT count(*) FROM flight WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM aircraft WHERE distance < 5000	flight_1
SELECT count(*) FROM flight WHERE distance > 1000 AND distance < 5000	flight_1
SELECT name, distance FROM aircraft WHERE distance = 3383	flight_1
SELECT name, price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8000	flight_1
SELECT name, salary FROM employee WHERE salary > 100000	flight_1
SELECT destination, price FROM flight WHERE price < 300	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE destination = 'Washington D.C.' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM aircraft ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance < 4000 ORDER BY distance ASC	flight_1
SELECT name FROM aircraft ORDER BY distance DESC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft) AND aid IN (SELECT aid FROM Flight WHERE origin = 'Los Angeles')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft) AND aid IN (SELECT aid FROM Flight WHERE destination = 'Chicago')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft) AND aid IN (SELECT aid FROM Flight WHERE distance < 3000)	flight_1
SELECT name FROM Aircraft WHERE distance > 6000	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT distance FROM Aircraft WHERE name = 'Boeing 737-800')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT MAX(distance) FROM Aircraft) - 1000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary BETWEEN 100000 AND 200000	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT name, salary FROM employee WHERE name = 'Mary Johnson'	flight_1
SELECT name, salary FROM employee WHERE name = 'John Williams'	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT name, salary FROM employee WHERE name = 'Mary Johnson'	flight_1
SELECT name, salary FROM employee WHERE name = 'John Williams'	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT aid, origin FROM flight WHERE origin = 'Los Angeles' ORDER BY aid	flight_1
SELECT distance, price FROM flight WHERE origin = 'Los Angeles' ORDER BY price	flight_1
SELECT origin, destination, price FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT name, distance FROM aircraft ORDER BY distance	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance, price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Washington D.C.'	flight_1
SELECT name, distance FROM aircraft WHERE distance < 5000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT avg(price) FROM Flight WHERE origin = 'Los Angeles' AND destination = 'Sydney'	flight_1
SELECT avg(price) FROM Flight WHERE origin = 'Los Angeles' AND destination = 'Washington D.C.'	flight_1
SELECT avg(price) FROM Flight WHERE origin = 'Los Angeles' AND destination = 'Boston'	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT aid FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Boston'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE aid = 3	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' AND price < 300 GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' AND distance < 3000 GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT name FROM employee WHERE salary > 100000	flight_1
SELECT count(*) FROM flight WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM aircraft WHERE distance < 5000	flight_1
SELECT count(*) FROM flight WHERE distance > 1000 AND distance < 5000	flight_1
SELECT name, distance FROM aircraft WHERE distance < 5000	flight_1
SELECT origin, destination FROM flight WHERE price < 300	flight_1
SELECT name, salary FROM employee WHERE salary > 100000	flight_1
SELECT name, distance FROM aircraft WHERE distance < 7000	flight_1
SELECT name, price FROM flight WHERE aid = 1	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM aircraft	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT aid, name FROM flight ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance ASC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY price DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM aircraft ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance < 4000 ORDER BY distance ASC	flight_1
SELECT name FROM aircraft ORDER BY distance DESC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance > (SELECT avg(distance) FROM aircraft)	flight_1
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee)	flight_1
SELECT destination FROM flight WHERE distance > (SELECT avg(distance) FROM flight)	flight_1
SELECT name FROM Aircraft WHERE distance > 6000	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft)	flight_1
SELECT name FROM Aircraft WHERE distance > 3000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 100000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary < 120000	flight_1
SELECT name, salary FROM employee WHERE name LIKE 'L%'	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE name LIKE 'L%'	flight_1
SELECT eid FROM certificate WHERE aid = 3	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT name, distance FROM aircraft ORDER BY distance	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT DISTINCT destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT origin, price FROM flight WHERE origin = 'Los Angeles' ORDER BY price	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance, price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT aid, destination FROM flight WHERE origin = 'Los Angeles' AND distance < 3000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Boston'	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT aid FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT AVG(distance), AVG(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT AVG(distance) AS average_distance, AVG(price) AS average_price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT AVG(distance) AS avg_distance, AVG(price) AS avg_price FROM flight WHERE distance < 3000	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE aid = 3	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE aid IN (SELECT aid FROM flight GROUP BY aid HAVING COUNT(*) > 0) GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT aid FROM flight WHERE price < 250	flight_1
SELECT aid FROM flight WHERE destination = 'Chicago'	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT name FROM employee WHERE salary > 100000	flight_1
SELECT count(*) FROM flight WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM aircraft WHERE distance < 5000	flight_1
SELECT count(*) FROM flight WHERE price < 300	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8000	flight_1
SELECT destination, price FROM flight WHERE aid = 3	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8500	flight_1
SELECT name, salary FROM employee WHERE salary > 100000	flight_1
SELECT origin, destination FROM flight WHERE price < 300	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM aircraft	flight_1
SELECT MIN(salary), AVG(salary), MAX(salary) FROM employee	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance ASC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE destination = 'Sydney' ORDER BY price ASC LIMIT 1	flight_1
SELECT name FROM aircraft ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance < 5000 ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance IN (1502, 1530, 3383) ORDER BY distance ASC	flight_1
SELECT name FROM Aircraft WHERE distance > 5000	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT distance FROM Aircraft WHERE name = 'Boeing 737-800')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT avg(distance) FROM Aircraft WHERE name != 'Embraer ERJ-145')	flight_1
SELECT name FROM aircraft WHERE distance > (SELECT avg(distance) FROM aircraft)	flight_1
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee)	flight_1
SELECT destination FROM flight WHERE distance < (SELECT avg(distance) FROM flight)	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 100000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT aid FROM flight WHERE price > 250	flight_1
SELECT name FROM aircraft WHERE distance < 4000	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT name, salary FROM employee WHERE name = 'Mary Johnson'	flight_1
SELECT name, salary FROM employee WHERE name = 'John Williams'	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT aid, price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT name, distance FROM aircraft WHERE name = 'Boeing 737-800'	flight_1
SELECT origin, destination, price FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT name, distance FROM aircraft ORDER BY distance	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT origin, price FROM flight WHERE origin = 'Los Angeles' ORDER BY price	flight_1
SELECT origin, distance FROM flight WHERE origin = 'Los Angeles' ORDER BY distance	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance, price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT name, distance FROM aircraft WHERE distance < 5000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Washington D.C.'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT destination, price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name, distance FROM aircraft WHERE distance IN (SELECT distance FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY)	flight_1
SELECT name, salary FROM employee WHERE salary IN (SELECT price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY)	flight_1
SELECT AVG(distance), AVG(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT AVG(distance), AVG(price) FROM flight WHERE destination = 'Chicago'	flight_1
SELECT AVG(distance), AVG(price) FROM flight WHERE destination = 'Dallas'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE aid = 3	flight_1
SELECT origin FROM flight GROUP BY origin ORDER BY count(*) LIMIT 1	flight_1
SELECT destination, COUNT(*) AS flight_count FROM flight GROUP BY destination ORDER BY flight_count DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE price = (SELECT MAX(price) FROM flight) GROUP BY destination	flight_1
SELECT destination, COUNT(*) as flight_count FROM flight GROUP BY destination ORDER BY flight_count DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1 OFFSET 0	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT aid FROM flight WHERE price < 300	flight_1
SELECT aid FROM flight WHERE destination = 'Chicago'	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT price FROM flight WHERE distance > 2000	flight_1
SELECT count(*) FROM flight WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM aircraft WHERE distance < 5000	flight_1
SELECT count(*) FROM flight WHERE price < 300	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8000	flight_1
SELECT name, salary FROM employee WHERE salary > 100000	flight_1
SELECT origin, destination FROM flight WHERE price < 300	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT destination, price FROM flight WHERE price < 300	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM aircraft	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT MIN(destination), AVG(distance), MAX(distance) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, distance FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance ASC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM aircraft ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance < 4000 ORDER BY distance ASC	flight_1
SELECT name FROM aircraft ORDER BY distance DESC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM Aircraft WHERE distance > 7120	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT distance FROM Aircraft WHERE name = 'Boeing 737-800')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft WHERE distance < 7000)	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft)	flight_1
SELECT destination FROM Flight WHERE distance > (SELECT AVG(distance) FROM Flight)	flight_1
SELECT name FROM Employee WHERE salary > (SELECT AVG(salary) FROM Employee)	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name, salary FROM employee WHERE salary < 120000	flight_1
SELECT name, salary FROM employee WHERE name LIKE 'J%'	flight_1
SELECT aid, price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT origin, distance FROM flight WHERE price < 250	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT aid, origin FROM flight WHERE origin = 'Los Angeles' ORDER BY aid	flight_1
SELECT distance, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY distance	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT name, distance FROM aircraft WHERE name IN ('Boeing 747-400', 'Boeing 737-800', 'Airbus A340-300', 'British Aerospace Jetstream 41', 'Embraer ERJ-145') ORDER BY distance	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance, price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT name, distance FROM aircraft WHERE distance >= 2000	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Washington D.C.'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT aid FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance) AS average_distance, avg(price) AS average_price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance) AS avg_dist, avg(price) AS avg_cost FROM flight WHERE aid = 3	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance) AS average_distance, avg(price) AS average_price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance) AS avg_distance, avg(price) AS avg_price FROM flight WHERE distance < 3000	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY SUM(price) LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY AVG(distance) LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT(aid) LIMIT 1	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT aid FROM flight WHERE distance > 1000	flight_1
SELECT name FROM aircraft WHERE distance > 1500	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT count(*) FROM flight WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM aircraft WHERE distance < 5000	flight_1
SELECT count(*) FROM flight WHERE price < 300	flight_1
SELECT name, distance FROM aircraft WHERE distance < 8000	flight_1
SELECT origin, destination FROM flight WHERE price < 250	flight_1
SELECT name, salary FROM employee WHERE salary > 100000	flight_1
SELECT name, distance FROM aircraft WHERE distance < 5000	flight_1
SELECT name, distance FROM aircraft WHERE aid IN (1, 2, 3)	flight_1
SELECT name, distance FROM aircraft WHERE name LIKE 'Boeing%'	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT MIN(distance), AVG(distance), MAX(distance) FROM flight	flight_1
SELECT MIN(price), AVG(price), MAX(price) FROM flight	flight_1
SELECT MIN(aid), AVG(aid), MAX(aid) FROM flight	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT aid, name FROM flight WHERE origin = 'Los Angeles' ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid, name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM aircraft ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM aircraft WHERE distance < 4000 ORDER BY distance ASC	flight_1
SELECT name FROM aircraft ORDER BY distance DESC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT name FROM Aircraft WHERE distance > 5000	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT distance FROM Aircraft WHERE name = 'Boeing 737-800')	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT MAX(distance) FROM Aircraft) - 1000	flight_1
SELECT name FROM Aircraft WHERE distance > 3383	flight_1
SELECT name FROM Aircraft WHERE distance > (SELECT AVG(distance) FROM Aircraft)	flight_1
SELECT name FROM Aircraft WHERE distance > 7120	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name FROM employee WHERE salary > 150000	flight_1
SELECT name FROM employee WHERE salary > 120000	flight_1
SELECT name FROM employee WHERE salary > 101000	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT name, salary FROM employee WHERE name = 'Mary Johnson'	flight_1
SELECT name, salary FROM employee WHERE name = 'John Williams'	flight_1
SELECT name, salary FROM employee WHERE name = 'James Smith'	flight_1
SELECT name, salary FROM employee WHERE salary > 150000	flight_1
SELECT name, salary FROM employee WHERE salary < 200000	flight_1
SELECT aid, origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY origin	flight_1
SELECT name, distance FROM aircraft ORDER BY name	flight_1
SELECT name, salary FROM employee ORDER BY name	flight_1
SELECT origin, destination FROM flight WHERE origin = 'Los Angeles' ORDER BY destination	flight_1
SELECT origin, price FROM flight WHERE origin = 'Los Angeles' ORDER BY price	flight_1
SELECT destination, aid FROM flight WHERE origin = 'Los Angeles' ORDER BY aid	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT distance FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT aid FROM flight WHERE origin = 'Los Angeles' AND destination = 'Boston'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Washington D.C.'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Chicago'	flight_1
SELECT avg(price) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Dallas'	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT price FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT aid FROM flight WHERE origin = 'Los Angeles' ORDER BY distance ASC FETCH FIRST 3 ROWS ONLY	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE distance < 3000	flight_1
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT avg(distance) AS average_distance, avg(price) AS average_price FROM flight WHERE destination = 'Chicago'	flight_1
SELECT avg(distance) AS avg_distance, avg(price) AS avg_price FROM flight WHERE aid = 3	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' AND distance < 3000 GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' AND price < 300 GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT destination, COUNT(*) as flight_count FROM flight GROUP BY destination ORDER BY flight_count DESC LIMIT 1	flight_1
SELECT destination FROM flight WHERE origin = 'Los Angeles' GROUP BY destination ORDER BY COUNT(*) DESC LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT(*) DESC FETCH FIRST 1 ROW ONLY	flight_1
SELECT date_of_birth FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT last_name FROM Customers WHERE customer_id IN (SELECT customer_id FROM Lessons)	driving_school
SELECT last_name FROM Staff WHERE staff_id IN (SELECT staff_id FROM Lessons)	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff WHERE customer_id IN (SELECT customer_id FROM Lessons)	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE first_name LIKE 'J%'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE date_of_birth = '2015-08-01 13:22:43'	driving_school
SELECT nickname FROM Staff WHERE staff_address_id = 14	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE date_became_customer < '2016-01-01'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
SELECT amount_outstanding FROM Customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
SELECT email_address FROM Customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id IN (1, 3) INTERSECT SELECT last_name FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT last_name FROM Customers WHERE date_of_birth < '1995-01-01' INTERSECT SELECT last_name FROM Staff WHERE first_name LIKE 'J%'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Carole' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Ortiz'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id = 14 INTERSECT SELECT last_name FROM Customers WHERE amount_outstanding < 5000	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE staff_address_id = 14	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE nickname LIKE '%45'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff > '2016-01-01'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_of_birth FROM Staff WHERE staff_address_id = 14	driving_school
SELECT date_of_birth FROM Staff WHERE nickname = 'thompson.constantin'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT first_name, last_name FROM Staff WHERE date_joined_staff = '2017-04-27 03:21:26'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM Staff WHERE date_of_birth = '2010-12-08 16:55:14'	driving_school
SELECT nickname FROM Staff WHERE staff_address_id = 14	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Carole' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Ortiz'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE customer_address_id = 10 OR customer_address_id = 8	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff >= '2016-01-01' INTERSECT SELECT last_name FROM Customers WHERE amount_outstanding < 5000	driving_school
SELECT last_name FROM Customers WHERE date_became_customer >= '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE first_name LIKE 'J%'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff > '2016-01-01'	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE middle_name = 'Amara'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE staff_address_id = 14	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT staff_address_id FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM Staff WHERE staff_address_id = 14	driving_school
SELECT nickname FROM Staff WHERE date_of_birth = '2010-12-08 16:55:14'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Carole' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Ortiz'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE middle_name = 'Icie'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE nickname LIKE '%45'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id IN (SELECT customer_address_id FROM Customers WHERE amount_outstanding < 5000) INTERSECT SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff > '2016-01-01'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT first_name, last_name FROM Staff WHERE date_left_staff = '2018-03-23 22:53:12'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT customer_status_code, email_address, cell_mobile_phone_number FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, amount_outstanding FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, email_address, phone_number FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id IN (SELECT customer_address_id FROM Customers WHERE amount_outstanding < 5000) INTERSECT SELECT last_name FROM Customers WHERE customer_status_code = 'Bad Customer'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer BETWEEN '2016-01-01' AND '2016-12-31' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff BETWEEN '2016-01-01' AND '2016-12-31'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding > 5000 INTERSECT SELECT last_name FROM Staff WHERE middle_name = 'Icie'	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff > '2016-01-01' INTERSECT SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01'	driving_school
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range IS NOT NULL	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (164, 189, 204, 211, 241)	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID = 204	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (211, 241)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID IN (SELECT Location_ID FROM Tourist_Attractions WHERE Attraction_Type_Code = '2')	cre_Theme_park
SELECT Feature_Details FROM Features WHERE Feature_ID IN (SELECT Feature_ID FROM Tourist_Attraction_Features WHERE Tourist_Attraction_ID = 5076)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID IN (SELECT Location_ID FROM Tourist_Attractions WHERE Tourist_Attraction_ID = 5076)	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT Location_ID, COUNT(*) FROM Tourist_Attractions GROUP BY Location_ID	cre_Theme_park
SELECT Feature_ID, COUNT(*) FROM Tourist_Attraction_Features GROUP BY Feature_ID	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range IS NOT NULL	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (164, 189, 204, 211, 241)	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID = 204	cre_Theme_park
SELECT DISTINCT Tourist_Details FROM Visitors	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID IN (SELECT Location_ID FROM Tourist_Attractions WHERE Tourist_Attraction_ID = 5076)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_code FROM Hotels WHERE price_range < 20000	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range IS NOT NULL	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID = 204	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (164, 189)	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_Details LIKE '%Toney%'	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID = 579	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '3' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT AVG(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT AVG(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT AVG(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_description, AVG(price_range) FROM Hotels JOIN Ref_Hotel_Star_Ratings ON Hotels.star_rating_code = Ref_Hotel_Star_Ratings.star_rating_code GROUP BY star_rating_description	cre_Theme_park
SELECT Location_Name, AVG(price_range) FROM Hotels JOIN Locations ON Hotels.Location_ID = Locations.Location_ID GROUP BY Location_Name	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY pets_allowed_yn	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, AVG(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY pets_allowed_yn	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY pets_allowed_yn	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, MAX(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range < 20000	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (164, 189, 204, 211, 241)	cre_Theme_park
SELECT Tourist_ID, Tourist_Details FROM Visitors WHERE Tourist_ID = 204	cre_Theme_park
SELECT DISTINCT Tourist_Details FROM Visitors	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID = 579	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID IN (SELECT Location_ID FROM Tourist_Attractions WHERE Tourist_Attraction_ID = 5076)	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '3' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MIN(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT Location_ID, COUNT(*) FROM Tourist_Attractions GROUP BY Location_ID	cre_Theme_park
SELECT Feature_ID, COUNT(*) FROM Tourist_Attraction_Features GROUP BY Feature_ID	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_description, COUNT(hotel_id) FROM Hotels JOIN Ref_Hotel_Star_Ratings ON Hotels.star_rating_code = Ref_Hotel_Star_Ratings.star_rating_code GROUP BY star_rating_description	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT customer_id, COUNT(*) FROM invoices GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_city, COUNT(*) FROM invoices GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 8	store_1
SELECT billing_country, AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 8	store_1
SELECT billing_country, SUM(quantity) FROM invoice_lines INNER JOIN invoices ON invoice_lines.invoice_id = invoices.customer_id GROUP BY billing_country ORDER BY SUM(quantity) DESC LIMIT 8	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 10	store_1
SELECT billing_country, SUM(quantity) FROM invoices INNER JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id GROUP BY billing_country ORDER BY SUM(quantity) DESC LIMIT 10	store_1
SELECT billing_country, COUNT(DISTINCT customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(DISTINCT customer_id) DESC LIMIT 10	store_1
SELECT billing_country, COUNT(customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(customer_id) DESC LIMIT 10	store_1
SELECT billing_country, SUM(quantity) FROM invoices INNER JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id GROUP BY billing_country ORDER BY SUM(quantity) DESC LIMIT 10	store_1
SELECT billing_country, AVG(billing_postal_code) FROM invoices GROUP BY billing_country ORDER BY AVG(billing_postal_code) DESC LIMIT 10	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'F%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'L%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' OR title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' AND artist_id = 1 ORDER BY title	store_1
SELECT SUM(invoice_lines.quantity) FROM invoices JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id WHERE invoices.billing_city = 'Edmonton' AND invoices.billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_country = 'Germany' AND billing_city = 'Stuttgart'	store_1
SELECT AVG(invoice_lines.quantity) FROM invoice_lines JOIN invoices ON invoice_lines.invoice_id = invoices.customer_id WHERE invoices.billing_country = 'Norway'	store_1
SELECT SUM(invoice_lines.quantity) FROM invoices INNER JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id WHERE invoices.billing_city = 'Edmonton' AND invoices.billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'MA'	store_1
SELECT SUM(invoice_lines.quantity) FROM invoices INNER JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id WHERE invoices.billing_city = 'Oslo' AND invoices.billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'MA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'WA'	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) FROM invoices WHERE billing_state = 'MA' GROUP BY billing_country	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_state = 'MA' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) AS total_invoices FROM invoices WHERE billing_state = 'CA' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) AS invoice_count FROM invoices WHERE billing_state = 'CA' GROUP BY billing_country	store_1
SELECT customer_id, COUNT(*) AS invoice_total FROM invoices WHERE billing_state = 'CA' GROUP BY customer_id	store_1
SELECT company FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT email, phone FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT email, phone FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT count(*) FROM customers WHERE state = 'SP'	store_1
SELECT count(*) FROM employees WHERE city = 'Calgary'	store_1
SELECT count(*) FROM invoices WHERE billing_state = 'MA'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT address FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT city FROM employees WHERE first_name = 'Jane' AND last_name = 'Peacock'	store_1
SELECT email FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT phone FROM employees WHERE first_name = 'Jane' AND last_name = 'Peacock'	store_1
SELECT phone FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT phone FROM employees WHERE reports_to = 2	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY last_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY email ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY reports_to DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY city ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees ORDER BY email DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees ORDER BY state ASC, first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 2 ORDER BY last_name ASC LIMIT 10	store_1
SELECT COUNT(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT COUNT(*), city FROM customers GROUP BY city	store_1
SELECT COUNT(*), state FROM invoices GROUP BY state	store_1
SELECT count(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*), city FROM employees WHERE state = 'AB' GROUP BY city	store_1
SELECT count(*), first_name FROM customers WHERE company = 'JetBrains s.r.o.' GROUP BY first_name	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT city, COUNT(*) FROM invoices GROUP BY city ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT customer_id, COUNT(*) FROM invoices GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 5	store_1
SELECT billing_country, COUNT(customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(customer_id) DESC LIMIT 8	store_1
SELECT billing_city, SUM(customer_id) FROM invoices GROUP BY billing_city ORDER BY SUM(customer_id) DESC LIMIT 8	store_1
SELECT billing_state, COUNT(invoice_id) FROM invoices GROUP BY billing_state ORDER BY COUNT(invoice_id) DESC LIMIT 8	store_1
SELECT billing_country, COUNT(customer_id) FROM invoices GROUP BY billing_country ORDER BY COUNT(customer_id) DESC LIMIT 10	store_1
SELECT billing_country, SUM(billing_postal_code) FROM invoices GROUP BY billing_country ORDER BY SUM(billing_postal_code) DESC LIMIT 10	store_1
SELECT billing_country, MAX(customer_id) FROM invoices GROUP BY billing_country ORDER BY MAX(customer_id) DESC LIMIT 10	store_1
SELECT billing_country, COUNT(customer_id) AS customer_count FROM invoices GROUP BY billing_country ORDER BY customer_count DESC LIMIT 10	store_1
SELECT billing_country, SUM(quantity) AS total_quantity FROM invoices JOIN invoice_lines ON invoices.customer_id = invoice_lines.invoice_id GROUP BY billing_country ORDER BY total_quantity DESC LIMIT 10	store_1
SELECT billing_country, AVG(billing_postal_code) AS average_postal_code FROM invoices GROUP BY billing_country ORDER BY average_postal_code DESC LIMIT 10	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' AND artist_id = 1 ORDER BY title	store_1
SELECT title FROM albums WHERE artist_id = 2 ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'B%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'F%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'L%' ORDER BY title	store_1
SELECT SUM(invoice_id) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT COUNT(customer_id) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'MA'	store_1
SELECT AVG(customer_id) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT SUM(invoice_id) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'AB'	store_1
SELECT COUNT(customer_id) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'MA'	store_1
SELECT COUNT(DISTINCT billing_address) FROM invoices WHERE billing_city = 'Boston' AND billing_state = 'WA'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Edmonton' AND billing_state = 'AB'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Oslo' AND billing_state = 'SP'	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city = 'Stuttgart' AND billing_state = 'MA'	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_state = 'MA' GROUP BY customer_id	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_state	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_city	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_country, COUNT(*) FROM invoices GROUP BY billing_country ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) FROM invoices WHERE billing_country = 'Canada' GROUP BY billing_city ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'Germany' GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT customer_id, COUNT(*) FROM invoices WHERE billing_country = 'USA' GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_city, COUNT(*) AS invoice_count, SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_country, COUNT(*) AS invoice_count, SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_postal_code, COUNT(*) AS invoice_count, SUM(customer_id) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_city, COUNT(*) AS invoice_count, SUM(customer_id) AS total_customers FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_country, COUNT(*) AS invoice_count, SUM(customer_id) AS total_customers FROM invoices WHERE billing_state = 'CA'	store_1
SELECT billing_postal_code, COUNT(*) AS invoice_count, SUM(customer_id) AS total_customers FROM invoices WHERE billing_state = 'CA'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT company FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT company FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT company FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT company FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT email, phone FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT email, phone FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT count(*) FROM customers WHERE state = 'SP'	store_1
SELECT count(*) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT count(*) FROM employees WHERE state = 'AB'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'František' AND last_name = 'Wichterlová'	store_1
SELECT country FROM customers WHERE first_name = 'Luís' AND last_name = 'Gonçalves'	store_1
SELECT country FROM customers WHERE first_name = 'François' AND last_name = 'Tremblay'	store_1
SELECT country FROM customers WHERE first_name = 'Bjørn' AND last_name = 'Hansen'	store_1
SELECT address FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT address FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT address FROM employees WHERE first_name = 'Margaret' AND last_name = 'Park'	store_1
SELECT phone FROM employees WHERE first_name = 'Jane' AND last_name = 'Peacock'	store_1
SELECT phone FROM employees WHERE first_name = 'Andrew' AND last_name = 'Adams'	store_1
SELECT phone FROM employees WHERE first_name = 'Steve' AND last_name = 'Johnson'	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY first_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE state = 'AB' ORDER BY postal_code ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 1 ORDER BY last_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY first_name DESC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY first_name ASC LIMIT 1	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Manager' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 2 ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE title = 'Sales Support Agent' ORDER BY last_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE city = 'Calgary' ORDER BY first_name ASC LIMIT 10	store_1
SELECT first_name, last_name FROM employees WHERE reports_to = 2 ORDER BY first_name ASC LIMIT 10	store_1
SELECT count(*) , city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*) , state FROM employees WHERE title = 'General Manager' GROUP BY state	store_1
SELECT count(*) , country FROM employees WHERE reports_to = 1 GROUP BY country	store_1
SELECT count(*), city FROM employees WHERE title = 'Sales Support Agent' GROUP BY city	store_1
SELECT count(*), state FROM employees WHERE title = 'General Manager' GROUP BY state	store_1
SELECT count(*), country FROM customers WHERE company = 'JetBrains s.r.o.' GROUP BY country	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT composer FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT composer FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT composer FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Balls to the Wall'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Restless and Wild'	store_1
SELECT milliseconds FROM tracks WHERE name = 'For Those About To Rock (We Salute You)'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT album_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT genre_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT media_type_id FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Diana%'	insurance_and_eClaims
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Mrs.%' OR Customer_Details LIKE '%Dr.%'	insurance_and_eClaims
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Selena%' OR Customer_Details LIKE '%Ellsworth%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Dr. Diana%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Rath%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Hanna%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Selena%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Hanna%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Selena%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Dr.%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT staff_details FROM staff WHERE staff_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customer_id FROM policies WHERE customer_id IN (SELECT customer_id FROM customers WHERE customer_details LIKE '%Diana%')	insurance_and_eClaims
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range IS NOT NULL	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (204, 211)	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID = 164	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (189, 241)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID IN (SELECT Location_ID FROM Tourist_Attractions WHERE Tourist_Attraction_ID = 5076)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT Location_Name FROM Locations WHERE Location_ID = 579	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE star_rating_code IN ('3', '4', '5') GROUP BY star_rating_code	cre_Theme_park
SELECT Location_ID, COUNT(*) FROM Tourist_Attractions GROUP BY Location_ID	cre_Theme_park
SELECT Feature_ID, COUNT(*) FROM Tourist_Attraction_Features GROUP BY Feature_ID	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '5'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE price_range IS NOT NULL	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID IN (164, 189, 204, 211, 241)	cre_Theme_park
SELECT DISTINCT Tourist_Details FROM Visitors WHERE Tourist_ID = 204	cre_Theme_park
SELECT Tourist_Details FROM Visitors WHERE Tourist_ID = 211 OR Tourist_ID = 241	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT star_rating_code, price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT price_range FROM Hotels WHERE hotel_id IN (123, 172, 239)	cre_Theme_park
SELECT price_range FROM Hotels WHERE star_rating_code = '4'	cre_Theme_park
SELECT price_range FROM Hotels WHERE pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_description FROM Ref_Hotel_Star_Ratings WHERE star_rating_code = '5'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = ''	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '4' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT avg(price_range) FROM Hotels WHERE star_rating_code = '3' AND pets_allowed_yn = '1'	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels WHERE price_range IS NOT NULL GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels WHERE pets_allowed_yn = '1' GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, COUNT(hotel_id) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code, MAX(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn, COUNT(hotel_id) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT Location_ID, COUNT(hotel_id) FROM Hotels GROUP BY Location_ID	cre_Theme_park
SELECT pets_allowed_yn, COUNT(*) FROM Hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code	cre_Theme_park
SELECT Location_ID, COUNT(*) FROM Hotels GROUP BY Location_ID	cre_Theme_park
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE nickname = 'thompson.constantin'	driving_school
SELECT date_joined_staff FROM Staff WHERE staff_address_id = 14	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM Staff WHERE date_of_birth = '2010-12-08 16:55:14'	driving_school
SELECT nickname FROM Staff WHERE staff_address_id = 14	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Carole' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Ortiz'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE customer_id = 10	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT amount_outstanding FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT email_address FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id IN (SELECT customer_address_id FROM Customers WHERE amount_outstanding > 5000) INTERSECT SELECT last_name FROM Customers WHERE customer_status_code = 'Bad Customer'	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01' INTERSECT SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff > '2015-01-01' INTERSECT SELECT last_name FROM Customers WHERE amount_outstanding < 5000	driving_school
SELECT last_name FROM Customers WHERE date_became_customer < '2017-01-01' INTERSECT SELECT last_name FROM Staff WHERE middle_name = 'Icie'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_of_birth FROM Staff WHERE staff_address_id = 14	driving_school
SELECT date_of_birth FROM Staff WHERE nickname = 'thompson.constantin'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT staff_address_id FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE date_became_customer >= '2016-01-01'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Terry'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01' INTERSECT SELECT last_name FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE staff_address_id IN (1, 3)	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding < 5000 INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01'	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE middle_name LIKE 'A%'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_of_birth FROM Staff WHERE staff_address_id = 14	driving_school
SELECT date_of_birth FROM Staff WHERE nickname = 'thompson.constantin'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Kaitlin' AND last_name = 'Mertz'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Jedidiah' AND last_name = 'Herzog'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Rebekah' AND last_name = 'Hermann'	driving_school
SELECT nickname FROM Staff WHERE first_name = 'Camylle' AND last_name = 'Weissnat'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Genevieve' OR last_name = 'Bernhard'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Millie' OR last_name = 'Bruen'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE first_name = 'Clara' OR last_name = 'Tromp'	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE customer_id = 10	driving_school
SELECT customer_status_code, cell_mobile_phone_number, email_address FROM Customers WHERE amount_outstanding > 5000	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Millie' AND last_name = 'Bruen'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Genevieve' AND last_name = 'Terry'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = 'Clara' AND last_name = 'Ortiz'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_joined_staff < '2017-01-01'	driving_school
SELECT last_name FROM Customers WHERE amount_outstanding < 5000 INTERSECT SELECT last_name FROM Staff WHERE staff_address_id = 14	driving_school
SELECT last_name FROM Customers WHERE date_became_customer > '2016-01-01' INTERSECT SELECT last_name FROM Staff WHERE middle_name = 'Amara'	driving_school
SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer' INTERSECT SELECT last_name FROM Staff WHERE date_left_staff IS NOT NULL	driving_school
SELECT last_name FROM Staff WHERE staff_address_id IN (SELECT customer_address_id FROM Customers WHERE amount_outstanding < 5000) INTERSECT SELECT last_name FROM Customers WHERE customer_status_code = 'Good Customer'	driving_school
SELECT last_name FROM Staff WHERE date_joined_staff > '2016-01-01' INTERSECT SELECT last_name FROM Customers WHERE date_became_customer < '2016-01-01'	driving_school
