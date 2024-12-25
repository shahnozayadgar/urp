SELECT COUNT( * ) FROM head WHERE age > 56	department_management
SELECT name , born_state , age FROM head ORDER BY age ASC	department_management
SELECT creation , name , budget_in_billions FROM department	department_management
SELECT MAX( budget_in_billions ) , MIN( budget_in_billions ) FROM department	department_management
SELECT AVG( num_employees ) FROM department WHERE ranking BETWEEN 10 and 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING COUNT( * ) >= 3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY COUNT( * ) DESC LIMIT 1	department_management
SELECT COUNT( * ) FROM management WHERE temporary_acting = '1'	department_management
SELECT head_id , name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT student_id FROM student_course_attendance	student_assessment
SELECT DISTINCT student_id FROM student_course_attendance	student_assessment
SELECT course_name FROM courses ORDER BY course_name ASC	student_assessment
SELECT course_name FROM courses ORDER BY course_name ASC	student_assessment
SELECT first_name FROM people ORDER BY first_name ASC	student_assessment
SELECT first_name FROM people ORDER BY first_name ASC	student_assessment
SELECT COUNT( * ) FROM book	book_2
SELECT writer FROM book ORDER BY writer ASC	book_2
SELECT title FROM book ORDER BY issues ASC	book_2
SELECT title FROM book WHERE writer != 'Elaine Lee'	book_2
SELECT title , issues FROM book	book_2
SELECT publication_date FROM publication ORDER BY price DESC	book_2
SELECT DISTINCT publisher FROM publication WHERE price > 5000000	book_2
SELECT publisher FROM publication ORDER BY price DESC LIMIT 1	book_2
SELECT publication_date FROM publication ORDER BY price ASC LIMIT 3	book_2
SELECT publisher FROM publication GROUP BY publisher HAVING COUNT( * ) > 1	book_2
SELECT publisher , COUNT( * ) FROM publication GROUP BY publisher	book_2
SELECT publication_date FROM publication GROUP BY publication_date ORDER BY COUNT( * ) DESC LIMIT 1	book_2
SELECT writer FROM book GROUP BY writer HAVING COUNT( * ) > 1	book_2
SELECT publisher FROM publication WHERE price > 10000000 INTERSECT SELECT publisher FROM publication WHERE price<5000000	book_2
SELECT COUNT( DISTINCT publication_date ) FROM publication	book_2
SELECT COUNT( DISTINCT publication_date ) FROM publication	book_2
SELECT price FROM publication WHERE publisher = 'Person' OR publisher = 'Wiley'	book_2
SELECT COUNT( * ) , f1 FROM follows GROUP BY f1	twitter_1
SELECT COUNT( * ) , f1 FROM follows GROUP BY f1	twitter_1
SELECT COUNT( * ) FROM tweets	twitter_1
SELECT COUNT( DISTINCT uid ) FROM tweets	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT text FROM tweets ORDER BY createdate ASC	twitter_1
SELECT COUNT( * ) FROM aircraft	flight_1
SELECT COUNT( * ) FROM aircraft	flight_1
SELECT name , distance FROM aircraft	flight_1
SELECT name , distance FROM aircraft	flight_1
SELECT aid FROM aircraft JOIN flight ON aid = aid WHERE distance > 1000	flight_1
SELECT DISTINCT aid FROM aircraft JOIN flight ON aid = aid WHERE distance > 1000	flight_1
SELECT COUNT( * ) FROM aircraft WHERE distance BETWEEN 1000 and 5000	flight_1
SELECT COUNT( * ) FROM aircraft JOIN flight ON aid = aid WHERE distance BETWEEN 1000 and 5000	flight_1
SELECT name , distance FROM aircraft JOIN flight ON aid = aid WHERE aid = 12	flight_1
SELECT name , distance FROM aircraft JOIN flight ON aid = aid WHERE aid = 12	flight_1
SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft JOIN flight ON aid = aid	flight_1
SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft JOIN flight ON aid = aid	flight_1
SELECT aid , name FROM aircraft JOIN flight ON aid = aid ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid , name FROM aircraft JOIN flight ON aid = aid ORDER BY distance DESC LIMIT 1	flight_1
SELECT name FROM aircraft JOIN flight ON aid = aid ORDER BY distance ASC LIMIT 3	flight_1
SELECT name FROM aircraft ORDER BY distance ASC LIMIT 3	flight_1
SELECT name FROM aircraft JOIN flight ON aid = aid WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1
SELECT name FROM aircraft JOIN flight ON aid = aid WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1
SELECT COUNT( * ) FROM employee	flight_1
SELECT COUNT( * ) FROM employee	flight_1
SELECT name , salary FROM employee ORDER BY salary ASC	flight_1
SELECT name , salary FROM employee ORDER BY salary ASC	flight_1
SELECT eid FROM employee WHERE salary >= 100000	flight_1
SELECT eid FROM employee WHERE salary >= 100000	flight_1
SELECT COUNT( * ) FROM employee WHERE salary BETWEEN 100000 and 200000	flight_1
SELECT COUNT( * ) FROM employee WHERE salary BETWEEN 100000 and 200000	flight_1
SELECT name , salary FROM employee WHERE eid = 242518965	flight_1
SELECT name , salary FROM employee WHERE eid = 242518965	flight_1
SELECT AVG( salary ) , MAX( salary ) FROM employee	flight_1
SELECT AVG( salary ) , MAX( salary ) FROM employee	flight_1
SELECT eid , name FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT eid , name FROM employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM employee WHERE salary > (SELECT AVG( salary ) FROM employee)	flight_1
SELECT name FROM employee WHERE salary > (SELECT AVG( salary ) FROM employee)	flight_1
SELECT SUM( salary ) FROM employee WHERE name = 'Mark' AND name = 'Young'	flight_1
SELECT eid , salary FROM employee WHERE name = 'Mark'	flight_1
SELECT COUNT( * ) FROM flight	flight_1
SELECT COUNT( * ) FROM flight	flight_1
SELECT flno , origin , destination FROM flight ORDER BY destination ASC	flight_1
SELECT flno , origin , destination FROM flight ORDER BY departure_date ASC	flight_1
SELECT flno FROM flight WHERE destination = 'Los Angeles'	flight_1
SELECT flno FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT origin FROM flight WHERE destination = 'Honolulu'	flight_1
SELECT origin FROM flight WHERE destination = 'Honolulu'	flight_1
SELECT departure_date , arrival_date FROM flight WHERE origin = 'Los Angeles' AND destination = 'Honolulu'	flight_1
SELECT departure_date , arrival_date FROM flight WHERE destination = 'LA' AND destination = 'Honolulu'	flight_1
SELECT flno FROM flight WHERE distance > 2000	flight_1
SELECT flno FROM flight WHERE distance > 2000	flight_1
SELECT AVG( price ) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Honolulu'	flight_1
SELECT AVG( price ) FROM flight WHERE origin = 'LA' AND destination = 'Honolulu'	flight_1
SELECT origin , destination FROM flight WHERE price > 300	flight_1
SELECT origin , destination FROM flight WHERE price > 300	flight_1
SELECT flno , distance FROM flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno , distance FROM flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno FROM flight ORDER BY distance ASC LIMIT 3	flight_1
SELECT flno FROM flight ORDER BY distance ASC LIMIT 1	flight_1
SELECT AVG( price ) , AVG( distance ) FROM flight WHERE origin = 'Los Angeles'	flight_1
SELECT AVG( distance ) , AVG( price ) FROM flight WHERE origin = 'LA'	flight_1
SELECT origin , COUNT( * ) FROM flight GROUP BY origin	flight_1
SELECT origin , COUNT( * ) FROM flight GROUP BY origin	flight_1
SELECT destination , COUNT( * ) FROM flight GROUP BY destination	flight_1
SELECT destination , COUNT( * ) FROM flight GROUP BY destination	flight_1
SELECT origin FROM flight GROUP BY origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT origin FROM flight GROUP BY origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT COUNT( DISTINCT eid ) FROM certificate	flight_1
SELECT COUNT( DISTINCT eid ) FROM certificate	flight_1
SELECT eid FROM employee EXCEPT SELECT eid FROM certificate	flight_1
SELECT eid FROM employee EXCEPT SELECT eid FROM certificate	flight_1
SELECT billing_country , COUNT( * ) FROM invoices GROUP BY billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT billing_country , COUNT( * ) FROM invoices GROUP BY billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT billing_country , total FROM invoices ORDER BY total DESC LIMIT 8	store_1
SELECT billing_country , SUM( total ) FROM invoices GROUP BY billing_country ORDER BY SUM( total ) DESC LIMIT 8	store_1
SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country	store_1
SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country ORDER BY AVG( total ) ASC	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums ORDER BY title ASC	store_1
SELECT title FROM albums ORDER BY title ASC	store_1
SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1
SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1
SELECT SUM( total ) FROM invoices JOIN customers ON customer_id = id WHERE billing_city = 'invoice from Chicago' AND city = 'Chicago,'	store_1
SELECT SUM( total ) FROM invoices WHERE billing_city = 'Chicago, Illinois'	store_1
SELECT COUNT( * ) FROM invoices JOIN customers ON customer_id = id WHERE billing_city = 'Chicago' AND city = 'Chicago,'	store_1
customers , customers	store_1
SELECT COUNT( * ) FROM invoices JOIN customers ON customer_id = id WHERE state = 'US,'	store_1
SELECT billing_state , COUNT( * ) FROM invoices GROUP BY billing_state	store_1
SELECT billing_state FROM invoices JOIN customers ON customer_id = id WHERE state = 'US' ORDER BY billing_state DESC LIMIT 1	store_1
SELECT state FROM invoices JOIN customers ON customer_id = id GROUP BY state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT SUM( total ) FROM invoices JOIN customers ON customer_id = id WHERE name = 'California'	store_1
SELECT COUNT( * ) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT company FROM customers WHERE first_name = 'Eduardo Martins'	store_1
SELECT company FROM customers WHERE first_name = 'Eduardo Martins'	store_1
SELECT email , phone FROM employees JOIN customers ON id = support_rep_id WHERE first_name = 'A' AND name = 'Gruber'	store_1
SELECT email , phone FROM customers WHERE first_name = 'Astrid' AND last_name = 'Gruber'	store_1
SELECT COUNT( * ) FROM customers WHERE city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE state = 'CA'	store_1
SELECT COUNT( * ) FROM customers WHERE state = 'California'	store_1
SELECT country FROM employees JOIN employees ON id = address JOIN sqlite_sequence ON country = name WHERE first_name = 'Roberto' AND seq = 'Almeida'	store_1
SELECT country FROM customers JOIN sqlite_sequence ON id = name WHERE first_name = 'Roberto' AND seq = 'Almeida'	store_1
SELECT title , phone , hire_date FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT title , phone , hire_date FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT address FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT address FROM employees JOIN employees ON id = address WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT COUNT( * ) FROM employees WHERE country = 'Canada'	store_1
SELECT COUNT( * ) FROM employees WHERE country = 'Canada'	store_1
SELECT phone FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT phone FROM employees JOIN customers ON id = support_rep_id WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date ASC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date ASC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date DESC LIMIT 10	store_1
SELECT first_name , last_name FROM employees	store_1
SELECT city , COUNT( * ) FROM employees WHERE title = 'IT Staff' GROUP BY city	store_1
SELECT city , COUNT( * ) FROM employees WHERE title = 'IT' GROUP BY city	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT name FROM playlists	store_1
SELECT name FROM playlists	store_1
SELECT composer FROM tracks JOIN albums ON album_id = id WHERE name = 'Fast As a Shark'	store_1
SELECT seq FROM albums JOIN tracks ON id = album_id JOIN sqlite_sequence ON composer = name WHERE title = 'Fast As a Shark'	store_1
SELECT COUNT( * ) FROM albums WHERE title = 'Fast As a Shark'	store_1
SELECT SUM( milliseconds ) FROM albums JOIN tracks ON id = album_id WHERE name = 'Fast As a Shark'	store_1
SELECT title FROM tracks JOIN albums ON album_id = id WHERE title = 'Fast As a Shark'	store_1
SELECT SUM( unit_price ) FROM tracks JOIN albums ON album_id = id WHERE title = 'Fast As a Shark'	store_1
SELECT COUNT( DISTINCT name ) FROM enzyme	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name , location FROM enzyme	medicine_enzyme_interaction
SELECT name , location FROM enzyme	medicine_enzyme_interaction
SELECT MAX( omim ) FROM medicine_enzyme_interaction, medicine_enzyme_interaction, enzyme WHERE omim = 'OMIM'	medicine_enzyme_interaction
SELECT MAX( omim ) FROM enzyme	medicine_enzyme_interaction
SELECT product , chromosome , porphyria FROM enzyme WHERE location = 'Cytosol'	medicine_enzyme_interaction
SELECT product , chromosome , porphyria FROM enzyme WHERE location = 'Cytosol'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name , trade_name FROM medicine WHERE fda_approved = 'Yes'	medicine_enzyme_interaction
SELECT name , trade_name FROM medicine	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE fda_approved = 'No'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE fda_approved != 1	medicine_enzyme_interaction
SELECT COUNT( DISTINCT fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT COUNT( DISTINCT fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT COUNT( * ) , trade_name FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name , COUNT( * ) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT model_name FROM chip_model WHERE launch_year BETWEEN 2002 and 2004	phone_1
SELECT model_name , ram_mib FROM chip_model ORDER BY ram_mib ASC LIMIT 1	phone_1
SELECT chip_model , screen_mode FROM phone WHERE hardware_model_name = 'LG-P760'	phone_1
SELECT COUNT( DISTINCT hardware_model_name ) FROM phone WHERE company_name = 'Nokia Corporation'	phone_1
SELECT company_name , COUNT( * ) FROM phone GROUP BY company_name ORDER BY COUNT( * ) ASC LIMIT 1	phone_1
SELECT company_name FROM phone GROUP BY company_name HAVING COUNT( * ) > 1	phone_1
SELECT MAX( used_kb ) , MIN( used_kb ) , AVG( used_kb ) FROM screen_mode	phone_1
SELECT accreditation_type , COUNT( * ) FROM phone GROUP BY accreditation_type	phone_1
SELECT accreditation_type , COUNT( * ) FROM phone GROUP BY accreditation_type	phone_1
SELECT accreditation_level FROM phone GROUP BY accreditation_level HAVING COUNT( * ) > 3	phone_1
SELECT * FROM chip_model	phone_1
SELECT COUNT( * ) FROM chip_model WHERE wifi != 'wifi'	phone_1
SELECT COUNT( * ) FROM chip_model WHERE wifi != 1	phone_1
SELECT model_name FROM chip_model ORDER BY launch_year ASC	phone_1
SELECT AVG( ram_mib ) FROM chip_model WHERE model_name NOT IN (SELECT chip_model FROM phone)	phone_1
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE accreditation_type = 'full accreditation'	phone_1
SELECT birth_place , COUNT( * ) FROM people GROUP BY birth_place	body_builder
SELECT birth_place FROM people GROUP BY birth_place ORDER BY COUNT( * ) DESC LIMIT 1	body_builder
SELECT birth_place FROM people GROUP BY birth_place HAVING COUNT( * ) >= 2	body_builder
SELECT weight , height FROM people ORDER BY height DESC	body_builder
SELECT COUNT( DISTINCT birth_place ) FROM people	body_builder
SELECT building FROM classroom WHERE capacity > 50	college_2
SELECT DISTINCT building FROM classroom WHERE capacity > 50	college_2
SELECT COUNT( * ) FROM classroom WHERE building NOT IN (SELECT building FROM section)	college_2
SELECT COUNT( * ) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT dept_name , building FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT dept_name , building FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT room_number , building FROM classroom WHERE capacity BETWEEN 50 and 100	college_2
SELECT room_number , building FROM classroom WHERE capacity BETWEEN 50 and 100	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT SUM( room_number ) FROM classroom JOIN section ON building = building	college_2
SELECT COUNT( * ) FROM classroom JOIN section ON room_number = building WHERE building = 'Lamberton'	college_2
SELECT COUNT( DISTINCT s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT dept_name ) FROM course	college_2
SELECT COUNT( * ) FROM course WHERE dept_name = 'Physics'	college_2
SELECT COUNT( * ) FROM course WHERE dept_name = 'Physics'	college_2
SELECT COUNT( DISTINCT id ) FROM teaches	college_2
SELECT COUNT( DISTINCT id ) FROM teaches	college_2
SELECT SUM( budget ) FROM department WHERE dept_name = 'Marketing' OR dept_name = 'Finance'	college_2
SELECT SUM( budget ) FROM department WHERE dept_name = 'Marketing'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT dept_name FROM instructor WHERE name = 'Soisalon'	college_2
SELECT COUNT( * ) FROM classroom, section WHERE building = 'Lamberton' AND capacity<50	college_2
SELECT COUNT( * ) FROM classroom JOIN section ON room_number = room_number WHERE capacity<50	college_2
SELECT dept_name , budget FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT AVG( budget ) FROM department	college_2
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary ASC LIMIT 1	college_2
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary ASC LIMIT 1	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT name FROM takes JOIN student ON id = id WHERE year = 2009 INTERSECT SELECT name FROM takes JOIN student ON id = id WHERE year = 2010	college_2
SELECT name FROM takes JOIN student ON id = id WHERE year = 2009 OR year = 2010	college_2
SELECT dept_name FROM department JOIN course ON dept_name = dept_name GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT dept_name FROM department JOIN course ON dept_name = dept_name GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT dept_name FROM department JOIN student ON dept_name = dept_name ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT dept_name FROM department JOIN student ON dept_name = dept_name ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT title , credits FROM course ORDER BY credits ASC	college_2
SELECT title , credits FROM course ORDER BY credits ASC	college_2
SELECT dept_name FROM department ORDER BY budget ASC LIMIT 1	college_2
SELECT dept_name FROM department ORDER BY budget ASC LIMIT 1	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY salary ASC	college_2
SELECT * FROM instructor ORDER BY salary ASC	college_2
SELECT name , dept_name FROM student ORDER BY tot_cred ASC	college_2
SELECT name , dept_name FROM student ORDER BY tot_cred ASC	college_2
SELECT COUNT( * ) , building FROM classroom WHERE capacity > 50 GROUP BY building	college_2
SELECT COUNT( * ) , building FROM classroom JOIN section ON building = building WHERE capacity > 50 GROUP BY building	college_2
SELECT MAX( capacity ) , AVG( capacity ) , building FROM classroom GROUP BY building	college_2
SELECT MAX( capacity ) , MIN( capacity ) , building FROM classroom GROUP BY building	college_2
SELECT title FROM course GROUP BY title HAVING COUNT( * ) > 1	college_2
SELECT title FROM course GROUP BY title HAVING COUNT( * ) > 1	college_2
SELECT SUM( credits ) , dept_name FROM course GROUP BY dept_name	college_2
SELECT SUM( tot_cred ) , dept_name FROM student GROUP BY dept_name	college_2
SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG( salary ) > (SELECT AVG( salary ) FROM instructor)	college_2
SELECT AVG( salary ) FROM instructor	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , dept_name FROM student GROUP BY dept_name	college_2
SELECT dept_name , COUNT( * ) FROM student GROUP BY dept_name	college_2
SELECT dept_name FROM instructor WHERE salary > (SELECT AVG( salary ) FROM instructor) GROUP BY dept_name ORDER BY AVG( salary ) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY AVG( salary ) DESC LIMIT 1	college_2
SELECT AVG( salary ) FROM instructor	college_2
SELECT name , salary FROM instructor WHERE salary<(SELECT AVG( salary ) FROM instructor WHERE dept_name = 'Physics')	college_2
SELECT name FROM instructor WHERE dept_name = 'computer science'	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci'	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci' AND salary > 80000	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci' AND salary > 80000	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2
SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2
SELECT MAX( salary ) FROM instructor	college_2
SELECT MIN( salary ) FROM instructor	college_2
SELECT COUNT( * ) FROM teaches JOIN section ON course_id = course_id WHERE semester = 'Spring 2010'	college_2
section , section	college_2
SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2
SELECT dept_name FROM department JOIN instructor ON dept_name = dept_name GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2
SELECT name FROM instructor WHERE salary > (SELECT MIN( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT MIN( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT salary FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT salary FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT customer_details FROM customers ORDER BY customer_details ASC	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details ASC	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT DISTINCT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT policy_type_code , COUNT( * ) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code , COUNT( * ) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT COUNT( * ) FROM church WHERE open_date<1850	wedding
SELECT name , open_date , organized_by FROM church	wedding
SELECT name FROM church ORDER BY open_date DESC	wedding
SELECT open_date FROM church GROUP BY open_date HAVING COUNT( * ) >= 2	wedding
SELECT organized_by , name FROM church WHERE open_date BETWEEN 1830 and 1840	wedding
SELECT open_date , COUNT( * ) FROM church GROUP BY open_date	wedding
SELECT name , open_date FROM church ORDER BY open_date DESC LIMIT 3	wedding
SELECT COUNT( * ) FROM people JOIN wedding ON people_id = female_id WHERE age > 30	wedding
SELECT country FROM people WHERE age > 30 INTERSECT SELECT country FROM people WHERE age<25	wedding
SELECT MIN( age ) , MAX( age ) , AVG( age ) FROM people	wedding
SELECT name , country FROM people WHERE age<(SELECT AVG( age ) FROM people)	wedding
SELECT COUNT( * ) FROM wedding WHERE year = 2016	wedding
SELECT country , COUNT( * ) FROM people GROUP BY country	wedding
SELECT COUNT( * ) FROM wedding WHERE year = 2016	wedding
SELECT i_id FROM item WHERE title = 'orange'	epinions_1
SELECT * FROM item	epinions_1
SELECT COUNT( * ) FROM review	epinions_1
SELECT COUNT( * ) FROM useracct JOIN * ON u_id = * GROUP BY * ORDER BY COUNT( * ) DESC LIMIT *	epinions_1
SELECT AVG( rating ) , MAX( rating ) FROM review	epinions_1
SELECT rank FROM review ORDER BY rank DESC LIMIT 1	epinions_1
SELECT COUNT( DISTINCT u_id ) FROM review	epinions_1
SELECT COUNT( DISTINCT i_id ) FROM review	epinions_1
SELECT title FROM item ORDER BY title ASC	epinions_1
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT total_points FROM gymnast ORDER BY total_points DESC	gymnast
SELECT total_points FROM gymnast ORDER BY total_points DESC	gymnast
SELECT total_points FROM gymnast ORDER BY floor_exercise_points DESC	gymnast
SELECT total_points FROM gymnast ORDER BY floor_exercise_points DESC	gymnast
SELECT AVG( horizontal_bar_points ) FROM gymnast	gymnast
SELECT AVG( horizontal_bar_points ) FROM gymnast	gymnast
SELECT age FROM people ORDER BY height DESC LIMIT 1	gymnast
SELECT age FROM people ORDER BY height DESC LIMIT 1	gymnast
SELECT hometown FROM people WHERE age > 23 INTERSECT SELECT hometown FROM people WHERE age<20	gymnast
SELECT hometown FROM people WHERE age > 23 INTERSECT SELECT hometown FROM people WHERE age<20	gymnast
SELECT COUNT( DISTINCT hometown ) FROM people	gymnast
SELECT COUNT( DISTINCT hometown ) FROM people	gymnast
SELECT COUNT( * ) FROM browser WHERE market_share >= 5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id , name , market_share FROM browser	browser_web
SELECT MAX( market_share ) , MIN( market_share ) , AVG( market_share ) FROM browser	browser_web
SELECT id , market_share FROM browser WHERE name = 'Safari'	browser_web
SELECT COUNT( * ) FROM school	school_finance
SELECT COUNT( * ) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name ASC	school_finance
SELECT school_name , location , mascot FROM school	school_finance
SELECT SUM( enrollment ) , AVG( enrollment ) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment > (SELECT AVG( enrollment ) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment ASC LIMIT 1	school_finance
SELECT AVG( enrollment ) , MAX( enrollment ) , MIN( enrollment ) FROM school	school_finance
SELECT county , COUNT( * ) , SUM( enrollment ) FROM school GROUP BY county	school_finance
SELECT donator_name , amount FROM endowment ORDER BY amount DESC	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount<9	school_finance
SELECT amount , donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT COUNT( * ) FROM budget WHERE year BETWEEN 3000 and 2001	school_finance
SELECT COUNT( * ) FROM budget WHERE year BETWEEN 2001 and 3000	school_finance
SELECT donator_name FROM endowment	school_finance
SELECT COUNT( * ) FROM budget WHERE budgeted<invested	school_finance
SELECT COUNT( * ) FROM endowment WHERE amount<5 HAVING COUNT( * ) > 1	school_finance
SELECT location FROM cinema EXCEPT SELECT location FROM cinema WHERE capacity > 800	cinema
SELECT location FROM cinema WHERE openning_year = 2010 INTERSECT SELECT location FROM cinema WHERE openning_year = 2011	cinema
SELECT COUNT( * ) FROM cinema	cinema
SELECT COUNT( * ) FROM cinema	cinema
SELECT name , openning_year , capacity FROM cinema	cinema
SELECT name , location FROM cinema WHERE capacity > (SELECT AVG( capacity ) FROM cinema)	cinema
SELECT DISTINCT location FROM cinema	cinema
SELECT DISTINCT location FROM cinema	cinema
SELECT name , openning_year FROM cinema ORDER BY openning_year DESC	cinema
SELECT name , location FROM cinema ORDER BY capacity DESC LIMIT 1	cinema
SELECT AVG( capacity ) , MIN( capacity ) , MAX( capacity ) FROM cinema WHERE openning_year >= 2011	cinema
SELECT location , COUNT( * ) FROM cinema GROUP BY location	cinema
SELECT location FROM cinema WHERE openning_year >= 2010 GROUP BY location ORDER BY COUNT( * ) DESC LIMIT 1	cinema
SELECT location FROM cinema WHERE capacity > 300 GROUP BY location HAVING COUNT( * ) >= 2	cinema
SELECT location FROM cinema WHERE capacity > 300 GROUP BY location HAVING COUNT( * ) >= 2	cinema
SELECT title , directed_by FROM film	cinema
SELECT title , directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT directed_by , COUNT( * ) FROM film GROUP BY directed_by	cinema
SELECT location FROM cinema GROUP BY location HAVING COUNT( * ) > 1	cinema
SELECT location FROM cinema GROUP BY location HAVING COUNT( * ) > 1	cinema
SELECT COUNT( * ) FROM film WHERE title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM film WHERE title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM phone	phone_market
SELECT name FROM phone ORDER BY price ASC	phone_market
SELECT memory_in_g , carrier FROM phone	phone_market
SELECT DISTINCT carrier FROM phone WHERE memory_in_g > 32	phone_market
SELECT name FROM phone WHERE carrier = 'Sprint' OR carrier = 'TMobile'	phone_market
SELECT carrier FROM phone ORDER BY price DESC LIMIT 1	phone_market
SELECT carrier , COUNT( * ) FROM phone GROUP BY carrier	phone_market
SELECT carrier FROM phone GROUP BY carrier ORDER BY COUNT( * ) DESC LIMIT 1	phone_market
SELECT carrier FROM phone WHERE memory_in_g<32 INTERSECT SELECT carrier FROM phone WHERE memory_in_g > 64	phone_market
SELECT COUNT( * ) FROM participants WHERE participant_type_code = 'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code ASC	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
SELECT COUNT( * ) FROM technician	machine_repair
SELECT COUNT( * ) FROM technician	machine_repair
SELECT name FROM technician ORDER BY age ASC	machine_repair
SELECT name FROM technician ORDER BY age ASC	machine_repair
SELECT team , starting_year FROM technician	machine_repair
SELECT team , starting_year FROM technician	machine_repair
SELECT name FROM technician WHERE team != 'NYY'	machine_repair
SELECT name FROM technician WHERE team != 'NYY'	machine_repair
SELECT name FROM technician WHERE age = 36 OR age = 37	machine_repair
SELECT name FROM technician WHERE age = 36 OR age = 37	machine_repair
SELECT starting_year FROM technician ORDER BY age DESC LIMIT 1	machine_repair
SELECT starting_year FROM technician ORDER BY age DESC LIMIT 1	machine_repair
SELECT team , COUNT( * ) FROM technician GROUP BY team	machine_repair
SELECT team , COUNT( * ) FROM technician GROUP BY team	machine_repair
SELECT team FROM technician GROUP BY team ORDER BY COUNT( * ) DESC LIMIT 1	machine_repair
SELECT team FROM technician GROUP BY team ORDER BY COUNT( * ) DESC LIMIT 1	machine_repair
SELECT team FROM technician GROUP BY team HAVING COUNT( * ) >= 2	machine_repair
SELECT team FROM technician GROUP BY team HAVING COUNT( * ) >= 2	machine_repair
SELECT starting_year FROM technician WHERE team = 'CLE' INTERSECT SELECT starting_year FROM technician WHERE team = 'CWS'	machine_repair
SELECT starting_year FROM technician WHERE team = 'CLE' OR team = 'CWS'	machine_repair
SELECT COUNT( * ) FROM perpetrator	perpetrator
SELECT date FROM perpetrator ORDER BY killed DESC	perpetrator
SELECT injured FROM perpetrator ORDER BY injured ASC	perpetrator
SELECT AVG( injured ) FROM perpetrator	perpetrator
SELECT location FROM perpetrator ORDER BY killed DESC LIMIT 1	perpetrator
SELECT country , COUNT( * ) FROM perpetrator GROUP BY country	perpetrator
SELECT country FROM perpetrator GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT country FROM perpetrator GROUP BY country HAVING COUNT( * ) >= 2	perpetrator
SELECT country FROM perpetrator WHERE injured > 50 INTERSECT SELECT country FROM perpetrator WHERE injured<20	perpetrator
SELECT COUNT( DISTINCT location ) FROM perpetrator	perpetrator
SELECT year FROM perpetrator GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT roomname FROM rooms JOIN two ON beds = two WHERE baseprice<160	inn_1
SELECT roomname FROM rooms JOIN two ON beds = two WHERE baseprice<160	inn_1
SELECT roomname , roomid FROM rooms WHERE baseprice > 160 AND maxoccupancy > 2	inn_1
SELECT roomname , roomid FROM rooms WHERE baseprice > 160 AND maxoccupancy > 2	inn_1
SELECT SUM( kids ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1
SELECT SUM( kids ) FROM reservations WHERE firstname = 'ROY SWEAZ'	inn_1
SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1
SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1
SELECT SUM( adults ) FROM reservations WHERE checkin = 'CONRAD SELBIG'	inn_1
SELECT SUM( adults ) FROM reservations WHERE firstname = 'CONRAD SELBIG' AND checkin = 2010	inn_1
SELECT SUM( kids ) FROM reservations JOIN rooms ON room = roomid WHERE firstname = 'DAMIEN TRACHSEL' AND checkin = 2010	inn_1
SELECT kids FROM reservations WHERE firstname = 'DAMIEN TRACHSEL' AND checkin = 2010	inn_1
SELECT SUM( beds ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT SUM( beds ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT roomname , decor FROM rooms WHERE bedtype = 'king' ORDER BY baseprice ASC	inn_1
SELECT roomname , decor FROM rooms WHERE bedtype = 'king' ORDER BY baseprice ASC	inn_1
SELECT roomname , baseprice FROM rooms ORDER BY baseprice ASC LIMIT 1	inn_1
SELECT roomname , baseprice FROM rooms ORDER BY baseprice ASC LIMIT 1	inn_1
SELECT decor FROM rooms WHERE roomname = 'Recluse' AND roomname = 'defiance'	inn_1
SELECT decor FROM rooms WHERE roomname = 'defiance'	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT COUNT( * ) FROM rooms WHERE decor = 'modern'	inn_1
SELECT decor FROM rooms GROUP BY decor ORDER BY COUNT( * ) ASC LIMIT 1	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT COUNT( * ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT bedtype , COUNT( * ) FROM rooms GROUP BY bedtype	inn_1
SELECT bedtype , COUNT( * ) FROM rooms GROUP BY bedtype	inn_1
SELECT roomname FROM rooms ORDER BY maxoccupancy DESC LIMIT 1	inn_1
SELECT roomname FROM rooms ORDER BY maxoccupancy DESC LIMIT 1	inn_1
SELECT roomid , roomname FROM rooms ORDER BY baseprice DESC LIMIT 1	inn_1
SELECT roomname FROM rooms ORDER BY baseprice DESC LIMIT 1	inn_1
SELECT bedtype , roomname FROM rooms WHERE decor = 'traditional'	inn_1
SELECT bedtype , roomname FROM rooms WHERE decor = 'traditional'	inn_1
SELECT COUNT( * ) , decor FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1
SELECT COUNT( * ) , decor FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1
SELECT AVG( baseprice ) , MIN( baseprice ) , decor FROM rooms GROUP BY decor	inn_1
SELECT AVG( baseprice ) , MIN( baseprice ) , decor FROM rooms GROUP BY decor	inn_1
SELECT roomname FROM rooms ORDER BY baseprice ASC	inn_1
SELECT roomname FROM rooms ORDER BY baseprice ASC	inn_1
SELECT COUNT( * ) , decor FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1
SELECT COUNT( * ) , decor FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT AVG( baseprice ) , bedtype FROM rooms GROUP BY bedtype	inn_1
SELECT roomname FROM rooms WHERE bedtype = 'king' OR bedtype = 'queen'	inn_1
SELECT roomname FROM rooms WHERE bedtype = 'king' OR bedtype = 'queen'	inn_1
SELECT COUNT( DISTINCT bedtype ) FROM rooms	inn_1
SELECT COUNT( DISTINCT bedtype ) FROM rooms	inn_1
SELECT roomname , roomid FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1
SELECT roomname , roomid FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1
SELECT roomname FROM rooms WHERE baseprice > (SELECT AVG( baseprice ) FROM rooms)	inn_1
SELECT roomname FROM rooms WHERE baseprice > (SELECT AVG( baseprice ) FROM rooms)	inn_1
SELECT COUNT( * ) FROM rooms WHERE roomid NOT IN (SELECT room FROM reservations)	inn_1
SELECT COUNT( * ) FROM rooms WHERE roomid NOT IN (SELECT room FROM reservations)	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 and 150	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 and 150	inn_1
SELECT COUNT( * ) FROM party	party_host
SELECT COUNT( * ) FROM party	party_host
SELECT party_theme FROM party ORDER BY number_of_hosts ASC	party_host
SELECT party_theme FROM party ORDER BY number_of_hosts ASC	party_host
SELECT party_theme , location FROM party	party_host
SELECT party_theme , location FROM party	party_host
SELECT first_year , last_year FROM party WHERE party_theme = 'Spring' OR party_theme = 'Teqnology'	party_host
SELECT first_year , last_year FROM party WHERE party_theme = 'Spring' OR party_theme = 'Teqnology'	party_host
SELECT AVG( number_of_hosts ) FROM party	party_host
SELECT AVG( number_of_hosts ) FROM party	party_host
SELECT location FROM party ORDER BY number_of_hosts DESC LIMIT 1	party_host
SELECT location FROM party ORDER BY number_of_hosts DESC LIMIT 1	party_host
SELECT nationality , COUNT( * ) FROM host GROUP BY nationality	party_host
SELECT nationality , COUNT( * ) FROM host GROUP BY nationality	party_host
SELECT nationality FROM host GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	party_host
SELECT nationality FROM host GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	party_host
SELECT nationality FROM host WHERE age > 45 INTERSECT SELECT nationality FROM host WHERE age<35	party_host
SELECT nationality FROM host WHERE age > 45 INTERSECT SELECT nationality FROM host WHERE age<35	party_host
SELECT name , nationality FROM host ORDER BY age DESC LIMIT 1	party_host
SELECT name , nationality FROM host ORDER BY age DESC LIMIT 1	party_host
SELECT COUNT( * ) FROM county	election
SELECT COUNT( * ) FROM county	election
SELECT county_name , population FROM county	election
SELECT county_name , population FROM county	election
SELECT AVG( population ) FROM county	election
SELECT AVG( population ) FROM county	election
SELECT MAX( population ) , MIN( population ) FROM county	election
SELECT MAX( population ) , MIN( population ) FROM county	election
SELECT DISTINCT district FROM election	election
SELECT DISTINCT district FROM election	election
SELECT zip_code FROM county WHERE county_name = 'Howard'	election
SELECT zip_code FROM county WHERE county_name = 'Howard'	election
SELECT delegate FROM election WHERE district = 1	election
SELECT delegate FROM election WHERE district = 1	election
SELECT delegate , committee FROM election	election
SELECT delegate , committee FROM election	election
SELECT COUNT( DISTINCT governor ) FROM party	election
SELECT COUNT( DISTINCT governor ) FROM party	election
SELECT lieutenant_governor , comptroller FROM party WHERE party = 'democratic'	election
SELECT lieutenant_governor , comptroller FROM party WHERE party = 'democratic'	election
SELECT DISTINCT year FROM party WHERE governor = 'Eliot Spitzer'	election
SELECT DISTINCT year FROM party WHERE governor = 'Eliot Spitzer'	election
SELECT * FROM election	election
SELECT * FROM election	election
SELECT county_name FROM county ORDER BY population ASC	election
SELECT county_name FROM county ORDER BY population ASC	election
SELECT county_name FROM county ORDER BY county_name DESC	election
SELECT county_name FROM county ORDER BY county_name DESC	election
SELECT county_name FROM county ORDER BY population DESC LIMIT 1	election
SELECT county_name FROM county ORDER BY population DESC LIMIT 1	election
SELECT county_name FROM county ORDER BY population ASC LIMIT 3	election
SELECT county_name FROM county ORDER BY population ASC LIMIT 3	election
SELECT party FROM election JOIN party ON party = party_id GROUP BY party HAVING COUNT( * ) >= 2	election
SELECT party FROM election JOIN party ON party = party_id GROUP BY party HAVING COUNT( * ) >= 2	election
SELECT governor FROM party GROUP BY governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT governor FROM party GROUP BY governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT comptroller , COUNT( * ) FROM party GROUP BY comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT comptroller , COUNT( * ) FROM party GROUP BY comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT title FROM papers WHERE title LIKE '%ML%'	icfp_1
SELECT title FROM papers WHERE title LIKE '%ML%'	icfp_1
SELECT title FROM papers WHERE title LIKE '%Database%'	icfp_1
SELECT title FROM papers WHERE title LIKE '%Database%'	icfp_1
SELECT fname FROM authors WHERE lname = 'Ueno'	icfp_1
SELECT fname FROM authors WHERE lname = 'Ueno'	icfp_1
SELECT lname FROM authors WHERE fname = 'Amal'	icfp_1
SELECT lname FROM authors WHERE fname = 'Amal'	icfp_1
SELECT fname FROM authors ORDER BY fname ASC	icfp_1
SELECT fname FROM authors ORDER BY fname ASC	icfp_1
SELECT lname FROM authors ORDER BY lname ASC	icfp_1
SELECT lname FROM authors ORDER BY lname ASC	icfp_1
SELECT fname , lname FROM authors ORDER BY lname ASC	icfp_1
SELECT fname , lname FROM authors ORDER BY lname ASC	icfp_1
SELECT COUNT( * ) FROM bank	loan_1
SELECT COUNT( * ) FROM bank	loan_1
SELECT COUNT( * ) FROM customer	loan_1
SELECT SUM( no_of_customers ) FROM bank	loan_1
SELECT COUNT( * ) FROM bank WHERE city = 'New York City'	loan_1
SELECT COUNT( * ) FROM bank WHERE city = 'New York City'	loan_1
SELECT AVG( no_of_customers ) FROM bank JOIN customer ON branch_id = branch_id WHERE state = 'Utah'	loan_1
SELECT AVG( no_of_customers ) FROM bank JOIN customer ON branch_id = branch_id WHERE state = 'Utah'	loan_1
SELECT AVG( no_of_customers ) FROM bank	loan_1
SELECT AVG( no_of_customers ) FROM bank	loan_1
SELECT city , state FROM bank WHERE bname = 'morningside'	loan_1
SELECT city , state FROM bank WHERE bname = 'morningside'	loan_1
SELECT bname FROM bank WHERE state = 'New York'	loan_1
SELECT bname FROM bank WHERE state = 'New York'	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal ASC	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal ASC	loan_1
SELECT state , acc_type , credit_score FROM customer WHERE no_of_loans = 0	loan_1
SELECT state , acc_type , credit_score FROM customer WHERE no_of_loans = 0	loan_1
SELECT COUNT( DISTINCT city ) FROM bank	loan_1
SELECT COUNT( DISTINCT city ) FROM bank	loan_1
SELECT COUNT( DISTINCT state ) FROM bank	loan_1
SELECT COUNT( DISTINCT state ) FROM bank	loan_1
SELECT COUNT( DISTINCT acc_type ) FROM customer	loan_1
SELECT COUNT( DISTINCT acc_type ) FROM customer	loan_1
SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT SUM( acc_bal ) FROM customer JOIN bank ON branch_id = branch_id WHERE state = 'Utah' OR state = 'Texas'	loan_1
SELECT SUM( acc_bal ) FROM customer JOIN bank ON branch_id = branch_id WHERE state = 'Utah' OR state = 'Texas'	loan_1
SELECT cust_name FROM customer WHERE acc_type = 'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'	loan_1
SELECT cust_name FROM customer WHERE acc_type = 'savings' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'	loan_1
SELECT cust_name FROM customer WHERE acc_type != 'saving'	loan_1
SELECT cust_name FROM customer WHERE acc_type != 'saving'	loan_1
SELECT cust_name FROM customer WHERE credit_score<(SELECT AVG( credit_score ) FROM customer)	loan_1
SELECT cust_name FROM customer WHERE credit_score<(SELECT AVG( credit_score ) FROM customer)	loan_1
SELECT bname FROM bank JOIN customer ON branch_id = branch_id GROUP BY branch_id ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score ASC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score ASC LIMIT 1	loan_1
SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY no_of_loans DESC LIMIT 1	loan_1
SELECT state FROM customer GROUP BY state ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT acc_type , AVG( acc_bal ) FROM customer WHERE credit_score<50 GROUP BY acc_type	loan_1
SELECT AVG( acc_bal ) , acc_type FROM customer WHERE credit_score<50 GROUP BY acc_type	loan_1
SELECT SUM( acc_bal ) , state FROM customer WHERE credit_score > 100 GROUP BY state	loan_1
SELECT SUM( acc_bal ) , state FROM customer WHERE credit_score > 100 GROUP BY state	loan_1
SELECT AVG( credit_score ) FROM customer JOIN loan ON cust_id = cust_id	loan_1
SELECT AVG( credit_score ) FROM customer	loan_1
SELECT AVG( credit_score ) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT AVG( credit_score ) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT DISTINCT last_name FROM maintenance_engineers	assets_maintenance
SELECT COUNT( DISTINCT fault_status ) FROM fault_log_parts	assets_maintenance
SELECT first_name , last_name FROM maintenance_engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM engineer_visits)	assets_maintenance
SELECT asset_id , other_asset_details , asset_make , asset_model FROM assets	assets_maintenance
SELECT asset_acquired_date FROM assets ORDER BY asset_acquired_date ASC LIMIT 1	assets_maintenance
SELECT DISTINCT asset_model FROM assets	assets_maintenance
SELECT asset_make , asset_model , asset_details FROM assets ORDER BY asset_disposed_date ASC	assets_maintenance
SELECT part_id , part_name FROM parts JOIN part_faults ON part_id = part_id GROUP BY part_id ORDER BY SUM( chargeable_amount ) ASC LIMIT 1	assets_maintenance
SELECT gender FROM staff GROUP BY gender ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT asset_model FROM assets WHERE asset_id NOT IN (SELECT asset_id FROM fault_log)	assets_maintenance
SELECT COUNT( * ) FROM class WHERE class_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM class WHERE class_code = 'ACCT-211'	college_1
SELECT school_code FROM department WHERE dept_name = 'accounting'	college_1
SELECT school_code FROM department WHERE dept_name = 'accounting'	college_1
SELECT SUM( crs_credit ) , crs_description FROM course WHERE crs_code = 'CIS-220'	college_1
class , class	college_1
SELECT dept_address FROM department WHERE dept_name = 'history'	college_1
SELECT dept_address FROM department JOIN course ON dept_code = dept_code WHERE dept_name = 'history'	college_1
SELECT COUNT( DISTINCT dept_address ) FROM department WHERE school_code = 'BUS'	college_1
SELECT DISTINCT class_room FROM class JOIN department ON class_code = dept_address WHERE school_code = 'BUS'	college_1
SELECT COUNT( DISTINCT school_code ) FROM department	college_1
SELECT school_code , COUNT( DISTINCT dept_address ) FROM department GROUP BY school_code	college_1
SELECT crs_description , crs_credit FROM course WHERE crs_code = 'QM-261'	college_1
SELECT crs_description , crs_credit FROM course WHERE crs_code = 'QM-261'	college_1
SELECT COUNT( * ) , school_code FROM department GROUP BY school_code	college_1
SELECT COUNT( * ) , school_code FROM department GROUP BY school_code	college_1
SELECT COUNT( * ) , school_code FROM department GROUP BY school_code HAVING COUNT( * ) >= 5	college_1
SELECT COUNT( * ) , school_code FROM department JOIN student ON dept_code = dept_code GROUP BY school_code HAVING COUNT( * )<5	college_1
SELECT crs_code , COUNT( DISTINCT class_section ) FROM class GROUP BY crs_code	college_1
SELECT crs_code , COUNT( DISTINCT class_section ) FROM class GROUP BY crs_code	college_1
SELECT SUM( crs_credit ) FROM course	college_1
SELECT SUM( crs_credit ) FROM course	college_1
SELECT class_room , COUNT( * ) FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1
SELECT class_room , COUNT( * ) FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1
SELECT emp_jobcode , COUNT( * ) FROM employee GROUP BY emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT emp_jobcode , COUNT( * ) FROM employee GROUP BY emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT COUNT( * ) , dept_code FROM professor WHERE prof_high_degree = 'D' GROUP BY dept_code	college_1
SELECT dept_code , COUNT( * ) FROM professor WHERE prof_high_degree = 'D' GROUP BY dept_code	college_1
SELECT COUNT( * ) , dept_code FROM student GROUP BY dept_code	college_1
SELECT COUNT( * ) , dept_code FROM student GROUP BY dept_code	college_1
SELECT SUM( stu_hrs ) , dept_code FROM student GROUP BY dept_code	college_1
SELECT dept_code , SUM( stu_hrs ) FROM student GROUP BY dept_code	college_1
SELECT AVG( stu_gpa ) , MAX( stu_gpa ) , MIN( stu_gpa ) , dept_code FROM student GROUP BY dept_code	college_1
SELECT MAX( stu_gpa ) , MIN( stu_gpa ) , AVG( stu_gpa ) FROM student	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( DISTINCT school_code ) FROM department	college_1
SELECT COUNT( DISTINCT class_code ) FROM class	college_1
SELECT COUNT( DISTINCT class_code ) FROM class	college_1
SELECT COUNT( * ) FROM course	college_1
SELECT COUNT( DISTINCT crs_code ) FROM course	college_1
SELECT COUNT( * ) FROM department WHERE school_code = 'college'	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( DISTINCT class_section ) FROM class WHERE crs_code = 'ACCT-211'	college_1
SELECT COUNT( DISTINCT class_section ) FROM class WHERE crs_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D'	college_1
SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 1	college_1
SELECT dept_name FROM department ORDER BY dept_name ASC	college_1
SELECT dept_name FROM department ORDER BY dept_name ASC	college_1
SELECT crs_code FROM class WHERE class_room = 'KLR209'	college_1
SELECT crs_code FROM class WHERE class_room = 'KLR209'	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode = 'PROF' ORDER BY emp_dob ASC	college_1
SELECT emp_fname FROM employee JOIN professor ON emp_num = emp_num WHERE prof_office = 'professors' ORDER BY emp_dob ASC	college_1
SELECT emp_fname , emp_lname FROM employee ORDER BY emp_dob DESC LIMIT 1	college_1
SELECT emp_fname , emp_lname FROM employee ORDER BY emp_dob ASC LIMIT 1	college_1
SELECT stu_fname , stu_lname FROM student WHERE stu_gpa > 3 ORDER BY stu_dob ASC LIMIT 1	college_1
SELECT stu_fname , stu_lname FROM student WHERE stu_gpa > 3	college_1
SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D' OR prof_high_degree = 'MA'	college_1
SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D' OR prof_high_degree = 'Masters'	college_1
SELECT stu_fname , stu_gpa , stu_phone FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_fname , stu_gpa , stu_phone FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_fname FROM student WHERE stu_gpa<(SELECT AVG( stu_gpa ) FROM student)	college_1
SELECT AVG( stu_gpa ) FROM student	college_1
SELECT SUM( num_of_component ) FROM furniture	manufacturer
SELECT name , furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
SELECT SUM( market_rate ) FROM furniture	manufacturer
SELECT num_of_component , name FROM furniture WHERE num_of_component > 10	manufacturer
SELECT name , num_of_component FROM furniture	manufacturer
SELECT name , open_year FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
SELECT AVG( num_of_factories ) FROM manufacturer WHERE num_of_shops > 20	manufacturer
SELECT name , manufacturer_id FROM manufacturer ORDER BY open_year ASC	manufacturer
SELECT name , open_year FROM manufacturer WHERE num_of_factories<10 OR num_of_shops > 10	manufacturer
SELECT AVG( num_of_factories ) , MAX( num_of_shops ) FROM manufacturer WHERE open_year<1990	manufacturer
SELECT song_name FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT song_name FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT f_id FROM song ORDER BY resolution DESC LIMIT 1	music_1
SELECT f_id FROM song JOIN files ON f_id = f_id ORDER BY duration DESC LIMIT 1	music_1
SELECT song_name FROM song WHERE languages = 'English'	music_1
SELECT song_name FROM song WHERE languages = 'English'	music_1
SELECT f_id FROM files, song WHERE formats = 'mp3'	music_1
SELECT formats FROM files WHERE formats = 'mp3'	music_1
SELECT artist_name FROM song ORDER BY resolution ASC LIMIT 1	music_1
SELECT artist_name FROM song ORDER BY resolution ASC LIMIT 1	music_1
SELECT COUNT( * ) FROM artist WHERE country = 'Bangladesh'	music_1
SELECT COUNT( * ) FROM artist WHERE country = 'Bangladeshi'	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist_name FROM artist JOIN song ON artist_name = artist_name WHERE country = 'UK' AND languages = 'English'	music_1
SELECT artist_name FROM artist JOIN song ON country = artist_name WHERE country = 'UK' AND languages = 'English'	music_1
SELECT f_id FROM song WHERE formats = 'mp4' AND resolution<1000	music_1
SELECT * FROM files JOIN song ON f_id = f_id WHERE formats = 'mp4' AND resolution<1000	music_1
SELECT gender , COUNT( * ) FROM artist GROUP BY gender	music_1
SELECT COUNT( * ) FROM artist WHERE gender = 'f'	music_1
SELECT languages , AVG( rating ) FROM song GROUP BY languages	music_1
SELECT languages , AVG( rating ) FROM song GROUP BY languages	music_1
SELECT formats , COUNT( * ) FROM files JOIN song ON f_id = f_id GROUP BY formats	music_1
SELECT formats , COUNT( * ) FROM song JOIN files ON f_id = f_id GROUP BY formats	music_1
SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT MIN( resolution ) FROM song WHERE languages = 'English')	music_1
SELECT DISTINCT song_name FROM song WHERE languages NOT IN (SELECT song_name FROM song WHERE languages = 'English')	music_1
genre , genre	music_1
SELECT song_name FROM song JOIN genre ON genre_is = g_name WHERE rating<(SELECT AVG( rating ) FROM genre)	music_1
SELECT g_name , rating FROM genre ORDER BY g_name ASC	music_1
SELECT g_name , rating FROM genre ORDER BY g_name ASC	music_1
SELECT song_name FROM song ORDER BY resolution ASC	music_1
SELECT song_name FROM song ORDER BY resolution ASC	music_1
SELECT languages FROM song GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT languages FROM song GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT languages FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist_name , languages FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE gender = 'Male' AND country = 'UK'	music_1
SELECT artist_name FROM artist WHERE gender = 'm'	music_1
SELECT song_name FROM song WHERE genre_is = 'modern' OR languages = 'English'	music_1
SELECT song_name FROM song WHERE genre_is = 'modern' OR languages = 'English'	music_1
SELECT AVG( rating ) , AVG( resolution ) FROM song WHERE languages = 'Bangla'	music_1
SELECT AVG( rating ) , AVG( resolution ) FROM song WHERE languages = 'bangla'	music_1
SELECT song_name FROM song WHERE rating<(SELECT MIN( rating ) FROM song WHERE languages = 'English')	music_1
SELECT song_name FROM song WHERE rating<(SELECT MIN( rating ) FROM song WHERE languages = 'English')	music_1
SELECT f_id FROM song WHERE rating<(SELECT MAX( resolution ) FROM song WHERE rating<8)	music_1
SELECT f_id FROM song WHERE resolution > (SELECT resolution FROM song WHERE rating<8)	music_1
SELECT f_id FROM song WHERE resolution > (SELECT AVG( resolution ) FROM song WHERE genre_is = 'modern')	music_1
SELECT f_id FROM song WHERE resolution > (SELECT AVG( resolution ) FROM song)	music_1
SELECT f_id , g_name , artist_name FROM song JOIN genre ON genre_is = g_name WHERE languages = 'English' ORDER BY rating ASC	music_1
SELECT f_id , genre_is , artist_name FROM song JOIN genre ON f_id = g_name ORDER BY rating ASC	music_1
SELECT artist_name FROM artist WHERE languages = 'English' EXCEPT SELECT artist_name FROM song JOIN genre ON artist_name = g_name WHERE languages = 'English' AND rating > 8	music_1
SELECT artist_name FROM artist WHERE languages = 'English' EXCEPT SELECT DISTINCT artist_name FROM song WHERE languages = 'English' AND rating > 8	music_1
artist , genre	music_1
SELECT artist_name FROM artist WHERE country = 'Bangladesh'	music_1
SELECT id , color , name FROM photos	mountain_photos
SELECT MAX( height ) , MIN( height ) FROM mountain	mountain_photos
SELECT AVG( prominence ) FROM mountain WHERE country = 'Morocco'	mountain_photos
SELECT name , height , prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
SELECT COUNT( DISTINCT brand ) FROM camera_lens	mountain_photos
SELECT COUNT( * ) FROM camera_lens WHERE id NOT IN (SELECT camera_lens_id FROM photos)	mountain_photos
SELECT name FROM camera_lens WHERE name LIKE '%Digital%'	mountain_photos
SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT head FROM department GROUP BY head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT head FROM department GROUP BY head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY start DESC LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY start DESC LIMIT 1	hospital_1
SELECT COUNT( * ) FROM stay WHERE room = 112	hospital_1
SELECT COUNT( * ) FROM stay WHERE room = 112	hospital_1
SELECT patient FROM stay WHERE room = 111 ORDER BY stayend DESC LIMIT 1	hospital_1
SELECT patient FROM stay WHERE room = 111 ORDER BY stayend DESC LIMIT 1	hospital_1
SELECT COUNT( DISTINCT blockcode ) FROM room	hospital_1
SELECT DISTINCT blockcode FROM room	hospital_1
SELECT COUNT( DISTINCT roomtype ) FROM room	hospital_1
SELECT COUNT( DISTINCT roomtype ) FROM room	hospital_1
SELECT name FROM physician WHERE position LIKE '%senior%'	hospital_1
SELECT name FROM physician WHERE position LIKE '%senior%'	hospital_1
SELECT name FROM patient JOIN appointment ON ssn = patient GROUP BY patient ORDER BY end DESC LIMIT 1	hospital_1
SELECT name FROM appointment JOIN patient ON patient = ssn ORDER BY end DESC LIMIT 1	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name ASC	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name ASC	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name ASC	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name ASC	hospital_1
SELECT MAX( cost ) , MIN( cost ) , AVG( cost ) FROM procedures	hospital_1
SELECT MAX( cost ) , MIN( cost ) , AVG( cost ) FROM procedures	hospital_1
SELECT name , cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name , cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT cost FROM procedures ORDER BY cost DESC LIMIT 3	hospital_1
SELECT cost FROM procedures ORDER BY cost DESC LIMIT 3	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
SELECT COUNT( * ) FROM list	student_1
SELECT COUNT( * ) FROM list	student_1
SELECT lastname FROM list WHERE classroom = 111	student_1
SELECT lastname FROM list WHERE classroom = 111	student_1
SELECT firstname FROM list WHERE classroom = 108	student_1
SELECT firstname FROM list WHERE classroom = 108	student_1
SELECT firstname FROM list WHERE classroom = 107	student_1
SELECT firstname FROM list WHERE classroom = 107	student_1
SELECT classroom , grade FROM list	student_1
SELECT grade , classroom FROM list	student_1
SELECT grade FROM list WHERE classroom = 103	student_1
SELECT grade FROM list WHERE classroom = 103	student_1
SELECT grade FROM list WHERE classroom = 105	student_1
SELECT grade FROM list WHERE classroom = 105	student_1
SELECT classroom FROM list WHERE grade = 4	student_1
SELECT classroom FROM list WHERE grade = 4	student_1
SELECT classroom FROM list WHERE grade = 5	student_1
SELECT classroom FROM list WHERE grade = 5	student_1
SELECT firstname FROM teachers WHERE classroom = 110	student_1
SELECT firstname FROM teachers WHERE classroom = 110	student_1
SELECT lastname FROM teachers WHERE classroom = 109	student_1
SELECT lastname FROM teachers WHERE classroom = 109	student_1
SELECT firstname , lastname FROM teachers	student_1
SELECT firstname , lastname FROM teachers	student_1
SELECT firstname , lastname FROM list	student_1
SELECT firstname , lastname FROM list	student_1
SELECT COUNT( * ) , grade FROM list GROUP BY grade	student_1
SELECT COUNT( * ) , COUNT( * ) , grade FROM list GROUP BY grade	student_1
SELECT classroom , COUNT( * ) , SUM( grade ) FROM list GROUP BY classroom	student_1
SELECT classroom , COUNT( DISTINCT grade ) FROM list GROUP BY classroom	student_1
SELECT classroom FROM list ORDER BY classroom DESC LIMIT 1	student_1
SELECT classroom FROM list GROUP BY classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1
SELECT classroom , COUNT( * ) FROM list GROUP BY classroom	student_1
SELECT classroom , COUNT( * ) FROM list WHERE grade = 0 GROUP BY classroom	student_1
SELECT classroom , COUNT( * ) FROM list WHERE grade = 0 GROUP BY classroom	student_1
SELECT COUNT( * ) FROM list JOIN fourth ON grade = fourth GROUP BY classroom	student_1
SELECT classroom , COUNT( * ) FROM list WHERE grade = 4 GROUP BY classroom	student_1
SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1
SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1
SELECT COUNT( * ) FROM film	film_rank
SELECT COUNT( * ) FROM film	film_rank
SELECT DISTINCT director FROM film	film_rank
SELECT DISTINCT director FROM film	film_rank
SELECT AVG( gross_in_dollar ) FROM film	film_rank
SELECT AVG( gross_in_dollar ) FROM film	film_rank
SELECT MAX( number_cities ) , MIN( number_cities ) FROM market	film_rank
SELECT MAX( number_cities ) , MIN( number_cities ) FROM market	film_rank
SELECT COUNT( * ) FROM market WHERE number_cities<300	film_rank
SELECT COUNT( * ) FROM market WHERE number_cities<300	film_rank
SELECT country FROM market ORDER BY country ASC	film_rank
SELECT country FROM market ORDER BY country ASC	film_rank
SELECT country FROM market ORDER BY number_cities DESC	film_rank
SELECT country FROM market ORDER BY number_cities DESC	film_rank
SELECT studio , COUNT( * ) FROM film GROUP BY studio	film_rank
SELECT studio , COUNT( * ) FROM film GROUP BY studio	film_rank
SELECT studio FROM film GROUP BY studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT studio FROM film GROUP BY studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT studio FROM film GROUP BY studio HAVING COUNT( * ) >= 2	film_rank
SELECT studio FROM film GROUP BY studio HAVING COUNT( * ) >= 2	film_rank
SELECT studio FROM film WHERE director = 'Nicholas Meyer' INTERSECT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
SELECT studio FROM film WHERE director = 'Nicholas Meyer' INTERSECT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
SELECT title , studio FROM film WHERE studio LIKE '%Universal%'	film_rank
SELECT title , studio FROM film WHERE studio LIKE '%Universal%'	film_rank
SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) > 4500000	film_rank
SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) > 4500000	film_rank
SELECT COUNT( * ) FROM member	decoration_competition
SELECT name FROM member ORDER BY name ASC	decoration_competition
SELECT name , country FROM member	decoration_competition
SELECT name FROM member WHERE country = 'United States' OR country = 'Canada'	decoration_competition
SELECT country , COUNT( * ) FROM member GROUP BY country	decoration_competition
SELECT country FROM member GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	decoration_competition
SELECT country FROM member GROUP BY country HAVING COUNT( * ) > 2	decoration_competition
SELECT leader_name , college_location FROM college	decoration_competition
SELECT COUNT( * ) FROM companies	company_office
SELECT COUNT( * ) FROM companies	company_office
SELECT name FROM companies ORDER BY market_value_billion DESC	company_office
SELECT name FROM companies ORDER BY market_value_billion DESC	company_office
SELECT name FROM companies WHERE headquarters != 'USA'	company_office
SELECT name FROM companies WHERE headquarters != 'USA'	company_office
SELECT name , assets_billion FROM companies ORDER BY name ASC	company_office
SELECT name , assets_billion FROM companies ORDER BY name ASC	company_office
SELECT AVG( profits_billion ) FROM companies	company_office
SELECT AVG( profits_billion ) FROM companies	company_office
SELECT MAX( sales_billion ) , MIN( sales_billion ) FROM companies WHERE industry != 'Banking'	company_office
SELECT MAX( sales_billion ) , MIN( sales_billion ) FROM companies WHERE industry != 'Banking'	company_office
SELECT COUNT( DISTINCT industry ) FROM companies	company_office
SELECT COUNT( DISTINCT industry ) FROM companies	company_office
SELECT name FROM buildings ORDER BY height DESC	company_office
SELECT name FROM buildings ORDER BY height DESC	company_office
SELECT stories FROM buildings ORDER BY height DESC LIMIT 1	company_office
SELECT stories FROM buildings ORDER BY height DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE status = 'on-hold' ORDER BY stories ASC	company_office
SELECT name FROM buildings WHERE status = 'on-hold' ORDER BY stories ASC	company_office
SELECT industry , COUNT( * ) FROM companies GROUP BY industry	company_office
SELECT industry , COUNT( * ) FROM companies GROUP BY industry	company_office
SELECT industry , COUNT( * ) FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office
SELECT industry , COUNT( * ) FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office
SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM office_locations)	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM office_locations)	company_office
SELECT industry FROM companies WHERE headquarters = 'USA' INTERSECT SELECT industry FROM companies WHERE headquarters = 'China'	company_office
SELECT industry FROM companies WHERE headquarters = 'USA' INTERSECT SELECT industry FROM companies WHERE headquarters = 'China'	company_office
SELECT COUNT( * ) FROM companies WHERE industry = 'Banking' OR industry = 'Conglomerate'	company_office
SELECT COUNT( * ) FROM companies WHERE industry = 'Banking' OR industry = 'Conglomerate'	company_office
SELECT headquarters FROM companies GROUP BY headquarters HAVING COUNT( * ) > 2	company_office
SELECT headquarters FROM companies GROUP BY headquarters HAVING COUNT( * ) > 2	company_office
SELECT COUNT( * ) FROM artwork	entertainment_awards
SELECT name FROM artwork ORDER BY name ASC	entertainment_awards
SELECT name FROM artwork WHERE type != 'Program Talent Show'	entertainment_awards
SELECT type , COUNT( * ) FROM artwork GROUP BY type	entertainment_awards
SELECT type FROM artwork GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	entertainment_awards
SELECT COUNT( * ) FROM aircraft	aircraft
SELECT COUNT( * ) FROM aircraft	aircraft
SELECT description FROM aircraft	aircraft
SELECT description FROM aircraft	aircraft
SELECT AVG( international_passengers ) FROM airport	aircraft
SELECT AVG( international_passengers ) FROM airport	aircraft
SELECT SUM( international_passengers ) FROM airport WHERE airport_name = 'Heathrow'	aircraft
SELECT SUM( international_passengers ) , SUM( domestic_passengers ) FROM airport WHERE airport_name = 'London Heathrow'	aircraft
SELECT SUM( domestic_passengers ) FROM airport WHERE airport_name LIKE '%London%'	aircraft
SELECT SUM( domestic_passengers ) FROM airport WHERE airport_name = 'London'	aircraft
SELECT MAX( transit_passengers ) , MIN( transit_passengers ) FROM airport	aircraft
SELECT MAX( transit_passengers ) , MIN( transit_passengers ) FROM airport	aircraft
SELECT name FROM pilot WHERE age >= 25	aircraft
SELECT name FROM pilot WHERE age >= 25	aircraft
SELECT name FROM pilot ORDER BY name ASC	aircraft
SELECT name FROM pilot ORDER BY name ASC	aircraft
SELECT name FROM pilot WHERE age <= 30 ORDER BY name DESC	aircraft
SELECT name FROM pilot WHERE age <= 30 ORDER BY name DESC	aircraft
SELECT name FROM pilot ORDER BY age DESC	aircraft
SELECT name FROM pilot ORDER BY age DESC	aircraft
SELECT * FROM airport ORDER BY international_passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY international_passengers DESC LIMIT 1	aircraft
SELECT SUM( enr ) FROM college	soccer_2
SELECT SUM( enr ) FROM college	soccer_2
SELECT AVG( enr ) FROM college	soccer_2
SELECT cname , AVG( enr ) FROM college GROUP BY cname	soccer_2
SELECT COUNT( * ) FROM college	soccer_2
SELECT COUNT( DISTINCT cname ) FROM college	soccer_2
SELECT COUNT( * ) FROM player WHERE hs > 1000	soccer_2
SELECT COUNT( * ) FROM player WHERE hs > 1000	soccer_2
SELECT COUNT( * ) FROM college WHERE enr > 15000	soccer_2
SELECT COUNT( * ) FROM college WHERE enr > 15000	soccer_2
SELECT AVG( hs ) FROM player	soccer_2
SELECT AVG( hs ) FROM player	soccer_2
SELECT pname , hs FROM player WHERE hs<1500	soccer_2
SELECT pname , hs FROM player WHERE hs<1500	soccer_2
SELECT COUNT( DISTINCT cname ) FROM tryout	soccer_2
SELECT COUNT( DISTINCT cname ) FROM tryout	soccer_2
SELECT COUNT( DISTINCT ppos ) FROM tryout	soccer_2
SELECT DISTINCT ppos FROM tryout	soccer_2
SELECT COUNT( * ) FROM tryout WHERE decision = 'accepted'	soccer_2
SELECT COUNT( * ) FROM tryout JOIN player ON pid = pid WHERE ycard = 'yes'	soccer_2
SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2
SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2
SELECT AVG( enr ) FROM college WHERE state = 'FL'	soccer_2
SELECT AVG( enr ) FROM college WHERE state = 'Florida'	soccer_2
SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2
SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2
SELECT pname FROM player WHERE pname LIKE '%a%'	soccer_2
SELECT pname FROM player WHERE pname LIKE '%a%'	soccer_2
SELECT cname , enr FROM college WHERE enr > 10000 AND state = 'LA'	soccer_2
SELECT cname , enr FROM college WHERE enr > 10000 AND state = 'Louisiana'	soccer_2
SELECT * FROM college ORDER BY enr ASC	soccer_2
SELECT * FROM college ORDER BY enr ASC	soccer_2
SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2
SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2
SELECT pname FROM player WHERE ycard = 'yes' ORDER BY hs DESC	soccer_2
SELECT pname FROM player ORDER BY hs DESC	soccer_2
SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2
SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2
SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
SELECT cname , COUNT( * ) FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2
SELECT cname , COUNT( * ) FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2
SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cname , state , MIN( enr ) FROM college GROUP BY state	soccer_2
SELECT cname FROM college ORDER BY enr ASC LIMIT 1	soccer_2
SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname WHERE ppos = 'goalie'	soccer_2
SELECT cname FROM college JOIN tryout ON enr = pid JOIN player ON pid = pid WHERE ppos = 'goalie'	soccer_2
SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie' INTERSECT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid'	soccer_2
SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie' INTERSECT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid-field'	soccer_2
SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname JOIN player ON pid = pid WHERE ppos = 'goalie'	soccer_2
SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname JOIN player ON pid = pid WHERE ppos = 'mid'	soccer_2
SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid' EXCEPT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie'	soccer_2
SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid' EXCEPT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid position but'	soccer_2
SELECT state FROM college WHERE enr<(SELECT MAX( enr ) FROM college)	soccer_2
SELECT state FROM college WHERE enr<(SELECT AVG( enr ) FROM college)	soccer_2
SELECT cname FROM college WHERE enr > (SELECT MIN( enr ) FROM college WHERE state = 'FL')	soccer_2
SELECT cname FROM college WHERE cname > (SELECT cname FROM college WHERE state = 'Florida')	soccer_2
SELECT cname FROM college WHERE enr > (SELECT enr FROM college WHERE state = 'FL')	soccer_2
SELECT cname FROM college WHERE enr > (SELECT AVG( enr ) FROM college WHERE state = 'Florida')	soccer_2
SELECT SUM( enr ) FROM college WHERE cname NOT IN (SELECT cname FROM tryout WHERE ppos = 'goalie')	soccer_2
SELECT SUM( enr ) FROM college WHERE cname NOT IN (SELECT cname FROM tryout)	soccer_2
SELECT COUNT( DISTINCT state ) FROM college WHERE enr > (SELECT AVG( enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT state ) FROM college WHERE enr > (SELECT AVG( enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT state ) FROM college WHERE enr<(SELECT AVG( enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT state ) FROM college WHERE state<(SELECT AVG( enr ) FROM college)	soccer_2
SELECT COUNT( * ) FROM device	device
SELECT COUNT( * ) FROM device	device
SELECT carrier FROM device ORDER BY carrier ASC	device
SELECT DISTINCT carrier FROM device ORDER BY carrier ASC	device
SELECT carrier FROM device WHERE software_platform != 'Android'	device
SELECT carrier FROM device WHERE software_platform != 'Android'	device
SELECT shop_name FROM shop ORDER BY open_year ASC	device
SELECT shop_name FROM shop ORDER BY open_year ASC	device
SELECT AVG( quantity ) FROM stock	device
SELECT AVG( quantity ) FROM stock	device
SELECT shop_name , location FROM shop ORDER BY shop_name ASC	device
SELECT shop_name , location FROM shop ORDER BY shop_name ASC	device
SELECT COUNT( DISTINCT software_platform ) FROM device	device
SELECT COUNT( DISTINCT software_platform ) FROM device	device
SELECT open_date , open_year FROM shop WHERE shop_name = 'Apple'	device
SELECT open_date , open_year FROM shop WHERE shop_name = 'Apple'	device
SELECT shop_name FROM shop ORDER BY open_year DESC LIMIT 1	device
SELECT shop_name FROM shop ORDER BY open_year DESC LIMIT 1	device
SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform	device
SELECT COUNT( * ) , software_platform FROM device GROUP BY software_platform	device
SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device
SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device
SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT location FROM shop WHERE open_year<2012 INTERSECT SELECT location FROM shop WHERE open_year<2008	device
SELECT location FROM shop WHERE open_year > 2012 INTERSECT SELECT location FROM shop WHERE open_year<2008	device
SELECT COUNT( * ) FROM band	music_2
SELECT COUNT( * ) FROM band	music_2
SELECT DISTINCT label FROM albums	music_2
SELECT DISTINCT label FROM albums	music_2
SELECT title FROM albums WHERE year = 2012	music_2
SELECT * FROM albums WHERE year = 2012	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT COUNT( DISTINCT label ) FROM albums	music_2
SELECT DISTINCT label FROM albums	music_2
SELECT label FROM albums GROUP BY label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT label FROM albums GROUP BY label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT title FROM songs WHERE title LIKE '%the%'	music_2
SELECT title FROM songs WHERE title LIKE '%the%'	music_2
SELECT DISTINCT instrument FROM instruments	music_2
SELECT DISTINCT instrument FROM instruments	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT COUNT( * ) FROM instruments WHERE instrument = 'drums'	music_2
SELECT COUNT( * ) FROM instruments WHERE instrument = 'drums'	music_2
SELECT type FROM vocals GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT type FROM vocals GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT DISTINCT type FROM vocals	music_2
SELECT DISTINCT type FROM vocals	music_2
SELECT title FROM albums WHERE year = 2010	music_2
SELECT * FROM albums WHERE year = 2010	music_2
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id , problem_id FROM problem_log ORDER BY problem_id DESC LIMIT 1	tracking_software_problems
SELECT MAX( problem_log_id ) , problem_id FROM problem_log	tracking_software_problems
SELECT problem_log_id , log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT DISTINCT problem_id , log_entry_date FROM problem_log JOIN problems ON problem_id = problem_id WHERE problem_log_id = 10	tracking_software_problems
SELECT problem_log_id , problem_description FROM problem_log JOIN problem_category_codes ON problem_category_code = problem_category_code JOIN problems ON problem_id = problem_id	tracking_software_problems
SELECT problem_log_id , log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name ASC	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name ASC	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id ASC	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id ASC	tracking_software_problems
SELECT COUNT( * ) FROM event	swimming
SELECT name FROM event ORDER BY year DESC	swimming
SELECT name FROM event ORDER BY year DESC LIMIT 1	swimming
SELECT COUNT( * ) FROM stadium	swimming
SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
SELECT name FROM stadium WHERE capacity<(SELECT AVG( capacity ) FROM stadium)	swimming
SELECT country FROM stadium GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	swimming
SELECT country FROM stadium GROUP BY country HAVING COUNT( * ) <= 3	swimming
SELECT country FROM stadium WHERE capacity > 60000 INTERSECT SELECT country FROM stadium WHERE capacity<50000	swimming
SELECT COUNT( * ) FROM stadium WHERE opening_year<2006	swimming
SELECT country , COUNT( * ) FROM stadium GROUP BY country	swimming
SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year > 2006	swimming
SELECT COUNT( * ) FROM stadium WHERE country != 'Russia'	swimming
SELECT name FROM swimmer ORDER BY meter_100 ASC	swimming
SELECT COUNT( DISTINCT nationality ) FROM swimmer	swimming
SELECT nationality FROM swimmer GROUP BY nationality HAVING COUNT( * ) > 1	swimming
SELECT meter_200 , meter_300 FROM swimmer WHERE nationality = 'Australia'	swimming
SELECT * FROM swimmer	swimming
SELECT AVG( capacity ) FROM stadium WHERE opening_year = 2005	swimming
SELECT COUNT( * ) FROM addresses WHERE country = 'USA'	customers_and_products_contacts
SELECT DISTINCT city FROM addresses	customers_and_products_contacts
SELECT state_province_county , COUNT( * ) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
SELECT product_type_code FROM products GROUP BY product_type_code HAVING COUNT( * ) >= 2	customers_and_products_contacts
SELECT customer_name , customer_phone , payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
SELECT MIN( product_price ) , MAX( product_price ) , AVG( product_price ) FROM products	customers_and_products_contacts
SELECT COUNT( * ) FROM products WHERE product_price > (SELECT AVG( product_price ) FROM products)	customers_and_products_contacts
SELECT product_type_code , product_name FROM products WHERE product_price > 1000 OR product_price<500	customers_and_products_contacts
SELECT COUNT( * ) FROM submission	workshop_paper
SELECT COUNT( * ) FROM submission	workshop_paper
SELECT author FROM submission ORDER BY scores ASC	workshop_paper
SELECT author FROM submission ORDER BY scores ASC	workshop_paper
SELECT author , college FROM submission	workshop_paper
SELECT author , college FROM submission	workshop_paper
SELECT author FROM submission WHERE college = 'Florida' OR college = 'Temple'	workshop_paper
SELECT author FROM submission WHERE college = 'Florida' OR college = 'Temple'	workshop_paper
SELECT AVG( scores ) FROM submission	workshop_paper
SELECT AVG( scores ) FROM submission	workshop_paper
SELECT author FROM submission ORDER BY scores DESC LIMIT 1	workshop_paper
SELECT author FROM submission ORDER BY scores DESC LIMIT 1	workshop_paper
SELECT college , COUNT( * ) FROM submission GROUP BY college	workshop_paper
SELECT college , COUNT( * ) FROM submission GROUP BY college	workshop_paper
SELECT college FROM submission GROUP BY college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
SELECT college FROM submission GROUP BY college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
SELECT college FROM submission WHERE scores > 90 INTERSECT SELECT college FROM submission WHERE scores<80	workshop_paper
SELECT college FROM submission WHERE scores > 90 INTERSECT SELECT college FROM submission WHERE scores<80	workshop_paper
SELECT date , venue FROM workshop ORDER BY venue ASC	workshop_paper
SELECT date , venue FROM workshop ORDER BY venue ASC	workshop_paper
SELECT author FROM submission EXCEPT SELECT author FROM submission	workshop_paper
SELECT author FROM submission EXCEPT SELECT author FROM submission	workshop_paper
SELECT name FROM country WHERE languages != 'German'	roller_coaster
SELECT city_id FROM city JOIN hosting_city ON city_id = host_city ORDER BY year DESC LIMIT 1	city_record
SELECT city FROM city JOIN hosting_city ON city_id = host_city ORDER BY year DESC LIMIT 1	city_record
SELECT match_id FROM match WHERE competition = '1994 FIFA World Cup qualification'	city_record
SELECT match_id FROM match WHERE competition = 'World Cup qualification'	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT regional_population FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city , gdp FROM city ORDER BY gdp ASC LIMIT 1	city_record
SELECT city , gdp FROM city ORDER BY gdp ASC LIMIT 1	city_record
SELECT city FROM city WHERE regional_population > 10000000	city_record
SELECT city FROM city WHERE regional_population > 10000000	city_record
SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record
SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record
SELECT COUNT( * ) , competition FROM match GROUP BY competition	city_record
SELECT competition , COUNT( * ) FROM match GROUP BY competition	city_record
SELECT venue FROM match ORDER BY date DESC	city_record
SELECT venue FROM match ORDER BY date DESC	city_record
SELECT gdp FROM city ORDER BY city DESC LIMIT 1	city_record
SELECT gdp FROM city ORDER BY regional_population DESC LIMIT 1	city_record
SELECT COUNT( * ) FROM driver	school_bus
SELECT name , home_city , age FROM driver	school_bus
SELECT party , COUNT( * ) FROM driver GROUP BY party	school_bus
SELECT name FROM driver ORDER BY age DESC	school_bus
SELECT DISTINCT home_city FROM driver	school_bus
SELECT home_city FROM driver GROUP BY home_city ORDER BY COUNT( * ) DESC LIMIT 1	school_bus
SELECT party FROM driver WHERE home_city = 'Hartford' INTERSECT SELECT party FROM driver WHERE age > 40	school_bus
SELECT home_city FROM driver WHERE age > 40 GROUP BY home_city HAVING COUNT( * ) >= 2	school_bus
SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age > 40	school_bus
SELECT type FROM school GROUP BY type HAVING COUNT( * ) = 2	school_bus
SELECT COUNT( * ) FROM driver WHERE home_city = 'Hartford' OR age<40	school_bus
SELECT name FROM driver WHERE home_city = 'Hartford' AND age<40	school_bus
SELECT name FROM airports WHERE city = 'Goroka'	flight_4
SELECT name FROM airports WHERE city = 'Goroka'	flight_4
SELECT name , country , elevation FROM airports WHERE city = 'New York'	flight_4
SELECT name , country , elevation FROM airports WHERE city = 'New York'	flight_4
SELECT COUNT( * ) FROM airlines	flight_4
SELECT COUNT( * ) FROM airlines	flight_4
SELECT COUNT( * ) FROM airlines WHERE country = 'Russia'	flight_4
SELECT COUNT( * ) FROM airlines WHERE country = 'Russia'	flight_4
SELECT MAX( elevation ) FROM airports WHERE country = 'Iceland'	flight_4
SELECT MAX( elevation ) FROM airports WHERE country = 'Iceland'	flight_4
SELECT name FROM airports WHERE country = 'Cuba' OR country = 'Argentina'	flight_4
SELECT name FROM airports WHERE country = 'Cuba' OR country = 'Argentina'	flight_4
SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4
SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4
SELECT name FROM airports WHERE elevation BETWEEN 50 and 50	flight_4
SELECT name FROM airports WHERE elevation BETWEEN 50 and 50	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT COUNT( * ) FROM airports WHERE name LIKE '%International%'	flight_4
SELECT COUNT( * ) FROM airports WHERE name LIKE '%Interanation%'	flight_4
SELECT COUNT( DISTINCT city ) FROM airports WHERE country = 'Greenland'	flight_4
SELECT SUM( city ) FROM airports WHERE country = 'Greenland'	flight_4
SELECT name , city , country FROM airports ORDER BY elevation ASC LIMIT 1	flight_4
SELECT name , city , country FROM airports ORDER BY elevation ASC LIMIT 1	flight_4
SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active = 'y' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active = 'y' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT country , COUNT( * ) FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
SELECT country , COUNT( * ) FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
SELECT country , COUNT( * ) FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
SELECT country , COUNT( * ) FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
SELECT city , COUNT( * ) FROM airports WHERE country = 'United States' GROUP BY city ORDER BY COUNT( * ) DESC	flight_4
SELECT city , COUNT( * ) FROM airports GROUP BY city ORDER BY COUNT( * ) DESC	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4
SELECT city FROM airports WHERE country = 'United States' GROUP BY city HAVING COUNT( * ) > 3	flight_4
SELECT COUNT( DISTINCT city ) FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4
SELECT city , COUNT( * ) FROM airports GROUP BY city HAVING COUNT( * ) > 1	flight_4
SELECT city , COUNT( * ) FROM airports GROUP BY city HAVING COUNT( * ) > 1	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 2	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 2	flight_4
SELECT AVG( elevation ) , country FROM airports GROUP BY country	flight_4
SELECT country , AVG( elevation ) FROM airports GROUP BY country	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) = 2	flight_4
SELECT city FROM airports GROUP BY city HAVING COUNT( * ) = 2	flight_4
SELECT COUNT( * ) FROM architect WHERE gender = 'f'	architecture
SELECT name , nationality , id FROM architect WHERE gender = 'male' ORDER BY name ASC	architecture
SELECT AVG( length_feet ) FROM bridge	architecture
SELECT name , built_year FROM mill WHERE type = 'Grondzeiler'	architecture
SELECT name FROM mill WHERE location != 'Donceel'	architecture
SELECT location FROM bridge WHERE name = 'Kolob Arch' OR name = 'Rainbow Bridge'	architecture
SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
SELECT type , COUNT( * ) FROM mill GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	architecture
SELECT COUNT( * ) FROM album	chinook_1
SELECT COUNT( * ) FROM album	chinook_1
SELECT name FROM genre	chinook_1
SELECT DISTINCT name FROM genre	chinook_1
SELECT * FROM customer WHERE state = 'NY'	chinook_1
SELECT * FROM customer WHERE state = 'NY'	chinook_1
SELECT firstname , lastname FROM employee WHERE city = 'Calgary'	chinook_1
SELECT firstname , lastname FROM employee WHERE city = 'Calgary'	chinook_1
SELECT DISTINCT billingcountry FROM invoice	chinook_1
SELECT DISTINCT billingcountry FROM invoice	chinook_1
SELECT name FROM artist WHERE name LIKE '%a%'	chinook_1
SELECT name FROM artist WHERE name LIKE '%a%'	chinook_1
SELECT albumid FROM track WHERE albumid LIKE '%you%'	chinook_1
SELECT title FROM track JOIN genre ON genreid = genreid WHERE name = 'you'	chinook_1
SELECT AVG( unitprice ) FROM invoiceline JOIN track ON trackid = trackid	chinook_1
SELECT AVG( unitprice ) FROM invoiceline JOIN track ON trackid = trackid	chinook_1
SELECT MAX( milliseconds ) FROM track WHERE name = '1'	chinook_1
SELECT MIN( milliseconds ) , MAX( milliseconds ) FROM track	chinook_1
SELECT firstname , lastname FROM customer WHERE email = 'br'	chinook_1
SELECT firstname , lastname FROM customer WHERE email = 'br'	chinook_1
SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1
SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1
SELECT COUNT( DISTINCT city ) FROM employee	chinook_1
SELECT COUNT( DISTINCT city ) FROM employee	chinook_1
SELECT phone FROM employee	chinook_1
SELECT phone FROM employee	chinook_1
SELECT title FROM album ORDER BY title ASC	chinook_1
SELECT title FROM album ORDER BY title ASC	chinook_1
SELECT birthdate FROM employee WHERE city = 'Edmonton'	chinook_1
SELECT birthdate FROM employee WHERE city = 'Edmonton'	chinook_1
SELECT DISTINCT unitprice FROM invoiceline JOIN track ON trackid = trackid	chinook_1
SELECT DISTINCT unitprice FROM invoiceline JOIN track ON trackid = trackid	chinook_1
SELECT COUNT( * ) FROM artist WHERE artistid NOT IN (SELECT artistid FROM album)	chinook_1
SELECT COUNT( * ) FROM artist WHERE artistid NOT IN (SELECT artistid FROM album)	chinook_1
SELECT booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY booking_status_code	apartment_rentals
SELECT booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY booking_status_code	apartment_rentals
SELECT apt_number FROM apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_number FROM apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_type_code , COUNT( * ) FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
SELECT apt_type_code , COUNT( * ) FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY AVG( room_count ) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY AVG( room_count ) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code , SUM( bathroom_count ) , SUM( bedroom_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
SELECT apt_type_code , SUM( bathroom_count ) , SUM( bedroom_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM apartments WHERE bathroom_count > 1 GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM apartments WHERE bathroom_count > bathroom_count GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code , MAX( room_count ) , MIN( room_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
SELECT apt_type_code , MAX( room_count ) , MIN( room_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
SELECT gender_code , COUNT( * ) FROM guests GROUP BY gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
SELECT gender_code , COUNT( * ) FROM guests GROUP BY gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
SELECT COUNT( * ) FROM apartments WHERE apt_id NOT IN (SELECT apt_id FROM apartment_facilities)	apartment_rentals
SELECT COUNT( * ) FROM apartments WHERE apt_id NOT IN (SELECT apt_id FROM apartment_facilities)	apartment_rentals
SELECT AVG( weight ) FROM player	soccer_1
SELECT MAX( height ) , MIN( height ) FROM player	soccer_1
SELECT id FROM player WHERE height >= 180 AND overall_rating > 85	soccer_1
SELECT id FROM player WHERE height BETWEEN 180 and 190	soccer_1
SELECT title FROM movie WHERE director = 'steven spielberg'	movie_1
SELECT title FROM movie WHERE director = 'Steven Spielberg'	movie_1
SELECT title FROM movie WHERE year > 2000 AND director = 'James Cameron'	movie_1
SELECT title FROM movie WHERE director = 'James Cameron' AND year > 2000	movie_1
SELECT COUNT( * ) FROM movie WHERE year<2000	movie_1
SELECT COUNT( * ) FROM movie WHERE year<2000	movie_1
SELECT director FROM movie WHERE title = 'Avatar'	movie_1
SELECT director FROM movie WHERE title = 'Avatar'	movie_1
SELECT COUNT( * ) FROM reviewer	movie_1
SELECT COUNT( * ) FROM reviewer	movie_1
SELECT rid FROM reviewer WHERE name LIKE '%Mike%'	movie_1
SELECT rid FROM reviewer WHERE name LIKE '%Mike%'	movie_1
SELECT rid FROM reviewer WHERE name = 'Daniel Lewis'	movie_1
SELECT rid FROM reviewer WHERE name = 'Daniel Lewis'	movie_1
SELECT COUNT( * ) FROM rating WHERE stars > 3	movie_1
SELECT COUNT( * ) FROM rating WHERE stars > 3	movie_1
SELECT MIN( stars ) , MAX( stars ) FROM rating	movie_1
SELECT MAX( stars ) , MIN( stars ) FROM rating	movie_1
SELECT title FROM movie WHERE mid NOT IN (SELECT mid FROM rating)	movie_1
SELECT title FROM movie WHERE mid NOT IN (SELECT mid FROM rating)	movie_1
SELECT title FROM movie ORDER BY year DESC LIMIT 1	movie_1
SELECT title FROM movie ORDER BY year DESC LIMIT 1	movie_1
SELECT title FROM movie WHERE year > (SELECT year FROM movie WHERE director = 'Steven Spielberg')	movie_1
SELECT title FROM movie WHERE director = (SELECT MAX( director ) FROM movie WHERE director = 'Steven Spielberg')	movie_1
SELECT name , title FROM movie JOIN reviewer ON mid = rid	movie_1
SELECT name , title FROM movie JOIN rating ON mid = mid JOIN reviewer ON rid = rid	movie_1
SELECT mid FROM rating GROUP BY mid HAVING COUNT( * ) >= 2	movie_1
SELECT mid FROM rating GROUP BY mid HAVING COUNT( * ) >= 3	movie_1
SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1
SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1
SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1
SELECT rid FROM reviewer EXCEPT SELECT rid FROM reviewer JOIN rating ON rid = rid GROUP BY rid HAVING COUNT( * ) >= 4	movie_1
SELECT title FROM movie WHERE year > 1980 OR director = 'James Cameron'	movie_1
SELECT title FROM movie WHERE year > 1980 OR director = 'James Cameron'	movie_1
SELECT COUNT( * ) FROM restaurant	restaurant_1
SELECT address FROM restaurant WHERE resname = 'Subway'	restaurant_1
SELECT rating FROM restaurant WHERE resname = 'Subway'	restaurant_1
SELECT age FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
SELECT sex FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
SELECT fname , lname FROM student WHERE major = 600	restaurant_1
SELECT city_code FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
SELECT COUNT( * ) FROM student WHERE advisor = 1121	restaurant_1
SELECT advisor , COUNT( * ) FROM student GROUP BY advisor ORDER BY COUNT( * ) DESC LIMIT 1	restaurant_1
SELECT major , COUNT( * ) FROM student GROUP BY major ORDER BY COUNT( * ) ASC LIMIT 1	restaurant_1
SELECT major , COUNT( * ) FROM student GROUP BY major HAVING COUNT( * ) BETWEEN 2 and 30	restaurant_1
SELECT fname , lname FROM student WHERE age > 18 AND major = 600	restaurant_1
SELECT fname , lname FROM student WHERE sex = 'f' AND age > 18 AND major != 600	restaurant_1
SELECT COUNT( * ) FROM courses	e_learning
SELECT COUNT( * ) FROM courses	e_learning
SELECT course_description FROM courses WHERE course_name = 'database'	e_learning
SELECT course_description FROM courses WHERE course_name = 'database'	e_learning
SELECT address_line_1 FROM course_authors_and_tutors WHERE personal_name = 'Cathrine'	e_learning
SELECT address_line_1 FROM course_authors_and_tutors WHERE personal_name = 'Cathrine'	e_learning
SELECT address_line_1 FROM course_authors_and_tutors	e_learning
SELECT DISTINCT address_line_1 FROM course_authors_and_tutors	e_learning
SELECT login_name , family_name FROM course_authors_and_tutors	e_learning
SELECT login_name , family_name FROM course_authors_and_tutors	e_learning
SELECT date_of_enrolment , date_of_completion FROM student_course_enrolment	e_learning
SELECT date_of_enrolment , date_of_completion FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT course_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT course_id ) FROM courses	e_learning
SELECT date_test_taken FROM student_tests_taken WHERE test_result = 'Pass'	e_learning
SELECT date_test_taken FROM student_tests_taken WHERE test_result = 'Pass'	e_learning
SELECT COUNT( * ) FROM student_tests_taken WHERE test_result = 'Fail'	e_learning
SELECT COUNT( * ) FROM student_tests_taken WHERE test_result = 'Fail'	e_learning
SELECT login_name FROM students WHERE family_name = 'Ward'	e_learning
SELECT login_name FROM students WHERE family_name = 'Ward'	e_learning
SELECT date_of_latest_logon FROM students WHERE family_name = 'Jaskolski' OR family_name = 'Langosh'	e_learning
SELECT date_of_latest_logon FROM students WHERE family_name = 'Jaskolski' OR family_name = 'Langosh'	e_learning
SELECT COUNT( * ) FROM students WHERE personal_name LIKE '%son%'	e_learning
SELECT COUNT( * ) FROM students WHERE personal_name LIKE '%son%'	e_learning
SELECT subject_name FROM subjects	e_learning
SELECT subject_name FROM subjects	e_learning
SELECT * FROM course_authors_and_tutors ORDER BY personal_name ASC	e_learning
SELECT * FROM course_authors_and_tutors ORDER BY personal_name ASC	e_learning
SELECT personal_name , family_name FROM students ORDER BY family_name ASC	e_learning
SELECT personal_name , family_name FROM students ORDER BY family_name ASC	e_learning
SELECT test_result , COUNT( * ) FROM student_tests_taken GROUP BY test_result ORDER BY COUNT( * ) DESC	e_learning
SELECT test_result , COUNT( * ) FROM student_tests_taken GROUP BY test_result	e_learning
SELECT COUNT( * ) FROM person WHERE gender = 'f'	network_2
SELECT COUNT( * ) FROM person WHERE gender = 'f'	network_2
SELECT AVG( age ) FROM person	network_2
SELECT AVG( age ) FROM person	network_2
SELECT COUNT( DISTINCT city ) FROM person	network_2
SELECT COUNT( DISTINCT city ) FROM person	network_2
SELECT COUNT( DISTINCT job ) FROM person	network_2
SELECT COUNT( DISTINCT job ) FROM person	network_2
SELECT age FROM person ORDER BY age DESC LIMIT 1	network_2
SELECT name FROM person ORDER BY age DESC LIMIT 1	network_2
SELECT age FROM person WHERE job = 'student' ORDER BY age DESC LIMIT 1	network_2
SELECT name FROM person ORDER BY age DESC LIMIT 1	network_2
SELECT MIN( age ) FROM person ORDER BY age ASC LIMIT 1	network_2
SELECT name FROM person WHERE gender = 'm' ORDER BY age ASC LIMIT 1	network_2
SELECT age FROM person WHERE job = 'doctor' AND name = 'Zach'	network_2
SELECT age FROM person WHERE job = 'doctor' AND name = 'Zach'	network_2
SELECT name FROM person WHERE age<30	network_2
SELECT name FROM person WHERE age<30	network_2
SELECT COUNT( * ) FROM person WHERE age > 30 AND job = 'engineer'	network_2
SELECT COUNT( * ) FROM person JOIN HOw many engineers are older than 30 ON job = HOw many engineers are older than 30 WHERE age > 30	network_2
SELECT AVG( age ) , gender FROM person GROUP BY gender	network_2
SELECT gender , AVG( age ) FROM person GROUP BY gender	network_2
SELECT AVG( age ) , job FROM person GROUP BY job	network_2
SELECT job , AVG( age ) FROM person GROUP BY job	network_2
SELECT AVG( age ) , job FROM person WHERE gender = 'm' GROUP BY job	network_2
SELECT AVG( age ) , job FROM person WHERE gender = 'm' GROUP BY job	network_2
SELECT MIN( age ) , job FROM person GROUP BY job	network_2
SELECT MIN( age ) , job FROM person GROUP BY job	network_2
SELECT COUNT( * ) , gender FROM person WHERE age<40 GROUP BY gender	network_2
SELECT gender , COUNT( * ) FROM person WHERE age<40 GROUP BY gender	network_2
SELECT name FROM person WHERE job = 'engineer' ORDER BY age ASC	network_2
SELECT name FROM person WHERE job = 'engineer' ORDER BY age ASC	network_2
SELECT COUNT( * ) FROM person WHERE age = 'engineers' ORDER BY age DESC LIMIT *	network_2
SELECT COUNT( * ) FROM personfriend, personfriend WHERE job = 'engineer'	network_2
SELECT name , job FROM person ORDER BY name ASC	network_2
SELECT name , job FROM person ORDER BY name ASC	network_2
SELECT name FROM person ORDER BY age DESC	network_2
SELECT name FROM person ORDER BY age DESC	network_2
SELECT name , age FROM person WHERE gender = 'm' ORDER BY age ASC	network_2
SELECT name , age FROM person WHERE gender = 'm' ORDER BY age ASC	network_2
SELECT COUNT( * ) FROM course	college_3
SELECT COUNT( * ) FROM course	college_3
SELECT COUNT( * ) FROM course WHERE credits > 2	college_3
SELECT COUNT( * ) FROM course WHERE credits > 2	college_3
SELECT cname FROM course WHERE credits = 1	college_3
SELECT cname FROM course WHERE credits = 1	college_3
SELECT cname FROM course WHERE days = 'MTW'	college_3
SELECT cname FROM course WHERE days = 'MTW'	college_3
SELECT COUNT( * ) FROM department WHERE division = 'AS'	college_3
SELECT COUNT( * ) FROM department WHERE division = 'AS'	college_3
SELECT dphone FROM department WHERE room = 268	college_3
SELECT dphone FROM department WHERE room = 268	college_3
SELECT COUNT( * ) FROM enrolled_in WHERE grade = 'B'	college_3
SELECT COUNT( * ) FROM enrolled_in WHERE grade = 'B'	college_3
SELECT lettergrade , MAX( gradepoint ) , MIN( gradepoint ) FROM gradeconversion GROUP BY lettergrade	college_3
SELECT MAX( gradepoint ) , MIN( gradepoint ) FROM gradeconversion	college_3
SELECT fname , lname FROM student WHERE fname LIKE '%a%'	college_3
SELECT DISTINCT lname FROM student WHERE fname LIKE '%a%'	college_3
SELECT fname , lname FROM faculty WHERE sex = 'M' AND building = 'NEB'	college_3
SELECT fname , lname FROM faculty WHERE sex = 'm' AND building = 'NEB'	college_3
SELECT room FROM faculty WHERE rank = 'professor' AND building = 'NEB'	college_3
SELECT room FROM faculty JOIN member_of ON facid = facid JOIN department ON dno = dno WHERE rank = 'professors' AND building = 'NEB'	college_3
SELECT dname FROM department WHERE building = 'Mergenthaler'	college_3
SELECT dname FROM department WHERE building = 'Mergenthaler'	college_3
SELECT * FROM course ORDER BY credits ASC	college_3
SELECT * FROM course ORDER BY credits ASC	college_3
SELECT cname FROM course ORDER BY credits ASC	college_3
SELECT cname FROM course ORDER BY credits ASC	college_3
SELECT fname FROM student ORDER BY age DESC	college_3
SELECT fname FROM student ORDER BY age DESC	college_3
SELECT lname FROM student WHERE sex = 'f' ORDER BY age DESC	college_3
SELECT lname FROM student WHERE sex = 'f' ORDER BY age DESC	college_3
SELECT lname FROM faculty WHERE building = 'Barton' ORDER BY lname ASC	college_3
SELECT lname FROM faculty WHERE building = 'Barton' ORDER BY lname ASC	college_3
SELECT fname FROM faculty WHERE rank = 'Professor' ORDER BY fname ASC	college_3
SELECT fname FROM faculty WHERE rank = 'professors,' ORDER BY fname ASC	college_3
SELECT cname FROM course WHERE credits = 3 OR hours = 4	college_3
SELECT cname FROM course WHERE credits = 3 OR hours = 4	college_3
SELECT dname FROM department WHERE division = 'AS' OR division = 'NEB'	college_3
SELECT dname FROM department WHERE division = 'AS' OR building = 'NEB'	college_3
SELECT fname FROM student WHERE stuid NOT IN (SELECT stuid FROM enrolled_in)	college_3
SELECT fname FROM student WHERE stuid NOT IN (SELECT stuid FROM enrolled_in)	college_3
SELECT COUNT( * ) FROM student	voter_2
SELECT COUNT( * ) FROM student	voter_2
SELECT COUNT( * ) FROM voting_record	voter_2
SELECT COUNT( * ) FROM voting_record	voter_2
SELECT COUNT( DISTINCT president_vote ) FROM voting_record	voter_2
SELECT COUNT( DISTINCT president_vote ) FROM voting_record	voter_2
SELECT MAX( age ) FROM student	voter_2
SELECT age FROM student ORDER BY age DESC LIMIT 1	voter_2
SELECT lname FROM student WHERE major = 50	voter_2
SELECT lname FROM student WHERE major = 50	voter_2
SELECT fname FROM student WHERE age > 22	voter_2
SELECT fname FROM student WHERE age > 22	voter_2
SELECT major FROM student WHERE sex = 'm'	voter_2
SELECT major FROM student WHERE sex = 'm'	voter_2
SELECT AVG( age ) FROM student WHERE sex = 'f'	voter_2
SELECT AVG( age ) FROM student WHERE sex = 'f'	voter_2
SELECT MAX( age ) , MIN( age ) FROM student WHERE major = 600	voter_2
SELECT MAX( age ) , MIN( age ) FROM student WHERE major = 600	voter_2
SELECT advisor FROM student WHERE city_code = 'BAL'	voter_2
SELECT advisor FROM student WHERE city_code = 'BAL'	voter_2
SELECT DISTINCT secretary_vote FROM voting_record WHERE election_cycle = 'fall'	voter_2
SELECT DISTINCT secretary_vote FROM voting_record WHERE election_cycle = 'fall'	voter_2
SELECT DISTINCT president_vote FROM voting_record JOIN 08/30/2015 ON election_cycle = 08/30/2015	voter_2
SELECT DISTINCT president_vote FROM voting_record JOIN 08/30/2015 ON election_cycle = 08/30/2015	voter_2
SELECT DISTINCT registration_date , election_cycle FROM voting_record	voter_2
SELECT DISTINCT registration_date , election_cycle FROM voting_record	voter_2
SELECT DISTINCT president_vote , vice_president_vote FROM voting_record	voter_2
SELECT DISTINCT president_vote , vice_president_vote FROM voting_record	voter_2
SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	voter_2
SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	voter_2
SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
SELECT major FROM student GROUP BY major HAVING COUNT( * )<3	voter_2
SELECT major FROM student GROUP BY major HAVING COUNT( * )<3	voter_2
SELECT election_cycle , COUNT( * ) FROM voting_record GROUP BY election_cycle	voter_2
SELECT COUNT( * ) , election_cycle FROM voting_record GROUP BY election_cycle	voter_2
SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT major FROM student WHERE sex = 'f' GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT major FROM student WHERE sex = 'f' GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT DISTINCT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
SELECT COUNT( * ) FROM hotels	cre_Theme_park
SELECT COUNT( * ) FROM hotels	cre_Theme_park
SELECT price_range FROM hotels	cre_Theme_park
SELECT DISTINCT price_range FROM hotels	cre_Theme_park
SELECT DISTINCT location_name FROM locations	cre_Theme_park
SELECT DISTINCT location_name FROM locations	cre_Theme_park
SELECT name , other_details FROM staff	cre_Theme_park
SELECT name , other_details FROM staff	cre_Theme_park
SELECT tourist_details FROM visitors	cre_Theme_park
SELECT COUNT( DISTINCT tourist_id ) FROM visitors	cre_Theme_park
SELECT price_range FROM hotels WHERE star_rating_code = 5	cre_Theme_park
SELECT price_range FROM hotels WHERE star_rating_code = 5	cre_Theme_park
SELECT AVG( price_range ) FROM hotels WHERE star_rating_code = 5 AND pets_allowed_yn = 'pets'	cre_Theme_park
SELECT AVG( price_range ) FROM hotels WHERE pets_allowed_yn = 5	cre_Theme_park
SELECT address FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
SELECT address FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
SELECT other_details FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
SELECT other_details FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
SELECT location_name FROM locations WHERE location_name LIKE '%film%'	cre_Theme_park
SELECT location_name FROM locations WHERE location_name LIKE '%film%'	cre_Theme_park
SELECT COUNT( DISTINCT name ) FROM photos	cre_Theme_park
SELECT COUNT( DISTINCT name ) FROM photos	cre_Theme_park
SELECT DISTINCT visit_date FROM visits	cre_Theme_park
SELECT DISTINCT visit_date FROM visits	cre_Theme_park
SELECT name FROM tourist_attractions WHERE how_to_get_there = 'bus'	cre_Theme_park
SELECT name FROM tourist_attractions WHERE how_to_get_there = 'bus'	cre_Theme_park
SELECT name , opening_hours FROM tourist_attractions WHERE how_to_get_there = 'bus' OR how_to_get_there = 'walk'	cre_Theme_park
SELECT name , opening_hours FROM tourist_attractions WHERE how_to_get_there = 'bus' OR how_to_get_there = 'walk'	cre_Theme_park
SELECT AVG( price_range ) , star_rating_code FROM hotels GROUP BY star_rating_code	cre_Theme_park
SELECT AVG( price_range ) , star_rating_code FROM hotels GROUP BY star_rating_code	cre_Theme_park
SELECT AVG( price_range ) , pets_allowed_yn FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT AVG( price_range ) , pets_allowed_yn FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park
SELECT hotel_id , star_rating_code FROM hotels ORDER BY price_range ASC	cre_Theme_park
SELECT hotel_id , star_rating_code FROM hotels ORDER BY price_range ASC	cre_Theme_park
SELECT other_hotel_details FROM hotels ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details FROM hotels ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details , star_rating_code FROM hotels ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT other_hotel_details , star_rating_code FROM hotels ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT how_to_get_there FROM tourist_attractions GROUP BY how_to_get_there ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT how_to_get_there FROM tourist_attractions GROUP BY how_to_get_there ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY how_to_get_there	cre_Theme_park
SELECT how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY how_to_get_there	cre_Theme_park
SELECT name FROM wine ORDER BY score DESC LIMIT 1	wine_1
SELECT name FROM wine ORDER BY score DESC LIMIT 1	wine_1
SELECT winery FROM wine ORDER BY score DESC LIMIT 1	wine_1
SELECT winery FROM wine ORDER BY score DESC LIMIT 1	wine_1
SELECT name FROM wine WHERE year = 2008	wine_1
SELECT name FROM wine WHERE year = 2008	wine_1
SELECT grape , appelation FROM wine	wine_1
SELECT grape , appelation FROM wine JOIN grapes ON grape = id	wine_1
SELECT name , score FROM wine	wine_1
SELECT name , score FROM wine	wine_1
SELECT area , county FROM appellations	wine_1
SELECT area , county FROM appellations	wine_1
SELECT price FROM wine WHERE year<2010	wine_1
SELECT price FROM wine WHERE year<2010	wine_1
SELECT DISTINCT name FROM wine WHERE score > 90	wine_1
SELECT name FROM wine WHERE score > 90	wine_1
SELECT COUNT( * ) FROM wine WHERE winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM wine WHERE winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM appellations WHERE county = 'Napa Country'	wine_1
SELECT COUNT( * ) FROM appellations WHERE county = 'Napa County'	wine_1
SELECT grape , COUNT( * ) FROM wine GROUP BY grape	wine_1
SELECT grape , COUNT( * ) FROM wine JOIN grapes ON grape = id GROUP BY grape	wine_1
SELECT AVG( price ) , year FROM wine GROUP BY year	wine_1
SELECT name , AVG( price ) FROM wine GROUP BY name	wine_1
SELECT DISTINCT name FROM wine WHERE price > (SELECT MIN( price ) FROM wine WHERE winery = 'John Anthony')	wine_1
SELECT DISTINCT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE winery = 'John Anthony')	wine_1
SELECT DISTINCT name FROM wine ORDER BY name ASC	wine_1
SELECT name FROM wine ORDER BY name ASC	wine_1
SELECT DISTINCT name FROM wine ORDER BY price ASC	wine_1
SELECT name FROM wine ORDER BY price ASC	wine_1
SELECT DISTINCT name FROM wine WHERE year<2000 OR year > 2010	wine_1
SELECT DISTINCT name FROM wine WHERE year<2000 OR year > 2010	wine_1
SELECT DISTINCT winery FROM wine WHERE price BETWEEN 50 and 100	wine_1
SELECT DISTINCT winery FROM wine WHERE price BETWEEN 50 and 100	wine_1
SELECT AVG( price ) , AVG( cases ) FROM wine WHERE year = 2009 AND grape = 'Zinfandel'	wine_1
SELECT AVG( price ) , AVG( cases ) FROM wine WHERE grape = 'Zinfandel' AND year = 2009	wine_1
SELECT MAX( price ) , score FROM wine WHERE appelation = 'St. Helena'	wine_1
SELECT MAX( price ) , score FROM wine WHERE appelation = 'St. Helena'	wine_1
SELECT MAX( price ) , score , year FROM wine GROUP BY year	wine_1
SELECT MAX( price ) , score , year FROM wine GROUP BY year	wine_1
SELECT AVG( price ) , AVG( score ) , appelation FROM wine GROUP BY appelation	wine_1
SELECT AVG( price ) , AVG( score ) , appelation FROM wine GROUP BY appelation	wine_1
SELECT winery FROM wine GROUP BY winery HAVING COUNT( * ) >= 4	wine_1
SELECT winery FROM wine GROUP BY winery HAVING COUNT( * ) >= 4	wine_1
SELECT name FROM wine WHERE year<(SELECT MIN( year ) FROM wine WHERE winery = 'Brander')	wine_1
SELECT name FROM wine WHERE name != (SELECT name FROM wine WHERE winery = 'Brander')	wine_1
SELECT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE year = 2006)	wine_1
SELECT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE year = 2006)	wine_1
SELECT winery FROM wine JOIN grapes ON grape = grape WHERE color = 'white' GROUP BY winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1
SELECT winery FROM wine JOIN grapes ON grape = grape WHERE color = 'white' GROUP BY winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1
SELECT grape , winery FROM wine WHERE price > 100 ORDER BY year ASC	wine_1
SELECT grape , winery FROM wine WHERE price > 100 ORDER BY year ASC	wine_1
SELECT grape , appelation , name FROM wine WHERE score > 93 ORDER BY name ASC	wine_1
SELECT grape , appelation , name FROM wine WHERE score > 93 ORDER BY name ASC	wine_1
SELECT appelation FROM wine WHERE year > 2008 AND area != 'Central Coast'	wine_1
SELECT appelation FROM wine WHERE year > 2008 AND area != 'Central Coast'	wine_1
SELECT vehicle_id FROM vehicles	driving_school
SELECT vehicle_id FROM vehicles	driving_school
SELECT COUNT( * ) FROM vehicles	driving_school
SELECT COUNT( * ) FROM vehicles	driving_school
SELECT vehicle_details FROM vehicles WHERE vehicle_id = 1	driving_school
SELECT vehicle_details FROM vehicles WHERE vehicle_id = 1	driving_school
SELECT first_name , middle_name , last_name FROM staff	driving_school
SELECT first_name , middle_name , last_name FROM staff	driving_school
SELECT date_of_birth FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_of_birth FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school
SELECT date_joined_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_joined_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school
SELECT date_left_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT date_left_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school
SELECT COUNT( * ) FROM staff WHERE first_name = 'Ludie'	driving_school
SELECT COUNT( * ) FROM staff WHERE first_name = 'Ludie'	driving_school
SELECT nickname FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
SELECT nickname FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school
SELECT COUNT( * ) FROM staff	driving_school
SELECT COUNT( * ) FROM staff	driving_school
SELECT first_name , last_name FROM customers	driving_school
SELECT first_name , last_name FROM customers	driving_school
SELECT email_address , date_of_birth FROM customers WHERE first_name = 'Carole'	driving_school
SELECT email_address , date_of_birth FROM customers WHERE first_name = 'Carole'	driving_school
SELECT phone_number , email_address FROM customers WHERE amount_outstanding > 2000	driving_school
SELECT phone_number , email_address FROM customers WHERE amount_outstanding > 2000	driving_school
SELECT customer_status_code , cell_mobile_phone_number , email_address FROM customers WHERE last_name = 'Kohler' OR first_name = 'Marina'	driving_school
SELECT customer_status_code , phone_number , email_address FROM customers WHERE first_name = 'Kohler' OR first_name = 'Marina'	driving_school
SELECT date_of_birth FROM customers WHERE customer_status_code = 'Good Customer'	driving_school
SELECT date_of_birth FROM customers WHERE customer_status_code = 'Good Customer'	driving_school
SELECT date_became_customer FROM customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
SELECT date_became_customer FROM customers WHERE date_became_customer<(SELECT date_became_customer FROM customers WHERE first_name = 'Bernhard')	driving_school
SELECT COUNT( * ) FROM customers	driving_school
SELECT COUNT( * ) FROM customers	driving_school
SELECT customer_status_code , COUNT( * ) FROM customers GROUP BY customer_status_code	driving_school
SELECT customer_status_code , COUNT( * ) FROM customers GROUP BY customer_status_code	driving_school
SELECT customer_status_code FROM customers GROUP BY customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
SELECT customer_status_code FROM customers GROUP BY customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_schoolSELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school
SELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school
SELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school
SELECT first_name , last_name FROM customers WHERE amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT first_name , last_name FROM customers WHERE amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT payment_method_code , COUNT( * ) FROM customer_payments GROUP BY payment_method_code	driving_school
SELECT payment_method_code , COUNT( * ) FROM customer_payments GROUP BY payment_method_code	driving_school
SELECT COUNT( * ) FROM lessons WHERE lesson_status_code = 'cancelled'	driving_school
SELECT COUNT( * ) FROM lessons WHERE lesson_status_code = 'cancelled'	driving_school
SELECT last_name FROM customers UNION SELECT last_name FROM customers JOIN staff ON customer_id = last_name	driving_school
SELECT last_name FROM customers UNION SELECT last_name FROM customers JOIN staff ON customer_id = last_name	driving_school




