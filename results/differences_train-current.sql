Line 9:
golden truth: SELECT count(DISTINCT temporary_acting) FROM management	department_management
prediction: SELECT COUNT( * ) FROM management WHERE temporary_acting = '1'	department_management


Line 12:
golden truth: SELECT student_id FROM student_course_attendance	student_assessment
prediction: SELECT DISTINCT student_id FROM student_course_attendance	student_assessment


Line 34:
golden truth: SELECT count(*) FROM follows	twitter_1
prediction: SELECT COUNT( * ) , f1 FROM follows GROUP BY f1	twitter_1


Line 35:
golden truth: SELECT count(*) FROM follows GROUP BY f1	twitter_1
prediction: SELECT COUNT( * ) , f1 FROM follows GROUP BY f1	twitter_1


Line 44:
golden truth: SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
prediction: SELECT aid FROM aircraft JOIN flight ON aid = aid WHERE distance > 1000	flight_1


Line 45:
golden truth: SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
prediction: SELECT DISTINCT aid FROM aircraft JOIN flight ON aid = aid WHERE distance > 1000	flight_1


Line 47:
golden truth: SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000	flight_1
prediction: SELECT COUNT( * ) FROM aircraft JOIN flight ON aid = aid WHERE distance BETWEEN 1000 and 5000	flight_1


Line 48:
golden truth: SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
prediction: SELECT name , distance FROM aircraft JOIN flight ON aid = aid WHERE aid = 12	flight_1


Line 49:
golden truth: SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
prediction: SELECT name , distance FROM aircraft JOIN flight ON aid = aid WHERE aid = 12	flight_1


Line 50:
golden truth: SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
prediction: SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft JOIN flight ON aid = aid	flight_1


Line 51:
golden truth: SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
prediction: SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft JOIN flight ON aid = aid	flight_1


Line 52:
golden truth: SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
prediction: SELECT aid , name FROM aircraft JOIN flight ON aid = aid ORDER BY distance DESC LIMIT 1	flight_1


Line 53:
golden truth: SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
prediction: SELECT aid , name FROM aircraft JOIN flight ON aid = aid ORDER BY distance DESC LIMIT 1	flight_1


Line 54:
golden truth: SELECT name FROM Aircraft ORDER BY distance LIMIT 3	flight_1
prediction: SELECT name FROM aircraft JOIN flight ON aid = aid ORDER BY distance ASC LIMIT 3	flight_1


Line 56:
golden truth: SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
prediction: SELECT name FROM aircraft JOIN flight ON aid = aid WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1


Line 57:
golden truth: SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
prediction: SELECT name FROM aircraft JOIN flight ON aid = aid WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1


Line 62:
golden truth: SELECT eid FROM Employee WHERE salary  >  100000	flight_1
prediction: SELECT eid FROM employee WHERE salary >= 100000	flight_1


Line 63:
golden truth: SELECT eid FROM Employee WHERE salary  >  100000	flight_1
prediction: SELECT eid FROM employee WHERE salary >= 100000	flight_1


Line 76:
golden truth: SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
prediction: SELECT SUM( salary ) FROM employee WHERE name = 'Mark' AND name = 'Young'	flight_1


Line 77:
golden truth: SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
prediction: SELECT eid , salary FROM employee WHERE name = 'Mark'	flight_1


Line 80:
golden truth: SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
prediction: SELECT flno , origin , destination FROM flight ORDER BY destination ASC	flight_1


Line 81:
golden truth: SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
prediction: SELECT flno , origin , destination FROM flight ORDER BY departure_date ASC	flight_1


Line 82:
golden truth: SELECT flno FROM Flight WHERE origin  =  "Los Angeles"	flight_1
prediction: SELECT flno FROM flight WHERE destination = 'Los Angeles'	flight_1


Line 87:
golden truth: SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
prediction: SELECT departure_date , arrival_date FROM flight WHERE destination = 'LA' AND destination = 'Honolulu'	flight_1


Line 91:
golden truth: SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
prediction: SELECT AVG( price ) FROM flight WHERE origin = 'LA' AND destination = 'Honolulu'	flight_1


Line 97:
golden truth: SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3	flight_1
prediction: SELECT flno FROM flight ORDER BY distance ASC LIMIT 1	flight_1


Line 98:
golden truth: SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
prediction: SELECT AVG( price ) , AVG( distance ) FROM flight WHERE origin = 'Los Angeles'	flight_1


Line 99:
golden truth: SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
prediction: SELECT AVG( distance ) , AVG( price ) FROM flight WHERE origin = 'LA'	flight_1


Line 106:
golden truth: SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
prediction: SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1


Line 107:
golden truth: SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
prediction: SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1


Line 113:
golden truth: SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5 	store_1
prediction: SELECT billing_country , COUNT( * ) FROM invoices GROUP BY billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1


Line 114:
golden truth: SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8	store_1
prediction: SELECT billing_country , total FROM invoices ORDER BY total DESC LIMIT 8	store_1


Line 116:
golden truth: SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10	store_1
prediction: SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country	store_1


Line 117:
golden truth: SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10	store_1
prediction: SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country ORDER BY AVG( total ) ASC	store_1


Line 122:
golden truth: SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title	store_1
prediction: SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1


Line 123:
golden truth: SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title	store_1
prediction: SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1


Line 124:
golden truth: SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
prediction: SELECT SUM( total ) FROM invoices JOIN customers ON customer_id = id WHERE billing_city = 'invoice from Chicago' AND city = 'Chicago,'	store_1


Line 125:
golden truth: SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
prediction: SELECT SUM( total ) FROM invoices WHERE billing_city = 'Chicago, Illinois'	store_1


Line 126:
golden truth: SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
prediction: SELECT COUNT( * ) FROM invoices JOIN customers ON customer_id = id WHERE billing_city = 'Chicago' AND city = 'Chicago,'	store_1


Line 127:
golden truth: SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL"	store_1
prediction: customers , customers	store_1


Line 128:
golden truth: SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state	store_1
prediction: SELECT COUNT( * ) FROM invoices JOIN customers ON customer_id = id WHERE state = 'US,'	store_1


Line 129:
golden truth: SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state	store_1
prediction: SELECT billing_state , COUNT( * ) FROM invoices GROUP BY billing_state	store_1


Line 130:
golden truth: SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
prediction: SELECT billing_state FROM invoices JOIN customers ON customer_id = id WHERE state = 'US' ORDER BY billing_state DESC LIMIT 1	store_1


Line 131:
golden truth: SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1	store_1
prediction: SELECT state FROM invoices JOIN customers ON customer_id = id GROUP BY state ORDER BY COUNT( * ) DESC LIMIT 1	store_1


Line 132:
golden truth: SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA"	store_1
prediction: SELECT SUM( total ) FROM invoices JOIN customers ON customer_id = id WHERE name = 'California'	store_1


Line 133:
golden truth: SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA"	store_1
prediction: SELECT COUNT( * ) FROM invoices WHERE billing_state = 'CA'	store_1


Line 134:
golden truth: SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins"	store_1
prediction: SELECT company FROM customers WHERE first_name = 'Eduardo Martins'	store_1


Line 135:
golden truth: SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins"	store_1
prediction: SELECT company FROM customers WHERE first_name = 'Eduardo Martins'	store_1


Line 136:
golden truth: SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber"	store_1
prediction: SELECT email , phone FROM employees JOIN customers ON id = support_rep_id WHERE first_name = 'A' AND name = 'Gruber'	store_1


Line 141:
golden truth: SELECT count(*) FROM customers WHERE state = "CA"	store_1
prediction: SELECT COUNT( * ) FROM customers WHERE state = 'California'	store_1


Line 142:
golden truth: SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida"	store_1
prediction: SELECT country FROM employees JOIN employees ON id = address JOIN sqlite_sequence ON country = name WHERE first_name = 'Roberto' AND seq = 'Almeida'	store_1


Line 143:
golden truth: SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida"	store_1
prediction: SELECT country FROM customers JOIN sqlite_sequence ON id = name WHERE first_name = 'Roberto' AND seq = 'Almeida'	store_1


Line 147:
golden truth: SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
prediction: SELECT address FROM employees JOIN employees ON id = address WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1


Line 151:
golden truth: SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards"	store_1
prediction: SELECT phone FROM employees JOIN customers ON id = support_rep_id WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1


Line 152:
golden truth: SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
prediction: SELECT first_name , last_name FROM employees ORDER BY birth_date ASC LIMIT 1	store_1


Line 153:
golden truth: SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
prediction: SELECT first_name , last_name FROM employees ORDER BY birth_date ASC LIMIT 1	store_1


Line 154:
golden truth: SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
prediction: SELECT first_name , last_name FROM employees ORDER BY hire_date DESC LIMIT 10	store_1


Line 155:
golden truth: SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
prediction: SELECT first_name , last_name FROM employees	store_1


Line 156:
golden truth: SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
prediction: SELECT city , COUNT( * ) FROM employees WHERE title = 'IT Staff' GROUP BY city	store_1


Line 157:
golden truth: SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
prediction: SELECT city , COUNT( * ) FROM employees WHERE title = 'IT' GROUP BY city	store_1


Line 162:
golden truth: SELECT composer FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT composer FROM tracks JOIN albums ON album_id = id WHERE name = 'Fast As a Shark'	store_1


Line 163:
golden truth: SELECT composer FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT seq FROM albums JOIN tracks ON id = album_id JOIN sqlite_sequence ON composer = name WHERE title = 'Fast As a Shark'	store_1


Line 164:
golden truth: SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT COUNT( * ) FROM albums WHERE title = 'Fast As a Shark'	store_1


Line 165:
golden truth: SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT SUM( milliseconds ) FROM albums JOIN tracks ON id = album_id WHERE name = 'Fast As a Shark'	store_1


Line 166:
golden truth: SELECT unit_price FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT title FROM tracks JOIN albums ON album_id = id WHERE title = 'Fast As a Shark'	store_1


