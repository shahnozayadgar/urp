SELECT count(*) FROM head WHERE age  >  56	department_management
SELECT name ,  born_state ,  age FROM head ORDER BY age	department_management
SELECT creation ,  name ,  budget_in_billions FROM department	department_management
SELECT max(budget_in_billions) ,  min(budget_in_billions) FROM department	department_management
SELECT avg(num_employees) FROM department WHERE ranking BETWEEN 10 AND 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT DISTINCT T1.creation FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T3.born_state  =  'Alabama'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING count(*)  >=  3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1	department_management
SELECT T1.name ,  T1.num_employees FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id WHERE T2.temporary_acting  =  'Yes'	department_management
SELECT count(DISTINCT temporary_acting) FROM management	department_management
SELECT count(*) FROM department WHERE department_id NOT IN (SELECT department_id FROM management);	department_management
SELECT DISTINCT T1.age FROM management AS T2 JOIN head AS T1 ON T1.head_id  =  T2.head_id WHERE T2.temporary_acting  =  'Yes'	department_management
SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Treasury' INTERSECT SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Homeland Security'	department_management
SELECT T1.department_id ,  T1.name ,  count(*) FROM management AS T2 JOIN department AS T1 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id HAVING count(*)  >  1	department_management
SELECT head_id ,  name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT T1.student_id ,  T2.course_name FROM student_course_registrations AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English"	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English"	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org"	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org"	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail"	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail"	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance	student_assessment
SELECT count(*) FROM book	book_2
SELECT Writer FROM book ORDER BY Writer ASC	book_2
SELECT Title FROM book ORDER BY Issues ASC	book_2
SELECT Title FROM book WHERE Writer != "Elaine Lee"	book_2
SELECT Title ,  Issues FROM book	book_2
SELECT Publication_Date FROM publication ORDER BY Price DESC	book_2
SELECT DISTINCT Publisher FROM publication WHERE Price  >  5000000	book_2
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1	book_2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3	book_2
SELECT T1.Title ,  T2.Publication_Date FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID	book_2
SELECT T1.Writer FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID WHERE T2.Price  >  4000000	book_2
SELECT T1.Title FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Price DESC	book_2
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*)  >  1	book_2
SELECT Publisher ,  COUNT(*) FROM publication GROUP BY Publisher	book_2
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1	book_2
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1	book_2
SELECT Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM publication)	book_2
SELECT Publisher FROM publication WHERE Price  >  10000000 INTERSECT SELECT Publisher FROM publication WHERE Price  <  5000000	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT Price FROM publication WHERE Publisher  =  "Person" OR Publisher  =  "Wiley"	book_2
SELECT email FROM user_profiles WHERE name  =  'Mary'	twitter_1
SELECT partitionid FROM user_profiles WHERE name  =  'Iron Man'	twitter_1
SELECT count(*) FROM user_profiles	twitter_1
SELECT count(*) FROM follows	twitter_1
SELECT count(*) FROM follows GROUP BY f1	twitter_1
SELECT count(*) FROM tweets	twitter_1
SELECT count(DISTINCT UID) FROM tweets	twitter_1
SELECT name ,  email FROM user_profiles WHERE name LIKE '%Swift%'	twitter_1
SELECT name FROM user_profiles WHERE email LIKE '%superstar%' OR email LIKE '%edu%'	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT name ,  email FROM user_profiles WHERE followers  >  1000	twitter_1
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 WHERE T1.name  =  'Tyler Swift')	twitter_1
SELECT T1.name ,  T1.email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  1	twitter_1
SELECT T1.name FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" INTERSECT SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Susan"	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" OR T1.name  =  "Susan"	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 1	twitter_1
SELECT name ,  email FROM user_profiles ORDER BY followers LIMIT 1	twitter_1
SELECT name ,  followers FROM user_profiles ORDER BY followers DESC	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 5	twitter_1
SELECT text FROM tweets ORDER BY createdate	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid	twitter_1
SELECT T1.name ,  T1.partitionid FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  <  2	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID NOT IN (SELECT UID FROM tweets)	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID IN (SELECT UID FROM tweets)	twitter_1
SELECT max(followers) ,  sum(followers) FROM user_profiles	twitter_1
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
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300"	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300"	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams"	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300"	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%'	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%'	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT name FROM media_types;	store_1
SELECT name FROM media_types;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT name FROM playlists;	store_1
SELECT name FROM playlists;	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
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
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC"	chinook_1
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC"	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica"	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz"	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz"	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie"	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie"	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174"	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174"	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber"	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber"	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil"	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil"	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany"	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany"	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file"	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file"	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop"	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop"	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop"	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop"	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock'	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock'	chinook_1
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
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole'	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole'	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor'	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT Model_name FROM chip_model WHERE Launch_year BETWEEN 2002 AND 2004;	phone_1
SELECT Model_name ,  RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1;	phone_1
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760";	phone_1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation";	phone_1
SELECT max(T1.RAM_MiB) ,  min(T1.RAM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT avg(T1.ROM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 OR T1.RAM_MiB  >  32;	phone_1
SELECT Hardware_Model_name ,  Company_name FROM phone WHERE Accreditation_type LIKE 'Full';	phone_1
SELECT T1.Char_cells ,  T1.Pixels ,  T1.Hardware_colours FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics";	phone_1
SELECT Company_name ,  count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1;	phone_1
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*)  >  1;	phone_1
SELECT max(used_kb) , min(used_kb) , avg(used_kb) FROM screen_mode;	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 ORDER BY T1.RAM_MiB DESC LIMIT 1;	phone_1
SELECT T1.WiFi , T3.Type FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T3.Type = "Text" OR T1.RAM_MiB  >  32;	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics" OR t2.Company_name  =  "Nokia Corporation"	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE t2.Company_name  =  "Nokia Corporation" AND T1.Type != "Text";	phone_1
SELECT DISTINCT T2.Hardware_Model_name , T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.used_kb BETWEEN 10 AND 15;	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_level FROM phone GROUP BY Accreditation_level HAVING count(*)  >  3	phone_1
SELECT * FROM chip_model	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT model_name FROM chip_model ORDER BY launch_year	phone_1
SELECT avg(RAM_MiB) FROM chip_model WHERE model_name NOT IN (SELECT chip_model FROM phone)	phone_1
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full'	phone_1
SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Provisional' INTERSECT SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Full'	phone_1
SELECT count(*) FROM body_builder	body_builder
SELECT Total FROM body_builder ORDER BY Total ASC	body_builder
SELECT Snatch ,  Clean_Jerk FROM body_builder ORDER BY Snatch ASC	body_builder
SELECT avg(Snatch) FROM body_builder	body_builder
SELECT Clean_Jerk FROM body_builder ORDER BY Total DESC LIMIT 1	body_builder
SELECT Birth_Date FROM People ORDER BY Height ASC	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  >  300	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	body_builder
SELECT T2.Birth_Date ,  T2.Birth_Place FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC LIMIT 1	body_builder
SELECT T2.Height FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  <  315	body_builder
SELECT avg(T1.Total) FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC	body_builder
SELECT Birth_Place ,  COUNT(*) FROM people GROUP BY Birth_Place	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*)  >=  2	body_builder
SELECT Height ,  Weight FROM people ORDER BY Height DESC	body_builder
SELECT * FROM body_builder	body_builder
SELECT Name ,  birth_place FROM people EXCEPT SELECT T1.Name ,  T1.birth_place FROM people AS T1 JOIN body_builder AS T2 ON T1.people_id  =  T2.people_id	body_builder
SELECT count(DISTINCT Birth_Place) FROM people	body_builder
SELECT count(*) FROM people WHERE people_id NOT IN (SELECT People_ID FROM body_builder)	body_builder
SELECT T2.weight FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T1.snatch  >  140 OR T2.height  >  200;	body_builder
SELECT T1.total FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T2.Birth_Date LIKE "%January%";	body_builder
SELECT min(snatch) FROM body_builder	body_builder
SELECT count(*) FROM Apartment_Bookings	apartment_rentals
SELECT count(*) FROM Apartment_Bookings	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager  =  "Emma"	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager  =  "Emma"	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager  =  "Brenden"	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager  =  "Brenden"	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%"	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%"	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio"	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio"	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat"	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat"	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male"	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male"	apartment_rentals
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id	apartment_rentals
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634"	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634"	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female"	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square"	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle"	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle"	apartment_rentals
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
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1	apartment_rentals
SELECT T1.name ,  T2.name FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id	soccer_1
SELECT count(*) FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id WHERE T1.name  =  "England"	soccer_1
SELECT avg(weight) FROM Player	soccer_1
SELECT max(weight) ,  min(weight) FROM Player	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating  >  ( SELECT avg(overall_rating) FROM Player_Attributes )	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.dribbling  =  ( SELECT max(overall_rating) FROM Player_Attributes)	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing  >  90 AND T2.preferred_foot  =  "right"	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot  =  "left" AND T2.overall_rating  >=  85 AND T2.overall_rating  <=  90	soccer_1
SELECT preferred_foot ,  avg(overall_rating) FROM Player_Attributes GROUP BY preferred_foot	soccer_1
SELECT preferred_foot ,  count(*) FROM Player_Attributes WHERE overall_rating  >  80 GROUP BY preferred_foot	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating  >  85	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 AND height  <=  190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot  =  "left"	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY overall_rating DESC LIMIT 3	soccer_1
SELECT DISTINCT T1.player_name ,  T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY potential DESC LIMIT 5	soccer_1
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
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
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
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
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
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
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
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
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
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel"	insurance_and_eClaims
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel"	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1)	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers)	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform"	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open"	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open"	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies)	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies)	insurance_and_eClaims
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
SELECT T2.name ,  T3.name FROM wedding AS T1 JOIN people AS T2 ON T1.male_id  =  T2.people_id JOIN people AS T3 ON T1.female_id  =  T3.people_id WHERE T1.year  >  2014	wedding
SELECT name ,  age FROM people WHERE is_male  =  'T' AND people_id NOT IN (SELECT male_id FROM wedding)	wedding
SELECT name FROM church EXCEPT SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id WHERE T2.year  =  2015	wedding
SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id GROUP BY T1.church_id HAVING count(*)  >=  2	wedding
SELECT T2.name FROM wedding AS T1 JOIN people AS T2 ON T1.female_id  =  T2.people_id WHERE T1.year  =  2016 AND T2.is_male  =  'F' AND T2.country  =  'Canada'	wedding
SELECT count(*) FROM wedding WHERE YEAR  =  2016	wedding
SELECT T4.name FROM wedding AS T1 JOIN people AS T2 ON T1.male_id  =  T2.people_id JOIN people AS T3 ON T1.female_id  =  T3.people_id JOIN church AS T4 ON T4.church_id  =  T1.church_id WHERE T2.age  >  30 OR T3.age  >  30	wedding
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
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  =  10	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  >  (SELECT avg(rating) FROM review)	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  <  5	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  >  8 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  <  5	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rank  >  3 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id HAVING avg(T2.rating)  >  5	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) LIMIT 1	epinions_1
SELECT title FROM item ORDER BY title	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id ORDER BY count(*) DESC LIMIT 1	epinions_1
SELECT T1.title ,  T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) DESC LIMIT 1	epinions_1
SELECT T1.title ,  T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rank) DESC LIMIT 1	epinions_1
SELECT T1.name ,  avg(T2.rating) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id	epinions_1
SELECT T1.name ,  count(*) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id ORDER BY T2.rating DESC LIMIT 1	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.source_u_id GROUP BY T2.source_u_id ORDER BY avg(trust) DESC LIMIT 1	epinions_1
SELECT T1.name ,  avg(trust) FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.target_u_id GROUP BY T2.target_u_id	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.target_u_id ORDER BY trust LIMIT 1	epinions_1
SELECT title FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT count(*) FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT count(*) FROM gymnast	gymnast
SELECT count(*) FROM gymnast	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT Name FROM People ORDER BY Name ASC	gymnast
SELECT Name FROM People ORDER BY Name ASC	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T2.Hometown != "Santo Domingo"	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T2.Hometown != "Santo Domingo"	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5	gymnast
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Age ASC LIMIT 1	gymnast
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Age ASC LIMIT 1	gymnast
SELECT avg(T2.Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT avg(T2.Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T1.Total_Points  >  57.5	gymnast
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T1.Total_Points  >  57.5	gymnast
SELECT T2.Hometown ,  COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown	gymnast
SELECT T2.Hometown ,  COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*)  >=  2	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*)  >=  2	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Height ASC	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Height ASC	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T1.Total_Points DESC	gymnast
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T1.Total_Points DESC	gymnast
SELECT count(*) FROM browser WHERE market_share  >=  5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id ,  name ,  market_share FROM browser	browser_web
SELECT max(market_share) ,  min(market_share) ,  avg(market_share) FROM browser	browser_web
SELECT id ,  market_share FROM browser WHERE name  =  'Safari'	browser_web
SELECT name ,  operating_system FROM web_client_accelerator WHERE CONNECTION != 'Broadband'	browser_web
SELECT T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id  =  T2.browser_id JOIN web_client_accelerator AS T3 ON T2.accelerator_id  =  T3.id WHERE T3.name  =  'CProxy' AND T2.compatible_since_year  >  1998	browser_web
SELECT T1.id ,  T1.Name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	browser_web
SELECT T1.id ,  T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id  =  T2.browser_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	browser_web
SELECT T1.compatible_since_year FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.browser_id  =  T2.id JOIN web_client_accelerator AS T3 ON T1.accelerator_id  =  T3.id WHERE T3.name  =  'CACHEbox' AND T2.name  =  'Internet Explorer'	browser_web
SELECT count(DISTINCT client) FROM web_client_accelerator	browser_web
SELECT count(*) FROM web_client_accelerator WHERE id NOT IN ( SELECT accelerator_id FROM accelerator_compatible_browser );	browser_web
SELECT DISTINCT T1.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.market_share  >  15;	browser_web
SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T1.name  =  'CACHEbox' INTERSECT SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T1.name  =  'Fasterfox'	browser_web
SELECT name ,  operating_system FROM web_client_accelerator EXCEPT SELECT T1.name ,  T1.operating_system FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.name  =  'Opera'	browser_web
SELECT name FROM web_client_accelerator WHERE name LIKE "%Opera%"	browser_web
SELECT Operating_system ,  count(*) FROM web_client_accelerator GROUP BY Operating_system	browser_web
SELECT T2.name ,  T3.name FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.browser_id  =  T2.id JOIN web_client_accelerator AS T3 ON T1.accelerator_id  =  T3.id ORDER BY T1.compatible_since_year DESC	browser_web
SELECT count(*) FROM school	school_finance
SELECT count(*) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name	school_finance
SELECT school_name ,  LOCATION ,  mascot FROM school	school_finance
SELECT sum(enrollment) ,  avg(enrollment) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment  >  (SELECT avg(enrollment) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment LIMIT 1	school_finance
SELECT avg(enrollment) ,  max(enrollment) ,  min(enrollment) FROM school	school_finance
SELECT county ,  count(*) ,  sum(enrollment) FROM school GROUP BY county	school_finance
SELECT count(DISTINCT T1.donator_name) FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  "Glenn"	school_finance
SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC	school_finance
SELECT school_name FROM school WHERE school_id NOT IN (SELECT school_id FROM endowment)	school_finance
SELECT T2.school_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id GROUP BY T1.school_id HAVING sum(T1.amount)  <=  10	school_finance
SELECT T1.donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Glenn' INTERSECT SELECT T1.donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Triton'	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount  <  9	school_finance
SELECT amount ,  donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT T2.school_name ,  T1.budgeted ,  T1.invested FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T1.year  >=  2002	school_finance
SELECT DISTINCT donator_name FROM endowment	school_finance
SELECT count(*) FROM budget WHERE budgeted  <  invested	school_finance
SELECT sum(T1.budgeted) FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Glenn'	school_finance
SELECT T2.school_name FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id JOIN endowment AS T3 ON T2.school_id  =  T3.school_id GROUP BY T2.school_name HAVING sum(T1.budgeted)  >  100 OR sum(T3.amount)  >  10	school_finance
SELECT T2.School_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T1.amount  >  8.5 GROUP BY T1.school_id HAVING count(*)  >  1	school_finance
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1)	school_finance
SELECT T1.School_name ,  T1.Mascot ,  T1.IHSAA_Football_Class FROM school AS T1 JOIN budget AS T2 ON T1.school_id  =  T2.school_id WHERE Budgeted  >  6000 OR YEAR  <  2003 ORDER BY T2.total_budget_percent_invested ,  T2.total_budget_percent_budgeted	school_finance
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
SELECT T2.name ,  sum(T1.show_times_per_day) FROM schedule AS T1 JOIN cinema AS T2 ON T1.cinema_id  =  T2.cinema_id GROUP BY T1.cinema_id	cinema
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id	cinema
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id	cinema
SELECT T3.name ,  T2.title ,  T1.date ,  T1.price FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id JOIN cinema AS T3 ON T1.cinema_id  =  T3.cinema_id	cinema
SELECT title ,  directed_by FROM film WHERE film_id NOT IN (SELECT film_id FROM schedule)	cinema
SELECT T2.directed_by FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.directed_by ORDER BY sum(T1.show_times_per_day) DESC LIMIT 1	cinema
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
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID	phone_market
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID ORDER BY T2.Ranking	phone_market
SELECT T3.Name FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID WHERE T2.Num_of_shops  >  50	phone_market
SELECT T2.Name ,  sum(T1.Num_of_stock) FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name	phone_market
SELECT T2.Name FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name HAVING sum(T1.Num_of_stock)  >=  2000 ORDER BY sum(T1.Num_of_stock) DESC	phone_market
SELECT Name FROM phone WHERE Phone_id NOT IN (SELECT Phone_ID FROM phone_market)	phone_market
SELECT document_status_code FROM Ref_Document_Status;	cre_Doc_Control_Systems
SELECT document_status_description FROM Ref_Document_Status WHERE document_status_code = "working";	cre_Doc_Control_Systems
SELECT document_type_code FROM Ref_Document_Types;	cre_Doc_Control_Systems
SELECT document_type_description FROM Ref_Document_Types WHERE document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT shipping_agent_name FROM Ref_Shipping_Agents;	cre_Doc_Control_Systems
SELECT shipping_agent_code FROM Ref_Shipping_Agents WHERE shipping_agent_name = "UPS";	cre_Doc_Control_Systems
SELECT role_code FROM ROLES;	cre_Doc_Control_Systems
SELECT role_description FROM ROLES WHERE role_code = "ED";	cre_Doc_Control_Systems
SELECT count(*) FROM Employees;	cre_Doc_Control_Systems
SELECT T1.role_description FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code WHERE T2.employee_name = "Koby";	cre_Doc_Control_Systems
SELECT document_id ,  receipt_date FROM Documents;	cre_Doc_Control_Systems
SELECT T1.role_description ,  T2.role_code ,  count(*) FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code GROUP BY T2.role_code;	cre_Doc_Control_Systems
SELECT Roles.role_description , count(Employees.employee_id) FROM ROLES JOIN Employees ON Employees.role_code = Roles.role_code GROUP BY Employees.role_code HAVING count(Employees.employee_id)  >  1;	cre_Doc_Control_Systems
SELECT Ref_Document_Status.document_status_description FROM Ref_Document_Status JOIN Documents ON Documents.document_status_code = Ref_Document_Status.document_status_code WHERE Documents.document_id = 1;	cre_Doc_Control_Systems
SELECT count(*) FROM Documents WHERE document_status_code = "done";	cre_Doc_Control_Systems
SELECT document_type_code FROM Documents WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT Ref_Shipping_Agents.shipping_agent_name FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Documents.document_id = 2;	cre_Doc_Control_Systems
SELECT count(*) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT Ref_Shipping_Agents.shipping_agent_name , count(Documents.document_id) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code GROUP BY Ref_Shipping_Agents.shipping_agent_code ORDER BY count(Documents.document_id) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT receipt_date FROM Documents WHERE document_id = 3;	cre_Doc_Control_Systems
SELECT Addresses.address_details FROM Addresses JOIN Documents_Mailed ON Documents_Mailed.mailed_to_address_id = Addresses.address_id WHERE document_id = 4;	cre_Doc_Control_Systems
SELECT mailing_date FROM Documents_Mailed WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" EXCEPT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" INTERSECT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT draft_details FROM Document_Drafts WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT count(*) FROM Draft_Copies WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id , count(copy_number) FROM Draft_Copies GROUP BY document_id ORDER BY count(copy_number) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT document_id , count(*) FROM Draft_Copies GROUP BY document_id HAVING count(*)  >  1;	cre_Doc_Control_Systems
SELECT Employees.employee_name FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id WHERE Circulation_History.document_id = 1;	cre_Doc_Control_Systems
SELECT employee_name FROM Employees EXCEPT SELECT Employees.employee_name FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id	cre_Doc_Control_Systems
SELECT Employees.employee_name , count(*) FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id GROUP BY Circulation_History.document_id , Circulation_History.draft_number , Circulation_History.copy_number ORDER BY count(*) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT document_id ,  count(DISTINCT employee_id) FROM Circulation_History GROUP BY document_id;	cre_Doc_Control_Systems
SELECT T1.event_details FROM EVENTS AS T1 JOIN Services AS T2 ON T1.Service_ID  =  T2.Service_ID WHERE T2.Service_Type_Code  =  'Marriage'	local_govt_in_alabama
SELECT T1.event_id ,  T1.event_details FROM EVENTS AS T1 JOIN Participants_in_Events AS T2 ON T1.Event_ID  =  T2.Event_ID GROUP BY T1.Event_ID HAVING count(*)  >  1	local_govt_in_alabama
SELECT T1.Participant_ID ,  T1.Participant_Type_Code ,  count(*) FROM Participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID GROUP BY T1.Participant_ID	local_govt_in_alabama
SELECT Participant_ID ,  Participant_Type_Code ,  Participant_Details FROM  Participants	local_govt_in_alabama
SELECT count(*) FROM participants WHERE participant_type_code  =  'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code	local_govt_in_alabama
SELECT service_id ,  event_details FROM EVENTS	local_govt_in_alabama
SELECT count(*) FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE T1.participant_details LIKE '%Dr.%'	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT T3.service_id ,  T4.Service_Type_Code FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID JOIN EVENTS AS T3 ON T2.Event_ID   =  T3.Event_ID JOIN services AS T4 ON T3.service_id  =  T4.service_id GROUP BY T3.service_id ORDER BY count(*) ASC LIMIT 1	local_govt_in_alabama
SELECT Event_ID FROM Participants_in_Events GROUP BY Event_ID ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT event_id FROM EVENTS EXCEPT SELECT T1.event_id FROM Participants_in_Events AS T1 JOIN Participants AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE Participant_Details  =  'Kenyatta Kuhn'	local_govt_in_alabama
SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id  =  T2.service_id WHERE T2.event_details  =  'Success' INTERSECT SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id  =  T2.service_id WHERE T2.event_details  =  'Fail'	local_govt_in_alabama
SELECT count(*) FROM EVENTS WHERE event_id NOT IN (SELECT event_id FROM Participants_in_Events)	local_govt_in_alabama
SELECT count(DISTINCT participant_id) FROM participants_in_Events	local_govt_in_alabama
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
SELECT T3.Name ,  T2.Machine_series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID	machine_repair
SELECT T3.Name ,  T2.Machine_series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID ORDER BY T2.quality_rank	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID ORDER BY T2.quality_rank	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70	machine_repair
SELECT T2.Name ,  COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID  =  T2.technician_ID GROUP BY T2.Name	machine_repair
SELECT T2.Name ,  COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID  =  T2.technician_ID GROUP BY T2.Name	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT count(*) FROM perpetrator	perpetrator
SELECT Date FROM perpetrator ORDER BY Killed DESC	perpetrator
SELECT Injured FROM perpetrator ORDER BY Injured ASC	perpetrator
SELECT avg(Injured) FROM perpetrator	perpetrator
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1	perpetrator
SELECT Name FROM People ORDER BY Height ASC	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Country != "China"	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Weight DESC LIMIT 1	perpetrator
SELECT sum(T2.Killed) FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Height  >  1.84	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Country  =  "China" OR T2.Country  =  "Japan"	perpetrator
SELECT T1.Height FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Injured DESC	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Year DESC	perpetrator
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM perpetrator)	perpetrator
SELECT Country FROM perpetrator WHERE Injured  >  50 INTERSECT SELECT Country FROM perpetrator WHERE Injured  <  20	perpetrator
SELECT count(DISTINCT LOCATION) FROM perpetrator	perpetrator
SELECT T2.Date FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1	perpetrator
SELECT max(YEAR) FROM perpetrator;	perpetrator
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
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  >=  4 ORDER BY T1.year	movie_1
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  >=  4 ORDER BY T1.year	movie_1
SELECT T1.director ,  T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  =  5	movie_1
SELECT T1.director ,  T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  =  5	movie_1
SELECT T2.name ,  avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T2.name	movie_1
SELECT T2.name ,  avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T2.name	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID  =  T2.rID WHERE ratingDate  =  "null"	movie_1
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID  =  T2.rID WHERE ratingDate  =  "null"	movie_1
SELECT avg(T1.stars) ,  T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT min(YEAR) FROM Movie)	movie_1
SELECT avg(T1.stars) ,  T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT min(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT max(T1.stars) ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT max(T1.stars) ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT T2.title ,  T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  >  (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.director  =  "James Cameron")	movie_1
SELECT T2.title ,  T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  >  (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.director  =  "James Cameron")	movie_1
SELECT T3.name ,  T2.title ,  T1.stars ,  T1.ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID ORDER BY T3.name ,  T2.title ,  T1.stars	movie_1
SELECT T3.name ,  T2.title ,  T1.stars ,  T1.ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID ORDER BY T3.name ,  T2.title ,  T1.stars	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T1.rID HAVING COUNT(*)  >=  3	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T1.rID HAVING COUNT(*)  >=  3	movie_1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.title  =  'Gone with the Wind'	movie_1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.title  =  'Gone with the Wind'	movie_1
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Sarah Martinez'	movie_1
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Sarah Martinez'	movie_1
SELECT DISTINCT T3.name ,  T2.title ,  T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.director  =  T3.name	movie_1
SELECT DISTINCT T3.name ,  T2.title ,  T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.director  =  T3.name	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson'	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson'	movie_1
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title	movie_1
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title	movie_1
SELECT T1.title ,  T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title	movie_1
SELECT T1.title ,  T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1	movie_1
SELECT count(*) ,  T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID GROUP BY T1.director	movie_1
SELECT count(*) ,  T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID GROUP BY T1.director	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1	movie_1
SELECT T2.title ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID ORDER BY T1.stars DESC LIMIT 3	movie_1
SELECT T2.title ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID ORDER BY T1.stars DESC LIMIT 3	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE director != "null" GROUP BY director	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE director != "null" GROUP BY director	movie_1
SELECT T2.title ,  T1.rID ,  T1.stars ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.rID	movie_1
SELECT T2.title ,  T1.rID ,  T1.stars ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.rID	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T2.director	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T2.director	movie_1
SELECT T2.title ,  T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1	movie_1
SELECT T2.title ,  T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars BETWEEN 3 AND 5	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars BETWEEN 3 AND 5	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  >  3	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  >  3	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris"	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris"	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Brittany Harris' OR T2.year  >  2000	movie_1
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Brittany Harris' OR T2.year  >  2000	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  4	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  4	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  4	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  4	movie_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT T2.roomName ,  T1.Rate ,  T1.CheckIn ,  T1.CheckOut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;	inn_1
SELECT T2.roomName ,  T1.Rate ,  T1.CheckIn ,  T1.CheckOut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT T2.decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T2.decor ORDER BY count(T2.decor) ASC LIMIT 1;	inn_1
SELECT T2.decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T2.decor ORDER BY count(T2.decor) ASC LIMIT 1;	inn_1
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T2.maxOccupancy  =  T1.Adults + T1.Kids;	inn_1
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T2.maxOccupancy  =  T1.Adults + T1.Kids;	inn_1
SELECT T1.firstname ,  T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T1.Rate - T2.basePrice  >  0	inn_1
SELECT T1.firstname ,  T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T1.Rate - T2.basePrice  >  0	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT T2.roomName ,  count(*) ,  T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room	inn_1
SELECT T2.roomName ,  count(*) ,  T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room HAVING count(*)  >  60	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room HAVING count(*)  >  60	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE firstname LIKE '%ROY%'	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE firstname LIKE '%ROY%'	inn_1
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
SELECT T3.Party_Theme ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID	party_host
SELECT T3.Party_Theme ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID	party_host
SELECT T3.Location ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID ORDER BY T2.Age	party_host
SELECT T3.Location ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID ORDER BY T2.Age	party_host
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T2.Age  >  50	party_host
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T2.Age  >  50	party_host
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T3.Number_of_hosts  >  20	party_host
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T3.Number_of_hosts  >  20	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)	party_host
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
SELECT T2.Delegate ,  T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District	election
SELECT T2.Delegate ,  T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District	election
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000	election
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000	election
SELECT count(DISTINCT T2.Delegate) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  >  50000	election
SELECT count(DISTINCT T2.Delegate) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  >  50000	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T2.Committee  =  "Appropriations"	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T2.Committee  =  "Appropriations"	election
SELECT T1.Delegate ,  T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID	election
SELECT T1.Delegate ,  T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID	election
SELECT T2.Governor FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1	election
SELECT T2.Governor FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1	election
SELECT T2.Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1 OR T1.District  =  2	election
SELECT T2.Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1 OR T1.District  =  2	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic"	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic"	election
SELECT T1.County_name ,  COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id	election
SELECT T1.County_name ,  COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id	election
SELECT T2.Party ,  COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party	election
SELECT T2.Party ,  COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id HAVING COUNT(*)  >=  2	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id HAVING COUNT(*)  >=  2	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Economic Matters"	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Economic Matters"	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Liberal"	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Liberal"	election
SELECT ResName FROM Restaurant;	restaurant_1
SELECT Address FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT Rating FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT ResTypeName FROM Restaurant_Type;	restaurant_1
SELECT ResTypeDescription FROM Restaurant_Type WHERE ResTypeName = "Sandwich";	restaurant_1
SELECT ResName , Rating FROM Restaurant ORDER BY Rating DESC LIMIT 1;	restaurant_1
SELECT Age FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Fname , Lname FROM Student WHERE Major  =  600;	restaurant_1
SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT count(*) FROM Student WHERE Advisor =  1121;	restaurant_1
SELECT Advisor ,  count(*) FROM Student GROUP BY Advisor ORDER BY count(Advisor) DESC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major HAVING count(Major) BETWEEN 2 AND 30;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major = 600;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major != 600 AND Sex = 'F';	restaurant_1
SELECT count(*) FROM Restaurant JOIN Type_Of_Restaurant ON Restaurant.ResID =  Type_Of_Restaurant.ResID JOIN Restaurant_Type ON Type_Of_Restaurant.ResTypeID = Restaurant_Type.ResTypeID GROUP BY Type_Of_Restaurant.ResTypeID HAVING Restaurant_Type.ResTypeName = 'Sandwich'	restaurant_1
SELECT sum(Spent) FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith";	restaurant_1
SELECT count(*) FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith" AND Restaurant.ResName = "Subway";	restaurant_1
SELECT TIME FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith" AND Restaurant.ResName = "Subway";	restaurant_1
SELECT Restaurant.ResName ,  sum(Visits_Restaurant.Spent) FROM Visits_Restaurant JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID GROUP BY Restaurant.ResID ORDER BY sum(Visits_Restaurant.Spent) ASC LIMIT 1;	restaurant_1
SELECT Student.Fname , Student.Lname FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID GROUP BY Student.StuID ORDER BY count(*) DESC LIMIT 1;	restaurant_1
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM inst	icfp_1
SELECT count(*) FROM inst	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Jeremy" AND t1.lname  =  "Gibbons"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Jeremy" AND t1.lname  =  "Gibbons"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Aaron" AND t1.lname  =  "Turon"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Aaron" AND t1.lname  =  "Turon"	icfp_1
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Atsushi" AND t1.lname  =  "Ohori"	icfp_1
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Atsushi" AND t1.lname  =  "Ohori"	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Matthias" AND t1.lname  =  "Blume"	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Matthias" AND t1.lname  =  "Blume"	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno"	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno"	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford"	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford"	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google"	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google"	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Binders Unbound"	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Binders Unbound"	icfp_1
SELECT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Nameless ,  Painless"	icfp_1
SELECT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Nameless ,  Painless"	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Indiana University"	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Indiana University"	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google"	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google"	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Tokohu University"	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Tokohu University"	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Pennsylvania"	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Pennsylvania"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Olin" AND t1.lname  =  "Shivers"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Olin" AND t1.lname  =  "Shivers"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Stephanie" AND t1.lname  =  "Weirich"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Stephanie" AND t1.lname  =  "Weirich"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "USA" AND t2.authorder  =  2 AND t1.lname  =  "Turon"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "USA" AND t2.authorder  =  2 AND t1.lname  =  "Turon"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "Japan" AND t2.authorder  =  1 AND t1.lname  =  "Ohori"	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "Japan" AND t2.authorder  =  1 AND t1.lname  =  "Ohori"	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.fname ,  t1.lname ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.fname ,  t1.lname ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Functional%"	icfp_1
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Functional%"	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Monadic%"	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Monadic%"	icfp_1
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid  =  t2.paperid WHERE t1.authorder  =  (SELECT max(authorder) FROM authorship)	icfp_1
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid  =  t2.paperid WHERE t1.authorder  =  (SELECT max(authorder) FROM authorship)	icfp_1
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
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)	loan_1
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
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Mortgages' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Auto'	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Mortgages' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Auto'	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT sum(amount) ,  T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname	loan_1
SELECT sum(amount) ,  T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1	loan_1
SELECT T1.cust_name ,  T1.acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount)  >  5000	loan_1
SELECT T1.cust_name ,  T1.acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount)  >  5000	loan_1
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1	loan_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1	loan_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id	loan_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id	loan_1
SELECT DISTINCT T1.cust_name ,  T1.credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id	loan_1
SELECT DISTINCT T1.cust_name ,  T1.credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE amount  >  3000	loan_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE amount  >  3000	loan_1
SELECT T1.bname ,  T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.loan_type  =  'Business'	loan_1
SELECT T1.bname ,  T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.loan_type  =  'Business'	loan_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100	loan_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100	loan_1
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.state  =  'New York'	loan_1
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.state  =  'New York'	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT T1.asset_id ,  T1.asset_details FROM Assets AS T1 JOIN Asset_Parts AS T2 ON T1.asset_id  =  T2.asset_id GROUP BY T1.asset_id HAVING count(*)  =  2 INTERSECT SELECT T1.asset_id ,  T1.asset_details FROM Assets AS T1 JOIN Fault_Log AS T2 ON T1.asset_id  =  T2.asset_id GROUP BY T1.asset_id HAVING count(*)  <  2	assets_maintenance
SELECT count(*) ,  T1.maintenance_contract_id FROM Maintenance_Contracts AS T1 JOIN Assets AS T2 ON T1.maintenance_contract_id  =  T2.maintenance_contract_id GROUP BY T1.maintenance_contract_id	assets_maintenance
SELECT count(*) ,  T1.company_id FROM Third_Party_Companies AS T1 JOIN Assets AS T2 ON T1.company_id  =  T2.supplier_company_id GROUP BY T1.company_id	assets_maintenance
SELECT T1.company_id ,  T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Engineers AS T2 ON T1.company_id  =  T2.company_id GROUP BY T1.company_id HAVING count(*)  >=  2 UNION SELECT T3.company_id ,  T3.company_name FROM Third_Party_Companies AS T3 JOIN Maintenance_Contracts AS T4 ON T3.company_id  =  T4.maintenance_contract_company_id GROUP BY T3.company_id HAVING count(*)  >=  2	assets_maintenance
SELECT T1.staff_name ,  T1.staff_id FROM Staff AS T1 JOIN Fault_Log AS T2 ON T1.staff_id  =  T2.recorded_by_staff_id EXCEPT SELECT T3.staff_name ,  T3.staff_id FROM Staff AS T3 JOIN Engineer_Visits AS T4 ON T3.staff_id  =  T4.contact_staff_id	assets_maintenance
SELECT T1.engineer_id ,  T1.first_name ,  T1.last_name FROM Maintenance_Engineers AS T1 JOIN Engineer_Visits AS T2 GROUP BY T1.engineer_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.part_name ,  T1.part_id FROM Parts AS T1 JOIN Part_Faults AS T2 ON T1.part_id  =  T2.part_id GROUP BY T1.part_id HAVING count(*)  >  2	assets_maintenance
SELECT T1.first_name ,  T1.last_name ,  T1.other_details ,  T3.skill_description FROM Maintenance_Engineers AS T1 JOIN Engineer_Skills AS T2 ON T1.engineer_id  =  T2.engineer_id JOIN Skills AS T3 ON T2.skill_id  =  T3.skill_id	assets_maintenance
SELECT T1.fault_short_name ,  T3.skill_description FROM Part_Faults AS T1 JOIN Skills_Required_To_Fix AS T2 ON T1.part_fault_id  =  T2.part_fault_id JOIN Skills AS T3 ON T2.skill_id  =  T3.skill_id	assets_maintenance
SELECT T1.part_name ,  count(*) FROM Parts AS T1 JOIN Asset_Parts AS T2 ON T1.part_id  =  T2.part_id GROUP BY T1.part_name	assets_maintenance
SELECT T1.fault_description ,  T2.fault_status FROM Fault_Log AS T1 JOIN Fault_Log_Parts AS T2 ON T1.fault_log_entry_id  =  T2.fault_log_entry_id	assets_maintenance
SELECT count(*) ,  T1.fault_log_entry_id FROM Fault_Log AS T1 JOIN Engineer_Visits AS T2 ON T1.fault_log_entry_id  =  T2.fault_log_entry_id GROUP BY T1.fault_log_entry_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT last_name FROM Maintenance_Engineers	assets_maintenance
SELECT DISTINCT fault_status FROM Fault_Log_Parts	assets_maintenance
SELECT first_name ,  last_name FROM Maintenance_Engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM Engineer_Visits)	assets_maintenance
SELECT asset_id ,  asset_details ,  asset_make ,  asset_model FROM Assets	assets_maintenance
SELECT asset_acquired_date FROM Assets ORDER BY asset_acquired_date ASC LIMIT 1	assets_maintenance
SELECT T1.part_id ,  T1.part_name FROM Parts AS T1 JOIN Part_Faults AS T2 ON T1.part_id  =  T2.part_id JOIN Skills_Required_To_Fix AS T3 ON T2.part_fault_id  =  T3.part_fault_id GROUP BY T1.part_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.part_name FROM Parts AS T1 JOIN Part_Faults AS T2 ON T1.part_id  =  T2.part_id GROUP BY T1.part_name ORDER BY count(*) ASC LIMIT 1	assets_maintenance
SELECT T1.engineer_id ,  T1.first_name ,  T1.last_name FROM Maintenance_Engineers AS T1 JOIN Engineer_Visits AS T2 ON T1.engineer_id  =  T2.engineer_id GROUP BY T1.engineer_id ORDER BY count(*) ASC LIMIT 1	assets_maintenance
SELECT T1.staff_name ,  T3.first_name ,  T3.last_name FROM Staff AS T1 JOIN Engineer_Visits AS T2 ON T1.staff_id  =  T2.contact_staff_id JOIN Maintenance_Engineers AS T3 ON T2.engineer_id  =  T3.engineer_id	assets_maintenance
SELECT T1.fault_log_entry_id ,  T1.fault_description ,  T1.fault_log_entry_datetime FROM Fault_Log AS T1 JOIN Fault_Log_Parts AS T2 ON T1.fault_log_entry_id  =  T2.fault_log_entry_id GROUP BY T1.fault_log_entry_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.skill_id ,  T1.skill_description FROM Skills AS T1 JOIN Skills_Required_To_Fix AS T2 ON T1.skill_id  =  T2.skill_id GROUP BY T1.skill_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT asset_model FROM Assets	assets_maintenance
SELECT asset_make ,  asset_model ,  asset_details FROM Assets ORDER BY asset_disposed_date ASC	assets_maintenance
SELECT part_id ,  chargeable_amount FROM Parts ORDER BY chargeable_amount ASC LIMIT 1	assets_maintenance
SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id ORDER BY T2.contract_start_date ASC LIMIT 1	assets_maintenance
SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id  =  T2.maintenance_contract_company_id ORDER BY T2.contract_start_date ASC LIMIT 1	assets_maintenance
SELECT gender FROM staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.staff_name ,  count(*) FROM Staff AS T1 JOIN Engineer_Visits AS T2 ON T1.staff_id  =  T2.contact_staff_id GROUP BY T1.staff_name	assets_maintenance
SELECT asset_model FROM Assets WHERE asset_id NOT IN (SELECT asset_id FROM Fault_Log)	assets_maintenance
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE DEPT_NAME  =  "Accounting"	college_1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE DEPT_NAME  =  "Accounting"	college_1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT T3.EMP_FNAME ,  T3.EMP_LNAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM  =  T3.EMP_NUM WHERE DEPT_NAME  =  "Biology"	college_1
SELECT T3.EMP_FNAME ,  T3.EMP_LNAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM  =  T3.EMP_NUM WHERE DEPT_NAME  =  "Biology"	college_1
SELECT DISTINCT T1.EMP_FNAME ,  T1.EMP_DOB FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT DISTINCT T1.EMP_FNAME ,  T1.EMP_DOB FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE T1.EMP_LNAME  =  'Graztevski'	college_1
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE T1.EMP_LNAME  =  'Graztevski'	college_1
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
SELECT count(*) ,  dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY dept_code	college_1
SELECT count(*) ,  T3.school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T2.dept_code  =  T3.dept_code GROUP BY T3.school_code	college_1
SELECT count(*) ,  T3.school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T2.dept_code  =  T3.dept_code GROUP BY T3.school_code	college_1
SELECT count(*) ,  T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code	college_1
SELECT count(*) ,  T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1	college_1
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT T2.dept_name ,  avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1	college_1
SELECT T2.dept_name ,  avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code  =  T2.dept_code WHERE dept_name  =  "Computer Info. Systems"	college_1
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code  =  T2.dept_code WHERE dept_name  =  "Computer Info. Systems"	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT sum(T1.crs_credit) ,  T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY T1.dept_code	college_1
SELECT sum(T1.crs_credit) ,  T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY T1.dept_code	college_1
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T1.dept_code  =  T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1	college_1
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T1.dept_code  =  T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1	college_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211' AND T2.enroll_grade  =  'C'	college_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211' AND T2.enroll_grade  =  'C'	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num ORDER BY T2.emp_fname	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num ORDER BY T2.emp_fname	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE enroll_grade  =  'C'	college_1
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE enroll_grade  =  'C'	college_1
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1	college_1
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1	college_1
SELECT T2.dept_name ,  T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.prof_high_degree  =  'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.dept_name ,  T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.prof_high_degree  =  'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num	college_1
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num	college_1
SELECT T1.emp_lname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History'	college_1
SELECT T1.emp_lname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History'	college_1
SELECT T3.dept_name  ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T1.emp_lname  =  'Heffington'	college_1
SELECT T3.dept_name  ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T1.emp_lname  =  'Heffington'	college_1
SELECT T1.emp_lname ,  T1.emp_hiredate FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num WHERE T2.prof_office  =  'DRE 102'	college_1
SELECT T1.emp_lname ,  T1.emp_hiredate FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num WHERE T2.prof_office  =  'DRE 102'	college_1
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT T4.crs_description ,  T4.crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num JOIN course AS T4 ON T4.crs_code  =  T1.crs_code WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT T4.crs_description ,  T4.crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num JOIN course AS T4 ON T4.crs_code  =  T1.crs_code WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T2.dept_name  =  'Accounting' OR T2.dept_name  =  'Biology'	college_1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T2.dept_name  =  'Accounting' OR T2.dept_name  =  'Biology'	college_1
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'QM-261'	college_1
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'QM-261'	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Computer Info. Systems'	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Computer Info. Systems'	college_1
SELECT avg(T2.stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T1.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211'	college_1
SELECT avg(T2.stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T1.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211'	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code ORDER BY stu_gpa LIMIT 1	college_1
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code ORDER BY stu_gpa LIMIT 1	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT T2.dept_name ,  T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.dept_name ,  T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.dept_name ,  T2.dept_address ,  count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3	college_1
SELECT T2.dept_name ,  T2.dept_address ,  count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3	college_1
SELECT T1.emp_fname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T3.dept_code  =  T2.dept_code WHERE T3.dept_name  =  'History' AND T2.prof_high_degree  =  'Ph.D.'	college_1
SELECT T1.emp_fname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T3.dept_code  =  T2.dept_code WHERE T3.dept_name  =  'History' AND T2.prof_high_degree  =  'Ph.D.'	college_1
SELECT T2.emp_fname ,  T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num	college_1
SELECT T2.emp_fname ,  T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num	college_1
SELECT T2.emp_fname ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code	college_1
SELECT T2.emp_fname ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code	college_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num	college_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num	college_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description ,  T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num JOIN department AS T5 ON T4.dept_code  =  T5.dept_code	college_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description ,  T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num JOIN department AS T5 ON T4.dept_code  =  T5.dept_code	college_1
SELECT T1.stu_fname ,  T1.stu_lname ,  T4.crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code	college_1
SELECT T1.stu_fname ,  T1.stu_lname ,  T4.crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code	college_1
SELECT T1.stu_fname ,  T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'C' OR T2.enroll_grade  =  'A'	college_1
SELECT T1.stu_fname ,  T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'C' OR T2.enroll_grade  =  'A'	college_1
SELECT T2.emp_fname ,  T1.class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT T2.emp_fname ,  T1.class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT DISTINCT T2.emp_fname ,  T3.prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Computer Info. Systems'	college_1
SELECT DISTINCT T2.emp_fname ,  T3.prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Computer Info. Systems'	college_1
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'A' AND T2.class_code  =  10018	college_1
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'A' AND T2.class_code  =  10018	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T1.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' AND T1.prof_high_degree != 'Ph.D.'	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T1.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' AND T1.prof_high_degree != 'Ph.D.'	college_1
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num GROUP BY T1.prof_num HAVING count(*)  >  1	college_1
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num GROUP BY T1.prof_num HAVING count(*)  >  1	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num GROUP BY T2.stu_num HAVING count(*)  =  1	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num GROUP BY T2.stu_num HAVING count(*)  =  1	college_1
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.crs_description LIKE '%Statistics%'	college_1
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.crs_description LIKE '%Statistics%'	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211' AND T1.stu_lname LIKE 'S%'	college_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211' AND T1.stu_lname LIKE 'S%'	college_1
SELECT sum(num_of_component) FROM furniture	manufacturer
SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
SELECT Num_of_Component ,  name FROM furniture WHERE Num_of_Component  >  10	manufacturer
SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
SELECT t1.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID WHERE t2.Price_in_Dollar  <  (SELECT max(Price_in_Dollar) FROM furniture_manufacte)	manufacturer
SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
SELECT avg(Num_of_Factories) FROM manufacturer WHERE num_of_shops  >  20	manufacturer
SELECT name ,  manufacturer_id FROM manufacturer ORDER BY open_year	manufacturer
SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
SELECT t1.manufacturer_id ,  t1.num_of_shops FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.manufacturer_id  =  t2.manufacturer_id ORDER BY t2.Price_in_Dollar DESC LIMIT 1	manufacturer
SELECT count(*) ,  t1.name FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.manufacturer_id  =  t2.manufacturer_id GROUP BY t1.manufacturer_id	manufacturer
SELECT t1.name ,  t2.price_in_dollar FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID	manufacturer
SELECT Market_Rate ,  name FROM furniture WHERE Furniture_ID NOT IN (SELECT Furniture_ID FROM furniture_manufacte)	manufacturer
SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id  =  t3.manufacturer_id WHERE t1.num_of_component  <  6 INTERSECT SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id  =  t3.manufacturer_id WHERE t1.num_of_component  >  10	manufacturer
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT DISTINCT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.rating  >  9	music_1
SELECT DISTINCT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.rating  >  9	music_1
SELECT DISTINCT T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.resolution  <  800	music_1
SELECT DISTINCT T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.resolution  <  800	music_1
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id  =  T2.f_id ORDER BY T2.duration LIMIT 1	music_1
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id  =  T2.f_id ORDER BY T2.duration LIMIT 1	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.rating DESC LIMIT 3	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.rating DESC LIMIT 3	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female"	music_1
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female"	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female" AND T2.languages  =  "bangla"	music_1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female" AND T2.languages  =  "bangla"	music_1
SELECT avg(T1.duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" AND T2.resolution   <  800	music_1
SELECT avg(T1.duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" AND T2.resolution   <  800	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT T1.gender ,  T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.resolution LIMIT 1	music_1
SELECT T1.gender ,  T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.resolution LIMIT 1	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.song_name LIKE "%love%"	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.song_name LIKE "%love%"	music_1
SELECT T1.artist_name ,  T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.releasedate LIKE "%Mar%"	music_1
SELECT T1.artist_name ,  T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.releasedate LIKE "%Mar%"	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "4:%" UNION SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "4:%" UNION SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" INTERSECT SELECT song_name FROM song WHERE resolution  <  1000	music_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" INTERSECT SELECT song_name FROM song WHERE resolution  <  1000	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT max(T2.resolution) ,  min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "3:%"	music_1
SELECT max(T2.resolution) ,  min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "3:%"	music_1
SELECT max(T1.duration) ,  max(T2.resolution) ,  T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.languages ORDER BY T2.languages	music_1
SELECT max(T1.duration) ,  max(T2.resolution) ,  T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.languages ORDER BY T2.languages	music_1
SELECT min(T1.duration) ,  min(T2.rating) ,  T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT min(T1.duration) ,  min(T2.rating) ,  T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english" GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english" GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1	music_1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT T1.duration ,  T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.genre_is  =  "pop" ORDER BY T2.song_name	music_1
SELECT T1.duration ,  T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.genre_is  =  "pop" ORDER BY T2.song_name	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT count(*) FROM camera_lens WHERE focal_length_mm  >  15	mountain_photos
SELECT brand ,  name FROM camera_lens ORDER BY max_aperture DESC	mountain_photos
SELECT id ,  color ,  name FROM photos	mountain_photos
SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
SELECT avg(prominence) FROM mountain WHERE country  =  'Morocco'	mountain_photos
SELECT name ,  height ,  prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
SELECT T1.id ,  T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id WHERE T1.height  >  4000	mountain_photos
SELECT T1.id ,  T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id GROUP BY T1.id HAVING count(*)  >=  2	mountain_photos
SELECT T2.name FROM photos AS T1 JOIN camera_lens AS T2 ON T1.camera_lens_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	mountain_photos
SELECT T1.name FROM camera_lens AS T1 JOIN photos AS T2 ON T2.camera_lens_id  =  T1.id WHERE T1.brand  =  'Sigma' OR T1.brand  =  'Olympus'	mountain_photos
SELECT count(DISTINCT brand) FROM camera_lens	mountain_photos
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_lens_id FROM photos )	mountain_photos
SELECT count(DISTINCT T2.camera_lens_id) FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id WHERE T1.country  =  'Ethiopia'	mountain_photos
SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T1.range  =  'Toubkal Atlas' INTERSECT SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T1.range  =  'Lasta Massif'	mountain_photos
SELECT name ,  prominence FROM mountain EXCEPT SELECT T1.name ,  T1.prominence FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T3.brand  =  'Sigma'	mountain_photos
SELECT name FROM camera_lens WHERE name LIKE "%Digital%"	mountain_photos
SELECT T1.name ,  count(*) FROM camera_lens AS T1 JOIN photos AS T2 ON T1.id  =  T2.camera_lens_id GROUP BY T1.id ORDER BY count(*)	mountain_photos
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
SELECT T1.login_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T2.course_name  =  "advanced database"	e_learning
SELECT T1.login_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T2.course_name  =  "advanced database"	e_learning
SELECT T1.address_line_1 FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T2.course_name  =  "operating system" OR T2.course_name  =  "data structure"	e_learning
SELECT T1.address_line_1 FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T2.course_name  =  "operating system" OR T2.course_name  =  "data structure"	e_learning
SELECT T1.personal_name ,  T1.family_name ,  T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id GROUP BY T2.author_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.personal_name ,  T1.family_name ,  T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id GROUP BY T2.author_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.address_line_1 ,  T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id GROUP BY T2.author_id HAVING Count(*)  >=  2	e_learning
SELECT T1.address_line_1 ,  T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id GROUP BY T2.author_id HAVING Count(*)  >=  2	e_learning
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T1.personal_name  =  "Julio"	e_learning
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T1.personal_name  =  "Julio"	e_learning
SELECT T1.course_name ,  T1.course_description FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id WHERE T2.subject_name  =  "Computer Science"	e_learning
SELECT T1.course_name ,  T1.course_description FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id WHERE T2.subject_name  =  "Computer Science"	e_learning
SELECT T1.subject_id ,  T2.subject_name ,  COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id GROUP BY T1.subject_id	e_learning
SELECT T1.subject_id ,  T2.subject_name ,  COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id GROUP BY T1.subject_id	e_learning
SELECT T1.subject_id ,  T2.subject_name ,  COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id GROUP BY T1.subject_id ORDER BY COUNT(*) ASC	e_learning
SELECT T1.subject_id ,  T2.subject_name ,  COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id  =  T2.subject_id GROUP BY T1.subject_id ORDER BY COUNT(*) ASC	e_learning
SELECT T2.date_of_enrolment FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id WHERE T1.course_name  =  "Spanish"	e_learning
SELECT T2.date_of_enrolment FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id WHERE T1.course_name  =  "Spanish"	e_learning
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING COUNT(*)  =  1	e_learning
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING COUNT(*)  =  1	e_learning
SELECT T1.course_description ,  T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING COUNT(*)  >  2	e_learning
SELECT T1.course_description ,  T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING COUNT(*)  >  2	e_learning
SELECT T1.course_name ,  COUNT(*) FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name	e_learning
SELECT T1.course_name ,  COUNT(*) FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name	e_learning
SELECT T1.date_of_enrolment FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id  =  T2.registration_id WHERE T2.test_result  =  "Pass"	e_learning
SELECT T1.date_of_enrolment FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id  =  T2.registration_id WHERE T2.test_result  =  "Pass"	e_learning
SELECT T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id  =  T2.registration_id WHERE T2.test_result  =  "Fail"	e_learning
SELECT T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id  =  T2.registration_id WHERE T2.test_result  =  "Fail"	e_learning
SELECT T1.date_of_enrolment ,  T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.personal_name  =  "Karson"	e_learning
SELECT T1.date_of_enrolment ,  T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.personal_name  =  "Karson"	e_learning
SELECT T1.date_of_enrolment ,  T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.family_name  =  "Zieme" AND T2.personal_name  =  "Bernie"	e_learning
SELECT T1.date_of_enrolment ,  T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.family_name  =  "Zieme" AND T2.personal_name  =  "Bernie"	e_learning
SELECT T1.student_id ,  T2.login_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.student_id ,  T2.login_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.student_id ,  T2.personal_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING COUNT(*)  >=  2	e_learning
SELECT T1.student_id ,  T2.personal_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING COUNT(*)  >=  2	e_learning
SELECT T1.student_id ,  T2.middle_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING COUNT(*)  <=  2	e_learning
SELECT T1.student_id ,  T2.middle_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING COUNT(*)  <=  2	e_learning
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id  =  T2.student_id	e_learning
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id  =  T2.student_id	e_learning
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)	e_learning
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)	e_learning
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students	e_learning
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students	e_learning
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students	e_learning
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students	e_learning
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT T2.name ,  T2.position FROM department AS T1 JOIN physician AS T2 ON T1.head  =  T2.EmployeeID GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT T2.name ,  T2.position FROM department AS T1 JOIN physician AS T2 ON T1.head  =  T2.EmployeeID GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT name FROM appointment AS T1 JOIN patient AS T2 ON T1.patient  =  T2.ssn	hospital_1
SELECT name FROM appointment AS T1 JOIN patient AS T2 ON T1.patient  =  T2.ssn	hospital_1
SELECT name ,  phone FROM appointment AS T1 JOIN patient AS T2 ON T1.patient  =  T2.ssn GROUP BY T1.patient HAVING count(*)  >  1	hospital_1
SELECT name ,  phone FROM appointment AS T1 JOIN patient AS T2 ON T1.patient  =  T2.ssn GROUP BY T1.patient HAVING count(*)  >  1	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT T1.name ,  T3.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T2.PrimaryAffiliation  =  1	hospital_1
SELECT T1.name ,  T3.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T2.PrimaryAffiliation  =  1	hospital_1
SELECT T1.name FROM patient AS T1 JOIN appointment AS T2 ON T1.ssn = T2.patient ORDER BY T2.start DESC LIMIT 1	hospital_1
SELECT T1.name FROM patient AS T1 JOIN appointment AS T2 ON T1.ssn = T2.patient ORDER BY T2.start DESC LIMIT 1	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT count(T1.SSN) FROM patient AS T1 JOIN prescribes AS T2 ON T1.SSN  =  T2.patient JOIN physician AS T3 ON T2.physician  =  T3.employeeid WHERE T3.name = "John Dorian"	hospital_1
SELECT count(T1.SSN) FROM patient AS T1 JOIN prescribes AS T2 ON T1.SSN  =  T2.patient JOIN physician AS T3 ON T2.physician  =  T3.employeeid WHERE T3.name = "John Dorian"	hospital_1
SELECT T4.name FROM stay AS T1 JOIN patient AS T2 ON T1.Patient  =  T2.SSN JOIN Prescribes AS T3 ON T3.Patient  =  T2.SSN JOIN Medication AS T4 ON T3.Medication  =  T4.Code WHERE room  =  111	hospital_1
SELECT T4.name FROM stay AS T1 JOIN patient AS T2 ON T1.Patient  =  T2.SSN JOIN Prescribes AS T3 ON T3.Patient  =  T2.SSN JOIN Medication AS T4 ON T3.Medication  =  T4.Code WHERE room  =  111	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT T1.name FROM nurse AS T1 JOIN appointment AS T2 ON T1.employeeid  =  T2.prepnurse GROUP BY T1.employeeid ORDER BY count(*) DESC LIMIT 1	hospital_1
SELECT T1.name FROM nurse AS T1 JOIN appointment AS T2 ON T1.employeeid  =  T2.prepnurse GROUP BY T1.employeeid ORDER BY count(*) DESC LIMIT 1	hospital_1
SELECT T1.name ,  count(*) FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid  =  T2.PCP GROUP BY T1.employeeid	hospital_1
SELECT T1.name ,  count(*) FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid  =  T2.PCP GROUP BY T1.employeeid	hospital_1
SELECT T1.name FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid  =  T2.PCP GROUP BY T1.employeeid HAVING count(*)  >  1	hospital_1
SELECT T1.name FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid  =  T2.PCP GROUP BY T1.employeeid HAVING count(*)  >  1	hospital_1
SELECT count(*) ,  T1.blockfloor FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor  =  T2.blockfloor AND T1.blockcode  =  T2.blockcode GROUP BY T1.blockfloor	hospital_1
SELECT count(*) ,  T1.blockfloor FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor  =  T2.blockfloor AND T1.blockcode  =  T2.blockcode GROUP BY T1.blockfloor	hospital_1
SELECT count(*) ,  T1.blockcode FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor  =  T2.blockfloor AND T1.blockcode  =  T2.blockcode GROUP BY T1.blockcode	hospital_1
SELECT count(*) ,  T1.blockcode FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor  =  T2.blockfloor AND T1.blockcode  =  T2.blockcode GROUP BY T1.blockcode	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name  =  "Thesisin"	hospital_1
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name  =  "Thesisin"	hospital_1
SELECT DISTINCT T1.name ,  T1.position FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.Brand  =  "X"	hospital_1
SELECT DISTINCT T1.name ,  T1.position FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.Brand  =  "X"	hospital_1
SELECT count(*) ,  T1.name FROM medication AS T1 JOIN prescribes AS T2 ON T1.code = T2.medication GROUP BY T1.brand	hospital_1
SELECT count(*) ,  T1.name FROM medication AS T1 JOIN prescribes AS T2 ON T1.code = T2.medication GROUP BY T1.brand	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN patient AS T2 ON T1.patient = T2.SSN JOIN stay AS T3 ON T1.Stay  =  T3.StayID WHERE T3.room  =  111	hospital_1
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN patient AS T2 ON T1.patient = T2.SSN JOIN stay AS T3 ON T1.Stay  =  T3.StayID WHERE T3.room  =  111	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN nurse AS T2 ON T1.AssistingNurse  =  T2.EmployeeID	hospital_1
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN nurse AS T2 ON T1.AssistingNurse  =  T2.EmployeeID	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician ORDER BY T2.dose DESC LIMIT 1	hospital_1
SELECT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician ORDER BY T2.dose DESC LIMIT 1	hospital_1
SELECT physician ,  department FROM affiliated_with WHERE primaryaffiliation  =  1	hospital_1
SELECT physician ,  department FROM affiliated_with WHERE primaryaffiliation  =  1	hospital_1
SELECT DISTINCT T2.name FROM affiliated_with AS T1 JOIN department AS T2 ON T1.department = T2.departmentid WHERE PrimaryAffiliation  =  1	hospital_1
SELECT DISTINCT T2.name FROM affiliated_with AS T1 JOIN department AS T2 ON T1.department = T2.departmentid WHERE PrimaryAffiliation  =  1	hospital_1
SELECT nurse FROM on_call WHERE blockfloor  =  1 AND blockcode  =  1	hospital_1
SELECT nurse FROM on_call WHERE blockfloor  =  1 AND blockcode  =  1	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T3.cost  >  5000	hospital_1
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T3.cost  >  5000	hospital_1
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment ORDER BY T3.cost DESC LIMIT 1	hospital_1
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment ORDER BY T3.cost DESC LIMIT 1	hospital_1
SELECT avg(T3.cost) FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT avg(T3.cost) FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  <  5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  <  5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Surgery' INTERSECT SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Psychiatry'	hospital_1
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Surgery' INTERSECT SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Psychiatry'	hospital_1
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Surgery' OR T3.name  =  'Psychiatry'	hospital_1
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID  =  T2.physician JOIN department AS T3 ON T2.department  =  T3.DepartmentID WHERE T3.name  =  'Surgery' OR T3.name  =  'Psychiatry'	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.Patient  =  T1.SSN JOIN Medication AS T3 ON T2.Medication  =  T3.Code WHERE T3.name  =  'Procrastin-X'	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.Patient  =  T1.SSN JOIN Medication AS T3 ON T2.Medication  =  T3.Code WHERE T3.name  =  'Procrastin-X'	hospital_1
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.Medication  =  T2.Code WHERE T2.name  =  'Procrastin-X' )	hospital_1
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.Medication  =  T2.Code WHERE T2.name  =  'Procrastin-X' )	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT DISTINCT T1.name FROM nurse AS T1 JOIN on_call AS T2 ON T1.EmployeeID  =  T2.nurse	hospital_1
SELECT DISTINCT T1.name FROM nurse AS T1 JOIN on_call AS T2 ON T1.EmployeeID  =  T2.nurse	hospital_1
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
SELECT DISTINCT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE grade  =  5	student_1
SELECT DISTINCT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE grade  =  5	student_1
SELECT DISTINCT T2.firstname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE grade  =  1	student_1
SELECT DISTINCT T2.firstname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE grade  =  1	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "OTHA" AND T2.lastname  =  "MOYER"	student_1
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "OTHA" AND T2.lastname  =  "MOYER"	student_1
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "MARROTTE" AND T2.lastname  =  "KIRK"	student_1
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "MARROTTE" AND T2.lastname  =  "KIRK"	student_1
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "EVELINA" AND T1.lastname  =  "BROMLEY"	student_1
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "EVELINA" AND T1.lastname  =  "BROMLEY"	student_1
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "GELL" AND T1.lastname  =  "TAMI"	student_1
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "GELL" AND T1.lastname  =  "TAMI"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "LORIA" AND T2.lastname  =  "ONDERSMA"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "LORIA" AND T2.lastname  =  "ONDERSMA"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "KAWA" AND T2.lastname  =  "GORDON"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "KAWA" AND T2.lastname  =  "GORDON"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "TARRING" AND T2.lastname  =  "LEIA"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "TARRING" AND T2.lastname  =  "LEIA"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "CHRISSY" AND T1.lastname  =  "NABOZNY"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "CHRISSY" AND T1.lastname  =  "NABOZNY"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "MADLOCK" AND T1.lastname  =  "RAY"	student_1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "MADLOCK" AND T1.lastname  =  "RAY"	student_1
SELECT DISTINCT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  1 EXCEPT SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "OTHA" AND T2.lastname  =  "MOYER"	student_1
SELECT DISTINCT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  1 EXCEPT SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "OTHA" AND T2.lastname  =  "MOYER"	student_1
SELECT DISTINCT T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  3 AND T2.firstname != "COVIN" AND T2.lastname != "JEROME"	student_1
SELECT DISTINCT T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  3 AND T2.firstname != "COVIN" AND T2.lastname != "JEROME"	student_1
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
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom GROUP BY T2.firstname ,  T2.lastname ORDER BY count(*) DESC LIMIT 1	student_1
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom GROUP BY T2.firstname ,  T2.lastname ORDER BY count(*) DESC LIMIT 1	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) FROM film	film_rank
SELECT count(*) FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT Low_Estimate ,  High_Estimate FROM film_market_estimation	film_rank
SELECT Low_Estimate ,  High_Estimate FROM film_market_estimation	film_rank
SELECT TYPE FROM film_market_estimation WHERE YEAR  =  1995	film_rank
SELECT TYPE FROM film_market_estimation WHERE YEAR  =  1995	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT T1.Title ,  T2.Type FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID  =  T2.Film_ID	film_rank
SELECT T1.Title ,  T2.Type FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID  =  T2.Film_ID	film_rank
SELECT DISTINCT T1.Director FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID  =  T2.Film_ID WHERE T2.Year  =  1995	film_rank
SELECT DISTINCT T1.Director FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID  =  T2.Film_ID WHERE T2.Year  =  1995	film_rank
SELECT avg(T2.Number_cities) FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID WHERE T1.Low_Estimate  >  10000	film_rank
SELECT avg(T2.Number_cities) FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID WHERE T1.Low_Estimate  >  10000	film_rank
SELECT T2.Country ,  T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID	film_rank
SELECT T2.Country ,  T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID	film_rank
SELECT T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID WHERE T2.Country  =  "Japan" ORDER BY T1.Year DESC	film_rank
SELECT T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID WHERE T2.Country  =  "Japan" ORDER BY T1.Year DESC	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)	film_rank
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT t1.title FROM film AS T1 JOIN film_market_estimation AS T2  ON T1.Film_ID  =  T2.Film_ID ORDER BY high_estimate DESC LIMIT 1	film_rank
SELECT t1.title FROM film AS T1 JOIN film_market_estimation AS T2  ON T1.Film_ID  =  T2.Film_ID ORDER BY high_estimate DESC LIMIT 1	film_rank
SELECT title ,  director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.market_id  =  T2.Market_ID WHERE country  =  'China')	film_rank
SELECT title ,  director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.market_id  =  T2.Market_ID WHERE country  =  'China')	film_rank
SELECT count(T2.friend) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T1.name  =  'Dan'	network_2
SELECT count(T2.friend) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T1.name  =  'Dan'	network_2
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
SELECT T1.name ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Dan' INTERSECT SELECT T1.name ,   T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Alice'	network_2
SELECT T1.name ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Dan' INTERSECT SELECT T1.name ,   T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Alice'	network_2
SELECT DISTINCT T1.name ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Dan' OR T2.friend  =  'Alice'	network_2
SELECT DISTINCT T1.name ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Dan' OR T2.friend  =  'Alice'	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  >  40) INTERSECT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  <  30)	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  >  40) INTERSECT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  <  30)	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  >  40) EXCEPT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  <  30)	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  >  40) EXCEPT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age  <  30)	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.job  =  'student'	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.job  =  'student'	network_2
SELECT name FROM PersonFriend GROUP BY name HAVING count(*)  =  1	network_2
SELECT name FROM PersonFriend GROUP BY name HAVING count(*)  =  1	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T1.name  =  'Bob'	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T1.name  =  'Bob'	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Bob'	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Bob'	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Zach' AND T1.gender  =  'female'	network_2
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Zach' AND T1.gender  =  'female'	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name  =  'Alice' AND T1.gender  =  'female'	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name  =  'Alice' AND T1.gender  =  'female'	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name  =  'Alice' AND T1.gender  =  'male' AND T1.job  =  'doctor'	network_2
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name  =  'Alice' AND T1.gender  =  'male' AND T1.job  =  'doctor'	network_2
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.city  =  'new york city'	network_2
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.city  =  'new york city'	network_2
SELECT DISTINCT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  <  (SELECT avg(age) FROM person)	network_2
SELECT DISTINCT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  <  (SELECT avg(age) FROM person)	network_2
SELECT DISTINCT T2.name ,  T2.friend ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  >  (SELECT avg(age) FROM person)	network_2
SELECT DISTINCT T2.name ,  T2.friend ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  >  (SELECT avg(age) FROM person)	network_2
SELECT friend FROM PersonFriend WHERE name =  'Zach' AND YEAR  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT friend FROM PersonFriend WHERE name =  'Zach' AND YEAR  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name =  'Zach' AND T2.year  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T2.name =  'Zach' AND T2.year  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT name FROM PersonFriend WHERE friend =  'Alice' AND YEAR  =  (SELECT min(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT name FROM PersonFriend WHERE friend =  'Alice' AND YEAR  =  (SELECT min(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT T1.name ,  T1.age ,  T1.job FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend =  'Alice' AND T2.year  =  (SELECT max(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT T1.name ,  T1.age ,  T1.job FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend =  'Alice' AND T2.year  =  (SELECT max(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend	network_2
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend	network_2
SELECT T2.name ,  avg(T1.age) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend GROUP BY T2.name ORDER BY avg(T1.age) DESC LIMIT 1	network_2
SELECT T2.name ,  avg(T1.age) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend GROUP BY T2.name ORDER BY avg(T1.age) DESC LIMIT 1	network_2
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city  =  'Austin')	network_2
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city  =  'Austin')	network_2
SELECT DISTINCT T4.name FROM PersonFriend AS T1 JOIN Person AS T2 ON T1.name  =  T2.name JOIN PersonFriend AS T3 ON T1.friend  =  T3.name JOIN PersonFriend AS T4 ON T3.friend  =  T4.name WHERE T2.name  =  'Alice' AND T4.name != 'Alice'	network_2
SELECT DISTINCT T4.name FROM PersonFriend AS T1 JOIN Person AS T2 ON T1.name  =  T2.name JOIN PersonFriend AS T3 ON T1.friend  =  T3.name JOIN PersonFriend AS T4 ON T3.friend  =  T4.name WHERE T2.name  =  'Alice' AND T4.name != 'Alice'	network_2
SELECT count(*) FROM member	decoration_competition
SELECT Name FROM member ORDER BY Name ASC	decoration_competition
SELECT Name ,  Country FROM member	decoration_competition
SELECT Name FROM member WHERE Country  =  "United States" OR Country  =  "Canada"	decoration_competition
SELECT Country ,  COUNT(*) FROM member GROUP BY Country	decoration_competition
SELECT Country FROM member GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	decoration_competition
SELECT Country FROM member GROUP BY Country HAVING COUNT(*)  >  2	decoration_competition
SELECT Leader_Name ,  College_Location FROM college	decoration_competition
SELECT T2.Name ,  T1.Name FROM college AS T1 JOIN member AS T2 ON T1.College_ID  =  T2.College_ID	decoration_competition
SELECT T2.Name ,  T1.College_Location FROM college AS T1 JOIN member AS T2 ON T1.College_ID  =  T2.College_ID ORDER BY T2.Name ASC	decoration_competition
SELECT DISTINCT T1.Leader_Name FROM college AS T1 JOIN member AS T2 ON T1.College_ID  =  T2.College_ID WHERE T2.Country  =  "Canada"	decoration_competition
SELECT T1.Name ,  T2.Decoration_Theme FROM member AS T1 JOIN round AS T2 ON T1.Member_ID  =  T2.Member_ID	decoration_competition
SELECT T1.Name FROM member AS T1 JOIN round AS T2 ON T1.Member_ID  =  T2.Member_ID WHERE T2.Rank_in_Round  >  3	decoration_competition
SELECT T1.Name FROM member AS T1 JOIN round AS T2 ON T1.Member_ID  =  T2.Member_ID ORDER BY Rank_in_Round ASC	decoration_competition
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM round)	decoration_competition
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
SELECT T3.name ,  T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id	company_office
SELECT T3.name ,  T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id	company_office
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id GROUP BY T1.building_id HAVING COUNT(*)  >  1	company_office
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id GROUP BY T1.building_id HAVING COUNT(*)  >  1	company_office
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id GROUP BY T1.building_id ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id GROUP BY T1.building_id ORDER BY COUNT(*) DESC LIMIT 1	company_office
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
SELECT Festival_Name ,  LOCATION FROM festival_detail	entertainment_awards
SELECT Chair_Name FROM festival_detail ORDER BY YEAR ASC	entertainment_awards
SELECT LOCATION FROM festival_detail ORDER BY Num_of_Audience DESC LIMIT 1	entertainment_awards
SELECT Festival_Name FROM festival_detail WHERE YEAR  =  2007	entertainment_awards
SELECT avg(Num_of_Audience) FROM festival_detail	entertainment_awards
SELECT Festival_Name FROM festival_detail ORDER BY YEAR DESC LIMIT 3	entertainment_awards
SELECT T2.Name ,  T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID	entertainment_awards
SELECT DISTINCT T2.Type FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID WHERE T3.Year  =  2007	entertainment_awards
SELECT T2.Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID ORDER BY T3.Year	entertainment_awards
SELECT T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID WHERE T2.Type  =  "Program Talent Show"	entertainment_awards
SELECT T1.Festival_ID ,  T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID GROUP BY T1.Festival_ID HAVING COUNT(*)  >=  2	entertainment_awards
SELECT T1.Festival_ID ,  T3.Festival_Name ,  COUNT(*) FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID  =  T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID  =  T3.Festival_ID GROUP BY T1.Festival_ID	entertainment_awards
SELECT TYPE ,  COUNT(*) FROM artwork GROUP BY TYPE	entertainment_awards
SELECT TYPE FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	entertainment_awards
SELECT YEAR FROM festival_detail GROUP BY YEAR HAVING COUNT(*)  >  1	entertainment_awards
SELECT Name FROM Artwork WHERE Artwork_ID NOT IN (SELECT Artwork_ID FROM nomination)	entertainment_awards
SELECT Num_of_Audience FROM festival_detail WHERE YEAR  =  2008 OR YEAR  =  2010	entertainment_awards
SELECT sum(Num_of_Audience) FROM festival_detail	entertainment_awards
SELECT YEAR FROM festival_detail WHERE LOCATION  =  'United States' INTERSECT SELECT YEAR FROM festival_detail WHERE LOCATION != 'United States'	entertainment_awards
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
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO GROUP BY T2.DNO ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO GROUP BY T2.DNO ORDER BY count(*) DESC LIMIT 1	college_3
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO	college_3
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO	college_3
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MEMBER_OF AS T2 ON T1.DNO  =  T2.DNO GROUP BY T2.DNO ORDER BY count(*) ASC LIMIT 1	college_3
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MEMBER_OF AS T2 ON T1.DNO  =  T2.DNO GROUP BY T2.DNO ORDER BY count(*) ASC LIMIT 1	college_3
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1	college_3
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1	college_3
SELECT T2.Fname ,  T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 3	college_3
SELECT T2.Fname ,  T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 3	college_3
SELECT T2.Building FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T2.Building FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T1.CName FROM COURSE AS T1 JOIN ENROLLED_IN AS T2 ON T1.CID  =  T2.CID GROUP BY T2.CID HAVING COUNT(*)  >=  5	college_3
SELECT T1.CName FROM COURSE AS T1 JOIN ENROLLED_IN AS T2 ON T1.CID  =  T2.CID GROUP BY T2.CID HAVING COUNT(*)  >=  5	college_3
SELECT T2.Fname ,  T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID WHERE T1.CName  =  "COMPUTER LITERACY"	college_3
SELECT T2.Fname ,  T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor  =  T2.FacID WHERE T1.CName  =  "COMPUTER LITERACY"	college_3
SELECT T2.Dname ,  T2.Room FROM COURSE AS T1 JOIN DEPARTMENT AS T2 ON T1.DNO  =  T2.DNO WHERE T1.CName  =  "INTRODUCTION TO COMPUTER SCIENCE"	college_3
SELECT T2.Dname ,  T2.Room FROM COURSE AS T1 JOIN DEPARTMENT AS T2 ON T1.DNO  =  T2.DNO WHERE T1.CName  =  "INTRODUCTION TO COMPUTER SCIENCE"	college_3
SELECT T3.Fname ,  T3.LName ,  T2.gradepoint FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID	college_3
SELECT T3.Fname ,  T3.LName ,  T2.gradepoint FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID	college_3
SELECT DISTINCT T3.Fname FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T2.gradepoint  >=  3.8	college_3
SELECT DISTINCT T3.Fname FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T2.gradepoint  >=  3.8	college_3
SELECT T1.Fname ,  T1.Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID  =  T2.FacID WHERE T2.DNO  =  520	college_3
SELECT T1.Fname ,  T1.Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID  =  T2.FacID WHERE T2.DNO  =  520	college_3
SELECT T2.Fname ,  T2.Lname FROM MINOR_IN AS T1 JOIN STUDENT AS T2 ON T1.StuID  =  T2.StuID WHERE T1.DNO  =  140	college_3
SELECT T2.Fname ,  T2.Lname FROM MINOR_IN AS T1 JOIN STUDENT AS T2 ON T1.StuID  =  T2.StuID WHERE T1.DNO  =  140	college_3
SELECT T2.Lname FROM DEPARTMENT AS T1 JOIN FACULTY AS T2 ON T1.DNO  =  T3.DNO JOIN MEMBER_OF AS T3 ON T2.FacID  =  T3.FacID WHERE T1.DName  =  "Computer Science"	college_3
SELECT T2.Lname FROM DEPARTMENT AS T1 JOIN FACULTY AS T2 ON T1.DNO  =  T3.DNO JOIN MEMBER_OF AS T3 ON T2.FacID  =  T3.FacID WHERE T1.DName  =  "Computer Science"	college_3
SELECT avg(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.LName  =  "Smith"	college_3
SELECT avg(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.LName  =  "Smith"	college_3
SELECT max(T2.gradepoint) ,  min(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.city_code  =  "NYC"	college_3
SELECT max(T2.gradepoint) ,  min(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.city_code  =  "NYC"	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
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
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Gatwick"	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Gatwick"	aircraft
SELECT T1.Aircraft ,  T1.Description FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Total_Passengers  >  10000000	aircraft
SELECT T1.Aircraft ,  T1.Description FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Total_Passengers  >  10000000	aircraft
SELECT avg(T3.Total_Passengers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T1.Aircraft  =  "Robinson R-22"	aircraft
SELECT avg(T3.Total_Passengers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T1.Aircraft  =  "Robinson R-22"	aircraft
SELECT T2.Location ,  T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft	aircraft
SELECT T2.Location ,  T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft ORDER BY COUNT(*) DESC LIMIT 1	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft ORDER BY COUNT(*) DESC LIMIT 1	aircraft
SELECT T1.Aircraft ,  COUNT(*) FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft	aircraft
SELECT T1.Aircraft ,  COUNT(*) FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*)  >=  2	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*)  >=  2	aircraft
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM MATCH)	aircraft
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM MATCH)	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Heathrow" INTERSECT SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Gatwick"	aircraft
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Heathrow" INTERSECT SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Gatwick"	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT t1.name ,  t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id  =  t2.winning_pilot WHERE t1.age  <  30 GROUP BY t2.winning_pilot ORDER BY count(*) DESC LIMIT 1	aircraft
SELECT t1.name ,  t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id  =  t2.winning_pilot WHERE t1.age  <  30 GROUP BY t2.winning_pilot ORDER BY count(*) DESC LIMIT 1	aircraft
SELECT t1.name ,  t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id  =  t2.winning_pilot ORDER BY t1.age LIMIT 1	aircraft
SELECT t1.name ,  t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id  =  t2.winning_pilot ORDER BY t1.age LIMIT 1	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Winning_Pilot  FROM MATCH WHERE country  =  'Australia')	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Winning_Pilot  FROM MATCH WHERE country  =  'Australia')	aircraft
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
SELECT min(T2.HS) ,   T1.pPos FROM tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID GROUP BY T1.pPos	soccer_2
SELECT min(T2.HS) ,   T1.pPos FROM tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID GROUP BY T1.pPos	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT DISTINCT state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName	soccer_2
SELECT DISTINCT state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName	soccer_2
SELECT DISTINCT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.decision  =  'yes'	soccer_2
SELECT DISTINCT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.decision  =  'yes'	soccer_2
SELECT T1.pName ,  T2.cName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT T1.pName ,  T2.cName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID ORDER BY T1.pName	soccer_2
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID ORDER BY T1.pName	soccer_2
SELECT T1.pName ,  T1.HS FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT T1.pName ,  T1.HS FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'striker'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'striker'	soccer_2
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes' AND T2.pPos  =  'striker'	soccer_2
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes' AND T2.pPos  =  'striker'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName JOIN player AS T3 ON T2.pID  =  T3.pID WHERE T3.pName  =  'Charles'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName JOIN player AS T3 ON T2.pID  =  T3.pID WHERE T3.pName  =  'Charles'	soccer_2
SELECT avg(T1.HS) ,  max(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT avg(T1.HS) ,  max(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes'	soccer_2
SELECT avg(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'no'	soccer_2
SELECT avg(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'no'	soccer_2
SELECT max(T1.HS) ,  pPos FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T1.HS  >  1000 GROUP BY T2.pPos	soccer_2
SELECT max(T1.HS) ,  pPos FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T1.HS  >  1000 GROUP BY T2.pPos	soccer_2
SELECT T1.cName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T2.pName LIKE 'D%'	soccer_2
SELECT T1.cName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T2.pName LIKE 'D%'	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT T2.pName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T1.cName  =  (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)	soccer_2
SELECT T2.pName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T1.cName  =  (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)	soccer_2
SELECT DISTINCT T1.state ,  T1.enr FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.decision  =  'yes'	soccer_2
SELECT DISTINCT T1.state ,  T1.enr FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.decision  =  'yes'	soccer_2
SELECT cName FROM College WHERE enr  <  13000 AND state = "AZ" UNION SELECT cName FROM College WHERE enr  >  15000 AND state = "LA"	soccer_2
SELECT cName FROM College WHERE enr  <  13000 AND state = "AZ" UNION SELECT cName FROM College WHERE enr  >  15000 AND state = "LA"	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie' INTERSECT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie' INTERSECT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid'	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie'	soccer_2
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie'	soccer_2
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')	soccer_2
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos  =  "goalie")	soccer_2
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos  =  "goalie")	soccer_2
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
SELECT T3.Shop_Name ,  T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID JOIN shop AS T3 ON T1.Shop_ID  =  T3.Shop_ID	device
SELECT T3.Shop_Name ,  T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID JOIN shop AS T3 ON T1.Shop_ID  =  T3.Shop_ID	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID HAVING COUNT(*)  >  1	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID HAVING COUNT(*)  >  1	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY SUM(T1.quantity) DESC LIMIT 1	device
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY SUM(T1.quantity) DESC LIMIT 1	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)	device
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)	device
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)	device
SELECT T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID GROUP BY T1.Device_ID HAVING COUNT(*)  >  1	device
SELECT T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID GROUP BY T1.Device_ID HAVING COUNT(*)  >  1	device
SELECT count(*) FROM Band	music_2
SELECT count(*) FROM Band	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT DISTINCT T1.stageposition FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE Firstname  =  "Solveig"	music_2
SELECT DISTINCT T1.stageposition FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE Firstname  =  "Solveig"	music_2
SELECT count(*) FROM Songs	music_2
SELECT count(*) FROM Songs	music_2
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.Lastname  =  "Heilo"	music_2
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.Lastname  =  "Heilo"	music_2
SELECT count(*) FROM performance AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id JOIN songs AS T3 ON T3.songid  =  T1.songid WHERE T3.Title  =  "Flash"	music_2
SELECT count(*) FROM performance AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id JOIN songs AS T3 ON T3.songid  =  T1.songid WHERE T3.Title  =  "Flash"	music_2
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.firstname  =  "Marianne"	music_2
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.firstname  =  "Marianne"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Badlands"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Badlands"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Badlands" AND T1.StagePosition  =  "back"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Badlands" AND T1.StagePosition  =  "back"	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE stageposition  =  "back" GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE stageposition  =  "back" GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId JOIN Instruments AS T4 ON T4.songid  =  T3.songid AND T4.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo" AND T3.title  =  "Le Pop"	music_2
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId JOIN Instruments AS T4 ON T4.songid  =  T3.songid AND T4.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo" AND T3.title  =  "Le Pop"	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT instrument FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT instrument FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo"	music_2
SELECT instrument FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo"	music_2
SELECT instrument FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo"	music_2
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1	music_2
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE lastname  =  "Heilo" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE lastname  =  "Heilo" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Demon Kitty Rag"	music_2
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Demon Kitty Rag"	music_2
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE TYPE  =  "lead"	music_2
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE TYPE  =  "lead"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.firstname  =  "Solveig" AND T2.title  =  "A Bar In Amsterdam"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.firstname  =  "Solveig" AND T2.title  =  "A Bar In Amsterdam"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "lead"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "lead"	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Le Pop"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Le Pop"	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId JOIN Instruments AS T4 ON T4.songid  =  T3.songid AND T4.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo" AND T3.title  =  "Badlands"	music_2
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId JOIN Instruments AS T4 ON T4.songid  =  T3.songid AND T4.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo" AND T3.title  =  "Badlands"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Badlands"	music_2
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Badlands"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Badlands"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Badlands"	music_2
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE title  =  "Le Pop"	music_2
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE TYPE  =  "shared"	music_2
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid WHERE TYPE  =  "shared"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "back"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "back"	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE firstname  =  "Solveig" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE firstname  =  "Solveig" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.lastname  =  "Heilo" AND T2.title  =  "Der Kapitan"	music_2
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.lastname  =  "Heilo" AND T2.title  =  "Der Kapitan"	music_2
SELECT t2.firstname FROM Performance AS t1 JOIN Band AS t2 ON t1.bandmate  =  t2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY firstname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT t2.firstname FROM Performance AS t1 JOIN Band AS t2 ON t1.bandmate  =  t2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId GROUP BY firstname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE firstname  =  "Marianne" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id WHERE firstname  =  "Marianne" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Der Kapitan" AND T1.StagePosition  =  "back"	music_2
SELECT T2.firstname ,  T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T3.Title  =  "Der Kapitan" AND T1.StagePosition  =  "back"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "back"	music_2
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid  =  t2.songid WHERE TYPE  =  "back"	music_2
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE T1.title  =  "A Kiss Before You Go: Live in Hamburg"	music_2
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE T1.title  =  "A Kiss Before You Go: Live in Hamburg"	music_2
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE t1.label  =  "Universal Music Group"	music_2
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE t1.label  =  "Universal Music Group"	music_2
SELECT count(DISTINCT T3.title) FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE t1.type  =  "Studio"	music_2
SELECT count(DISTINCT T3.title) FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE t1.type  =  "Studio"	music_2
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT DISTINCT staff_first_name ,  staff_last_name FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T2.problem_id = 1	tracking_software_problems
SELECT DISTINCT staff_first_name ,  staff_last_name FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T2.problem_id = 1	tracking_software_problems
SELECT DISTINCT T2.problem_id ,  T2.problem_log_id FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T1.staff_first_name = "Rylan" AND T1.staff_last_name = "Homenick"	tracking_software_problems
SELECT DISTINCT T2.problem_id ,  T2.problem_log_id FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T1.staff_first_name = "Rylan" AND T1.staff_last_name = "Homenick"	tracking_software_problems
SELECT count(*) FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "voluptatem"	tracking_software_problems
SELECT count(*) FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "voluptatem"	tracking_software_problems
SELECT count(*) ,  T1.product_name FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_name ORDER BY count(*) DESC LIMIT 1	tracking_software_problems
SELECT count(*) ,  T1.product_name FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_name ORDER BY count(*) DESC LIMIT 1	tracking_software_problems
SELECT T1.problem_description FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"	tracking_software_problems
SELECT T1.problem_description FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_last_name = "Bosco"	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_last_name = "Bosco"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT count(*) ,  T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id	tracking_software_problems
SELECT count(*) ,  T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id	tracking_software_problems
SELECT count(*) ,  T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T1.date_problem_reported > "1986-11-13" GROUP BY T2.product_id	tracking_software_problems
SELECT count(*) ,  T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T1.date_problem_reported > "1986-11-13" GROUP BY T2.product_id	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Dameon" AND T2.staff_last_name = "Frami" UNION SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Jolie" AND T2.staff_last_name = "Weber"	tracking_software_problems
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Dameon" AND T2.staff_last_name = "Frami" UNION SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Jolie" AND T2.staff_last_name = "Weber"	tracking_software_problems
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop" AND T2.staff_last_name = "Berge" INTERSECT SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.closure_authorised_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Ashley" AND T2.staff_last_name = "Medhurst"	tracking_software_problems
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop" AND T2.staff_last_name = "Berge" INTERSECT SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.closure_authorised_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Ashley" AND T2.staff_last_name = "Medhurst"	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported  <  ( SELECT min(date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Lysanne" AND T4.staff_last_name = "Turcotte" )	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported  <  ( SELECT min(date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Lysanne" AND T4.staff_last_name = "Turcotte" )	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported  >  ( SELECT max(date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Rylan" AND T4.staff_last_name = "Homenick" )	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported  >  ( SELECT max(date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Rylan" AND T4.staff_last_name = "Homenick" )	tracking_software_problems
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name ORDER BY count(*) DESC LIMIT 3	tracking_software_problems
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name ORDER BY count(*) DESC LIMIT 3	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "1995"	tracking_software_problems
SELECT T1.problem_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "1995"	tracking_software_problems
SELECT T3.staff_first_name ,  T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "rem" EXCEPT SELECT T3.staff_first_name ,  T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "aut"	tracking_software_problems
SELECT T3.staff_first_name ,  T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "rem" EXCEPT SELECT T3.staff_first_name ,  T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "aut"	tracking_software_problems
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Lacey" AND T3.staff_last_name = "Bosco" INTERSECT SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Kenton" AND T3.staff_last_name = "Champlin"	tracking_software_problems
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Lacey" AND T3.staff_last_name = "Bosco" INTERSECT SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Kenton" AND T3.staff_last_name = "Champlin"	tracking_software_problems
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
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_President_VOTE	voter_2
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_President_VOTE	voter_2
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_Senator_VOTE	voter_2
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_Senator_VOTE	voter_2
SELECT DISTINCT T1.Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Secretary_Vote WHERE T2.Election_Cycle  =  "Fall"	voter_2
SELECT DISTINCT T1.Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Secretary_Vote WHERE T2.Election_Cycle  =  "Fall"	voter_2
SELECT DISTINCT T1.Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote WHERE T2.Election_Cycle  =  "Spring"	voter_2
SELECT DISTINCT T1.Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote WHERE T2.Election_Cycle  =  "Spring"	voter_2
SELECT DISTINCT T1.Major FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote	voter_2
SELECT DISTINCT T1.Major FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote	voter_2
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.President_VOTE WHERE T1.sex  =  "F"	voter_2
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.President_VOTE WHERE T1.sex  =  "F"	voter_2
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_President_VOTE WHERE T1.age  =  18	voter_2
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_President_VOTE WHERE T1.age  =  18	voter_2
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.Sex  =  "M" AND T2.Election_Cycle  =  "Fall"	voter_2
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.Sex  =  "M" AND T2.Election_Cycle  =  "Fall"	voter_2
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_PRESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code  =  "PIT"	voter_2
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_PRESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code  =  "PIT"	voter_2
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "2192"	voter_2
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "2192"	voter_2
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "8741"	voter_2
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "8741"	voter_2
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
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win'	swimming
SELECT t1.name FROM stadium AS t1 JOIN event AS t2 ON t1.id  =  t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT t1.name ,  t1.capacity FROM stadium AS t1 JOIN event AS t2 ON t1.id  =  t2.stadium_id WHERE t2.name  =  'World Junior'	swimming
SELECT name FROM stadium WHERE id NOT IN (SELECT stadium_id FROM event)	swimming
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id GROUP BY t2.swimmer_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id GROUP BY t2.swimmer_id HAVING count(*)  >=  2	swimming
SELECT t1.name ,  t1.nationality FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win' GROUP BY t2.swimmer_id HAVING count(*)  >  1	swimming
SELECT name FROM swimmer WHERE id NOT IN (SELECT swimmer_id FROM record)	swimming
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win' INTERSECT SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Loss'	swimming
SELECT t4.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id JOIN event AS t3 ON t2.event_id  =  t3.id JOIN stadium AS t4 ON t4.id  =  t3.stadium_id WHERE t1.nationality  =  'Australia'	swimming
SELECT t3.name FROM record AS t1 JOIN event AS t2 ON t1.event_id  =  t2.id JOIN stadium AS t3 ON t3.id  =  t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT * FROM swimmer	swimming
SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005	swimming
SELECT count(*) FROM addresses WHERE country  =  'USA'	customers_and_products_contacts
SELECT DISTINCT city FROM addresses	customers_and_products_contacts
SELECT state_province_county ,  count(*) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
SELECT customer_name ,  customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_address_history)	customers_and_products_contacts
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_products_contacts
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*)  >=  2	customers_and_products_contacts
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  'Completed' INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  'Part'	customers_and_products_contacts
SELECT customer_name ,  customer_phone ,  payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
SELECT T1.product_name ,  sum(T2.order_quantity) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id	customers_and_products_contacts
SELECT min(product_price) ,  max(product_price) ,  avg(product_price) FROM products	customers_and_products_contacts
SELECT count(*) FROM products WHERE product_price  >  (SELECT avg(product_price) FROM products)	customers_and_products_contacts
SELECT T2.customer_name ,  T3.city ,  T1.date_from ,  T1.date_to FROM customer_address_history AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id JOIN addresses AS T3 ON T1.address_id  =  T3.address_id	customers_and_products_contacts
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.payment_method_code  =  'Credit Card' GROUP BY T1.customer_id HAVING count(*)  >  2	customers_and_products_contacts
SELECT  T1.customer_name ,  T1.customer_phone FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T3.order_id  =  T2.order_id GROUP BY T1.customer_id ORDER BY sum(T3.order_quantity) DESC LIMIT 1	customers_and_products_contacts
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
SELECT T2.Author ,  T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID	workshop_paper
SELECT T2.Author ,  T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID	workshop_paper
SELECT T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID ORDER BY T2.Scores DESC LIMIT 1	workshop_paper
SELECT T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID ORDER BY T2.Scores DESC LIMIT 1	workshop_paper
SELECT T2.Author ,  COUNT(DISTINCT T1.workshop_id) FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID GROUP BY T2.Author	workshop_paper
SELECT T2.Author ,  COUNT(DISTINCT T1.workshop_id) FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID GROUP BY T2.Author	workshop_paper
SELECT T2.Author FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID GROUP BY T2.Author HAVING COUNT(DISTINCT T1.workshop_id)  >  1	workshop_paper
SELECT T2.Author FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID  =  T2.Submission_ID GROUP BY T2.Author HAVING COUNT(DISTINCT T1.workshop_id)  >  1	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
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
SELECT T2.star_rating_description FROM HOTELS AS T1 JOIN Ref_Hotel_Star_Ratings AS T2 ON T1.star_rating_code  =  T2.star_rating_code WHERE T1.price_range  >  10000	cre_Theme_park
SELECT T2.star_rating_description FROM HOTELS AS T1 JOIN Ref_Hotel_Star_Ratings AS T2 ON T1.star_rating_code  =  T2.star_rating_code WHERE T1.price_range  >  10000	cre_Theme_park
SELECT T1.Museum_Details ,  T2.Opening_Hours FROM MUSEUMS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Museum_ID  =  T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T1.Museum_Details ,  T2.Opening_Hours FROM MUSEUMS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Museum_ID  =  T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T2.Name FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T1.Name  =  "game1"	cre_Theme_park
SELECT T2.Name FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T1.Name  =  "game1"	cre_Theme_park
SELECT T1.Name ,  T1.Description FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T2.Name  =  "film festival"	cre_Theme_park
SELECT T1.Name ,  T1.Description FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T2.Name  =  "film festival"	cre_Theme_park
SELECT T1.Royal_Family_Details ,  T2.How_to_Get_There FROM ROYAL_FAMILY AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Royal_Family_ID  =  T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T1.Royal_Family_Details ,  T2.How_to_Get_There FROM ROYAL_FAMILY AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Royal_Family_ID  =  T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T1.Shop_Details FROM SHOPS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk"	cre_Theme_park
SELECT T1.Shop_Details FROM SHOPS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk"	cre_Theme_park
SELECT T1.Name FROM STAFF AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T2.Name  =  "US museum"	cre_Theme_park
SELECT T1.Name FROM STAFF AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID WHERE T2.Name  =  "US museum"	cre_Theme_park
SELECT T1.Market_Details FROM Street_Markets AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Market_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk" OR  T2.How_to_Get_There  =  "bus"	cre_Theme_park
SELECT T1.Market_Details FROM Street_Markets AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Market_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk" OR  T2.How_to_Get_There  =  "bus"	cre_Theme_park
SELECT T2.Visit_Date ,  T2.Visit_Details FROM VISITORS AS T1 JOIN VISITS AS T2 ON T1.Tourist_ID  =  T2.Tourist_ID WHERE T1.Tourist_Details  =  "Vincent"	cre_Theme_park
SELECT T2.Visit_Date ,  T2.Visit_Details FROM VISITORS AS T1 JOIN VISITS AS T2 ON T1.Tourist_ID  =  T2.Tourist_ID WHERE T1.Tourist_Details  =  "Vincent"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID JOIN VISITORS AS T3 ON T2.Tourist_ID  =  T3.Tourist_ID WHERE T3.Tourist_Details  =  "Vincent"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID JOIN VISITORS AS T3 ON T2.Tourist_ID  =  T3.Tourist_ID WHERE T3.Tourist_Details  =  "Vincent"	cre_Theme_park
SELECT T1.Name ,  T3.Visit_Date FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Vincent" OR T2.Tourist_Details  =  "Vivian"	cre_Theme_park
SELECT T1.Name ,  T3.Visit_Date FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Vincent" OR T2.Tourist_Details  =  "Vivian"	cre_Theme_park
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
SELECT T1.Attraction_Type_Description ,  T2.Attraction_Type_Code FROM Ref_Attraction_Types AS T1 JOIN Tourist_Attractions AS T2 ON T1.Attraction_Type_Code  =  T2.Attraction_Type_Code GROUP BY T2.Attraction_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT T1.Attraction_Type_Description ,  T2.Attraction_Type_Code FROM Ref_Attraction_Types AS T1 JOIN Tourist_Attractions AS T2 ON T1.Attraction_Type_Code  =  T2.Attraction_Type_Code GROUP BY T2.Attraction_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT T1.Name ,  T2.Tourist_Attraction_ID ,   COUNT(*) FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T1.Name ,  T2.Tourist_Attraction_ID ,   COUNT(*) FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID	cre_Theme_park
SELECT T1.Name ,  T2.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*)  >=  2	cre_Theme_park
SELECT T1.Name ,  T2.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*)  >=  2	cre_Theme_park
SELECT T1.Name ,  T1.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*)  <=  1	cre_Theme_park
SELECT T1.Name ,  T1.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*)  <=  1	cre_Theme_park
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID  =  T2.Location_ID WHERE T1.Address  =  "660 Shea Crescent" OR T2.How_to_Get_There  =  "walk"	cre_Theme_park
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID  =  T2.Location_ID WHERE T1.Address  =  "660 Shea Crescent" OR T2.How_to_Get_There  =  "walk"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'park' UNION SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'shopping'	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'park' UNION SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'shopping'	cre_Theme_park
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID  =  T2.Location_ID WHERE T1.Address  =  "254 Ottilie Junction" OR T2.How_to_Get_There  =  "bus"	cre_Theme_park
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID  =  T2.Location_ID WHERE T1.Address  =  "254 Ottilie Junction" OR T2.How_to_Get_There  =  "bus"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Vincent" INTERSECT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Marcelle"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Vincent" INTERSECT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Marcelle"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Alison" EXCEPT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Rosalind"	cre_Theme_park
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Alison" EXCEPT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID  =  T3.Tourist_Attraction_ID AND T2.Tourist_ID  =  T3.Tourist_ID WHERE T2.Tourist_Details  =  "Rosalind"	cre_Theme_park
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )	cre_Theme_park
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )	cre_Theme_park
SELECT count(*) FROM roller_coaster	roller_coaster
SELECT Name FROM roller_coaster ORDER BY LENGTH ASC	roller_coaster
SELECT LENGTH ,  Height FROM roller_coaster	roller_coaster
SELECT Name FROM country WHERE Languages != "German"	roller_coaster
SELECT Status FROM roller_coaster WHERE LENGTH  >  3300 OR Height  >  100	roller_coaster
SELECT Speed FROM roller_coaster ORDER BY LENGTH DESC LIMIT 1	roller_coaster
SELECT avg(Speed) FROM roller_coaster	roller_coaster
SELECT Status ,  COUNT(*) FROM roller_coaster GROUP BY Status	roller_coaster
SELECT Status FROM roller_coaster GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	roller_coaster
SELECT Status FROM roller_coaster GROUP BY Status HAVING COUNT(*)  >  2	roller_coaster
SELECT Park FROM roller_coaster ORDER BY Speed DESC LIMIT 1	roller_coaster
SELECT T2.Name ,  T1.Name FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID	roller_coaster
SELECT T1.Name FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID GROUP BY T1.Name HAVING COUNT(*)  >  1	roller_coaster
SELECT T1.Name ,  T1.population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID ORDER BY T2.Height DESC LIMIT 1	roller_coaster
SELECT T1.Name ,  avg(T2.Speed) FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID GROUP BY T1.Name	roller_coaster
SELECT count(*) FROM country WHERE country_id NOT IN ( SELECT country_id FROM roller_coaster WHERE LENGTH  >  3000 )	roller_coaster
SELECT T1.name ,  T1.area ,  T1.population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID WHERE T2.speed  >  60 INTERSECT SELECT T1.name ,  T1.area ,  T1.population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID WHERE T2.speed  <  55	roller_coaster
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T2.year  >  2010	city_record
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T2.year  >  2010	city_record
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city GROUP BY T2.host_city ORDER BY count(*) DESC LIMIT 1	city_record
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city GROUP BY T2.host_city ORDER BY count(*) DESC LIMIT 1	city_record
SELECT T3.venue FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city JOIN MATCH AS T3 ON T2.match_id = T3.match_id WHERE T1.city = "Nanjing ( Jiangsu )" AND T3.competition = "1994 FIFA World Cup qualification"	city_record
SELECT T3.venue FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city JOIN MATCH AS T3 ON T2.match_id = T3.match_id WHERE T1.city = "Nanjing ( Jiangsu )" AND T3.competition = "1994 FIFA World Cup qualification"	city_record
SELECT T2.Jan FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T1.city = "Shanghai"	city_record
SELECT T2.Jan FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T1.city = "Shanghai"	city_record
SELECT T2.year FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city WHERE T1.city  =  "Taizhou ( Zhejiang )"	city_record
SELECT T2.year FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city WHERE T1.city  =  "Taizhou ( Zhejiang )"	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id ORDER BY T2.Feb DESC LIMIT 1	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id ORDER BY T2.Feb DESC LIMIT 1	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Jul OR T2.Mar  >  T2.Oct	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Jul OR T2.Mar  >  T2.Oct	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Jul INTERSECT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Jul INTERSECT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Dec EXCEPT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Dec EXCEPT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Feb  >  T2.Jun UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Feb  >  T2.Jun UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city	city_record
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
SELECT t1.gdp ,  t1.Regional_Population FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city GROUP BY t2.Host_City HAVING count(*)  >  1	city_record
SELECT t1.gdp ,  t1.Regional_Population FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id  =  T2.host_city GROUP BY t2.Host_City HAVING count(*)  >  1	city_record
SELECT count(*) FROM driver	school_bus
SELECT name ,  home_city ,  age FROM driver	school_bus
SELECT party ,  count(*) FROM driver GROUP BY party	school_bus
SELECT name FROM driver ORDER BY age DESC	school_bus
SELECT DISTINCT home_city FROM driver	school_bus
SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1	school_bus
SELECT party FROM driver WHERE home_city  =  'Hartford' AND age  >  40	school_bus
SELECT home_city FROM driver WHERE age  >  40 GROUP BY home_city HAVING count(*)  >=  2	school_bus
SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age  >  40	school_bus
SELECT name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM school_bus)	school_bus
SELECT TYPE FROM school GROUP BY TYPE HAVING count(*)  =  2	school_bus
SELECT T2.school ,  T3.name FROM school_bus AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id JOIN driver AS T3 ON T1.driver_id  =  T3.driver_id	school_bus
SELECT max(years_working) ,  min(years_working) ,  avg(years_working) FROM school_bus	school_bus
SELECT school ,  TYPE FROM school WHERE school_id NOT IN (SELECT school_id FROM school_bus)	school_bus
SELECT T2.type ,  count(*) FROM school_bus AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id GROUP BY T2.type	school_bus
SELECT count(*) FROM driver WHERE home_city  =  'Hartford' OR age  <  40	school_bus
SELECT name FROM driver WHERE home_city  =  'Hartford' AND age  <  40	school_bus
SELECT t1.name FROM driver AS t1 JOIN school_bus AS t2 ON t1.driver_id  =  t2.driver_id ORDER BY years_working DESC LIMIT 1	school_bus
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
SELECT DISTINCT T2.Name FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red"	wine_1
SELECT DISTINCT T2.Name FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red"	wine_1
SELECT DISTINCT T2.Name FROM APPELLATIONs AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.Area  =  "North Coast"	wine_1
SELECT DISTINCT T2.Name FROM APPELLATIONs AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.Area  =  "North Coast"	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT AVG(T2.Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  "Sonoma"	wine_1
SELECT AVG(T2.Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  "Sonoma"	wine_1
SELECT T2.Name ,   T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White"	wine_1
SELECT T2.Name ,   T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White"	wine_1
SELECT max(T2.Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.Area  =  "Central Coast" AND T2.year  <  2005	wine_1
SELECT max(T2.Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.Area  =  "Central Coast" AND T2.year  <  2005	wine_1
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White" AND T2.score  >  90	wine_1
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White" AND T2.score  >  90	wine_1
SELECT T2.Name FROM Grapes AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red" AND T2.price  >  50	wine_1
SELECT T2.Name FROM Grapes AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red" AND T2.price  >  50	wine_1
SELECT T2.Name FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  "Monterey" AND T2.price  <  50	wine_1
SELECT T2.Name FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  "Monterey" AND T2.price  <  50	wine_1
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
SELECT T1.Area FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation GROUP BY T2.Appelation HAVING T2.year  <  2010 ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.Area FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation GROUP BY T2.Appelation HAVING T2.year  <  2010 ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.Color FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape GROUP BY T2.Grape ORDER BY AVG(Price) DESC LIMIT 1	wine_1
SELECT T1.Color FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape GROUP BY T2.Grape ORDER BY AVG(Price) DESC LIMIT 1	wine_1
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
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation GROUP BY T2.Appelation HAVING count(*)  <=  3	wine_1
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation GROUP BY T2.Appelation HAVING count(*)  <=  3	wine_1
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
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  'Sonoma')	wine_1
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  'Sonoma')	wine_1
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T2.Score  >  90 GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T2.Score  >  90 GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT vehicle_id FROM Vehicles;	driving_school
SELECT vehicle_id FROM Vehicles;	driving_school
SELECT count(*) FROM Vehicles;	driving_school
SELECT count(*) FROM Vehicles;	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff;	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff;	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie";	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie";	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT count(*) FROM Staff;	driving_school
SELECT count(*) FROM Staff;	driving_school
SELECT T1.city FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT T1.city FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT T1.country ,  T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT T1.country ,  T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT sum(T1.lesson_time) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin";	driving_school
SELECT sum(T1.lesson_time) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin";	driving_school
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT count(*) FROM Addresses WHERE state_province_county = "Georgia";	driving_school
SELECT count(*) FROM Addresses WHERE state_province_county = "Georgia";	driving_school
SELECT T2.first_name ,  T2.last_name FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T1.city = "Damianfort";	driving_school
SELECT T2.first_name ,  T2.last_name FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T1.city = "Damianfort";	driving_school
SELECT T1.city ,  count(*) FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T1.city ,  count(*) FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.state_province_county HAVING count(*) BETWEEN 2 AND 4;	driving_school
SELECT T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.state_province_county HAVING count(*) BETWEEN 2 AND 4;	driving_school
SELECT first_name ,  last_name FROM Customers;	driving_school
SELECT first_name ,  last_name FROM Customers;	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000;	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000;	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";	driving_school
SELECT count(*) FROM Customers;	driving_school
SELECT count(*) FROM Customers;	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code;	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code;	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin" AND T1.lesson_status_code = "Completed";	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin" AND T1.lesson_status_code = "Completed";	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000;	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000;	driving_school
SELECT T1.first_name ,  T1.last_name FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T2.city = "Lockmanfurt";	driving_school
SELECT T1.first_name ,  T1.last_name FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T2.city = "Lockmanfurt";	driving_school
SELECT T2.country FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"	driving_school
SELECT T2.country FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"	driving_school
SELECT T2.zip_postcode FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"	driving_school
SELECT T2.zip_postcode FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"	driving_school
SELECT T2.city FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T2.city FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT sum(T1.amount_payment) FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Carole" AND T2.last_name = "Bernhard"	driving_school
SELECT sum(T1.amount_payment) FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Carole" AND T2.last_name = "Bernhard"	driving_school
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );	driving_school
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );	driving_school
SELECT T2.first_name ,  T2.last_name FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >  2;	driving_school
SELECT T2.first_name ,  T2.last_name FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >  2;	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code;	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code;	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled";	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled";	driving_school
SELECT T1.lesson_id FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn" AND nickname LIKE "%s%";	driving_school
SELECT T1.lesson_id FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn" AND nickname LIKE "%s%";	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"	driving_school
SELECT sum(lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT sum(lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT avg(price) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT avg(price) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Ray"	driving_school
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id  = T2.customer_id WHERE T2.first_name = "Ray"	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id  =  T2.staff_id	driving_school
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id  =  T2.staff_id	driving_school
SELECT T1.vehicle_id ,  T1.vehicle_details FROM Vehicles AS T1 JOIN Lessons AS T2 ON T1.vehicle_id  =  T2.vehicle_id GROUP BY T1.vehicle_id ORDER BY count(*) DESC LIMIT 1	driving_school
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
SELECT count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid WHERE T1.name  =  'American Airlines'	flight_4
SELECT count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid WHERE T1.name  =  'American Airlines'	flight_4
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE country  =  'Canada'	flight_4
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE country  =  'Canada'	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT T1.name ,  T1.city ,  T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name ,  T1.city ,  T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name ,  T2.alid FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T2.alid ORDER BY count(*) DESC LIMIT 10	flight_4
SELECT T1.name ,  T2.alid FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T2.alid ORDER BY count(*) DESC LIMIT 10	flight_4
SELECT T1.name ,  T1.city ,  T2.src_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T2.src_apid ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name ,  T1.city ,  T2.src_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T2.src_apid ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT count(DISTINCT dst_apid) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid WHERE T1.name  =  'American Airlines'	flight_4
SELECT count(DISTINCT dst_apid) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid WHERE T1.name  =  'American Airlines'	flight_4
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
SELECT count(*) ,  T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T1.name	flight_4
SELECT count(*) ,  T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T1.name	flight_4
SELECT count(*) ,  T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T1.name ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid GROUP BY T1.name ORDER BY count(*) DESC	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT T1.country ,  T1.name ,  count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T1.country ,  T1.name	flight_4
SELECT T1.country ,  T1.name ,  count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T1.country ,  T1.name	flight_4
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid WHERE T2.country  =  'Italy'	flight_4
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid WHERE T2.country  =  'Italy'	flight_4
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid JOIN airlines AS T3 ON T1.alid  =  T3.alid WHERE T2.country  =  'Italy' AND T3.name  =  'American Airlines'	flight_4
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid JOIN airlines AS T3 ON T1.alid  =  T3.alid WHERE T2.country  =  'Italy' AND T3.name  =  'American Airlines'	flight_4
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE T1.name  =  'John F Kennedy International Airport'	flight_4
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE T1.name  =  'John F Kennedy International Airport'	flight_4
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'Canada') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'Canada') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT rid FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'United States') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT rid FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'United States') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT T1.name FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid WHERE T1.country  =  'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.src_apid WHERE T1.country  =  'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE T1.country  =  'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE T1.country  =  'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT count(*) FROM architect WHERE gender  =  'female'	architecture
SELECT name ,  nationality ,  id FROM architect WHERE gender  =  'male' ORDER BY name	architecture
SELECT max(T1.length_meters) ,  T2.name FROM bridge AS T1 JOIN architect AS T2 ON T1.architect_id  =  T2.id	architecture
SELECT avg(length_feet) FROM bridge	architecture
SELECT name ,  built_year FROM mill WHERE TYPE  =  'Grondzeiler'	architecture
SELECT DISTINCT T1.name ,  T1.nationality FROM architect AS T1 JOIN mill AS t2 ON T1.id  =  T2.architect_id	architecture
SELECT name FROM mill WHERE LOCATION != 'Donceel'	architecture
SELECT DISTINCT T1.type FROM mill AS T1 JOIN architect AS t2 ON T1.architect_id  =  T2.id WHERE T2.nationality  =  'American' OR T2.nationality  =  'Canadian'	architecture
SELECT T1.id ,  T1.name FROM architect AS T1 JOIN bridge AS T2 ON T1.id  =  T2.architect_id GROUP BY T1.id HAVING count(*)  >=  3	architecture
SELECT T1.id ,  T1.name ,  T1.nationality FROM architect AS T1 JOIN mill AS T2 ON T1.id  =  T2.architect_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	architecture
SELECT T1.id ,  T1.name ,  T1.gender FROM architect AS T1 JOIN bridge AS T2 ON T1.id  =  T2.architect_id GROUP BY T1.id HAVING count(*)  =  2 UNION SELECT T1.id ,  T1.name ,  T1.gender FROM architect AS T1 JOIN mill AS T2 ON T1.id  =  T2.architect_id GROUP BY T1.id HAVING count(*)  =  1	architecture
SELECT LOCATION FROM bridge WHERE name  =  'Kolob Arch' OR name  =  'Rainbow Bridge'	architecture
SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
SELECT DISTINCT T1.name FROM mill AS T1 JOIN architect AS t2 ON T1.architect_id  =  T2.id JOIN bridge AS T3 ON T3.architect_id  =  T2.id WHERE T3.length_meters  >  80	architecture
SELECT TYPE ,  count(*) FROM mill GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	architecture
SELECT count(*) FROM architect WHERE id NOT IN ( SELECT architect_id FROM mill WHERE built_year  <  1850 );	architecture
SELECT t1.name FROM bridge AS t1 JOIN architect AS t2 ON t1.architect_id  =  t2.id WHERE t2.nationality  =  'American' ORDER BY t1.length_feet	architecture
