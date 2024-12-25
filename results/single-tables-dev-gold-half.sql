SELECT count(*) FROM head WHERE age  >  56	department_management
SELECT name ,  born_state ,  age FROM head ORDER BY age	department_management
SELECT creation ,  name ,  budget_in_billions FROM department	department_management
SELECT max(budget_in_billions) ,  min(budget_in_billions) FROM department	department_management
SELECT avg(num_employees) FROM department WHERE ranking BETWEEN 10 AND 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING count(*)  >=  3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1	department_management
SELECT count(DISTINCT temporary_acting) FROM management	department_management
SELECT head_id ,  name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT count(*) FROM book	book_2
SELECT Writer FROM book ORDER BY Writer ASC	book_2
SELECT Title FROM book ORDER BY Issues ASC	book_2
SELECT Title FROM book WHERE Writer != "Elaine Lee"	book_2
SELECT Title ,  Issues FROM book	book_2
SELECT Publication_Date FROM publication ORDER BY Price DESC	book_2
SELECT DISTINCT Publisher FROM publication WHERE Price  >  5000000	book_2
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1	book_2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3	book_2
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*)  >  1	book_2
SELECT Publisher ,  COUNT(*) FROM publication GROUP BY Publisher	book_2
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1	book_2
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1	book_2
SELECT Publisher FROM publication WHERE Price  >  10000000 INTERSECT SELECT Publisher FROM publication WHERE Price  <  5000000	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT Price FROM publication WHERE Publisher  =  "Person" OR Publisher  =  "Wiley"	book_2
SELECT count(*) FROM follows	twitter_1
SELECT count(*) FROM follows GROUP BY f1	twitter_1
SELECT count(*) FROM tweets	twitter_1
SELECT count(DISTINCT UID) FROM tweets	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT text FROM tweets ORDER BY createdate	twitter_1
SELECT count(*) FROM Aircraft	flight_1
SELECT count(*) FROM Aircraft	flight_1
SELECT name ,  distance FROM Aircraft	flight_1
SELECT name ,  distance FROM Aircraft	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
SELECT count(*) FROM Employee	flight_1
SELECT count(*) FROM Employee	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary	flight_1
SELECT eid FROM Employee WHERE salary  >  100000	flight_1
SELECT eid FROM Employee WHERE salary  >  100000	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee)	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee)	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
SELECT count(*) FROM Flight	flight_1
SELECT count(*) FROM Flight	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu"	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu"	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT flno FROM Flight WHERE distance  >  2000	flight_1
SELECT flno FROM Flight WHERE distance  >  2000	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5	store_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5 	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums ORDER BY title	store_1
SELECT title FROM albums ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA"	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA"	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins"	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins"	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber"	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber"	store_1
SELECT count(*) FROM customers WHERE city = "Prague"	store_1
SELECT count(*) FROM customers WHERE city = "Prague"	store_1
SELECT count(*) FROM customers WHERE state = "CA"	store_1
SELECT count(*) FROM customers WHERE state = "CA"	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida"	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida"	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT count(*) FROM employees WHERE country = "Canada"	store_1
SELECT count(*) FROM employees WHERE country = "Canada"	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT name FROM playlists	store_1
SELECT name FROM playlists	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark"	store_1
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol'	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes'	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT Model_name FROM chip_model WHERE Launch_year BETWEEN 2002 AND 2004	phone_1
SELECT Model_name ,  RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1	phone_1
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760"	phone_1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation"	phone_1
SELECT Company_name ,  count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1	phone_1
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*)  >  1	phone_1
SELECT max(used_kb) , min(used_kb) , avg(used_kb) FROM screen_mode	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_level FROM phone GROUP BY Accreditation_level HAVING count(*)  >  3	phone_1
SELECT * FROM chip_model	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT model_name FROM chip_model ORDER BY launch_year	phone_1
SELECT avg(RAM_MiB) FROM chip_model WHERE model_name NOT IN (SELECT chip_model FROM phone)	phone_1
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full'	phone_1
SELECT Birth_Place ,  COUNT(*) FROM people GROUP BY Birth_Place	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*)  >=  2	body_builder
SELECT Height ,  Weight FROM people ORDER BY Height DESC	body_builder
SELECT count(DISTINCT Birth_Place) FROM people	body_builder
SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT count(*) FROM Church WHERE Open_Date  <  1850	wedding
SELECT name ,  open_date ,  organized_by FROM Church	wedding
SELECT name FROM church ORDER BY open_date DESC	wedding
SELECT open_date FROM church GROUP BY open_date HAVING count(*)  >=  2	wedding
SELECT organized_by ,  name FROM church WHERE open_date BETWEEN 1830 AND 1840	wedding
SELECT open_date ,  count(*) FROM church GROUP BY open_date	wedding
SELECT name ,  open_date FROM church ORDER BY open_date DESC LIMIT 3	wedding
SELECT count(*) FROM people WHERE is_male  =  'F' AND age  >  30	wedding
SELECT country FROM people WHERE age  <  25 INTERSECT SELECT country FROM people WHERE age  >  30	wedding
SELECT min(age) ,  max(age) ,  avg(age) FROM people	wedding
SELECT name ,  country FROM people WHERE age  <  (SELECT avg(age) FROM people)	wedding
SELECT count(*) FROM wedding WHERE YEAR  =  2016	wedding
SELECT country ,  count(*) FROM people GROUP BY country	wedding
SELECT COUNT (DISTINCT church_id) FROM wedding WHERE YEAR  =  2016	wedding
SELECT i_id FROM item WHERE title  =  "orange"	epinions_1
SELECT * FROM item	epinions_1
SELECT count(*) FROM review	epinions_1
SELECT count(*) FROM useracct	epinions_1
SELECT avg(rating) ,  max(rating) FROM review	epinions_1
SELECT min(rank) FROM review	epinions_1
SELECT count(DISTINCT u_id) FROM review	epinions_1
SELECT count(DISTINCT i_id) FROM review	epinions_1
SELECT title FROM item ORDER BY title	epinions_1
SELECT count(*) FROM gymnast	gymnast
SELECT count(*) FROM gymnast	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(*) FROM browser WHERE market_share  >=  5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id ,  name ,  market_share FROM browser	browser_web
SELECT max(market_share) ,  min(market_share) ,  avg(market_share) FROM browser	browser_web
SELECT id ,  market_share FROM browser WHERE name  =  'Safari'	browser_web
SELECT count(*) FROM school	school_finance
SELECT count(*) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name	school_finance
SELECT school_name ,  LOCATION ,  mascot FROM school	school_finance
SELECT sum(enrollment) ,  avg(enrollment) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment  >  (SELECT avg(enrollment) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment LIMIT 1	school_finance
SELECT avg(enrollment) ,  max(enrollment) ,  min(enrollment) FROM school	school_finance
SELECT county ,  count(*) ,  sum(enrollment) FROM school GROUP BY county	school_finance
SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount  <  9	school_finance
SELECT amount ,  donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT DISTINCT donator_name FROM endowment	school_finance
SELECT count(*) FROM budget WHERE budgeted  <  invested	school_finance
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1)	school_finance
SELECT LOCATION FROM cinema EXCEPT SELECT LOCATION FROM cinema WHERE capacity  >  800	cinema
SELECT LOCATION FROM cinema WHERE openning_year  =  2010 INTERSECT SELECT LOCATION FROM cinema WHERE openning_year  =  2011	cinema
SELECT count(*) FROM cinema	cinema
SELECT count(*) FROM cinema	cinema
SELECT name ,  openning_year ,  capacity FROM cinema	cinema
SELECT name ,  LOCATION FROM cinema WHERE capacity  >  (SELECT avg(capacity) FROM cinema)	cinema
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT name ,  openning_year FROM cinema ORDER BY openning_year DESC	cinema
SELECT name ,  LOCATION FROM cinema ORDER BY capacity DESC LIMIT 1	cinema
SELECT avg(capacity) ,  min(capacity) ,  max(capacity) FROM cinema WHERE openning_year  >=  2011	cinema
SELECT LOCATION ,  count(*) FROM cinema GROUP BY LOCATION	cinema
SELECT LOCATION FROM cinema WHERE openning_year  >=  2010 GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT title ,  directed_by FROM film	cinema
SELECT title ,  directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT directed_by ,  count(*) FROM film GROUP BY directed_by	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT count(*) FROM phone	phone_market
SELECT Name FROM phone ORDER BY Price ASC	phone_market
SELECT Memory_in_G ,  Carrier FROM phone	phone_market
SELECT DISTINCT Carrier FROM phone WHERE Memory_in_G  >  32	phone_market
SELECT Name FROM phone WHERE Carrier  =  "Sprint" OR Carrier  =  "TMobile"	phone_market
SELECT Carrier FROM phone ORDER BY Price DESC LIMIT 1	phone_market
SELECT Carrier ,  COUNT(*) FROM phone GROUP BY Carrier	phone_market
SELECT Carrier FROM phone GROUP BY Carrier ORDER BY COUNT(*) DESC LIMIT 1	phone_market
SELECT Carrier FROM phone WHERE Memory_in_G  <  32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G  >  64	phone_market
SELECT count(*) FROM participants WHERE participant_type_code  =  'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT count(*) FROM technician	machine_repair
SELECT count(*) FROM technician	machine_repair
SELECT Name FROM technician ORDER BY Age ASC	machine_repair
SELECT Name FROM technician ORDER BY Age ASC	machine_repair
SELECT Team ,  Starting_Year FROM technician	machine_repair
SELECT Team ,  Starting_Year FROM technician	machine_repair
SELECT Name FROM technician WHERE Team != "NYY"	machine_repair
SELECT Name FROM technician WHERE Team != "NYY"	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT count(*) FROM perpetrator	perpetrator
SELECT Date FROM perpetrator ORDER BY Killed DESC	perpetrator
SELECT Injured FROM perpetrator ORDER BY Injured ASC	perpetrator
SELECT avg(Injured) FROM perpetrator	perpetrator
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2	perpetrator
SELECT Country FROM perpetrator WHERE Injured  >  50 INTERSECT SELECT Country FROM perpetrator WHERE Injured  <  20	perpetrator
SELECT count(DISTINCT LOCATION) FROM perpetrator	perpetrator
SELECT max(YEAR) FROM perpetrator	perpetrator
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern'	inn_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern'	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG"	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG"	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL"	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL"	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King'	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King'	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance"	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance"	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern'	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern'	inn_1
SELECT count(*) FROM Rooms	inn_1
SELECT count(*) FROM Rooms	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King"	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King"	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional"	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional"	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen"	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen"	inn_1
SELECT count(DISTINCT bedType) FROM Rooms	inn_1
SELECT count(DISTINCT bedType) FROM Rooms	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms )	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms )	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT count(*) FROM party	party_host
SELECT count(*) FROM party	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC	party_host
SELECT Party_Theme ,  LOCATION FROM party	party_host
SELECT Party_Theme ,  LOCATION FROM party	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology"	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology"	party_host
SELECT avg(Number_of_hosts) FROM party	party_host
SELECT avg(Number_of_hosts) FROM party	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT count(*) FROM county	election
SELECT count(*) FROM county	election
SELECT County_name ,  Population FROM county	election
SELECT County_name ,  Population FROM county	election
SELECT avg(Population) FROM county	election
SELECT avg(Population) FROM county	election
SELECT max(Population) ,  min(Population) FROM county	election
SELECT max(Population) ,  min(Population) FROM county	election
SELECT DISTINCT District FROM election	election
SELECT DISTINCT District FROM election	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard"	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard"	election
SELECT Delegate FROM election WHERE District  =  1	election
SELECT Delegate FROM election WHERE District  =  1	election
SELECT Delegate ,  Committee FROM election	election
SELECT Delegate ,  Committee FROM election	election
SELECT count(DISTINCT Governor) FROM party	election
SELECT count(DISTINCT Governor) FROM party	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic"	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic"	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer"	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer"	election
SELECT * FROM election	election
SELECT * FROM election	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
SELECT fname FROM authors ORDER BY fname	icfp_1
SELECT fname FROM authors ORDER BY fname	icfp_1
SELECT lname FROM authors ORDER BY lname	icfp_1
SELECT lname FROM authors ORDER BY lname	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
SELECT count(*) FROM bank	loan_1
SELECT count(*) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT DISTINCT last_name FROM Maintenance_Engineers	assets_maintenance
SELECT DISTINCT fault_status FROM Fault_Log_Parts	assets_maintenance
SELECT first_name ,  last_name FROM Maintenance_Engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM Engineer_Visits)	assets_maintenance
SELECT asset_id ,  asset_details ,  asset_make ,  asset_model FROM Assets	assets_maintenance
SELECT asset_acquired_date FROM Assets ORDER BY asset_acquired_date ASC LIMIT 1	assets_maintenance
SELECT DISTINCT asset_model FROM Assets	assets_maintenance
SELECT asset_make ,  asset_model ,  asset_details FROM Assets ORDER BY asset_disposed_date ASC	assets_maintenance
SELECT part_id ,  chargeable_amount FROM Parts ORDER BY chargeable_amount ASC LIMIT 1	assets_maintenance
SELECT gender FROM staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT asset_model FROM Assets WHERE asset_id NOT IN (SELECT asset_id FROM Fault_Log)	assets_maintenance
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT sum(num_of_component) FROM furniture	manufacturer
SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
SELECT Num_of_Component ,  name FROM furniture WHERE Num_of_Component  >  10	manufacturer
SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
SELECT avg(Num_of_Factories) FROM manufacturer WHERE num_of_shops  >  20	manufacturer
SELECT name ,  manufacturer_id FROM manufacturer ORDER BY open_year	manufacturer
SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT id ,  color ,  name FROM photos	mountain_photos
SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
SELECT avg(prominence) FROM mountain WHERE country  =  'Morocco'	mountain_photos
SELECT name ,  height ,  prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
SELECT count(DISTINCT brand) FROM camera_lens	mountain_photos
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_lens_id FROM photos )	mountain_photos
SELECT name FROM camera_lens WHERE name LIKE "%Digital%"	mountain_photos
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1	hospital_1
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT count(*) FROM list	student_1
SELECT count(*) FROM list	student_1
SELECT lastname FROM list WHERE classroom  =  111	student_1
SELECT lastname FROM list WHERE classroom  =  111	student_1
SELECT firstname FROM list WHERE classroom  =  108	student_1
SELECT firstname FROM list WHERE classroom  =  108	student_1
SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
SELECT DISTINCT classroom ,  grade FROM list	student_1
SELECT DISTINCT classroom ,  grade FROM list	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) FROM film	film_rank
SELECT count(*) FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT count(*) FROM member	decoration_competition
SELECT Name FROM member ORDER BY Name ASC	decoration_competition
SELECT Name ,  Country FROM member	decoration_competition
SELECT Name FROM member WHERE Country  =  "United States" OR Country  =  "Canada"	decoration_competition
SELECT Country ,  COUNT(*) FROM member GROUP BY Country	decoration_competition
SELECT Country FROM member GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	decoration_competition
SELECT Country FROM member GROUP BY Country HAVING COUNT(*)  >  2	decoration_competition
SELECT Leader_Name ,  College_Location FROM college	decoration_competition
SELECT count(*) FROM Companies	company_office
SELECT count(*) FROM Companies	company_office
SELECT name FROM Companies ORDER BY Market_Value_billion DESC	company_office
SELECT name FROM Companies ORDER BY Market_Value_billion DESC	company_office
SELECT name FROM Companies WHERE Headquarters != 'USA'	company_office
SELECT name FROM Companies WHERE Headquarters != 'USA'	company_office
SELECT name ,  Assets_billion FROM Companies ORDER BY name ASC	company_office
SELECT name ,  Assets_billion FROM Companies ORDER BY name ASC	company_office
SELECT avg(Profits_billion) FROM Companies	company_office
SELECT avg(Profits_billion) FROM Companies	company_office
SELECT max(Sales_billion) ,  min(Sales_billion) FROM Companies WHERE Industry != "Banking"	company_office
SELECT max(Sales_billion) ,  min(Sales_billion) FROM Companies WHERE Industry != "Banking"	company_office
SELECT count(DISTINCT Industry) FROM Companies	company_office
SELECT count(DISTINCT Industry) FROM Companies	company_office
SELECT name FROM buildings ORDER BY Height DESC	company_office
SELECT name FROM buildings ORDER BY Height DESC	company_office
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
SELECT Industry ,  COUNT(*) FROM Companies GROUP BY Industry	company_office
SELECT Industry ,  COUNT(*) FROM Companies GROUP BY Industry	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_locations)	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_locations)	company_office
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"	company_office
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"	company_office
SELECT count(*) FROM Companies WHERE Industry  =  "Banking" OR Industry  =  "Conglomerate"	company_office
SELECT count(*) FROM Companies WHERE Industry  =  "Banking" OR Industry  =  "Conglomerate"	company_office
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*)  >  2	company_office
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*)  >  2	company_office
SELECT count(*) FROM artwork	entertainment_awards
SELECT Name FROM artwork ORDER BY Name ASC	entertainment_awards
SELECT Name FROM artwork WHERE TYPE != "Program Talent Show"	entertainment_awards
SELECT TYPE ,  COUNT(*) FROM artwork GROUP BY TYPE	entertainment_awards
SELECT TYPE FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	entertainment_awards
SELECT count(*) FROM aircraft	aircraft
SELECT count(*) FROM aircraft	aircraft
SELECT Description FROM aircraft	aircraft
SELECT Description FROM aircraft	aircraft
SELECT avg(International_Passengers) FROM airport	aircraft
SELECT avg(International_Passengers) FROM airport	aircraft
SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
SELECT Name FROM pilot WHERE Age  >=  25	aircraft
SELECT Name FROM pilot WHERE Age  >=  25	aircraft
SELECT Name FROM pilot ORDER BY Name ASC	aircraft
SELECT Name FROM pilot ORDER BY Name ASC	aircraft
SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT sum(enr) FROM College	soccer_2
SELECT sum(enr) FROM College	soccer_2
SELECT avg(enr) FROM College	soccer_2
SELECT avg(enr) FROM College	soccer_2
SELECT count(*) FROM College	soccer_2
SELECT count(*) FROM College	soccer_2
SELECT count(*) FROM Player WHERE HS  >  1000	soccer_2
SELECT count(*) FROM Player WHERE HS  >  1000	soccer_2
SELECT count(*) FROM College WHERE enr  >  15000	soccer_2
SELECT count(*) FROM College WHERE enr  >  15000	soccer_2
SELECT avg(HS) FROM Player	soccer_2
SELECT avg(HS) FROM Player	soccer_2
SELECT pName ,  HS FROM Player WHERE HS  <  1500	soccer_2
SELECT pName ,  HS FROM Player WHERE HS  <  1500	soccer_2
SELECT count(DISTINCT cName) FROM tryout	soccer_2
SELECT count(DISTINCT cName) FROM tryout	soccer_2
SELECT count(DISTINCT pPos) FROM tryout	soccer_2
SELECT count(DISTINCT pPos) FROM tryout	soccer_2
SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
SELECT * FROM College ORDER BY enr	soccer_2
SELECT * FROM College ORDER BY enr	soccer_2
SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(*) FROM device	device
SELECT count(*) FROM device	device
SELECT Carrier FROM device ORDER BY Carrier ASC	device
SELECT Carrier FROM device ORDER BY Carrier ASC	device
SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
SELECT avg(Quantity) FROM stock	device
SELECT avg(Quantity) FROM stock	device
SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
SELECT count(DISTINCT Software_Platform) FROM device	device
SELECT count(DISTINCT Software_Platform) FROM device	device
SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT count(*) FROM Band	music_2
SELECT count(*) FROM Band	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT count(*) FROM Songs	music_2
SELECT count(*) FROM Songs	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT count(*) FROM event	swimming
SELECT name FROM event ORDER BY YEAR DESC	swimming
SELECT name FROM event ORDER BY YEAR DESC LIMIT 1	swimming
SELECT count(*) FROM stadium	swimming
SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
SELECT name FROM stadium WHERE capacity  <  (SELECT avg(capacity) FROM stadium)	swimming
SELECT country FROM stadium GROUP BY country ORDER BY count(*) DESC LIMIT 1	swimming
SELECT country FROM stadium GROUP BY country HAVING count(*)  <=  3	swimming
SELECT country FROM stadium WHERE capacity  >  60000 INTERSECT SELECT country FROM stadium WHERE capacity  <  50000	swimming
SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006	swimming
SELECT country ,  count(*) FROM stadium GROUP BY country	swimming
SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year  >  2006	swimming
SELECT count(*) FROM stadium WHERE country != 'Russia'	swimming
SELECT name FROM swimmer ORDER BY meter_100	swimming
SELECT count(DISTINCT nationality) FROM swimmer	swimming
SELECT nationality ,  count(*) FROM swimmer GROUP BY nationality HAVING count(*)  >  1	swimming
SELECT meter_200 ,  meter_300 FROM swimmer WHERE nationality  =  'Australia'	swimming
SELECT * FROM swimmer	swimming
SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005	swimming
SELECT count(*) FROM addresses WHERE country  =  'USA'	customers_and_products_contacts
SELECT DISTINCT city FROM addresses	customers_and_products_contacts
SELECT state_province_county ,  count(*) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*)  >=  2	customers_and_products_contacts
SELECT customer_name ,  customer_phone ,  payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
SELECT min(product_price) ,  max(product_price) ,  avg(product_price) FROM products	customers_and_products_contacts
SELECT count(*) FROM products WHERE product_price  >  (SELECT avg(product_price) FROM products)	customers_and_products_contacts
SELECT product_type_code ,  product_name FROM products WHERE product_price  >  1000 OR product_price  <  500	customers_and_products_contacts
SELECT count(*) FROM submission	workshop_paper
SELECT count(*) FROM submission	workshop_paper
SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
SELECT Author ,  College FROM submission	workshop_paper
SELECT Author ,  College FROM submission	workshop_paper
SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
SELECT avg(Scores) FROM submission	workshop_paper
SELECT avg(Scores) FROM submission	workshop_paper
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
SELECT Name FROM country WHERE Languages != "German"	roller_coaster
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT city FROM city WHERE regional_population  >  10000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition	city_record
SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition	city_record
SELECT venue FROM MATCH ORDER BY date DESC	city_record
SELECT venue FROM MATCH ORDER BY date DESC	city_record
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
SELECT count(*) FROM driver	school_bus
SELECT name ,  home_city ,  age FROM driver	school_bus
SELECT party ,  count(*) FROM driver GROUP BY party	school_bus
SELECT name FROM driver ORDER BY age DESC	school_bus
SELECT DISTINCT home_city FROM driver	school_bus
SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1	school_bus
SELECT party FROM driver WHERE home_city  =  'Hartford' AND age  >  40	school_bus
SELECT home_city FROM driver WHERE age  >  40 GROUP BY home_city HAVING count(*)  >=  2	school_bus
SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age  >  40	school_bus
SELECT TYPE FROM school GROUP BY TYPE HAVING count(*)  =  2	school_bus
SELECT count(*) FROM driver WHERE home_city  =  'Hartford' OR age  <  40	school_bus
SELECT name FROM driver WHERE home_city  =  'Hartford' AND age  <  40	school_bus
SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT count(*) FROM architect WHERE gender  =  'female'	architecture
SELECT name ,  nationality ,  id FROM architect WHERE gender  =  'male' ORDER BY name	architecture
SELECT avg(length_feet) FROM bridge	architecture
SELECT name ,  built_year FROM mill WHERE TYPE  =  'Grondzeiler'	architecture
SELECT name FROM mill WHERE LOCATION != 'Donceel'	architecture
SELECT LOCATION FROM bridge WHERE name  =  'Kolob Arch' OR name  =  'Rainbow Bridge'	architecture
SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
SELECT TYPE ,  count(*) FROM mill GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	architecture
SELECT count(*) FROM ALBUM	chinook_1
SELECT count(*) FROM ALBUM	chinook_1
SELECT Name FROM GENRE	chinook_1
SELECT Name FROM GENRE	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY"	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY"	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary"	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary"	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities)	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities)	apartment_rentals
SELECT avg(weight) FROM Player	soccer_1
SELECT max(weight) ,  min(weight) FROM Player	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating  >  85	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 AND height  <=  190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot  =  "left"	soccer_1
SELECT title FROM Movie WHERE director = 'Steven Spielberg'	movie_1
SELECT title FROM Movie WHERE director = 'Steven Spielberg'	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar'	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar'	movie_1
SELECT count(*) FROM Reviewer	movie_1
SELECT count(*) FROM Reviewer	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%"	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%"	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis"	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis"	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3	movie_1
SELECT max(stars) ,  min(stars) FROM Rating	movie_1
SELECT max(stars) ,  min(stars) FROM Rating	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT ResName FROM Restaurant	restaurant_1
SELECT Address FROM Restaurant WHERE ResName = "Subway"	restaurant_1
SELECT Rating FROM Restaurant WHERE ResName = "Subway"	restaurant_1
SELECT Age FROM Student WHERE Fname = "Linda" AND Lname = "Smith"	restaurant_1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith"	restaurant_1
SELECT Fname , Lname FROM Student WHERE Major  =  600	restaurant_1
SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith"	restaurant_1
SELECT count(*) FROM Student WHERE Advisor =  1121	restaurant_1
SELECT Advisor ,  count(*) FROM Student GROUP BY Advisor ORDER BY count(Advisor) DESC LIMIT 1	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major HAVING count(Major) BETWEEN 2 AND 30	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major = 600	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major != 600 AND Sex = 'F'	restaurant_1
SELECT count(*) FROM COURSES	e_learning
SELECT count(*) FROM COURSES	e_learning
SELECT course_description FROM COURSES WHERE course_name  =  "database"	e_learning
SELECT course_description FROM COURSES WHERE course_name  =  "database"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE personal_name  =  "Cathrine"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE personal_name  =  "Cathrine"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors	e_learning
SELECT login_name ,  family_name FROM Course_Authors_and_Tutors	e_learning
SELECT login_name ,  family_name FROM Course_Authors_and_Tutors	e_learning
SELECT date_of_enrolment ,  date_of_completion FROM Student_Course_Enrolment	e_learning
SELECT date_of_enrolment ,  date_of_completion FROM Student_Course_Enrolment	e_learning
SELECT count(DISTINCT student_id) FROM Student_Course_Enrolment	e_learning
SELECT count(DISTINCT student_id) FROM Student_Course_Enrolment	e_learning
SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result  =  "Pass"	e_learning
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result  =  "Pass"	e_learning
SELECT count(*) FROM Student_Tests_Taken WHERE test_result  =  "Fail"	e_learning
SELECT count(*) FROM Student_Tests_Taken WHERE test_result  =  "Fail"	e_learning
SELECT login_name FROM Students WHERE family_name  =  "Ward"	e_learning
SELECT login_name FROM Students WHERE family_name  =  "Ward"	e_learning
SELECT date_of_latest_logon FROM Students WHERE family_name  =  "Jaskolski" OR family_name  =  "Langosh"	e_learning
SELECT date_of_latest_logon FROM Students WHERE family_name  =  "Jaskolski" OR family_name  =  "Langosh"	e_learning
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%son%"	e_learning
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%son%"	e_learning
SELECT subject_name FROM SUBJECTS	e_learning
SELECT subject_name FROM SUBJECTS	e_learning
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name	e_learning
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name	e_learning
SELECT personal_name ,  family_name FROM Students ORDER BY family_name	e_learning
SELECT personal_name ,  family_name FROM Students ORDER BY family_name	e_learning
SELECT test_result ,  COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC	e_learning
SELECT test_result ,  COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC	e_learning
SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
SELECT avg(age) FROM Person	network_2
SELECT avg(age) FROM Person	network_2
SELECT count(DISTINCT city) FROM Person	network_2
SELECT count(DISTINCT city) FROM Person	network_2
SELECT count(DISTINCT job) FROM Person	network_2
SELECT count(DISTINCT job) FROM Person	network_2
SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
SELECT age FROM Person WHERE job  =  'doctor' AND name  =  'Zach'	network_2
SELECT age FROM Person WHERE job  =  'doctor' AND name  =  'Zach'	network_2
SELECT name FROM Person WHERE age  <  30	network_2
SELECT name FROM Person WHERE age  <  30	network_2
SELECT count(*) FROM Person WHERE age  >  30 AND job  =  'engineer'	network_2
SELECT count(*) FROM Person WHERE age  >  30 AND job  =  'engineer'	network_2
SELECT avg(age) ,  gender FROM Person GROUP BY gender	network_2
SELECT avg(age) ,  gender FROM Person GROUP BY gender	network_2
SELECT avg(age) ,  job FROM Person GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
SELECT min(age) ,  job FROM Person GROUP BY job	network_2
SELECT min(age) ,  job FROM Person GROUP BY job	network_2
SELECT count(*) ,  gender FROM Person WHERE age  <  40 GROUP BY gender	network_2
SELECT count(*) ,  gender FROM Person WHERE age  <  40 GROUP BY gender	network_2
SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
SELECT name ,  job FROM Person ORDER BY name	network_2
SELECT name ,  job FROM Person ORDER BY name	network_2
SELECT name FROM Person ORDER BY age DESC	network_2
SELECT name FROM Person ORDER BY age DESC	network_2
SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
SELECT count(*) FROM COURSE	college_3
SELECT count(*) FROM COURSE	college_3
SELECT count(*) FROM COURSE WHERE Credits  >  2	college_3
SELECT count(*) FROM COURSE WHERE Credits  >  2	college_3
SELECT CName FROM COURSE WHERE Credits  =  1	college_3
SELECT CName FROM COURSE WHERE Credits  =  1	college_3
SELECT CName FROM COURSE WHERE Days  =  "MTW"	college_3
SELECT CName FROM COURSE WHERE Days  =  "MTW"	college_3
SELECT count(*) FROM DEPARTMENT WHERE Division  =  "AS"	college_3
SELECT count(*) FROM DEPARTMENT WHERE Division  =  "AS"	college_3
SELECT DPhone FROM DEPARTMENT WHERE Room  =  268	college_3
SELECT DPhone FROM DEPARTMENT WHERE Room  =  268	college_3
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
SELECT max(gradepoint) ,  min(gradepoint) FROM GRADECONVERSION	college_3
SELECT max(gradepoint) ,  min(gradepoint) FROM GRADECONVERSION	college_3
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
SELECT Fname ,  Lname FROM FACULTY WHERE sex  =  "M" AND Building  =  "NEB"	college_3
SELECT Fname ,  Lname FROM FACULTY WHERE sex  =  "M" AND Building  =  "NEB"	college_3
SELECT Room FROM FACULTY WHERE Rank  =  "Professor" AND Building  =  "NEB"	college_3
SELECT Room FROM FACULTY WHERE Rank  =  "Professor" AND Building  =  "NEB"	college_3
SELECT DName FROM DEPARTMENT WHERE Building  =  "Mergenthaler"	college_3
SELECT DName FROM DEPARTMENT WHERE Building  =  "Mergenthaler"	college_3
SELECT * FROM COURSE ORDER BY Credits	college_3
SELECT * FROM COURSE ORDER BY Credits	college_3
SELECT CName FROM COURSE ORDER BY Credits	college_3
SELECT CName FROM COURSE ORDER BY Credits	college_3
SELECT Fname FROM STUDENT ORDER BY Age DESC	college_3
SELECT Fname FROM STUDENT ORDER BY Age DESC	college_3
SELECT LName FROM STUDENT WHERE Sex  =  "F" ORDER BY Age DESC	college_3
SELECT LName FROM STUDENT WHERE Sex  =  "F" ORDER BY Age DESC	college_3
SELECT Lname FROM FACULTY WHERE Building  =  "Barton" ORDER BY Lname	college_3
SELECT Lname FROM FACULTY WHERE Building  =  "Barton" ORDER BY Lname	college_3
SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname	college_3
SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
SELECT count(*) FROM STUDENT	voter_2
SELECT count(*) FROM STUDENT	voter_2
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT max(Age) FROM STUDENT	voter_2
SELECT max(Age) FROM STUDENT	voter_2
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT count(*) FROM HOTELS	cre_Theme_park
SELECT count(*) FROM HOTELS	cre_Theme_park
SELECT price_range FROM HOTELS	cre_Theme_park
SELECT price_range FROM HOTELS	cre_Theme_park
SELECT DISTINCT Location_Name FROM LOCATIONS	cre_Theme_park
SELECT DISTINCT Location_Name FROM LOCATIONS	cre_Theme_park
SELECT Name ,  Other_Details FROM Staff	cre_Theme_park
SELECT Name ,  Other_Details FROM Staff	cre_Theme_park
SELECT Tourist_Details FROM VISITORS	cre_Theme_park
SELECT Tourist_Details FROM VISITORS	cre_Theme_park
SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
SELECT Address FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Address FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Other_Details FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Other_Details FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%film%"	cre_Theme_park
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%film%"	cre_Theme_park
SELECT count(DISTINCT Name) FROM PHOTOS	cre_Theme_park
SELECT count(DISTINCT Name) FROM PHOTOS	cre_Theme_park
SELECT DISTINCT Visit_Date FROM VISITS	cre_Theme_park
SELECT DISTINCT Visit_Date FROM VISITS	cre_Theme_park
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus"	cre_Theme_park
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus"	cre_Theme_park
SELECT Name ,  Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus" OR How_to_Get_There  =  "walk"	cre_Theme_park
SELECT Name ,  Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus" OR How_to_Get_There  =  "walk"	cre_Theme_park
SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT hotel_id ,  star_rating_code FROM HOTELS ORDER BY price_range ASC	cre_Theme_park
SELECT hotel_id ,  star_rating_code FROM HOTELS ORDER BY price_range ASC	cre_Theme_park
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details ,  star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT other_hotel_details ,  star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
SELECT Grape ,  Appelation FROM WINE	wine_1
SELECT Grape ,  Appelation FROM WINE	wine_1
SELECT Name ,  Score FROM WINE	wine_1
SELECT Name ,  Score FROM WINE	wine_1
SELECT Area ,  County FROM APPELLATIONS	wine_1
SELECT Area ,  County FROM APPELLATIONS	wine_1
SELECT Price FROM WINE WHERE YEAR  <  2010	wine_1
SELECT Price FROM WINE WHERE YEAR  <  2010	wine_1
SELECT Name FROM WINE WHERE score  >  90	wine_1
SELECT Name FROM WINE WHERE score  >  90	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
SELECT avg(Price) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT avg(Price) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT DISTINCT Name FROM WINE WHERE Price  >  (SELECT min(Price) FROM wine WHERE Winery  =  "John Anthony")	wine_1
SELECT DISTINCT Name FROM WINE WHERE Price  >  (SELECT min(Price) FROM wine WHERE Winery  =  "John Anthony")	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY Name	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY Name	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY price	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY price	wine_1
SELECT DISTINCT Name FROM WINE WHERE YEAR  <  2000 OR YEAR  >  2010	wine_1
SELECT DISTINCT Name FROM WINE WHERE YEAR  <  2000 OR YEAR  >  2010	wine_1
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100	wine_1
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100	wine_1
SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"	wine_1
SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"	wine_1
SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT avg(Price) ,  avg(Score) ,  Appelation FROM WINE GROUP BY Appelation	wine_1
SELECT avg(Price) ,  avg(Score) ,  Appelation FROM WINE GROUP BY Appelation	wine_1
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*)  >=  4	wine_1
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*)  >=  4	wine_1
SELECT Name FROM WINE WHERE YEAR  <  (SELECT min(YEAR) FROM WINE WHERE Winery  =  "Brander")	wine_1
SELECT Name FROM WINE WHERE YEAR  <  (SELECT min(YEAR) FROM WINE WHERE Winery  =  "Brander")	wine_1
SELECT Name FROM WINE WHERE Price  >  (SELECT max(Price) FROM WINE WHERE YEAR  =  2006)	wine_1
SELECT Name FROM WINE WHERE Price  >  (SELECT max(Price) FROM WINE WHERE YEAR  =  2006)	wine_1
SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.GRAPE  =  T2.GRAPE WHERE T1.Color  =  "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3	wine_1
SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.GRAPE  =  T2.GRAPE WHERE T1.Color  =  "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3	wine_1
SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
SELECT Grape ,  Appelation ,  Name FROM WINE WHERE Score  >  93 ORDER BY Name	wine_1
SELECT Grape ,  Appelation ,  Name FROM WINE WHERE Score  >  93 ORDER BY Name	wine_1
SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
SELECT vehicle_id FROM Vehicles	driving_school
SELECT vehicle_id FROM Vehicles	driving_school
SELECT count(*) FROM Vehicles	driving_school
SELECT count(*) FROM Vehicles	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie"	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie"	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
SELECT count(*) FROM Staff	driving_school
SELECT count(*) FROM Staff	driving_school
SELECT first_name ,  last_name FROM Customers	driving_school
SELECT first_name ,  last_name FROM Customers	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard"	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard"	driving_school
SELECT count(*) FROM Customers	driving_school
SELECT count(*) FROM Customers	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled"	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled"	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