Line 167:
golden truth: SELECT unit_price FROM tracks WHERE name = "Fast As a Shark"	store_1
prediction: SELECT SUM( unit_price ) FROM tracks JOIN albums ON album_id = id WHERE title = 'Fast As a Shark'	store_1


Line 168:
golden truth: SELECT count(*) FROM enzyme	medicine_enzyme_interaction
prediction: SELECT COUNT( DISTINCT name ) FROM enzyme	medicine_enzyme_interaction


Line 174:
golden truth: SELECT max(OMIM) FROM enzyme	medicine_enzyme_interaction
prediction: SELECT MAX( omim ) FROM medicine_enzyme_interaction, medicine_enzyme_interaction, enzyme WHERE omim = 'OMIM'	medicine_enzyme_interaction


Line 181:
golden truth: SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes'	medicine_enzyme_interaction
prediction: SELECT name , trade_name FROM medicine	medicine_enzyme_interaction


Line 183:
golden truth: SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
prediction: SELECT COUNT( * ) FROM medicine WHERE fda_approved != 1	medicine_enzyme_interaction


Line 188:
golden truth: SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
prediction: SELECT COUNT( * ) , trade_name FROM medicine GROUP BY trade_name	medicine_enzyme_interaction


Line 193:
golden truth: SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation"	phone_1
prediction: SELECT COUNT( DISTINCT hardware_model_name ) FROM phone WHERE company_name = 'Nokia Corporation'	phone_1


Line 201:
golden truth: SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
prediction: SELECT COUNT( * ) FROM chip_model WHERE wifi != 'wifi'	phone_1


Line 202:
golden truth: SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
prediction: SELECT COUNT( * ) FROM chip_model WHERE wifi != 1	phone_1


Line 205:
golden truth: SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full'	phone_1
prediction: SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE accreditation_type = 'full accreditation'	phone_1


Line 209:
golden truth: SELECT Height ,  Weight FROM people ORDER BY Height DESC	body_builder
prediction: SELECT weight , height FROM people ORDER BY height DESC	body_builder


Line 211:
golden truth: SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
prediction: SELECT building FROM classroom WHERE capacity > 50	college_2


Line 213:
golden truth: SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
prediction: SELECT COUNT( * ) FROM classroom WHERE building NOT IN (SELECT building FROM section)	college_2


Line 217:
golden truth: SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
prediction: SELECT room_number , building FROM classroom WHERE capacity BETWEEN 50 and 100	college_2


Line 218:
golden truth: SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
prediction: SELECT room_number , building FROM classroom WHERE capacity BETWEEN 50 and 100	college_2


Line 223:
golden truth: SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
prediction: SELECT SUM( room_number ) FROM classroom JOIN section ON building = building	college_2


Line 224:
golden truth: SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
prediction: SELECT COUNT( * ) FROM classroom JOIN section ON room_number = building WHERE building = 'Lamberton'	college_2


Line 229:
golden truth: SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
prediction: SELECT COUNT( * ) FROM course WHERE dept_name = 'Physics'	college_2


Line 230:
golden truth: SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
prediction: SELECT COUNT( * ) FROM course WHERE dept_name = 'Physics'	college_2


Line 234:
golden truth: SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
prediction: SELECT SUM( budget ) FROM department WHERE dept_name = 'Marketing'	college_2


Line 236:
golden truth: SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
prediction: SELECT dept_name FROM instructor WHERE name = 'Soisalon'	college_2


Line 237:
golden truth: SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
prediction: SELECT COUNT( * ) FROM classroom, section WHERE building = 'Lamberton' AND capacity<50	college_2


Line 238:
golden truth: SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
prediction: SELECT COUNT( * ) FROM classroom JOIN section ON room_number = room_number WHERE capacity<50	college_2


Line 240:
golden truth: SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
prediction: SELECT AVG( budget ) FROM department	college_2


Line 247:
golden truth: SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
prediction: SELECT name FROM takes JOIN student ON id = id WHERE year = 2009 INTERSECT SELECT name FROM takes JOIN student ON id = id WHERE year = 2010	college_2


Line 248:
golden truth: SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
prediction: SELECT name FROM takes JOIN student ON id = id WHERE year = 2009 OR year = 2010	college_2


Line 249:
golden truth: SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
prediction: SELECT dept_name FROM department JOIN course ON dept_name = dept_name GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2


Line 250:
golden truth: SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
prediction: SELECT dept_name FROM department JOIN course ON dept_name = dept_name GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2


Line 251:
golden truth: SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
prediction: SELECT dept_name FROM department JOIN student ON dept_name = dept_name ORDER BY tot_cred DESC LIMIT 1	college_2


Line 252:
golden truth: SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
prediction: SELECT dept_name FROM department JOIN student ON dept_name = dept_name ORDER BY tot_cred DESC LIMIT 1	college_2


Line 253:
golden truth: SELECT title FROM course ORDER BY title ,  credits	college_2
prediction: SELECT title , credits FROM course ORDER BY credits ASC	college_2


Line 254:
golden truth: SELECT title FROM course ORDER BY title ,  credits	college_2
prediction: SELECT title , credits FROM course ORDER BY credits ASC	college_2


Line 266:
golden truth: SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
prediction: SELECT COUNT( * ) , building FROM classroom JOIN section ON building = building WHERE capacity > 50 GROUP BY building	college_2


Line 268:
golden truth: SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
prediction: SELECT MAX( capacity ) , MIN( capacity ) , building FROM classroom GROUP BY building	college_2


Line 272:
golden truth: SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
prediction: SELECT SUM( tot_cred ) , dept_name FROM student GROUP BY dept_name	college_2


Line 273:
golden truth: SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
prediction: SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG( salary ) > (SELECT AVG( salary ) FROM instructor)	college_2


Line 274:
golden truth: SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
prediction: SELECT AVG( salary ) FROM instructor	college_2


Line 278:
golden truth: SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
prediction: SELECT dept_name , COUNT( * ) FROM student GROUP BY dept_name	college_2


Line 279:
golden truth: SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
prediction: SELECT dept_name FROM instructor WHERE salary > (SELECT AVG( salary ) FROM instructor) GROUP BY dept_name ORDER BY AVG( salary ) DESC LIMIT 1	college_2


Line 281:
golden truth: SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
prediction: SELECT AVG( salary ) FROM instructor	college_2


Line 283:
golden truth: SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
prediction: SELECT name FROM instructor WHERE dept_name = 'computer science'	college_2


Line 284:
golden truth: SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
prediction: SELECT name FROM instructor WHERE dept_name = 'Comp. Sci'	college_2


Line 285:
golden truth: SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
prediction: SELECT name FROM instructor WHERE dept_name = 'Comp. Sci' AND salary > 80000	college_2


Line 286:
golden truth: SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
prediction: SELECT name FROM instructor WHERE dept_name = 'Comp. Sci' AND salary > 80000	college_2


Line 289:
golden truth: SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
prediction: SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2


Line 290:
golden truth: SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
prediction: SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2


Line 291:
golden truth: SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
prediction: SELECT MAX( salary ) FROM instructor	college_2


Line 292:
golden truth: SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
prediction: SELECT MIN( salary ) FROM instructor	college_2


Line 293:
golden truth: SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
prediction: SELECT COUNT( * ) FROM teaches JOIN section ON course_id = course_id WHERE semester = 'Spring 2010'	college_2


Line 294:
golden truth: SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
prediction: section , section	college_2


Line 295:
golden truth: SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
prediction: SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2


Line 296:
golden truth: SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
prediction: SELECT dept_name FROM department JOIN instructor ON dept_name = dept_name GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2


Line 299:
golden truth: SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
prediction: SELECT name FROM instructor WHERE salary > (SELECT salary FROM instructor WHERE dept_name = 'Biology')	college_2


Line 300:
golden truth: SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
prediction: SELECT name FROM instructor WHERE salary > (SELECT salary FROM instructor WHERE dept_name = 'Biology')	college_2


Line 307:
golden truth: SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
prediction: SELECT DISTINCT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims


Line 318:
golden truth: SELECT count(*) FROM people WHERE is_male  =  'F' AND age  >  30	wedding
prediction: SELECT COUNT( * ) FROM people JOIN wedding ON people_id = female_id WHERE age > 30	wedding


Line 319:
golden truth: SELECT country FROM people WHERE age  <  25 INTERSECT SELECT country FROM people WHERE age  >  30	wedding
prediction: SELECT country FROM people WHERE age > 30 INTERSECT SELECT country FROM people WHERE age<25	wedding


Line 324:
golden truth: SELECT COUNT (DISTINCT church_id) FROM wedding WHERE YEAR  =  2016	wedding
prediction: SELECT COUNT( * ) FROM wedding WHERE year = 2016	wedding


Line 328:
golden truth: SELECT count(*) FROM useracct	epinions_1
prediction: SELECT COUNT( * ) FROM useracct JOIN * ON u_id = * GROUP BY * ORDER BY COUNT( * ) DESC LIMIT *	epinions_1


Line 330:
golden truth: SELECT min(rank) FROM review	epinions_1
prediction: SELECT rank FROM review ORDER BY rank DESC LIMIT 1	epinions_1


Line 362:
golden truth: SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC	school_finance
prediction: SELECT donator_name , amount FROM endowment ORDER BY amount DESC	school_finance


Line 365:
golden truth: SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
prediction: SELECT COUNT( * ) FROM budget WHERE year BETWEEN 3000 and 2001	school_finance


Line 366:
golden truth: SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
prediction: SELECT COUNT( * ) FROM budget WHERE year BETWEEN 2001 and 3000	school_finance


Line 367:
golden truth: SELECT DISTINCT donator_name FROM endowment	school_finance
prediction: SELECT donator_name FROM endowment	school_finance


Line 369:
golden truth: SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1)	school_finance
prediction: SELECT COUNT( * ) FROM endowment WHERE amount<5 HAVING COUNT( * ) > 1	school_finance


Line 390:
golden truth: SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
prediction: SELECT location FROM cinema GROUP BY location HAVING COUNT( * ) > 1	cinema


Line 391:
golden truth: SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
prediction: SELECT location FROM cinema GROUP BY location HAVING COUNT( * ) > 1	cinema


Line 425:
golden truth: SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
prediction: SELECT starting_year FROM technician WHERE team = 'CLE' OR team = 'CWS'	machine_repair


Line 432:
golden truth: SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
prediction: SELECT country FROM perpetrator GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator


Line 433:
golden truth: SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2	perpetrator
prediction: SELECT country FROM perpetrator GROUP BY country HAVING COUNT( * ) >= 2	perpetrator


Line 436:
golden truth: SELECT max(YEAR) FROM perpetrator	perpetrator
prediction: SELECT year FROM perpetrator GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator


Line 437:
golden truth: SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern'	inn_1
prediction: SELECT roomname FROM rooms JOIN two ON beds = two WHERE baseprice<160	inn_1


Line 438:
golden truth: SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern'	inn_1
prediction: SELECT roomname FROM rooms JOIN two ON beds = two WHERE baseprice<160	inn_1


Line 441:
golden truth: SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
prediction: SELECT SUM( kids ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1


Line 442:
golden truth: SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
prediction: SELECT SUM( kids ) FROM reservations WHERE firstname = 'ROY SWEAZ'	inn_1


Line 443:
golden truth: SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
prediction: SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1


Line 444:
golden truth: SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY"	inn_1
prediction: SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY SWEAZY'	inn_1


Line 445:
golden truth: SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG"	inn_1
prediction: SELECT SUM( adults ) FROM reservations WHERE checkin = 'CONRAD SELBIG'	inn_1


Line 446:
golden truth: SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG"	inn_1
prediction: SELECT SUM( adults ) FROM reservations WHERE firstname = 'CONRAD SELBIG' AND checkin = 2010	inn_1


Line 447:
golden truth: SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL"	inn_1
prediction: SELECT SUM( kids ) FROM reservations JOIN rooms ON room = roomid WHERE firstname = 'DAMIEN TRACHSEL' AND checkin = 2010	inn_1


Line 448:
golden truth: SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL"	inn_1
prediction: SELECT kids FROM reservations WHERE firstname = 'DAMIEN TRACHSEL' AND checkin = 2010	inn_1


Line 455:
golden truth: SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance"	inn_1
prediction: SELECT decor FROM rooms WHERE roomname = 'Recluse' AND roomname = 'defiance'	inn_1


Line 456:
golden truth: SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance"	inn_1
prediction: SELECT decor FROM rooms WHERE roomname = 'defiance'	inn_1


Line 459:
golden truth: SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern'	inn_1
prediction: SELECT COUNT( * ) FROM rooms WHERE decor = 'modern'	inn_1


Line 460:
golden truth: SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern'	inn_1
prediction: SELECT decor FROM rooms GROUP BY decor ORDER BY COUNT( * ) ASC LIMIT 1	inn_1


Line 470:
golden truth: SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1	inn_1
prediction: SELECT roomname FROM rooms ORDER BY baseprice DESC LIMIT 1	inn_1


Line 471:
golden truth: SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional"	inn_1
prediction: SELECT bedtype , roomname FROM rooms WHERE decor = 'traditional'	inn_1


Line 472:
golden truth: SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional"	inn_1
prediction: SELECT bedtype , roomname FROM rooms WHERE decor = 'traditional'	inn_1


Line 473:
golden truth: SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor	inn_1
prediction: SELECT COUNT( * ) , decor FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1


Line 474:
golden truth: SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor	inn_1
prediction: SELECT COUNT( * ) , decor FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1


Line 475:
golden truth: SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor	inn_1
prediction: SELECT AVG( baseprice ) , MIN( baseprice ) , decor FROM rooms GROUP BY decor	inn_1


Line 476:
golden truth: SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor	inn_1
prediction: SELECT AVG( baseprice ) , MIN( baseprice ) , decor FROM rooms GROUP BY decor	inn_1


Line 479:
golden truth: SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor	inn_1
prediction: SELECT COUNT( * ) , decor FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1


Line 480:
golden truth: SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor	inn_1
prediction: SELECT COUNT( * ) , decor FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1


Line 482:
golden truth: SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType	inn_1
prediction: SELECT AVG( baseprice ) , bedtype FROM rooms GROUP BY bedtype	inn_1


Line 487:
golden truth: SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3	inn_1
prediction: SELECT roomname , roomid FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1


Line 488:
golden truth: SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3	inn_1
prediction: SELECT roomname , roomid FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1


Line 491:
golden truth: SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
prediction: SELECT COUNT( * ) FROM rooms WHERE roomid NOT IN (SELECT room FROM reservations)	inn_1


Line 492:
golden truth: SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
prediction: SELECT COUNT( * ) FROM rooms WHERE roomid NOT IN (SELECT room FROM reservations)	inn_1


Line 547:
golden truth: SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
prediction: SELECT party FROM election JOIN party ON party = party_id GROUP BY party HAVING COUNT( * ) >= 2	election


Line 548:
golden truth: SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
prediction: SELECT party FROM election JOIN party ON party = party_id GROUP BY party HAVING COUNT( * ) >= 2	election


Line 573:
golden truth: SELECT sum(no_of_customers) FROM bank	loan_1
prediction: SELECT COUNT( * ) FROM customer	loan_1


Line 575:
golden truth: SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
prediction: SELECT COUNT( * ) FROM bank WHERE city = 'New York City'	loan_1


Line 576:
golden truth: SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
prediction: SELECT COUNT( * ) FROM bank WHERE city = 'New York City'	loan_1


Line 577:
golden truth: SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
prediction: SELECT AVG( no_of_customers ) FROM bank JOIN customer ON branch_id = branch_id WHERE state = 'Utah'	loan_1


Line 578:
golden truth: SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
prediction: SELECT AVG( no_of_customers ) FROM bank JOIN customer ON branch_id = branch_id WHERE state = 'Utah'	loan_1


Line 597:
golden truth: SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
prediction: SELECT SUM( acc_bal ) FROM customer JOIN bank ON branch_id = branch_id WHERE state = 'Utah' OR state = 'Texas'	loan_1


Line 598:
golden truth: SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
prediction: SELECT SUM( acc_bal ) FROM customer JOIN bank ON branch_id = branch_id WHERE state = 'Utah' OR state = 'Texas'	loan_1


Line 600:
golden truth: SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
prediction: SELECT cust_name FROM customer WHERE acc_type = 'savings' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'	loan_1


Line 601:
golden truth: SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
prediction: SELECT cust_name FROM customer WHERE acc_type != 'saving'	loan_1


Line 602:
golden truth: SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
prediction: SELECT cust_name FROM customer WHERE acc_type != 'saving'	loan_1


Line 605:
golden truth: SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
prediction: SELECT bname FROM bank JOIN customer ON branch_id = branch_id GROUP BY branch_id ORDER BY COUNT( * ) DESC LIMIT 1	loan_1


Line 611:
golden truth: SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
prediction: SELECT cust_name FROM customer ORDER BY no_of_loans DESC LIMIT 1	loan_1


Line 612:
golden truth: SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
prediction: SELECT state FROM customer GROUP BY state ORDER BY COUNT( * ) DESC LIMIT 1	loan_1


Line 613:
golden truth: SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
prediction: SELECT acc_type , AVG( acc_bal ) FROM customer WHERE credit_score<50 GROUP BY acc_type	loan_1


Line 617:
golden truth: SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
prediction: SELECT AVG( credit_score ) FROM customer JOIN loan ON cust_id = cust_id	loan_1


Line 618:
golden truth: SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
prediction: SELECT AVG( credit_score ) FROM customer	loan_1


Line 622:
golden truth: SELECT DISTINCT fault_status FROM Fault_Log_Parts	assets_maintenance
prediction: SELECT COUNT( DISTINCT fault_status ) FROM fault_log_parts	assets_maintenance


Line 624:
golden truth: SELECT asset_id ,  asset_details ,  asset_make ,  asset_model FROM Assets	assets_maintenance
prediction: SELECT asset_id , other_asset_details , asset_make , asset_model FROM assets	assets_maintenance


Line 628:
golden truth: SELECT part_id ,  chargeable_amount FROM Parts ORDER BY chargeable_amount ASC LIMIT 1	assets_maintenance
prediction: SELECT part_id , part_name FROM parts JOIN part_faults ON part_id = part_id GROUP BY part_id ORDER BY SUM( chargeable_amount ) ASC LIMIT 1	assets_maintenance


Line 631:
golden truth: SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
prediction: SELECT COUNT( * ) FROM class WHERE class_code = 'ACCT-211'	college_1


Line 632:
golden truth: SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
prediction: SELECT COUNT( * ) FROM class WHERE class_code = 'ACCT-211'	college_1


Line 635:
golden truth: SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
prediction: SELECT SUM( crs_credit ) , crs_description FROM course WHERE crs_code = 'CIS-220'	college_1


Line 636:
golden truth: SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
prediction: class , class	college_1


Line 638:
golden truth: SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
prediction: SELECT dept_address FROM department JOIN course ON dept_code = dept_code WHERE dept_name = 'history'	college_1


Line 640:
golden truth: SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
prediction: SELECT DISTINCT class_room FROM class JOIN department ON class_code = dept_address WHERE school_code = 'BUS'	college_1


Line 641:
golden truth: SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
prediction: SELECT COUNT( DISTINCT school_code ) FROM department	college_1


Line 642:
golden truth: SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
prediction: SELECT school_code , COUNT( DISTINCT dept_address ) FROM department GROUP BY school_code	college_1


Line 643:
golden truth: SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
prediction: SELECT crs_description , crs_credit FROM course WHERE crs_code = 'QM-261'	college_1


Line 644:
golden truth: SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
prediction: SELECT crs_description , crs_credit FROM course WHERE crs_code = 'QM-261'	college_1


Line 645:
golden truth: SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
prediction: SELECT COUNT( * ) , school_code FROM department GROUP BY school_code	college_1


Line 646:
golden truth: SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
prediction: SELECT COUNT( * ) , school_code FROM department GROUP BY school_code	college_1


Line 647:
golden truth: SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
prediction: SELECT COUNT( * ) , school_code FROM department GROUP BY school_code HAVING COUNT( * ) >= 5	college_1


Line 648:
golden truth: SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
prediction: SELECT COUNT( * ) , school_code FROM department JOIN student ON dept_code = dept_code GROUP BY school_code HAVING COUNT( * )<5	college_1


Line 649:
golden truth: SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
prediction: SELECT crs_code , COUNT( DISTINCT class_section ) FROM class GROUP BY crs_code	college_1


Line 650:
golden truth: SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
prediction: SELECT crs_code , COUNT( DISTINCT class_section ) FROM class GROUP BY crs_code	college_1


Line 651:
golden truth: SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
prediction: SELECT SUM( crs_credit ) FROM course	college_1


Line 652:
golden truth: SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
prediction: SELECT SUM( crs_credit ) FROM course	college_1


Line 653:
golden truth: SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
prediction: SELECT class_room , COUNT( * ) FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1


Line 654:
golden truth: SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
prediction: SELECT class_room , COUNT( * ) FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1


Line 657:
golden truth: SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
prediction: SELECT COUNT( * ) , dept_code FROM professor WHERE prof_high_degree = 'D' GROUP BY dept_code	college_1


Line 658:
golden truth: SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
prediction: SELECT dept_code , COUNT( * ) FROM professor WHERE prof_high_degree = 'D' GROUP BY dept_code	college_1


Line 662:
golden truth: SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
prediction: SELECT dept_code , SUM( stu_hrs ) FROM student GROUP BY dept_code	college_1


Line 663:
golden truth: SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
prediction: SELECT AVG( stu_gpa ) , MAX( stu_gpa ) , MIN( stu_gpa ) , dept_code FROM student GROUP BY dept_code	college_1


Line 664:
golden truth: SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
prediction: SELECT MAX( stu_gpa ) , MIN( stu_gpa ) , AVG( stu_gpa ) FROM student	college_1


Line 665:
golden truth: SELECT count(DISTINCT school_code) FROM department	college_1
prediction: SELECT COUNT( * ) FROM department	college_1


Line 669:
golden truth: SELECT count(DISTINCT crs_code) FROM CLASS	college_1
prediction: SELECT COUNT( * ) FROM course	college_1


Line 670:
golden truth: SELECT count(DISTINCT crs_code) FROM CLASS	college_1
prediction: SELECT COUNT( DISTINCT crs_code ) FROM course	college_1


Line 671:
golden truth: SELECT count(DISTINCT dept_name) FROM department	college_1
prediction: SELECT COUNT( * ) FROM department WHERE school_code = 'college'	college_1


Line 672:
golden truth: SELECT count(DISTINCT dept_name) FROM department	college_1
prediction: SELECT COUNT( * ) FROM department	college_1


Line 677:
golden truth: SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
prediction: SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D'	college_1


Line 678:
golden truth: SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
prediction: SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 1	college_1


Line 681:
golden truth: SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
prediction: SELECT crs_code FROM class WHERE class_room = 'KLR209'	college_1


Line 682:
golden truth: SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
prediction: SELECT crs_code FROM class WHERE class_room = 'KLR209'	college_1


Line 684:
golden truth: SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
prediction: SELECT emp_fname FROM employee JOIN professor ON emp_num = emp_num WHERE prof_office = 'professors' ORDER BY emp_dob ASC	college_1


Line 685:
golden truth: SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
prediction: SELECT emp_fname , emp_lname FROM employee ORDER BY emp_dob DESC LIMIT 1	college_1


Line 687:
golden truth: SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
prediction: SELECT stu_fname , stu_lname FROM student WHERE stu_gpa > 3 ORDER BY stu_dob ASC LIMIT 1	college_1


Line 688:
golden truth: SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
prediction: SELECT stu_fname , stu_lname FROM student WHERE stu_gpa > 3	college_1


Line 689:
golden truth: SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
prediction: SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D' OR prof_high_degree = 'MA'	college_1


Line 690:
golden truth: SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
prediction: SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D' OR prof_high_degree = 'Masters'	college_1


Line 691:
golden truth: SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
prediction: SELECT stu_fname , stu_gpa , stu_phone FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1


Line 692:
golden truth: SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
prediction: SELECT stu_fname , stu_gpa , stu_phone FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1


Line 693:
golden truth: SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
prediction: SELECT stu_fname FROM student WHERE stu_gpa<(SELECT AVG( stu_gpa ) FROM student)	college_1


Line 694:
golden truth: SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
prediction: SELECT AVG( stu_gpa ) FROM student	college_1


Line 697:
golden truth: SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
prediction: SELECT SUM( market_rate ) FROM furniture	manufacturer


Line 699:
golden truth: SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
prediction: SELECT name , num_of_component FROM furniture	manufacturer


Line 700:
golden truth: SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
prediction: SELECT name , open_year FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer


Line 703:
golden truth: SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
prediction: SELECT name , open_year FROM manufacturer WHERE num_of_factories<10 OR num_of_shops > 10	manufacturer


Line 704:
golden truth: SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
prediction: SELECT AVG( num_of_factories ) , MAX( num_of_shops ) FROM manufacturer WHERE open_year<1990	manufacturer


Line 705:
golden truth: SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
prediction: SELECT song_name FROM song ORDER BY releasedate DESC LIMIT 1	music_1


Line 706:
golden truth: SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
prediction: SELECT song_name FROM song ORDER BY releasedate DESC LIMIT 1	music_1


Line 707:
golden truth: SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
prediction: SELECT f_id FROM song ORDER BY resolution DESC LIMIT 1	music_1


Line 708:
golden truth: SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
prediction: SELECT f_id FROM song JOIN files ON f_id = f_id ORDER BY duration DESC LIMIT 1	music_1


Line 711:
golden truth: SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
prediction: SELECT f_id FROM files, song WHERE formats = 'mp3'	music_1


Line 712:
golden truth: SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
prediction: SELECT formats FROM files WHERE formats = 'mp3'	music_1


Line 713:
golden truth: SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
prediction: SELECT artist_name FROM song ORDER BY resolution ASC LIMIT 1	music_1


Line 714:
golden truth: SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
prediction: SELECT artist_name FROM song ORDER BY resolution ASC LIMIT 1	music_1


Line 716:
golden truth: SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
prediction: SELECT COUNT( * ) FROM artist WHERE country = 'Bangladeshi'	music_1


Line 719:
golden truth: SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
prediction: SELECT artist_name FROM artist JOIN song ON artist_name = artist_name WHERE country = 'UK' AND languages = 'English'	music_1


Line 720:
golden truth: SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
prediction: SELECT artist_name FROM artist JOIN song ON country = artist_name WHERE country = 'UK' AND languages = 'English'	music_1


Line 721:
golden truth: SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
prediction: SELECT f_id FROM song WHERE formats = 'mp4' AND resolution<1000	music_1


Line 722:
golden truth: SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
prediction: SELECT * FROM files JOIN song ON f_id = f_id WHERE formats = 'mp4' AND resolution<1000	music_1


Line 723:
golden truth: SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
prediction: SELECT gender , COUNT( * ) FROM artist GROUP BY gender	music_1


Line 724:
golden truth: SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
prediction: SELECT COUNT( * ) FROM artist WHERE gender = 'f'	music_1


Line 725:
golden truth: SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
prediction: SELECT languages , AVG( rating ) FROM song GROUP BY languages	music_1


Line 726:
golden truth: SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
prediction: SELECT languages , AVG( rating ) FROM song GROUP BY languages	music_1


Line 727:
golden truth: SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
prediction: SELECT formats , COUNT( * ) FROM files JOIN song ON f_id = f_id GROUP BY formats	music_1


Line 728:
golden truth: SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
prediction: SELECT formats , COUNT( * ) FROM song JOIN files ON f_id = f_id GROUP BY formats	music_1


Line 730:
golden truth: SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
prediction: SELECT DISTINCT song_name FROM song WHERE languages NOT IN (SELECT song_name FROM song WHERE languages = 'English')	music_1


Line 731:
golden truth: SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
prediction: genre , genre	music_1


Line 732:
golden truth: SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
prediction: SELECT song_name FROM song JOIN genre ON genre_is = g_name WHERE rating<(SELECT AVG( rating ) FROM genre)	music_1


Line 739:
golden truth: SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
prediction: SELECT languages FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1


Line 740:
golden truth: SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
prediction: SELECT artist_name , languages FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1


Line 741:
golden truth: SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
prediction: SELECT artist_name FROM artist WHERE gender = 'Male' AND country = 'UK'	music_1


Line 742:
golden truth: SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
prediction: SELECT artist_name FROM artist WHERE gender = 'm'	music_1


Line 749:
golden truth: SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
prediction: SELECT f_id FROM song WHERE rating<(SELECT MAX( resolution ) FROM song WHERE rating<8)	music_1


Line 750:
golden truth: SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
prediction: SELECT f_id FROM song WHERE resolution > (SELECT resolution FROM song WHERE rating<8)	music_1


Line 752:
golden truth: SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
prediction: SELECT f_id FROM song WHERE resolution > (SELECT AVG( resolution ) FROM song)	music_1


Line 753:
golden truth: SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
prediction: SELECT f_id , g_name , artist_name FROM song JOIN genre ON genre_is = g_name WHERE languages = 'English' ORDER BY rating ASC	music_1


Line 754:
golden truth: SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
prediction: SELECT f_id , genre_is , artist_name FROM song JOIN genre ON f_id = g_name ORDER BY rating ASC	music_1


Line 755:
golden truth: SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
prediction: SELECT artist_name FROM artist WHERE languages = 'English' EXCEPT SELECT artist_name FROM song JOIN genre ON artist_name = g_name WHERE languages = 'English' AND rating > 8	music_1


Line 756:
golden truth: SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
prediction: SELECT artist_name FROM artist WHERE languages = 'English' EXCEPT SELECT DISTINCT artist_name FROM song WHERE languages = 'English' AND rating > 8	music_1


Line 757:
golden truth: SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
prediction: artist , genre	music_1


Line 758:
golden truth: SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
prediction: SELECT artist_name FROM artist WHERE country = 'Bangladesh'	music_1


Line 760:
golden truth: SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
prediction: SELECT MAX( height ) , MIN( height ) FROM mountain	mountain_photos


Line 766:
golden truth: SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1	hospital_1
prediction: SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1


Line 767:
golden truth: SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1	hospital_1
prediction: SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1


Line 768:
golden truth: SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1	hospital_1
prediction: SELECT head FROM department GROUP BY head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1


Line 769:
golden truth: SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1	hospital_1
prediction: SELECT head FROM department GROUP BY head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1


Line 772:
golden truth: SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
prediction: SELECT COUNT( * ) FROM stay WHERE room = 112	hospital_1


Line 773:
golden truth: SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
prediction: SELECT COUNT( * ) FROM stay WHERE room = 112	hospital_1


Line 774:
golden truth: SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
prediction: SELECT patient FROM stay WHERE room = 111 ORDER BY stayend DESC LIMIT 1	hospital_1


Line 775:
golden truth: SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
prediction: SELECT patient FROM stay WHERE room = 111 ORDER BY stayend DESC LIMIT 1	hospital_1


Line 776:
golden truth: SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
prediction: SELECT COUNT( DISTINCT blockcode ) FROM room	hospital_1


Line 777:
golden truth: SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
prediction: SELECT DISTINCT blockcode FROM room	hospital_1


Line 782:
golden truth: SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
prediction: SELECT name FROM patient JOIN appointment ON ssn = patient GROUP BY patient ORDER BY end DESC LIMIT 1	hospital_1


Line 783:
golden truth: SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
prediction: SELECT name FROM appointment JOIN patient ON patient = ssn ORDER BY end DESC LIMIT 1	hospital_1


Line 792:
golden truth: SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
prediction: SELECT cost FROM procedures ORDER BY cost DESC LIMIT 3	hospital_1


Line 793:
golden truth: SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
prediction: SELECT cost FROM procedures ORDER BY cost DESC LIMIT 3	hospital_1


Line 802:
golden truth: SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
prediction: SELECT firstname FROM list WHERE classroom = 107	student_1


Line 803:
golden truth: SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
prediction: SELECT firstname FROM list WHERE classroom = 107	student_1


Line 804:
golden truth: SELECT DISTINCT classroom ,  grade FROM list	student_1
prediction: SELECT classroom , grade FROM list	student_1


Line 805:
golden truth: SELECT DISTINCT classroom ,  grade FROM list	student_1
prediction: SELECT grade , classroom FROM list	student_1


Line 806:
golden truth: SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
prediction: SELECT grade FROM list WHERE classroom = 103	student_1


Line 807:
golden truth: SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
prediction: SELECT grade FROM list WHERE classroom = 103	student_1


Line 808:
golden truth: SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
prediction: SELECT grade FROM list WHERE classroom = 105	student_1


Line 809:
golden truth: SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
prediction: SELECT grade FROM list WHERE classroom = 105	student_1


Line 810:
golden truth: SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
prediction: SELECT classroom FROM list WHERE grade = 4	student_1


Line 811:
golden truth: SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
prediction: SELECT classroom FROM list WHERE grade = 4	student_1


Line 812:
golden truth: SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
prediction: SELECT classroom FROM list WHERE grade = 5	student_1


Line 813:
golden truth: SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
prediction: SELECT classroom FROM list WHERE grade = 5	student_1


Line 818:
golden truth: SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
prediction: SELECT firstname , lastname FROM teachers	student_1


Line 819:
golden truth: SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
prediction: SELECT firstname , lastname FROM teachers	student_1


Line 820:
golden truth: SELECT DISTINCT firstname ,  lastname FROM list	student_1
prediction: SELECT firstname , lastname FROM list	student_1


Line 821:
golden truth: SELECT DISTINCT firstname ,  lastname FROM list	student_1
prediction: SELECT firstname , lastname FROM list	student_1


Line 822:
golden truth: SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
prediction: SELECT COUNT( * ) , grade FROM list GROUP BY grade	student_1


Line 823:
golden truth: SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
prediction: SELECT COUNT( * ) , COUNT( * ) , grade FROM list GROUP BY grade	student_1


Line 824:
golden truth: SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
prediction: SELECT classroom , COUNT( * ) , SUM( grade ) FROM list GROUP BY classroom	student_1


Line 826:
golden truth: SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
prediction: SELECT classroom FROM list ORDER BY classroom DESC LIMIT 1	student_1


Line 828:
golden truth: SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
prediction: SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1


Line 830:
golden truth: SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
prediction: SELECT classroom , COUNT( * ) FROM list WHERE grade = 0 GROUP BY classroom	student_1


Line 831:
golden truth: SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
prediction: SELECT classroom , COUNT( * ) FROM list WHERE grade = 0 GROUP BY classroom	student_1


Line 832:
golden truth: SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
prediction: SELECT COUNT( * ) FROM list JOIN fourth ON grade = fourth GROUP BY classroom	student_1


Line 833:
golden truth: SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
prediction: SELECT classroom , COUNT( * ) FROM list WHERE grade = 4 GROUP BY classroom	student_1


Line 862:
golden truth: SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
prediction: SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) > 4500000	film_rank


Line 863:
golden truth: SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
prediction: SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) > 4500000	film_rank


Line 894:
golden truth: SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
prediction: SELECT industry , COUNT( * ) FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office


Line 895:
golden truth: SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
prediction: SELECT industry , COUNT( * ) FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office


Line 917:
golden truth: SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
prediction: SELECT SUM( international_passengers ) FROM airport WHERE airport_name = 'Heathrow'	aircraft


Line 918:
golden truth: SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
prediction: SELECT SUM( international_passengers ) , SUM( domestic_passengers ) FROM airport WHERE airport_name = 'London Heathrow'	aircraft


Line 920:
golden truth: SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
prediction: SELECT SUM( domestic_passengers ) FROM airport WHERE airport_name = 'London'	aircraft


Line 936:
golden truth: SELECT avg(enr) FROM College	soccer_2
prediction: SELECT cname , AVG( enr ) FROM college GROUP BY cname	soccer_2


Line 938:
golden truth: SELECT count(*) FROM College	soccer_2
prediction: SELECT COUNT( DISTINCT cname ) FROM college	soccer_2


Line 950:
golden truth: SELECT count(DISTINCT pPos) FROM tryout	soccer_2
prediction: SELECT DISTINCT ppos FROM tryout	soccer_2


Line 951:
golden truth: SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
prediction: SELECT COUNT( * ) FROM tryout WHERE decision = 'accepted'	soccer_2


Line 952:
golden truth: SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
prediction: SELECT COUNT( * ) FROM tryout JOIN player ON pid = pid WHERE ycard = 'yes'	soccer_2


Line 953:
golden truth: SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
prediction: SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2


Line 954:
golden truth: SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
prediction: SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2


Line 955:
golden truth: SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
prediction: SELECT AVG( enr ) FROM college WHERE state = 'FL'	soccer_2


Line 956:
golden truth: SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
prediction: SELECT AVG( enr ) FROM college WHERE state = 'Florida'	soccer_2


Line 957:
golden truth: SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
prediction: SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2


Line 958:
golden truth: SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
prediction: SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2


Line 959:
golden truth: SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
prediction: SELECT pname FROM player WHERE pname LIKE '%a%'	soccer_2


Line 960:
golden truth: SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
prediction: SELECT pname FROM player WHERE pname LIKE '%a%'	soccer_2


Line 961:
golden truth: SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
prediction: SELECT cname , enr FROM college WHERE enr > 10000 AND state = 'LA'	soccer_2


Line 962:
golden truth: SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
prediction: SELECT cname , enr FROM college WHERE enr > 10000 AND state = 'Louisiana'	soccer_2


Line 963:
golden truth: SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
prediction: SELECT * FROM college ORDER BY enr ASC	soccer_2


Line 964:
golden truth: SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
prediction: SELECT * FROM college ORDER BY enr ASC	soccer_2


Line 965:
golden truth: SELECT * FROM College ORDER BY enr	soccer_2
prediction: SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2


Line 966:
golden truth: SELECT * FROM College ORDER BY enr	soccer_2
prediction: SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2


Line 967:
golden truth: SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
prediction: SELECT pname FROM player WHERE ycard = 'yes' ORDER BY hs DESC	soccer_2


Line 968:
golden truth: SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
prediction: SELECT pname FROM player ORDER BY hs DESC	soccer_2


Line 969:
golden truth: SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
prediction: SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2


Line 970:
golden truth: SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
prediction: SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2


Line 971:
golden truth: SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
prediction: SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2


Line 972:
golden truth: SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
prediction: SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2


Line 973:
golden truth: SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
prediction: SELECT cname , COUNT( * ) FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2


Line 974:
golden truth: SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
prediction: SELECT cname , COUNT( * ) FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2


Line 975:
golden truth: SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
prediction: SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2


Line 976:
golden truth: SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
prediction: SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2


Line 977:
golden truth: SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
prediction: SELECT cname , state , MIN( enr ) FROM college GROUP BY state	soccer_2


Line 978:
golden truth: SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
prediction: SELECT cname FROM college ORDER BY enr ASC LIMIT 1	soccer_2


Line 979:
golden truth: SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
prediction: SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname WHERE ppos = 'goalie'	soccer_2


Line 980:
golden truth: SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
prediction: SELECT cname FROM college JOIN tryout ON enr = pid JOIN player ON pid = pid WHERE ppos = 'goalie'	soccer_2


Line 981:
golden truth: SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
prediction: SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie' INTERSECT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid'	soccer_2


Line 982:
golden truth: SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
prediction: SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie' INTERSECT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid-field'	soccer_2


Line 983:
golden truth: SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
prediction: SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname JOIN player ON pid = pid WHERE ppos = 'goalie'	soccer_2


Line 984:
golden truth: SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
prediction: SELECT cname FROM college INTERSECT SELECT cname FROM college JOIN tryout ON enr = cname JOIN player ON pid = pid WHERE ppos = 'mid'	soccer_2


Line 985:
golden truth: SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
prediction: SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid' EXCEPT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'goalie'	soccer_2


Line 986:
golden truth: SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
prediction: SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid' EXCEPT SELECT state FROM college JOIN tryout ON cname = cname WHERE ppos = 'mid position but'	soccer_2


Line 987:
golden truth: SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
prediction: SELECT state FROM college WHERE enr<(SELECT MAX( enr ) FROM college)	soccer_2


Line 988:
golden truth: SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
prediction: SELECT state FROM college WHERE enr<(SELECT AVG( enr ) FROM college)	soccer_2


Line 989:
golden truth: SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
prediction: SELECT cname FROM college WHERE enr > (SELECT MIN( enr ) FROM college WHERE state = 'FL')	soccer_2


Line 990:
golden truth: SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
prediction: SELECT cname FROM college WHERE cname > (SELECT cname FROM college WHERE state = 'Florida')	soccer_2


Line 991:
golden truth: SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
prediction: SELECT cname FROM college WHERE enr > (SELECT enr FROM college WHERE state = 'FL')	soccer_2


Line 992:
golden truth: SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
prediction: SELECT cname FROM college WHERE enr > (SELECT AVG( enr ) FROM college WHERE state = 'Florida')	soccer_2


Line 993:
golden truth: SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
prediction: SELECT SUM( enr ) FROM college WHERE cname NOT IN (SELECT cname FROM tryout WHERE ppos = 'goalie')	soccer_2


Line 994:
golden truth: SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
prediction: SELECT SUM( enr ) FROM college WHERE cname NOT IN (SELECT cname FROM tryout)	soccer_2


Line 998:
golden truth: SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
prediction: SELECT COUNT( DISTINCT state ) FROM college WHERE state<(SELECT AVG( enr ) FROM college)	soccer_2


Line 1002:
golden truth: SELECT Carrier FROM device ORDER BY Carrier ASC	device
prediction: SELECT DISTINCT carrier FROM device ORDER BY carrier ASC	device


Line 1018:
golden truth: SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
prediction: SELECT COUNT( * ) , software_platform FROM device GROUP BY software_platform	device


Line 1019:
golden truth: SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
prediction: SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device


Line 1020:
golden truth: SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
prediction: SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device


Line 1023:
golden truth: SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
prediction: SELECT location FROM shop WHERE open_year<2012 INTERSECT SELECT location FROM shop WHERE open_year<2008	device


Line 1029:
golden truth: SELECT * FROM Albums WHERE YEAR  =  2012	music_2
prediction: SELECT title FROM albums WHERE year = 2012	music_2


Line 1034:
golden truth: SELECT count(DISTINCT label) FROM albums	music_2
prediction: SELECT DISTINCT label FROM albums	music_2


Line 1037:
golden truth: SELECT title FROM songs WHERE title LIKE '% the %'	music_2
prediction: SELECT title FROM songs WHERE title LIKE '%the%'	music_2


Line 1038:
golden truth: SELECT title FROM songs WHERE title LIKE '% the %'	music_2
prediction: SELECT title FROM songs WHERE title LIKE '%the%'	music_2


Line 1049:
golden truth: SELECT * FROM Albums WHERE YEAR  =  2010	music_2
prediction: SELECT title FROM albums WHERE year = 2010	music_2


Line 1053:
golden truth: SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
prediction: SELECT problem_log_id , problem_id FROM problem_log ORDER BY problem_id DESC LIMIT 1	tracking_software_problems


Line 1054:
golden truth: SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
prediction: SELECT MAX( problem_log_id ) , problem_id FROM problem_log	tracking_software_problems


Line 1056:
golden truth: SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
prediction: SELECT DISTINCT problem_id , log_entry_date FROM problem_log JOIN problems ON problem_id = problem_id WHERE problem_log_id = 10	tracking_software_problems


Line 1057:
golden truth: SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
prediction: SELECT problem_log_id , problem_description FROM problem_log JOIN problem_category_codes ON problem_category_code = problem_category_code JOIN problems ON problem_id = problem_id	tracking_software_problems


Line 1076:
golden truth: SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006	swimming
prediction: SELECT COUNT( * ) FROM stadium WHERE opening_year<2006	swimming


Line 1082:
golden truth: SELECT nationality ,  count(*) FROM swimmer GROUP BY nationality HAVING count(*)  >  1	swimming
prediction: SELECT nationality FROM swimmer GROUP BY nationality HAVING COUNT( * ) > 1	swimming


Line 1114:
golden truth: SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
prediction: SELECT author FROM submission EXCEPT SELECT author FROM submission	workshop_paper


Line 1115:
golden truth: SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
prediction: SELECT author FROM submission EXCEPT SELECT author FROM submission	workshop_paper


Line 1117:
golden truth: SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
prediction: SELECT city_id FROM city JOIN hosting_city ON city_id = host_city ORDER BY year DESC LIMIT 1	city_record


Line 1118:
golden truth: SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
prediction: SELECT city FROM city JOIN hosting_city ON city_id = host_city ORDER BY year DESC LIMIT 1	city_record


Line 1120:
golden truth: SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
prediction: SELECT match_id FROM match WHERE competition = 'World Cup qualification'	city_record


Line 1122:
golden truth: SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
prediction: SELECT regional_population FROM city ORDER BY regional_population DESC LIMIT 3	city_record


Line 1127:
golden truth: SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
prediction: SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record


Line 1128:
golden truth: SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
prediction: SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record


Line 1130:
golden truth: SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition	city_record
prediction: SELECT competition , COUNT( * ) FROM match GROUP BY competition	city_record


Line 1133:
golden truth: SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
prediction: SELECT gdp FROM city ORDER BY city DESC LIMIT 1	city_record


Line 1141:
golden truth: SELECT party FROM driver WHERE home_city  =  'Hartford' AND age  >  40	school_bus
prediction: SELECT party FROM driver WHERE home_city = 'Hartford' INTERSECT SELECT party FROM driver WHERE age > 40	school_bus


Line 1149:
golden truth: SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
prediction: SELECT name , country , elevation FROM airports WHERE city = 'New York'	flight_4


Line 1150:
golden truth: SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
prediction: SELECT name , country , elevation FROM airports WHERE city = 'New York'	flight_4


Line 1159:
golden truth: SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
prediction: SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4


Line 1160:
golden truth: SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
prediction: SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4


Line 1161:
golden truth: SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
prediction: SELECT name FROM airports WHERE elevation BETWEEN 50 and 50	flight_4


Line 1162:
golden truth: SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
prediction: SELECT name FROM airports WHERE elevation BETWEEN 50 and 50	flight_4


Line 1166:
golden truth: SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
prediction: SELECT COUNT( * ) FROM airports WHERE name LIKE '%Interanation%'	flight_4


Line 1168:
golden truth: SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
prediction: SELECT SUM( city ) FROM airports WHERE country = 'Greenland'	flight_4


Line 1179:
golden truth: SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
prediction: SELECT country , COUNT( * ) FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4


Line 1180:
golden truth: SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
prediction: SELECT country , COUNT( * ) FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4


Line 1181:
golden truth: SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
prediction: SELECT city , COUNT( * ) FROM airports WHERE country = 'United States' GROUP BY city ORDER BY COUNT( * ) DESC	flight_4


Line 1182:
golden truth: SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
prediction: SELECT city , COUNT( * ) FROM airports GROUP BY city ORDER BY COUNT( * ) DESC	flight_4


Line 1183:
golden truth: SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
prediction: SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4


Line 1185:
golden truth: SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
prediction: SELECT COUNT( DISTINCT city ) FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4


Line 1186:
golden truth: SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
prediction: SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3	flight_4


Line 1189:
golden truth: SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
prediction: SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 2	flight_4


Line 1190:
golden truth: SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
prediction: SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 2	flight_4


Line 1192:
golden truth: SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
prediction: SELECT country , AVG( elevation ) FROM airports GROUP BY country	flight_4


Line 1195:
golden truth: SELECT count(*) FROM architect WHERE gender  =  'female'	architecture
prediction: SELECT COUNT( * ) FROM architect WHERE gender = 'f'	architecture


Line 1206:
golden truth: SELECT Name FROM GENRE	chinook_1
prediction: SELECT DISTINCT name FROM genre	chinook_1


Line 1211:
golden truth: SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
prediction: SELECT DISTINCT billingcountry FROM invoice	chinook_1


Line 1212:
golden truth: SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
prediction: SELECT DISTINCT billingcountry FROM invoice	chinook_1


Line 1215:
golden truth: SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
prediction: SELECT albumid FROM track WHERE albumid LIKE '%you%'	chinook_1


Line 1216:
golden truth: SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
prediction: SELECT title FROM track JOIN genre ON genreid = genreid WHERE name = 'you'	chinook_1


Line 1217:
golden truth: SELECT AVG(UnitPrice) FROM TRACK	chinook_1
prediction: SELECT AVG( unitprice ) FROM invoiceline JOIN track ON trackid = trackid	chinook_1


Line 1218:
golden truth: SELECT AVG(UnitPrice) FROM TRACK	chinook_1
prediction: SELECT AVG( unitprice ) FROM invoiceline JOIN track ON trackid = trackid	chinook_1


Line 1219:
golden truth: SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
prediction: SELECT MAX( milliseconds ) FROM track WHERE name = '1'	chinook_1


Line 1220:
golden truth: SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
prediction: SELECT MIN( milliseconds ) , MAX( milliseconds ) FROM track	chinook_1


Line 1221:
golden truth: SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
prediction: SELECT firstname , lastname FROM customer WHERE email = 'br'	chinook_1


Line 1222:
golden truth: SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
prediction: SELECT firstname , lastname FROM customer WHERE email = 'br'	chinook_1


Line 1223:
golden truth: SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
prediction: SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1


Line 1224:
golden truth: SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
prediction: SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1


Line 1233:
golden truth: SELECT distinct(UnitPrice) FROM TRACK	chinook_1
prediction: SELECT DISTINCT unitprice FROM invoiceline JOIN track ON trackid = trackid	chinook_1


Line 1234:
golden truth: SELECT distinct(UnitPrice) FROM TRACK	chinook_1
prediction: SELECT DISTINCT unitprice FROM invoiceline JOIN track ON trackid = trackid	chinook_1


Line 1237:
golden truth: SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
prediction: SELECT booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY booking_status_code	apartment_rentals


Line 1238:
golden truth: SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
prediction: SELECT booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY booking_status_code	apartment_rentals


Line 1247:
golden truth: SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
prediction: SELECT apt_type_code , SUM( bathroom_count ) , SUM( bedroom_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals


Line 1248:
golden truth: SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
prediction: SELECT apt_type_code , SUM( bathroom_count ) , SUM( bedroom_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals


Line 1252:
golden truth: SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
prediction: SELECT apt_type_code FROM apartments WHERE bathroom_count > bathroom_count GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals


Line 1260:
golden truth: SELECT max(weight) ,  min(weight) FROM Player	soccer_1
prediction: SELECT MAX( height ) , MIN( height ) FROM player	soccer_1


Line 1261:
golden truth: SELECT player_api_id FROM Player WHERE height  >=  180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating  >  85	soccer_1
prediction: SELECT id FROM player WHERE height >= 180 AND overall_rating > 85	soccer_1


Line 1262:
golden truth: SELECT player_api_id FROM Player WHERE height  >=  180 AND height  <=  190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot  =  "left"	soccer_1
prediction: SELECT id FROM player WHERE height BETWEEN 180 and 190	soccer_1


Line 1265:
golden truth: SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000	movie_1
prediction: SELECT title FROM movie WHERE year > 2000 AND director = 'James Cameron'	movie_1


Line 1279:
golden truth: SELECT max(stars) ,  min(stars) FROM Rating	movie_1
prediction: SELECT MIN( stars ) , MAX( stars ) FROM rating	movie_1


Line 1283:
golden truth: SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
prediction: SELECT title FROM movie ORDER BY year DESC LIMIT 1	movie_1


Line 1284:
golden truth: SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
prediction: SELECT title FROM movie ORDER BY year DESC LIMIT 1	movie_1


Line 1285:
golden truth: SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
prediction: SELECT title FROM movie WHERE year > (SELECT year FROM movie WHERE director = 'Steven Spielberg')	movie_1


Line 1286:
golden truth: SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
prediction: SELECT title FROM movie WHERE director = (SELECT MAX( director ) FROM movie WHERE director = 'Steven Spielberg')	movie_1


Line 1287:
golden truth: SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
prediction: SELECT name , title FROM movie JOIN reviewer ON mid = rid	movie_1


Line 1288:
golden truth: SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
prediction: SELECT name , title FROM movie JOIN rating ON mid = mid JOIN reviewer ON rid = rid	movie_1


Line 1289:
golden truth: SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
prediction: SELECT mid FROM rating GROUP BY mid HAVING COUNT( * ) >= 2	movie_1


Line 1290:
golden truth: SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
prediction: SELECT mid FROM rating GROUP BY mid HAVING COUNT( * ) >= 3	movie_1


Line 1291:
golden truth: SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
prediction: SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1


Line 1292:
golden truth: SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
prediction: SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1


Line 1293:
golden truth: SELECT rID FROM Rating WHERE stars != 4	movie_1
prediction: SELECT rid FROM reviewer EXCEPT SELECT rid FROM rating	movie_1


Line 1294:
golden truth: SELECT rID FROM Rating WHERE stars != 4	movie_1
prediction: SELECT rid FROM reviewer EXCEPT SELECT rid FROM reviewer JOIN rating ON rid = rid GROUP BY rid HAVING COUNT( * ) >= 4	movie_1


Line 1295:
golden truth: SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
prediction: SELECT title FROM movie WHERE year > 1980 OR director = 'James Cameron'	movie_1


Line 1296:
golden truth: SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
prediction: SELECT title FROM movie WHERE year > 1980 OR director = 'James Cameron'	movie_1


Line 1297:
golden truth: SELECT ResName FROM Restaurant	restaurant_1
prediction: SELECT COUNT( * ) FROM restaurant	restaurant_1


Line 1305:
golden truth: SELECT Advisor ,  count(*) FROM Student GROUP BY Advisor ORDER BY count(Advisor) DESC LIMIT 1	restaurant_1
prediction: SELECT advisor , COUNT( * ) FROM student GROUP BY advisor ORDER BY COUNT( * ) DESC LIMIT 1	restaurant_1


Line 1306:
golden truth: SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1	restaurant_1
prediction: SELECT major , COUNT( * ) FROM student GROUP BY major ORDER BY COUNT( * ) ASC LIMIT 1	restaurant_1


Line 1307:
golden truth: SELECT Major ,  count(*) FROM Student GROUP BY Major HAVING count(Major) BETWEEN 2 AND 30	restaurant_1
prediction: SELECT major , COUNT( * ) FROM student GROUP BY major HAVING COUNT( * ) BETWEEN 2 and 30	restaurant_1


Line 1309:
golden truth: SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major != 600 AND Sex = 'F'	restaurant_1
prediction: SELECT fname , lname FROM student WHERE sex = 'f' AND age > 18 AND major != 600	restaurant_1


Line 1317:
golden truth: SELECT address_line_1 FROM Course_Authors_and_Tutors	e_learning
prediction: SELECT DISTINCT address_line_1 FROM course_authors_and_tutors	e_learning


Line 1324:
golden truth: SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
prediction: SELECT COUNT( DISTINCT course_id ) FROM student_course_enrolment	e_learning


Line 1325:
golden truth: SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
prediction: SELECT COUNT( DISTINCT course_id ) FROM courses	e_learning


Line 1343:
golden truth: SELECT test_result ,  COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC	e_learning
prediction: SELECT test_result , COUNT( * ) FROM student_tests_taken GROUP BY test_result	e_learning


Line 1344:
golden truth: SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
prediction: SELECT COUNT( * ) FROM person WHERE gender = 'f'	network_2


Line 1345:
golden truth: SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
prediction: SELECT COUNT( * ) FROM person WHERE gender = 'f'	network_2


Line 1352:
golden truth: SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
prediction: SELECT age FROM person ORDER BY age DESC LIMIT 1	network_2


Line 1353:
golden truth: SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
prediction: SELECT name FROM person ORDER BY age DESC LIMIT 1	network_2


Line 1354:
golden truth: SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
prediction: SELECT age FROM person WHERE job = 'student' ORDER BY age DESC LIMIT 1	network_2


Line 1355:
golden truth: SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
prediction: SELECT name FROM person ORDER BY age DESC LIMIT 1	network_2


Line 1356:
golden truth: SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
prediction: SELECT MIN( age ) FROM person ORDER BY age ASC LIMIT 1	network_2


Line 1357:
golden truth: SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
prediction: SELECT name FROM person WHERE gender = 'm' ORDER BY age ASC LIMIT 1	network_2


Line 1363:
golden truth: SELECT count(*) FROM Person WHERE age  >  30 AND job  =  'engineer'	network_2
prediction: SELECT COUNT( * ) FROM person JOIN HOw many engineers are older than 30 ON job = HOw many engineers are older than 30 WHERE age > 30	network_2


Line 1365:
golden truth: SELECT avg(age) ,  gender FROM Person GROUP BY gender	network_2
prediction: SELECT gender , AVG( age ) FROM person GROUP BY gender	network_2


Line 1367:
golden truth: SELECT avg(age) ,  job FROM Person GROUP BY job	network_2
prediction: SELECT job , AVG( age ) FROM person GROUP BY job	network_2


Line 1368:
golden truth: SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
prediction: SELECT AVG( age ) , job FROM person WHERE gender = 'm' GROUP BY job	network_2


Line 1369:
golden truth: SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
prediction: SELECT AVG( age ) , job FROM person WHERE gender = 'm' GROUP BY job	network_2


Line 1373:
golden truth: SELECT count(*) ,  gender FROM Person WHERE age  <  40 GROUP BY gender	network_2
prediction: SELECT gender , COUNT( * ) FROM person WHERE age<40 GROUP BY gender	network_2


Line 1374:
golden truth: SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
prediction: SELECT name FROM person WHERE job = 'engineer' ORDER BY age ASC	network_2


Line 1375:
golden truth: SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
prediction: SELECT name FROM person WHERE job = 'engineer' ORDER BY age ASC	network_2


Line 1376:
golden truth: SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
prediction: SELECT COUNT( * ) FROM person WHERE age = 'engineers' ORDER BY age DESC LIMIT *	network_2


Line 1377:
golden truth: SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
prediction: SELECT COUNT( * ) FROM personfriend, personfriend WHERE job = 'engineer'	network_2


Line 1382:
golden truth: SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
prediction: SELECT name , age FROM person WHERE gender = 'm' ORDER BY age ASC	network_2


Line 1383:
golden truth: SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
prediction: SELECT name , age FROM person WHERE gender = 'm' ORDER BY age ASC	network_2


Line 1396:
golden truth: SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
prediction: SELECT COUNT( * ) FROM enrolled_in WHERE grade = 'B'	college_3


Line 1397:
golden truth: SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
prediction: SELECT COUNT( * ) FROM enrolled_in WHERE grade = 'B'	college_3


Line 1398:
golden truth: SELECT max(gradepoint) ,  min(gradepoint) FROM GRADECONVERSION	college_3
prediction: SELECT lettergrade , MAX( gradepoint ) , MIN( gradepoint ) FROM gradeconversion GROUP BY lettergrade	college_3


Line 1400:
golden truth: SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
prediction: SELECT fname , lname FROM student WHERE fname LIKE '%a%'	college_3


Line 1401:
golden truth: SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
prediction: SELECT DISTINCT lname FROM student WHERE fname LIKE '%a%'	college_3


Line 1405:
golden truth: SELECT Room FROM FACULTY WHERE Rank  =  "Professor" AND Building  =  "NEB"	college_3
prediction: SELECT room FROM faculty JOIN member_of ON facid = facid JOIN department ON dno = dno WHERE rank = 'professors' AND building = 'NEB'	college_3


Line 1419:
golden truth: SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname	college_3
prediction: SELECT fname FROM faculty WHERE rank = 'professors,' ORDER BY fname ASC	college_3


Line 1420:
golden truth: SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
prediction: SELECT cname FROM course WHERE credits = 3 OR hours = 4	college_3


Line 1421:
golden truth: SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
prediction: SELECT cname FROM course WHERE credits = 3 OR hours = 4	college_3


Line 1422:
golden truth: SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
prediction: SELECT dname FROM department WHERE division = 'AS' OR division = 'NEB'	college_3


Line 1423:
golden truth: SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
prediction: SELECT dname FROM department WHERE division = 'AS' OR building = 'NEB'	college_3


Line 1433:
golden truth: SELECT max(Age) FROM STUDENT	voter_2
prediction: SELECT age FROM student ORDER BY age DESC LIMIT 1	voter_2


Line 1448:
golden truth: SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
prediction: SELECT DISTINCT president_vote FROM voting_record JOIN 08/30/2015 ON election_cycle = 08/30/2015	voter_2


Line 1449:
golden truth: SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
prediction: SELECT DISTINCT president_vote FROM voting_record JOIN 08/30/2015 ON election_cycle = 08/30/2015	voter_2


Line 1461:
golden truth: SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
prediction: SELECT COUNT( * ) , election_cycle FROM voting_record GROUP BY election_cycle	voter_2


Line 1468:
golden truth: SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
prediction: SELECT DISTINCT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2


Line 1473:
golden truth: SELECT price_range FROM HOTELS	cre_Theme_park
prediction: SELECT DISTINCT price_range FROM hotels	cre_Theme_park


Line 1479:
golden truth: SELECT Tourist_Details FROM VISITORS	cre_Theme_park
prediction: SELECT COUNT( DISTINCT tourist_id ) FROM visitors	cre_Theme_park


Line 1480:
golden truth: SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
prediction: SELECT price_range FROM hotels WHERE star_rating_code = 5	cre_Theme_park


Line 1481:
golden truth: SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
prediction: SELECT price_range FROM hotels WHERE star_rating_code = 5	cre_Theme_park


Line 1482:
golden truth: SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
prediction: SELECT AVG( price_range ) FROM hotels WHERE star_rating_code = 5 AND pets_allowed_yn = 'pets'	cre_Theme_park


Line 1483:
golden truth: SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
prediction: SELECT AVG( price_range ) FROM hotels WHERE pets_allowed_yn = 5	cre_Theme_park


Line 1498:
golden truth: SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
prediction: SELECT AVG( price_range ) , star_rating_code FROM hotels GROUP BY star_rating_code	cre_Theme_park


Line 1499:
golden truth: SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
prediction: SELECT AVG( price_range ) , star_rating_code FROM hotels GROUP BY star_rating_code	cre_Theme_park


Line 1500:
golden truth: SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
prediction: SELECT AVG( price_range ) , pets_allowed_yn FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park


Line 1501:
golden truth: SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
prediction: SELECT AVG( price_range ) , pets_allowed_yn FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park


Line 1512:
golden truth: SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
prediction: SELECT name FROM wine ORDER BY score DESC LIMIT 1	wine_1


Line 1513:
golden truth: SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
prediction: SELECT name FROM wine ORDER BY score DESC LIMIT 1	wine_1


Line 1514:
golden truth: SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
prediction: SELECT winery FROM wine ORDER BY score DESC LIMIT 1	wine_1


Line 1515:
golden truth: SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
prediction: SELECT winery FROM wine ORDER BY score DESC LIMIT 1	wine_1


Line 1516:
golden truth: SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
prediction: SELECT name FROM wine WHERE year = 2008	wine_1


Line 1517:
golden truth: SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
prediction: SELECT name FROM wine WHERE year = 2008	wine_1


Line 1519:
golden truth: SELECT Grape ,  Appelation FROM WINE	wine_1
prediction: SELECT grape , appelation FROM wine JOIN grapes ON grape = id	wine_1


Line 1526:
golden truth: SELECT Name FROM WINE WHERE score  >  90	wine_1
prediction: SELECT DISTINCT name FROM wine WHERE score > 90	wine_1


Line 1530:
golden truth: SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
prediction: SELECT COUNT( * ) FROM appellations WHERE county = 'Napa Country'	wine_1


Line 1531:
golden truth: SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
prediction: SELECT COUNT( * ) FROM appellations WHERE county = 'Napa County'	wine_1


Line 1532:
golden truth: SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
prediction: SELECT grape , COUNT( * ) FROM wine GROUP BY grape	wine_1


Line 1533:
golden truth: SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
prediction: SELECT grape , COUNT( * ) FROM wine JOIN grapes ON grape = id GROUP BY grape	wine_1


Line 1535:
golden truth: SELECT avg(Price) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
prediction: SELECT name , AVG( price ) FROM wine GROUP BY name	wine_1


Line 1537:
golden truth: SELECT DISTINCT Name FROM WINE WHERE Price  >  (SELECT min(Price) FROM wine WHERE Winery  =  "John Anthony")	wine_1
prediction: SELECT DISTINCT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE winery = 'John Anthony')	wine_1


Line 1539:
golden truth: SELECT DISTINCT Name FROM WINE ORDER BY Name	wine_1
prediction: SELECT name FROM wine ORDER BY name ASC	wine_1


Line 1541:
golden truth: SELECT DISTINCT Name FROM WINE ORDER BY price	wine_1
prediction: SELECT name FROM wine ORDER BY price ASC	wine_1


Line 1547:
golden truth: SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"	wine_1
prediction: SELECT AVG( price ) , AVG( cases ) FROM wine WHERE grape = 'Zinfandel' AND year = 2009	wine_1


Line 1548:
golden truth: SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
prediction: SELECT MAX( price ) , score FROM wine WHERE appelation = 'St. Helena'	wine_1


Line 1549:
golden truth: SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
prediction: SELECT MAX( price ) , score FROM wine WHERE appelation = 'St. Helena'	wine_1


Line 1550:
golden truth: SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
prediction: SELECT MAX( price ) , score , year FROM wine GROUP BY year	wine_1


Line 1551:
golden truth: SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
prediction: SELECT MAX( price ) , score , year FROM wine GROUP BY year	wine_1


Line 1557:
golden truth: SELECT Name FROM WINE WHERE YEAR  <  (SELECT min(YEAR) FROM WINE WHERE Winery  =  "Brander")	wine_1
prediction: SELECT name FROM wine WHERE name != (SELECT name FROM wine WHERE winery = 'Brander')	wine_1


Line 1560:
golden truth: SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.GRAPE  =  T2.GRAPE WHERE T1.Color  =  "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3	wine_1
prediction: SELECT winery FROM wine JOIN grapes ON grape = grape WHERE color = 'white' GROUP BY winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1


Line 1561:
golden truth: SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.GRAPE  =  T2.GRAPE WHERE T1.Color  =  "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3	wine_1
prediction: SELECT winery FROM wine JOIN grapes ON grape = grape WHERE color = 'white' GROUP BY winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1


Line 1562:
golden truth: SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
prediction: SELECT grape , winery FROM wine WHERE price > 100 ORDER BY year ASC	wine_1


Line 1563:
golden truth: SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
prediction: SELECT grape , winery FROM wine WHERE price > 100 ORDER BY year ASC	wine_1


Line 1566:
golden truth: SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
prediction: SELECT appelation FROM wine WHERE year > 2008 AND area != 'Central Coast'	wine_1


Line 1567:
golden truth: SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
prediction: SELECT appelation FROM wine WHERE year > 2008 AND area != 'Central Coast'	wine_1


Line 1577:
golden truth: SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
prediction: SELECT date_of_birth FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school


Line 1579:
golden truth: SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
prediction: SELECT date_joined_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school


Line 1581:
golden truth: SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
prediction: SELECT date_left_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school


Line 1585:
golden truth: SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"	driving_school
prediction: SELECT nickname FROM staff WHERE first_name = 'Janessa' AND last_name = 'Janessa Sawayn'	driving_school


Line 1594:
golden truth: SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
prediction: SELECT customer_status_code , cell_mobile_phone_number , email_address FROM customers WHERE last_name = 'Kohler' OR first_name = 'Marina'	driving_school


Line 1595:
golden truth: SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
prediction: SELECT customer_status_code , phone_number , email_address FROM customers WHERE first_name = 'Kohler' OR first_name = 'Marina'	driving_school


Line 1599:
golden truth: SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard"	driving_school
prediction: SELECT date_became_customer FROM customers WHERE date_became_customer<(SELECT date_became_customer FROM customers WHERE first_name = 'Bernhard')	driving_school


Line 1605:
golden truth: SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1	driving_school
prediction: SELECT customer_status_code FROM customers GROUP BY customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_schoolSELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school


Line 1614:
golden truth: SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
prediction: SELECT last_name FROM customers UNION SELECT last_name FROM customers JOIN staff ON customer_id = last_name	driving_school


Line 1615:
golden truth: SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
prediction: SELECT last_name FROM customers UNION SELECT last_name FROM customers JOIN staff ON customer_id = last_name	driving_school


