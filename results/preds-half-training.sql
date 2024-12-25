SELECT COUNT( * ) FROM head WHERE head.age > 56	department_management
SELECT head.name , head.born_state , head.age FROM head ORDER BY head.age ASC	department_management
SELECT department.creation , department.name , department.budget_in_billions FROM department	department_management
SELECT MAX( department.budget_in_billions ) , MIN( department.budget_in_billions ) FROM department	department_management
SELECT AVG( department.num_employees ) FROM department WHERE department.ranking BETWEEN 10 and 15	department_management
SELECT head.name FROM head WHERE head.born_state != 'California'	department_management
SELECT DISTINCT department.creation FROM department JOIN management ON department.department_id = management.department_id JOIN head ON management.head_id = head.head_id WHERE head.born_state = 'Alabama'	department_management
SELECT head.born_state FROM head GROUP BY head.born_state HAVING COUNT( * ) >= 3	department_management
SELECT department.creation FROM department GROUP BY department.creation ORDER BY COUNT( * ) DESC LIMIT 1	department_management
SELECT department.name , department.num_employees FROM management JOIN department ON management.department_id = department.department_id JOIN head ON management.head_id = head.head_id WHERE management.temporary_acting = 'Yes'	department_management
SELECT COUNT( * ) FROM management WHERE management.temporary_acting = '1'	department_management
SELECT COUNT( * ) FROM head WHERE head.head_id NOT IN (SELECT management.head_id FROM management)	department_management
SELECT DISTINCT head.age FROM head JOIN management ON head.head_id = management.head_id	department_management
SELECT head.born_state FROM department JOIN management ON department.department_id = management.department_id JOIN head ON management.head_id = head.head_id WHERE department.name = 'Treasury' INTERSECT SELECT head.born_state FROM department JOIN management ON department.department_id = management.department_id JOIN head ON management.head_id = head.head_id WHERE department.name = 'Homeland Security'	department_management
SELECT department.department_id , head.name , COUNT( * ) FROM department JOIN management ON department.department_id = management.department_id JOIN head ON management.head_id = head.head_id GROUP BY department.department_id HAVING COUNT( * ) > 1	department_management
SELECT head.head_id , head.name FROM head WHERE head.name LIKE '%Ha%'	department_management
SELECT courses.course_name FROM courses JOIN student_course_registrations ON courses.course_id = student_course_registrations.course_id GROUP BY courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_assessment
SELECT courses.course_name FROM courses JOIN student_course_registrations ON courses.course_id = student_course_registrations.course_id GROUP BY courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations GROUP BY student_course_registrations.student_id ORDER BY COUNT( * ) ASC LIMIT 1	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations JOIN student_course_attendance ON student_course_registrations.course_id = student_course_attendance.student_id JOIN student_course_registrations ON student_course_registrations.course_id = student_course_attendance.course_id GROUP BY student_course_registrations.student_id ORDER BY COUNT( * ) ASC LIMIT 1	student_assessment
SELECT people.first_name , people.last_name FROM people JOIN candidates ON people.person_id = candidates.candidate_id	student_assessment
SELECT people.first_name , people.last_name FROM people JOIN candidates ON people.person_id = candidates.candidate_id	student_assessment
SELECT students.student_id FROM students EXCEPT SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT students.student_id FROM students EXCEPT SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT DISTINCT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT courses.course_id , courses.course_name FROM courses	student_assessment
SELECT students.student_details FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id ORDER BY student_course_registrations.registration_date DESC LIMIT 1	student_assessment
SELECT students.student_details FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id ORDER BY student_course_registrations.registration_date DESC LIMIT 1	student_assessment
SELECT COUNT( * ) FROM courses JOIN student_course_attendance ON courses.course_id = student_course_attendance.course_id WHERE courses.course_name = 'English'	student_assessment
SELECT COUNT( * ) FROM courses WHERE courses.course_name = 'English'	student_assessment
SELECT COUNT( * ) FROM student_course_attendance WHERE student_course_attendance.student_id = 171	student_assessment
SELECT COUNT( * ) FROM student_course_attendance WHERE student_course_attendance.student_id = 171	student_assessment
SELECT candidates.candidate_id FROM candidates JOIN people ON candidates.candidate_id = people.person_id WHERE people.email_address = 'stanley.monahan@example.org'	student_assessment
SELECT candidates.candidate_id FROM candidates JOIN people ON candidates.candidate_id = people.person_id WHERE people.email_address = 'stanley.monahan@example.org'	student_assessment
SELECT candidates.candidate_id FROM candidates	student_assessment
SELECT candidates.candidate_id FROM candidates	student_assessment
SELECT students.student_details FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY student_course_registrations.student_id ORDER BY COUNT( * ) DESC LIMIT 1	student_assessment
SELECT students.student_details FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY student_course_registrations.student_id ORDER BY COUNT( * ) DESC LIMIT 1	student_assessment
SELECT student_course_registrations.student_id , COUNT( * ) FROM student_course_registrations GROUP BY student_course_registrations.student_id	student_assessment
SELECT student_course_registrations.student_id , COUNT( * ) FROM student_course_registrations GROUP BY student_course_registrations.student_id	student_assessment
SELECT courses.course_name , COUNT( * ) FROM courses JOIN student_course_registrations ON courses.course_id = student_course_registrations.course_id GROUP BY courses.course_id	student_assessment
SELECT courses.course_id , courses.course_name , COUNT( * ) FROM courses JOIN student_course_registrations ON courses.course_id = student_course_registrations.course_id GROUP BY courses.course_id	student_assessment
SELECT candidate_assessments.candidate_id FROM candidate_assessments WHERE candidate_assessments.asessment_outcome_code = 'Pass'	student_assessment
SELECT candidates.candidate_id FROM candidate_assessments WHERE candidate_assessments.asessment_outcome_code = 'Pass'	student_assessment
SELECT people.cell_mobile_number FROM people JOIN candidate_assessments ON people.person_id = candidate_assessments.candidate_id WHERE candidate_assessments.asessment_outcome_code = 'Fail'	student_assessment
SELECT people.cell_mobile_number FROM people JOIN candidate_assessments ON people.person_id = candidate_assessments.candidate_id WHERE candidate_assessments.asessment_outcome_code = 'Fail'	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations WHERE student_course_registrations.course_id = 301	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations WHERE student_course_registrations.course_id = 301	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations WHERE student_course_registrations.course_id = 301 ORDER BY student_course_registrations.registration_date DESC LIMIT 1	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations WHERE student_course_registrations.course_id = 301 ORDER BY student_course_registrations.registration_date DESC LIMIT 1	student_assessment
SELECT DISTINCT addresses.city FROM addresses	student_assessment
SELECT DISTINCT addresses.city FROM addresses	student_assessment
SELECT DISTINCT addresses.city FROM addresses	student_assessment
SELECT DISTINCT addresses.city FROM addresses	student_assessment
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations UNION SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations UNION SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT courses.course_id FROM student_course_registrations JOIN student_course_attendance ON student_course_registrations.course_id = student_course_attendance.course_id WHERE student_course_registrations.student_id = 121 UNION SELECT courses.course_id FROM student_course_registrations JOIN student_course_attendance ON student_course_registrations.course_id = student_course_attendance.course_id WHERE student_course_attendance.student_id = 121	student_assessment
SELECT courses.course_id FROM student_course_registrations JOIN student_course_attendance ON student_course_registrations.course_id = student_course_attendance.course_id WHERE student_course_registrations.student_id = 121 UNION SELECT courses.course_id FROM student_course_registrations JOIN student_course_attendance ON student_course_registrations.course_id = student_course_attendance.course_id WHERE student_course_attendance.student_id = 121	student_assessment
SELECT * FROM student_course_registrations WHERE student_course_registrations.student_id NOT IN (SELECT student_course_attendance.student_id FROM student_course_attendance)	student_assessment
SELECT students.student_details FROM students WHERE students.student_id NOT IN (SELECT student_course_attendance.student_id FROM student_course_attendance)	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations ORDER BY student_course_registrations.registration_date ASC	student_assessment
SELECT student_course_registrations.student_id FROM student_course_registrations ORDER BY student_course_registrations.registration_date ASC	student_assessment
SELECT student_course_attendance.student_id FROM student_course_attendance JOIN student_course_registrations ON student_course_attendance.course_id = student_course_registrations.course_id JOIN courses ON student_course_registrations.student_id = courses.course_id WHERE courses.course_name = 'statistics' ORDER BY student_course_attendance.date_of_attendance ASC	student_assessment
SELECT student_course_attendance.student_id FROM student_course_attendance JOIN courses ON student_course_attendance.course_id = courses.course_id JOIN student_course_registrations ON student_course_registrations.student_id = courses.course_id WHERE courses.course_name = 'statistics' ORDER BY student_course_attendance.date_of_attendance ASC	student_assessment
SELECT COUNT( * ) FROM book	book_2
SELECT book.writer FROM book ORDER BY book.writer ASC	book_2
SELECT book.title FROM book ORDER BY book.issues ASC	book_2
SELECT book.title FROM book WHERE book.writer != 'Elaine Lee'	book_2
SELECT book.title , book.issues FROM book	book_2
SELECT publication.publication_date FROM publication ORDER BY publication.price DESC	book_2
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 5000000	book_2
SELECT publication.publisher FROM publication ORDER BY publication.price DESC LIMIT 1	book_2
SELECT publication.publication_date FROM publication ORDER BY publication.price ASC LIMIT 3	book_2
SELECT book.title , publication.publication_date FROM publication JOIN book ON publication.book_id = book.book_id	book_2
SELECT book.writer FROM publication JOIN book ON publication.book_id = book.book_id WHERE publication.price > 4000000	book_2
SELECT book.title FROM publication JOIN book ON publication.book_id = book.book_id ORDER BY publication.price DESC	book_2
SELECT publication.publisher FROM publication GROUP BY publication.publisher HAVING COUNT( * ) > 1	book_2
SELECT publication.publisher , COUNT( * ) FROM publication GROUP BY publication.publisher	book_2
SELECT publication.publication_date FROM publication GROUP BY publication.publication_date ORDER BY COUNT( * ) DESC LIMIT 1	book_2
SELECT book.writer FROM book GROUP BY book.writer HAVING COUNT( * ) > 1	book_2
SELECT book.title FROM book WHERE book.book_id NOT IN (SELECT publication.book_id FROM publication)	book_2
SELECT publication.publisher FROM publication WHERE publication.price > 10000000 INTERSECT SELECT publication.publisher FROM publication WHERE publication.price<5000000	book_2
SELECT COUNT( DISTINCT publication.publication_date ) FROM publication	book_2
SELECT COUNT( DISTINCT publication.publication_date ) FROM publication	book_2
SELECT publication.price FROM publication WHERE publication.publisher = 'Person' OR publication.publisher = 'Wiley'	book_2
SELECT user_profiles.email FROM user_profiles WHERE user_profiles.name = 'Mary'	twitter_1
SELECT user_profiles.partitionid FROM user_profiles WHERE user_profiles.name = 'Iron Man'	twitter_1
SELECT COUNT( * ) FROM user_profiles	twitter_1
SELECT COUNT( * ) , follows.f1 FROM follows GROUP BY follows.f1	twitter_1
SELECT COUNT( * ) , follows.f1 FROM follows GROUP BY follows.f1	twitter_1
SELECT COUNT( * ) FROM tweets	twitter_1
SELECT COUNT( DISTINCT tweets.uid ) FROM tweets	twitter_1
SELECT user_profiles.name , user_profiles.email FROM user_profiles WHERE user_profiles.name LIKE '%Swift%'	twitter_1
SELECT user_profiles.name FROM user_profiles WHERE user_profiles.email LIKE '%superstar%' OR user_profiles.email LIKE '%edu%'	twitter_1
SELECT tweets.text FROM tweets WHERE tweets.text LIKE '%intern%'	twitter_1
SELECT user_profiles.name , user_profiles.email FROM user_profiles WHERE user_profiles.followers > 1000	twitter_1
SELECT MAX( user_profiles.followers ) FROM user_profiles	twitter_1
SELECT user_profiles.name , user_profiles.email FROM user_profiles JOIN follows ON user_profiles.uid = follows.f2 GROUP BY follows.f1 HAVING COUNT( * ) > 1	twitter_1
SELECT user_profiles.name FROM user_profiles JOIN tweets ON user_profiles.uid = tweets.uid GROUP BY tweets.uid HAVING COUNT( * ) > 1	twitter_1
SELECT follows.f1 FROM follows WHERE user_profiles.name = 'Mary' UNION SELECT follows.f1 FROM follows WHERE user_profiles.name = 'Mary' UNION SELECT follows.f1 FROM follows WHERE user_profiles.name = 'Mary' UNION SELECT follows.f1 FROM follows WHERE user_profiles.name = 'Mary'	twitter_1
SELECT follows.f1 FROM follows WHERE user_profiles.name = 'Mary' OR user_profiles.name = 'Susan'	twitter_1
SELECT user_profiles.name FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid GROUP BY follows.f1 ORDER BY COUNT( * ) DESC LIMIT 1	twitter_1
SELECT user_profiles.name , user_profiles.email FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid GROUP BY follows.f1 ORDER BY COUNT( * ) ASC LIMIT 1	twitter_1
SELECT user_profiles.name , follows.f2 , user_profiles.followers FROM user_profiles JOIN follows ON user_profiles.uid = follows.f1 GROUP BY follows.f1 ORDER BY user_profiles.followers DESC	twitter_1
SELECT user_profiles.name FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid GROUP BY follows.f1 ORDER BY COUNT( * ) DESC LIMIT 5	twitter_1
SELECT tweets.text FROM tweets ORDER BY tweets.createdate ASC	twitter_1
SELECT user_profiles.name , COUNT( * ) FROM user_profiles JOIN tweets ON user_profiles.uid = tweets.uid GROUP BY tweets.uid	twitter_1
SELECT user_profiles.name , user_profiles.partitionid FROM user_profiles JOIN tweets ON user_profiles.uid = tweets.uid GROUP BY tweets.uid HAVING COUNT( * )<2	twitter_1
tweets , tweets	twitter_1
SELECT AVG( user_profiles.followers ) FROM user_profiles WHERE user_profiles.uid NOT IN (SELECT tweets.uid FROM tweets)	twitter_1
SELECT AVG( user_profiles.followers ) FROM follows JOIN user_profiles ON follows.f2 = user_profiles.uid JOIN tweets ON user_profiles.uid = tweets.uid	twitter_1
SELECT SUM( user_profiles.followers ) , MAX( user_profiles.followers ) FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid GROUP BY follows.f1	twitter_1
SELECT COUNT( * ) FROM aircraft	flight_1
SELECT COUNT( * ) FROM aircraft	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft	flight_1
SELECT aircraft.aid FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.distance > 1000	flight_1
SELECT DISTINCT aircraft.aid FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.distance > 1000	flight_1
SELECT COUNT( * ) FROM aircraft WHERE aircraft.distance BETWEEN 1000 and 5000	flight_1
SELECT COUNT( * ) FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.distance BETWEEN 1000 and 5000	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.aid = 12	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.aid = 12	flight_1
SELECT MIN( aircraft.distance ) , AVG( aircraft.distance ) , MAX( aircraft.distance ) FROM aircraft JOIN flight ON aircraft.aid = flight.aid	flight_1
SELECT MIN( aircraft.distance ) , AVG( aircraft.distance ) , MAX( aircraft.distance ) FROM aircraft JOIN flight ON aircraft.aid = flight.aid	flight_1
SELECT aircraft.aid , aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid ORDER BY aircraft.distance DESC LIMIT 1	flight_1
SELECT aircraft.aid , aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid ORDER BY aircraft.distance DESC LIMIT 1	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid ORDER BY aircraft.distance ASC LIMIT 3	flight_1
SELECT aircraft.name FROM aircraft ORDER BY aircraft.distance ASC LIMIT 3	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.distance > (SELECT AVG( aircraft.distance ) FROM aircraft)	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.distance > (SELECT AVG( aircraft.distance ) FROM aircraft)	flight_1
SELECT COUNT( * ) FROM employee	flight_1
SELECT COUNT( * ) FROM employee	flight_1
SELECT employee.name , employee.salary FROM employee ORDER BY employee.salary ASC	flight_1
SELECT employee.name , employee.salary FROM employee ORDER BY employee.salary ASC	flight_1
SELECT employee.eid FROM employee WHERE employee.salary >= 100000	flight_1
SELECT employee.eid FROM employee WHERE employee.salary >= 100000	flight_1
SELECT COUNT( * ) FROM employee WHERE employee.salary BETWEEN 100000 and 200000	flight_1
SELECT COUNT( * ) FROM employee WHERE employee.salary BETWEEN 100000 and 200000	flight_1
SELECT employee.name , employee.salary FROM employee WHERE employee.eid = 242518965	flight_1
SELECT employee.name , employee.salary FROM employee WHERE employee.eid = 242518965	flight_1
SELECT AVG( employee.salary ) , MAX( employee.salary ) FROM employee	flight_1
SELECT AVG( employee.salary ) , MAX( employee.salary ) FROM employee	flight_1
SELECT employee.eid , employee.name FROM employee ORDER BY employee.salary DESC LIMIT 1	flight_1
SELECT employee.eid , employee.name FROM employee ORDER BY employee.salary DESC LIMIT 1	flight_1
SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3	flight_1
SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3	flight_1
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG( employee.salary ) FROM employee)	flight_1
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG( employee.salary ) FROM employee)	flight_1
SELECT SUM( employee.salary ) FROM employee WHERE employee.name = 'Mark' AND employee.name = 'Young'	flight_1
SELECT employee.eid , employee.salary FROM employee WHERE employee.name = 'Mark'	flight_1
SELECT COUNT( * ) FROM flight	flight_1
SELECT COUNT( * ) FROM flight	flight_1
SELECT flight.flno , flight.origin , flight.destination FROM flight ORDER BY flight.destination ASC	flight_1
SELECT flight.flno , flight.origin , flight.destination FROM flight ORDER BY flight.departure_date ASC	flight_1
SELECT flight.flno FROM flight WHERE flight.destination = 'Los Angeles'	flight_1
SELECT flight.flno FROM flight WHERE flight.origin = 'Los Angeles'	flight_1
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'	flight_1
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'	flight_1
SELECT flight.departure_date , flight.arrival_date FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'	flight_1
SELECT flight.departure_date , flight.arrival_date FROM flight WHERE flight.destination = 'LA' AND flight.destination = 'Honolulu'	flight_1
SELECT flight.flno FROM flight WHERE flight.distance > 2000	flight_1
SELECT flight.flno FROM flight WHERE flight.distance > 2000	flight_1
SELECT AVG( flight.price ) FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'	flight_1
SELECT AVG( flight.price ) FROM flight WHERE flight.origin = 'LA' AND flight.destination = 'Honolulu'	flight_1
SELECT flight.origin , flight.destination FROM flight WHERE flight.price > 300	flight_1
SELECT flight.origin , flight.destination FROM flight WHERE flight.price > 300	flight_1
SELECT flight.flno , flight.distance FROM flight ORDER BY flight.price DESC LIMIT 1	flight_1
SELECT flight.flno , flight.distance FROM flight ORDER BY flight.price DESC LIMIT 1	flight_1
SELECT flight.flno FROM flight ORDER BY flight.distance ASC LIMIT 3	flight_1
SELECT flight.flno FROM flight ORDER BY flight.distance ASC LIMIT 1	flight_1
SELECT AVG( flight.price ) , AVG( flight.distance ) FROM flight WHERE flight.origin = 'Los Angeles'	flight_1
SELECT AVG( flight.distance ) , AVG( flight.price ) FROM flight WHERE flight.origin = 'LA'	flight_1
SELECT flight.origin , COUNT( * ) FROM flight GROUP BY flight.origin	flight_1
SELECT flight.origin , COUNT( * ) FROM flight GROUP BY flight.origin	flight_1
SELECT flight.destination , COUNT( * ) FROM flight GROUP BY flight.destination	flight_1
SELECT flight.destination , COUNT( * ) FROM flight GROUP BY flight.destination	flight_1
SELECT flight.origin FROM flight GROUP BY flight.origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT flight.origin FROM flight GROUP BY flight.origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT flight.destination FROM flight GROUP BY flight.destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT flight.destination FROM flight GROUP BY flight.destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE flight.flno = 99	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE flight.flno = 99	flight_1
SELECT flight.flno FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.name = 'Airbus'	flight_1
SELECT flight.flno FROM aircraft JOIN flight ON aircraft.aid = flight.aid WHERE aircraft.name = 'Airbus'	flight_1
SELECT aircraft.name , COUNT( * ) FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY aircraft.name	flight_1
SELECT aircraft.name , COUNT( * ) FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY aircraft.name	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY aircraft.name HAVING COUNT( * ) >= 2	flight_1
SELECT aircraft.name FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY aircraft.name HAVING COUNT( * ) >= 2	flight_1
SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
SELECT employee.eid FROM employee EXCEPT SELECT certificate.eid FROM certificate	flight_1
SELECT employee.eid FROM employee EXCEPT SELECT certificate.eid FROM certificate	flight_1
SELECT aircraft.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE employee.name = 'Williams'	flight_1
SELECT aircraft.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE employee.name = 'Williams'	flight_1
SELECT employee.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800'	flight_1
SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800'	flight_1
SELECT employee.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800' INTERSECT SELECT employee.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Airbus A340-300'	flight_1
SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800' INTERSECT SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Airbus A340-300'	flight_1
SELECT employee.name FROM employee EXCEPT SELECT employee.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800'	flight_1
SELECT employee.name FROM employee EXCEPT SELECT employee.name FROM certificate JOIN employee ON certificate.eid = employee.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name = 'Boeing 737-800'	flight_1
SELECT aircraft.name FROM certificate JOIN aircraft ON certificate.aid = aircraft.aid GROUP BY aircraft.name ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT aircraft.name FROM certificate JOIN aircraft ON certificate.aid = aircraft.aid GROUP BY certificate.aid ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY aircraft.name HAVING COUNT( DISTINCT certificate.eid ) >= 5	flight_1
SELECT aircraft.name , aircraft.distance FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY flight.aid HAVING COUNT( * ) >= 5000 and which at least 5 UNION SELECT aircraft.name , aircraft.distance FROM aircraft JOIN flight ON aircraft.aid = flight.aid GROUP BY flight.aid HAVING COUNT( * ) >= 5	flight_1
SELECT employee.salary , employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid GROUP BY certificate.eid ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT employee.salary , employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid GROUP BY certificate.eid ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT employee.salary , employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.distance > 5000 GROUP BY employee.eid ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT employee.salary , employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid GROUP BY certificate.eid ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , invoices.total FROM invoices ORDER BY invoices.total DESC LIMIT 8	store_1
SELECT invoices.billing_country , SUM( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY SUM( invoices.total ) DESC LIMIT 8	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY AVG( invoices.total ) ASC	store_1
SELECT customers.first_name , customers.last_name FROM customers JOIN invoices ON customers.id = invoices.customer_id ORDER BY invoices.invoice_date DESC LIMIT 5	store_1
SELECT customers.first_name , customers.last_name FROM customers JOIN invoices ON customers.id = invoices.customer_id GROUP BY customers.id ORDER BY invoices.invoice_date DESC LIMIT 5	store_1
SELECT customers.first_name , customers.last_name , COUNT( * ) FROM customers WHERE customers.id = 1 GROUP BY customers.first_name , customers.last_name ORDER BY COUNT( * ) DESC LIMIT 10	store_1
SELECT customers.first_name , customers.last_name , COUNT( * ) FROM customers	store_1
SELECT customers.first_name , customers.last_name , customers.last_name FROM customers JOIN invoices ON customers.id = invoices.customer_id GROUP BY 1 ORDER BY COUNT( * ) ASC LIMIT 10	store_1
SELECT customers.first_name , customers.last_name , customers.last_name FROM customers JOIN tracks ON customers.id = tracks.name ORDER BY 10 customers first and last names with the highest DESC LIMIT 1	store_1
SELECT genres.name , COUNT( * ) FROM tracks JOIN genres ON tracks.genre_id = genres.id GROUP BY tracks.genre_id ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT genres.name , tracks.genre_id FROM tracks JOIN genres ON tracks.genre_id = genres.id GROUP BY tracks.genre_id ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
SELECT customers.first_name , customers.last_name FROM customers JOIN invoices ON customers.id = invoices.customer_id	store_1
SELECT customers.first_name , customers.last_name FROM invoices JOIN customers ON invoices.customer_id = customers.id ORDER BY customers.id ASC LIMIT 10	store_1
SELECT SUM( invoices.total ) FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE invoices.billing_city = 'invoice from Chicago' AND customers.city = 'Chicago,'	store_1
SELECT SUM( invoices.total ) FROM invoices WHERE invoices.billing_city = 'Chicago, Illinois'	store_1
SELECT COUNT( * ) FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE invoices.billing_city = 'Chicago' AND customers.city = 'Chicago,'	store_1
customers , customers	store_1
SELECT COUNT( * ) FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.state = 'US,'	store_1
SELECT invoices.billing_state , COUNT( * ) FROM invoices GROUP BY invoices.billing_state	store_1
SELECT invoices.billing_state FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.state = 'US' ORDER BY invoices.billing_state DESC LIMIT 1	store_1
SELECT customers.state FROM invoices JOIN customers ON invoices.customer_id = customers.id GROUP BY customers.state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT SUM( invoices.total ) FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE tracks.name = 'California'	store_1
SELECT COUNT( * ) FROM invoices WHERE invoices.billing_state = 'CA'	store_1
SELECT albums.title FROM albums WHERE albums.title = 'Aerosmith'	store_1
SELECT albums.title FROM albums WHERE artists.name = 'Aerosmith'	store_1
SELECT COUNT( * ) FROM albums JOIN sqlite_sequence ON albums.artist_id = sqlite_sequence.name WHERE albums.title = 'Billy Cobham'	store_1
SELECT COUNT( * ) FROM albums JOIN artists ON albums.artist_id = artists.id WHERE sqlite_sequence.seq = 'Cobam'	store_1
SELECT customers.company FROM customers WHERE customers.first_name = 'Eduardo Martins'	store_1
SELECT customers.company FROM customers WHERE customers.first_name = 'Eduardo Martins'	store_1
SELECT employees.email , customers.phone FROM employees JOIN customers ON employees.id = customers.support_rep_id WHERE employees.first_name = 'A' AND tracks.name = 'Gruber'	store_1
SELECT customers.email , customers.phone FROM customers WHERE customers.first_name = 'Astrid' AND customers.last_name = 'Gruber'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.state = 'CA'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.state = 'California'	store_1
SELECT customers.country FROM employees JOIN employees ON employees.id = employees.address JOIN sqlite_sequence ON employees.country = sqlite_sequence.name WHERE customers.first_name = 'Roberto' AND sqlite_sequence.seq = 'Almeida'	store_1
SELECT customers.country FROM customers JOIN sqlite_sequence ON customers.id = sqlite_sequence.name WHERE customers.first_name = 'Roberto' AND sqlite_sequence.seq = 'Almeida'	store_1
SELECT albums.title FROM albums JOIN artists ON albums.artist_id = artists.id WHERE artists.name = 'Led'	store_1
SELECT albums.title FROM sqlite_sequence WHERE sqlite_sequence.seq LIKE '%Led%'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.first_name = 'Steve Johnson'	store_1
SELECT COUNT( * ) FROM customers, artists WHERE customers.first_name = 'Steve Johnson' AND artists.name = 'Steve Johnson'	store_1
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees WHERE employees.reports_to = 'Nancy' OR employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees WHERE employees.reports_to IN (SELECT employees.reports_to FROM employees WHERE employees.reports_to = 'Nancy')	store_1
SELECT employees.address FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT customers.address FROM employees JOIN employees ON employees.id = employees.address WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees JOIN customers ON employees.id = customers.support_rep_id GROUP BY employees.id ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name FROM employees JOIN customers ON employees.id = customers.support_rep_id GROUP BY employees.id ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT COUNT( * ) FROM employees WHERE employees.country = 'Canada'	store_1
SELECT COUNT( * ) FROM employees WHERE employees.country = 'Canada'	store_1
SELECT employees.phone FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT customers.phone FROM employees JOIN customers ON employees.id = customers.support_rep_id WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.birth_date ASC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.birth_date ASC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.hire_date DESC LIMIT 10	store_1
SELECT employees.first_name , employees.last_name FROM employees	store_1
SELECT employees.city , COUNT( * ) FROM employees WHERE employees.title = 'IT Staff' GROUP BY employees.city	store_1
SELECT employees.city , COUNT( * ) FROM employees WHERE employees.title = 'IT' GROUP BY employees.city	store_1
SELECT employees.first_name , employees.last_name , COUNT( * ) FROM employees GROUP BY employees.reports_to ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name , COUNT( DISTINCT employees.reports_to ) FROM employees	store_1
SELECT COUNT( * ) FROM employees JOIN invoices ON employees.id = invoices.customer_id JOIN customers ON customers.id = invoices.customer_id WHERE sqlite_sequence.seq = 'Mancini' AND customers.first_name = 'Lucas' AND sqlite_sequence.seq = 'Mancini'	store_1
SELECT COUNT( * ) FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.first_name = 'Luca' AND customers.last_name = 'Mancini'	store_1
SELECT SUM( invoices.total ) FROM invoices JOIN invoices ON invoices.id = invoices.customer_id JOIN sqlite_sequence ON invoices.id = sqlite_sequence.name WHERE sqlite_sequence.seq = 'Mancini' AND customers.first_name = 'Lucas' AND sqlite_sequence.seq = 'Mancini'	store_1
SELECT sqlite_sequence.seq FROM customers JOIN sqlite_sequence ON customers.id = sqlite_sequence.name WHERE customers.first_name = 'Lucas' AND sqlite_sequence.seq = 'Mancini'	store_1
SELECT media_types.name FROM media_types	store_1
SELECT media_types.name FROM media_types	store_1
SELECT DISTINCT genres.name FROM genres	store_1
SELECT DISTINCT genres.name FROM genres	store_1
SELECT playlists.name FROM playlists	store_1
SELECT playlists.name FROM playlists	store_1
SELECT tracks.composer FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT sqlite_sequence.seq FROM albums JOIN tracks ON albums.id = tracks.album_id JOIN sqlite_sequence ON tracks.composer = sqlite_sequence.name WHERE albums.title = 'Fast As a Shark'	store_1
SELECT COUNT( * ) FROM albums WHERE albums.title = 'Fast As a Shark'	store_1
SELECT SUM( tracks.milliseconds ) FROM albums JOIN tracks ON albums.id = tracks.album_id WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT playlist_tracks.track_id FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE tracks.name = 'Rock'	store_1
SELECT tracks.bytes FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE tracks.name = 'Rock'	store_1
SELECT albums.title FROM albums JOIN tracks ON albums.id = tracks.album_id WHERE tracks.name = 'Balls to the Wall'	store_1
SELECT albums.title FROM albums JOIN tracks ON albums.id = tracks.album_id WHERE tracks.name = 'Ball to the Wall'	store_1
SELECT tracks.bytes FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name = 'Balls to the Wall'	store_1
SELECT DISTINCT playlist_tracks.track_id FROM albums JOIN tracks ON albums.id = tracks.album_id WHERE albums.title = 'Balls to the Wall'	store_1
SELECT albums.title FROM albums JOIN tracks ON albums.id = tracks.album_id JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id GROUP BY albums.id HAVING COUNT( * ) > 10	store_1
SELECT albums.title FROM albums JOIN tracks ON albums.id = tracks.album_id GROUP BY albums.id HAVING COUNT( * ) > 10	store_1
SELECT tracks.name FROM tracks JOIN genres ON tracks.genre_id = genres.id JOIN media_types ON tracks.media_type_id = media_types.id WHERE genres.name = 'Rock' AND media_types.name = 'MPEG audio file'	store_1
SELECT DISTINCT tracks.bytes FROM tracks JOIN media_types ON tracks.media_type_id = media_types.id WHERE tracks.name = 'Rock' AND media_types.name = 'MPEG'	store_1
genres , genres	store_1
SELECT media_types.name FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE genres.name = 'Rock' AND tracks.name = 'MPEG'	store_1
SELECT tracks.name FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE tracks.name = 'Rock' OR genres.name = 'Jazz'	store_1
SELECT DISTINCT tracks.bytes FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE genres.name = 'Rock' OR tracks.name = 'Jazz'	store_1
SELECT playlists.name FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE tracks.name = 'Movies'	store_1
SELECT playlist_tracks.track_id FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE playlists.name = 'Movies'	store_1
SELECT playlists.name FROM playlist_tracks JOIN playlists ON playlist_tracks.playlist_id = playlists.id GROUP BY playlists.id HAVING COUNT( * ) > 100	store_1
SELECT playlists.name FROM playlist_tracks JOIN playlists ON playlist_tracks.playlist_id = playlists.id GROUP BY playlists.id HAVING COUNT( * ) > 100	store_1
SELECT playlist_tracks.track_id FROM tracks JOIN tracks ON tracks.bytes = tracks.bytes WHERE tracks.composer = 'Daan Peeters' AND customers.last_name = 'Peeters'	store_1
SELECT DISTINCT tracks.bytes FROM playlist_tracks WHERE customers.first_name = 'Dean' AND tracks.bytes = 'Peeters'	store_1
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE albums.title = 'Fast As a Shark'	store_1
SELECT SUM( tracks.unit_price ) FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE albums.title = 'Fast As a Shark'	store_1
SELECT tracks.name FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE playlists.name = 'Movies' EXCEPT SELECT tracks.name FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE playlists.name = 'music'	store_1
SELECT playlist_tracks.track_id FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE tracks.name = 'Movies' EXCEPT SELECT playlist_tracks.track_id FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE tracks.name = 'music'	store_1
SELECT tracks.name FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id WHERE tracks.name = 'Movies' INTERSECT SELECT tracks.name FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id WHERE tracks.name = 'Movies'	store_1
SELECT tracks.unit_price , tracks.unit_price FROM tracks JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id JOIN playlists ON playlist_tracks.playlist_id = playlists.id WHERE tracks.name = 'Movies' AND playlists.name = 'music'	store_1
SELECT tracks.genre_id , COUNT( * ) FROM tracks GROUP BY tracks.genre_id	store_1
SELECT tracks.genre_id , COUNT( * ) FROM tracks GROUP BY tracks.genre_id	store_1
SELECT COUNT( * ) FROM album	chinook_1
SELECT COUNT( * ) FROM album	chinook_1
SELECT genre.name FROM genre	chinook_1
SELECT DISTINCT genre.name FROM genre	chinook_1
SELECT * FROM customer WHERE customer.state = 'NY'	chinook_1
SELECT * FROM customer WHERE customer.state = 'NY'	chinook_1
SELECT employee.firstname , employee.lastname FROM employee WHERE employee.city = 'Calgary'	chinook_1
SELECT employee.firstname , employee.lastname FROM employee WHERE employee.city = 'Calgary'	chinook_1
SELECT DISTINCT invoice.billingcountry FROM invoice	chinook_1
SELECT DISTINCT invoice.billingcountry FROM invoice	chinook_1
SELECT artist.name FROM artist WHERE artist.name LIKE '%a%'	chinook_1
SELECT artist.name FROM artist WHERE artist.name LIKE '%a%'	chinook_1
SELECT album.title FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name = 'AC/DC'	chinook_1
SELECT album.title FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name = 'AC/DC'	chinook_1
SELECT COUNT( * ) FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name = 'Metallica'	chinook_1
SELECT COUNT( * ) FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name = 'Metallica'	chinook_1
SELECT artist.name FROM album JOIN artist ON album.artistid = artist.artistid WHERE album.title = 'Balls to the Wall'	chinook_1
SELECT artist.name FROM album JOIN artist ON album.artistid = artist.artistid WHERE album.title = 'Balls to the Wall'	chinook_1
SELECT artist.name FROM album JOIN artist ON album.artistid = artist.artistid GROUP BY album.artistid ORDER BY COUNT( * ) DESC LIMIT 1	chinook_1
SELECT artist.name FROM album JOIN artist ON album.artistid = artist.artistid GROUP BY album.artistid ORDER BY COUNT( * ) DESC LIMIT 1	chinook_1
SELECT track.albumid FROM track WHERE track.albumid LIKE '%you%'	chinook_1
SELECT album.title FROM track JOIN genre ON track.genreid = genre.genreid WHERE track.name = 'you'	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT MAX( track.milliseconds ) FROM track WHERE track.name = '1'	chinook_1
SELECT MIN( track.milliseconds ) , MAX( track.milliseconds ) FROM track	chinook_1
SELECT album.title , album.albumid , COUNT( * ) FROM album JOIN track ON album.albumid = track.albumid GROUP BY album.albumid	chinook_1
SELECT album.title , album.albumid , COUNT( * ) FROM album JOIN track ON album.albumid = track.albumid GROUP BY album.albumid	chinook_1
SELECT genre.name FROM genre JOIN track ON genre.genreid = track.genreid GROUP BY genre.name ORDER BY COUNT( * ) DESC LIMIT 1	chinook_1
SELECT genre.name FROM genre JOIN track ON genre.genreid = track.genreid GROUP BY genre.genreid ORDER BY COUNT( * ) DESC LIMIT 1	chinook_1
SELECT mediatype.name FROM mediatype JOIN track ON mediatype.mediatypeid = track.mediatypeid GROUP BY mediatype.mediatypeid ORDER BY COUNT( * ) ASC LIMIT 1	chinook_1
SELECT mediatype.name FROM mediatype JOIN track ON mediatype.mediatypeid = track.mediatypeid GROUP BY mediatype.mediatypeid ORDER BY COUNT( * ) ASC LIMIT 1	chinook_1
SELECT album.title , album.artistid FROM album JOIN track ON album.albumid = track.albumid WHERE track.name = 1	chinook_1
SELECT album.title , album.albumid FROM album JOIN track ON album.albumid = track.albumid WHERE invoiceline.unitprice > 1	chinook_1
SELECT COUNT( * ) FROM genre JOIN track ON genre.genreid = track.genreid WHERE genre.name = 'rock'	chinook_1
SELECT COUNT( * ) FROM track JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'rock'	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM genre JOIN track ON genre.genreid = track.genreid WHERE genre.name = 'Jazz'	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM genre WHERE genre.name = 'jazz'	chinook_1
SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'embraer.com.br'	chinook_1
SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'embraer.com.br'	chinook_1
SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
SELECT employee.firstname , employee.lastname FROM employee JOIN customer ON employee.employeeid = customer.supportrepid WHERE customer.firstname = 'Leonie'	chinook_1
SELECT employee.firstname , employee.lastname FROM employee JOIN customer ON employee.employeeid = customer.supportrepid WHERE customer.firstname = 'Leonie'	chinook_1
SELECT employee.city FROM employee JOIN customer ON employee.employeeid = customer.supportrepid WHERE customer.postalcode = '70174'	chinook_1
SELECT employee.city FROM employee JOIN customer ON employee.employeeid = customer.supportrepid WHERE customer.postalcode = '70174'	chinook_1
SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
SELECT invoice.invoicedate FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.firstname = 'Astrid' AND customer.lastname = 'Gruber'	chinook_1
SELECT invoice.invoicedate FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.firstname = 'Astrid' AND customer.lastname = 'Gruber'	chinook_1
SELECT customer.lastname FROM customer EXCEPT SELECT customer.lastname FROM invoice JOIN customer ON invoice.customerid = customer.customerid WHERE invoice.total > 20	chinook_1
SELECT customer.lastname FROM customer WHERE customer.customerid NOT IN (SELECT invoice.customerid FROM invoice WHERE invoice.total > 20)	chinook_1
SELECT customer.firstname FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE invoice.billingcountry = 'Brazil'	chinook_1
SELECT DISTINCT customer.firstname FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE invoice.billingcountry = 'Brazil'	chinook_1
SELECT customer.address FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.country = 'Germany'	chinook_1
SELECT customer.address FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.country = 'Germany'	chinook_1
SELECT employee.phone FROM employee	chinook_1
SELECT employee.phone FROM employee	chinook_1
SELECT COUNT( * ) FROM mediatype WHERE mediatype.name = 'AAC audio file'	chinook_1
SELECT COUNT( * ) FROM mediatype WHERE mediatype.name = 'AAC audio file'	chinook_1
SELECT AVG( track.milliseconds ) FROM genre JOIN track ON genre.genreid = track.genreid WHERE genre.name = 'Latin' OR genre.name = 'Pop'	chinook_1
SELECT DISTINCT track.genreid FROM genre JOIN track ON genre.genreid = track.genreid WHERE track.name = 'Pop' AND genre.name = 'Latin'	chinook_1
SELECT employee.firstname , employee.employeeid FROM employee JOIN customer ON employee.employeeid = customer.supportrepid GROUP BY employee.employeeid HAVING COUNT( * ) >= 10	chinook_1
SELECT employee.firstname , customer.supportrepid FROM employee JOIN customer ON employee.employeeid = customer.supportrepid GROUP BY customer.supportrepid HAVING COUNT( * ) >= 10	chinook_1
SELECT employee.lastname FROM employee JOIN customer ON employee.employeeid = customer.supportrepid GROUP BY employee.lastname HAVING COUNT( * ) <= 20	chinook_1
SELECT employee.lastname FROM employee JOIN customer ON employee.employeeid = customer.supportrepid GROUP BY employee.employeeid HAVING COUNT( * ) <= 20	chinook_1
SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
SELECT artist.name , artist.artistid FROM album JOIN artist ON album.artistid = artist.artistid GROUP BY artist.artistid HAVING COUNT( * ) >= 3	chinook_1
SELECT artist.name , artist.artistid FROM album JOIN artist ON album.artistid = artist.artistid HAVING COUNT( * ) >= 3 INTERSECT SELECT artist.name , artist.artistid FROM album JOIN artist ON album.artistid = artist.artistid HAVING COUNT( * ) >= 3	chinook_1
SELECT artist.name FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
SELECT artist.name FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM genre JOIN track ON genre.genreid = track.genreid WHERE genre.name = 'rock'	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM genre JOIN track ON genre.genreid = track.genreid WHERE genre.name = 'Rock'	chinook_1
SELECT MAX( track.milliseconds ) FROM track JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'pop'	chinook_1
SELECT MAX( track.bytes ) FROM track JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'pop'	chinook_1
SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
SELECT DISTINCT invoiceline.unitprice FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT DISTINCT invoiceline.unitprice FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT COUNT( * ) FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
SELECT COUNT( * ) FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
SELECT album.title FROM album JOIN track ON album.albumid = track.albumid JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'Reggae' INTERSECT SELECT album.title FROM album JOIN track ON album.albumid = track.albumid JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'Rock'	chinook_1
SELECT album.title FROM track JOIN album ON track.albumid = album.albumid JOIN genre ON track.genreid = genre.genreid WHERE genre.name = 'Reggae' INTERSECT SELECT album.title FROM track JOIN album ON track.albumid = album.albumid JOIN genre ON track.genreid = genre.genreid WHERE track.name = 'Rock'	chinook_1
SELECT COUNT( DISTINCT enzyme.name ) FROM enzyme	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC	medicine_enzyme_interaction
SELECT enzyme.name , enzyme.location FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.name , enzyme.location FROM enzyme	medicine_enzyme_interaction
SELECT MAX( enzyme.omim ) FROM medicine_enzyme_interaction, medicine_enzyme_interaction, enzyme WHERE enzyme.omim = 'OMIM'	medicine_enzyme_interaction
SELECT MAX( enzyme.omim ) FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.product , enzyme.chromosome , enzyme.porphyria FROM enzyme WHERE enzyme.location = 'Cytosol'	medicine_enzyme_interaction
SELECT enzyme.product , enzyme.chromosome , enzyme.porphyria FROM enzyme WHERE enzyme.location = 'Cytosol'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.product != 'Heme'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.product != 'Heme'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine WHERE medicine.fda_approved = 'Yes'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine	medicine_enzyme_interaction
SELECT enzyme.name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE medicine.name = 'Amisulpride' that can serve as an 'inhibitor'	medicine_enzyme_interaction
SELECT enzyme.name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE medicine.name = 'Amisulpride'	medicine_enzyme_interaction
SELECT medicine.id , medicine.name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id HAVING COUNT( * ) >= 2	medicine_enzyme_interaction
SELECT medicine.name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id HAVING COUNT( * ) > 1	medicine_enzyme_interaction
SELECT medicine.id , medicine.name , COUNT( * ) , medicine.fda_approved FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id ORDER BY COUNT( * ) DESC	medicine_enzyme_interaction
SELECT medicine.id , medicine.name , COUNT( * ) , medicine.fda_approved FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id ORDER BY COUNT( * ) DESC	medicine_enzyme_interaction
SELECT enzyme.id , enzyme.name FROM enzyme JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id WHERE medicine_enzyme_interaction.interaction_type = 'activator' GROUP BY enzyme.id ORDER BY COUNT( * ) DESC LIMIT 1	medicine_enzyme_interaction
SELECT enzyme.id , enzyme.name FROM enzyme JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id GROUP BY enzyme.id ORDER BY COUNT( * ) DESC LIMIT 1	medicine_enzyme_interaction
SELECT medicine_enzyme_interaction.interaction_type FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE enzyme.name = 'ALA synthase' AND medicine.name = 'Aripiprazole'	medicine_enzyme_interaction
SELECT medicine_enzyme_interaction.interaction_type FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE enzyme.name = 'ALA synthase' AND medicine.name = 'Aripiprazole'	medicine_enzyme_interaction
SELECT medicine_enzyme_interaction.interaction_type , COUNT( * ) FROM medicine_enzyme_interaction GROUP BY medicine_enzyme_interaction.interaction_type ORDER BY COUNT( * ) DESC LIMIT 1	medicine_enzyme_interaction
SELECT medicine_enzyme_interaction.interaction_type , COUNT( * ) FROM medicine_enzyme_interaction GROUP BY medicine_enzyme_interaction.interaction_type ORDER BY COUNT( * ) DESC LIMIT 1	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved = 'No'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved != 1	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme WHERE enzyme.id NOT IN (SELECT medicine_enzyme_interaction.enzyme_id FROM medicine_enzyme_interaction)	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme WHERE enzyme.id NOT IN (SELECT medicine_enzyme_interaction.enzyme_id FROM medicine_enzyme_interaction)	medicine_enzyme_interaction
SELECT medicine.id , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id HAVING COUNT( * ) >= 3	medicine_enzyme_interaction
SELECT medicine.id , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id GROUP BY medicine.id HAVING COUNT( * ) >= 3	medicine_enzyme_interaction
SELECT DISTINCT enzyme.name , enzyme.location , enzyme.product FROM enzyme JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id WHERE medicine_enzyme_interaction.interaction_type = 'inhibitor'	medicine_enzyme_interaction
SELECT DISTINCT enzyme.name , enzyme.location , enzyme.product FROM enzyme JOIN medicine_enzyme_interaction ON enzyme.id = medicine_enzyme_interaction.enzyme_id WHERE medicine_enzyme_interaction.interaction_type = 'inhibitor'	medicine_enzyme_interaction
SELECT medicine.name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id WHERE medicine_enzyme_interaction.interaction_type = 'activitor' INTERSECT SELECT medicine.name , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id WHERE medicine_enzyme_interaction.interaction_type = 'activitor'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id WHERE medicine_enzyme_interaction.interaction_type = 'inhibitor' INTERSECT SELECT medicine.name , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id WHERE medicine_enzyme_interaction.interaction_type = 'an inhibitor'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine WHERE medicine.id NOT IN (SELECT medicine_enzyme_interaction.medicine_id FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE enzyme.product = 'Heme')	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine JOIN medicine_enzyme_interaction ON medicine.id = medicine_enzyme_interaction.medicine_id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE enzyme.product = 'Heme'	medicine_enzyme_interaction
SELECT COUNT( DISTINCT medicine.fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT COUNT( DISTINCT medicine.fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT COUNT( * ) , medicine.trade_name FROM medicine GROUP BY medicine.trade_name	medicine_enzyme_interaction
SELECT medicine.trade_name , COUNT( * ) FROM medicine GROUP BY medicine.trade_name	medicine_enzyme_interaction
SELECT chip_model.model_name FROM chip_model WHERE chip_model.launch_year BETWEEN 2002 and 2004	phone_1
SELECT chip_model.model_name , chip_model.ram_mib FROM chip_model ORDER BY chip_model.ram_mib ASC LIMIT 1	phone_1
SELECT phone.chip_model , phone.screen_mode FROM phone WHERE phone.hardware_model_name = 'LG-P760'	phone_1
SELECT COUNT( DISTINCT phone.hardware_model_name ) FROM phone WHERE phone.company_name = 'Nokia Corporation'	phone_1
SELECT MAX( chip_model.ram_mib ) , MIN( chip_model.ram_mib ) FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name WHERE phone.company_name = 'Nokia Corporation'	phone_1
SELECT AVG( chip_model.rom_mib ) FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name WHERE phone.company_name = 'Nokia Corporation'	phone_1
SELECT phone.hardware_model_name , phone.company_name FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name WHERE chip_model.launch_year = 2002 OR chip_model.ram_mib > 32	phone_1
SELECT phone.hardware_model_name , phone.company_name FROM phone WHERE phone.accreditation_type LIKE '%Full%'	phone_1
SELECT screen_mode.char_cells , screen_mode.pixels , screen_mode.hardware_colours FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE phone.hardware_model_name = 'LG-P760'	phone_1
SELECT phone.hardware_model_name , phone.company_name FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE screen_mode.type = 'Graphics'	phone_1
SELECT phone.company_name , COUNT( * ) FROM phone GROUP BY phone.company_name ORDER BY COUNT( * ) ASC LIMIT 1	phone_1
SELECT phone.company_name FROM phone GROUP BY phone.company_name HAVING COUNT( * ) > 1	phone_1
SELECT MAX( screen_mode.used_kb ) , MIN( screen_mode.used_kb ) , AVG( screen_mode.used_kb ) FROM screen_mode	phone_1
SELECT chip_model.model_name FROM chip_model WHERE chip_model.launch_year = 2002 ORDER BY chip_model.ram_mib DESC LIMIT 1	phone_1
SELECT chip_model.wifi , screen_mode.type FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE phone.hardware_model_name = 'LG-P760'	phone_1
SELECT phone.hardware_model_name FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE screen_mode.type = 'Text' OR screen_mode.used_kb > 32	phone_1
SELECT phone.hardware_model_name FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE screen_mode.type = 'Nokia Corporation' OR screen_mode.type = 'Graphics'	phone_1
SELECT phone.hardware_model_name FROM phone WHERE phone.company_name = 'Nokia Corporation' AND screen_mode.type != 'Text'	phone_1
SELECT phone.hardware_model_name , phone.company_name FROM phone WHERE screen_mode.used_kb >= 10 AND phone.screen_mode <= 15	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_level FROM phone GROUP BY phone.accreditation_level HAVING COUNT( * ) > 3	phone_1
SELECT * FROM chip_model	phone_1
SELECT COUNT( * ) FROM chip_model WHERE chip_model.wifi != 'wifi'	phone_1
SELECT COUNT( * ) FROM chip_model WHERE chip_model.wifi != 1	phone_1
SELECT chip_model.model_name FROM chip_model ORDER BY chip_model.launch_year ASC	phone_1
SELECT AVG( chip_model.ram_mib ) FROM chip_model WHERE chip_model.model_name NOT IN (SELECT phone.chip_model FROM phone)	phone_1
SELECT chip_model.model_name FROM chip_model EXCEPT SELECT phone.chip_model FROM phone WHERE phone.accreditation_type = 'full accreditation'	phone_1
SELECT screen_mode.pixels FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE phone.accreditation_type = 'full' INTERSECT SELECT screen_mode.pixels FROM phone JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE phone.accreditation_type = 'Provisional accreditation'	phone_1
SELECT COUNT( * ) FROM body_builder	body_builder
SELECT body_builder.total FROM body_builder ORDER BY body_builder.total ASC	body_builder
SELECT body_builder.snatch , body_builder.clean_jerk FROM body_builder ORDER BY body_builder.snatch ASC	body_builder
SELECT AVG( body_builder.snatch ) FROM body_builder	body_builder
SELECT body_builder.clean_jerk FROM body_builder ORDER BY body_builder.total DESC LIMIT 1	body_builder
SELECT people.birth_date FROM people ORDER BY people.height ASC	body_builder
SELECT people.name FROM people JOIN body_builder ON people.people_id = body_builder.people_id	body_builder
SELECT people.name FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE body_builder.total > 300	body_builder
SELECT people.name FROM people JOIN body_builder ON people.people_id = body_builder.people_id ORDER BY people.weight DESC LIMIT 1	body_builder
SELECT people.birth_date , people.birth_place FROM people JOIN body_builder ON people.people_id = body_builder.people_id ORDER BY body_builder.total DESC LIMIT 1	body_builder
SELECT people.height FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE body_builder.total<315	body_builder
SELECT AVG( body_builder.total ) FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.height > 200	body_builder
SELECT people.name FROM body_builder JOIN people ON body_builder.people_id = people.people_id ORDER BY body_builder.total DESC	body_builder
SELECT people.birth_place , COUNT( * ) FROM people GROUP BY people.birth_place	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place ORDER BY COUNT( * ) DESC LIMIT 1	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place HAVING COUNT( * ) >= 2	body_builder
SELECT people.weight , people.height FROM people ORDER BY people.height DESC	body_builder
SELECT * FROM body_builder	body_builder
SELECT people.name , people.birth_place FROM people WHERE people.people_id NOT IN (SELECT body_builder.people_id FROM body_builder)	body_builder
SELECT COUNT( DISTINCT people.birth_place ) FROM people	body_builder
SELECT COUNT( * ) FROM people WHERE people.people_id NOT IN (SELECT body_builder.people_id FROM body_builder)	body_builder
SELECT people.weight FROM people JOIN body_builder ON people.people_id = body_builder.people_id WHERE body_builder.snatch > 140 OR people.height > 200	body_builder
SELECT body_builder.total FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.birth_date LIKE '%January%'	body_builder
SELECT MIN( body_builder.snatch ) FROM body_builder	body_builder
SELECT COUNT( * ) FROM apartment_bookings	apartment_rentals
SELECT COUNT( * ) FROM apartment_bookings	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings	apartment_rentals
SELECT DISTINCT apartment_buildings.building_description FROM apartment_buildings	apartment_rentals
SELECT DISTINCT apartment_buildings.building_description FROM apartment_buildings	apartment_rentals
SELECT apartment_buildings.building_short_name FROM apartment_buildings WHERE apartment_buildings.building_manager = 'Emma'	apartment_rentals
SELECT apartment_buildings.building_short_name FROM apartment_buildings WHERE apartment_buildings.building_manager = 'Emma'	apartment_rentals
SELECT apartment_buildings.building_address , apartment_buildings.building_phone FROM apartment_buildings WHERE apartment_buildings.building_manager = 'Brenden'	apartment_rentals
SELECT apartment_buildings.building_address , apartment_buildings.building_phone FROM apartment_buildings WHERE apartment_buildings.building_manager = 'Brenden'	apartment_rentals
SELECT apartment_buildings.building_full_name FROM apartment_buildings WHERE apartment_buildings.building_full_name LIKE '%court%'	apartment_rentals
SELECT apartment_buildings.building_full_name FROM apartment_buildings WHERE apartment_buildings.building_full_name LIKE '%court%'	apartment_rentals
SELECT MIN( apartments.bathroom_count ) , MAX( apartments.bathroom_count ) FROM apartments	apartment_rentals
SELECT MIN( apartments.bathroom_count ) , MAX( apartments.bathroom_count ) FROM apartments	apartment_rentals
SELECT AVG( apartments.bedroom_count ) FROM apartments	apartment_rentals
SELECT AVG( apartments.bedroom_count ) FROM apartments	apartment_rentals
SELECT apartments.apt_number , SUM( apartments.room_count ) FROM apartments GROUP BY apartments.apt_number	apartment_rentals
SELECT apartments.apt_number , apartments.room_count FROM apartments	apartment_rentals
SELECT AVG( apartments.room_count ) FROM apartments WHERE apartments.apt_type_code = 'Studio'	apartment_rentals
SELECT AVG( apartments.room_count ) FROM apartments WHERE apartments.apt_type_code = 'Studio'	apartment_rentals
SELECT apartments.apt_number FROM apartments WHERE apartments.apt_type_code = 'Flat'	apartment_rentals
SELECT apartments.apt_number FROM apartments WHERE apartments.apt_type_code = 'Flat'	apartment_rentals
SELECT guests.guest_first_name , guests.guest_last_name FROM guests	apartment_rentals
SELECT guests.guest_first_name , guests.guest_last_name FROM guests	apartment_rentals
SELECT guests.date_of_birth FROM guests WHERE guests.gender_code = 'Male'	apartment_rentals
SELECT guests.date_of_birth FROM guests WHERE guests.gender_code = 'Male'	apartment_rentals
SELECT apartments.apt_number , apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id	apartment_rentals
SELECT apartments.apt_number , apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartments.apt_type_code = 'Duplex'	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartments.apt_type_code = 'Duplex'	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartments.bedroom_count > 2	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartments.bedroom_count > 2	apartment_rentals
SELECT apartment_bookings.booking_status_code FROM apartments JOIN apartment_bookings ON apartments.apt_id = apartment_bookings.apt_id WHERE apartments.apt_number = 'Suite 634'	apartment_rentals
SELECT apartment_bookings.booking_status_code FROM apartments JOIN apartment_bookings ON apartments.apt_id = apartment_bookings.apt_id WHERE apartments.apt_number = 'Suite 634'	apartment_rentals
SELECT DISTINCT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT AVG( apartments.room_count ) FROM apartments JOIN apartment_bookings ON apartments.apt_id = apartment_bookings.apt_id WHERE apartment_bookings.booking_status_code = 'Provisional'	apartment_rentals
SELECT AVG( apartments.room_count ) FROM apartments JOIN apartment_bookings ON apartments.apt_id = apartment_bookings.apt_id WHERE apartment_bookings.booking_status_code = 'Provisional'	apartment_rentals
SELECT guests.guest_first_name , apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id	apartment_rentals
SELECT guests.guest_first_name , apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id WHERE guests.gender_code = 'Female'	apartment_rentals
SELECT apartment_bookings.booking_start_date , apartment_bookings.booking_end_date FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id WHERE guests.gender_code = 'Female'	apartment_rentals
SELECT guests.guest_first_name , guests.guest_last_name FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT guests.guest_first_name , guests.guest_last_name FROM apartment_bookings JOIN guests ON apartment_bookings.guest_id = guests.guest_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT apartment_facilities.facility_code FROM apartment_facilities JOIN apartments ON apartment_facilities.apt_id = apartments.apt_id WHERE apartments.bedroom_count > 4	apartment_rentals
SELECT apartment_facilities.facility_code FROM apartment_facilities JOIN apartments ON apartment_facilities.apt_id = apartments.apt_id WHERE apartments.bedroom_count > 4	apartment_rentals
SELECT SUM( apartments.room_count ) FROM apartments JOIN apartment_facilities ON apartments.apt_id = apartment_facilities.apt_id WHERE apartment_facilities.facility_code = 'Gym'	apartment_rentals
SELECT SUM( apartments.room_count ) FROM apartments JOIN apartment_facilities ON apartments.apt_id = apartment_facilities.apt_id WHERE apartment_facilities.facility_code = 'Gym'	apartment_rentals
SELECT SUM( apartments.room_count ) FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartment_buildings.building_short_name = 'Columbus Square'	apartment_rentals
SELECT SUM( apartments.room_count ) FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartment_buildings.building_short_name = 'Columbus Square'	apartment_rentals
SELECT apartment_buildings.building_address FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartments.bathroom_count > 2	apartment_rentals
SELECT apartment_buildings.building_address FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartments.bathroom_count > 2	apartment_rentals
SELECT apartments.apt_type_code , apartments.apt_number FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartment_buildings.building_manager = 'Kyle'	apartment_rentals
SELECT apartments.apt_type_code , apartments.apt_number FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartment_buildings.building_manager = 'Kyle'	apartment_rentals
SELECT apartment_bookings.booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY apartment_bookings.booking_status_code	apartment_rentals
SELECT apartment_bookings.booking_status_code , COUNT( * ) FROM apartment_bookings GROUP BY apartment_bookings.booking_status_code	apartment_rentals
SELECT apartments.apt_number FROM apartments ORDER BY apartments.room_count ASC	apartment_rentals
SELECT apartments.apt_number FROM apartments ORDER BY apartments.room_count ASC	apartment_rentals
SELECT apartments.apt_number FROM apartments ORDER BY apartments.bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_number FROM apartments ORDER BY apartments.bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_type_code , COUNT( * ) FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
SELECT apartments.apt_type_code , COUNT( * ) FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY AVG( apartments.room_count ) DESC LIMIT 3	apartment_rentals
SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY AVG( apartments.room_count ) DESC LIMIT 3	apartment_rentals
SELECT apartments.apt_type_code , SUM( apartments.bathroom_count ) , SUM( apartments.bedroom_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
SELECT apartments.apt_type_code , SUM( apartments.bathroom_count ) , SUM( apartments.bedroom_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_type_code FROM apartments WHERE apartments.bathroom_count > 1 GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_type_code FROM apartments WHERE apartments.bathroom_count > apartments.bathroom_count GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
SELECT apartments.apt_type_code , MAX( apartments.room_count ) , MIN( apartments.room_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
SELECT apartments.apt_type_code , MAX( apartments.room_count ) , MIN( apartments.room_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
SELECT guests.gender_code , COUNT( * ) FROM guests GROUP BY guests.gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
SELECT guests.gender_code , COUNT( * ) FROM guests GROUP BY guests.gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
SELECT COUNT( * ) FROM apartments WHERE apartments.apt_id NOT IN (SELECT apartment_facilities.apt_id FROM apartment_facilities)	apartment_rentals
SELECT COUNT( * ) FROM apartments WHERE apartments.apt_id NOT IN (SELECT apartment_facilities.apt_id FROM apartment_facilities)	apartment_rentals
SELECT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Provisional' INTERSECT SELECT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Provisional' INTERSECT SELECT apartments.apt_number FROM apartment_bookings JOIN apartments ON apartment_bookings.apt_id = apartments.apt_id WHERE apartment_bookings.booking_status_code = 'Confirmed'	apartment_rentals
SELECT apartments.apt_number FROM view_unit_status JOIN apartments ON view_unit_status.apt_id = apartments.apt_id WHERE apartments.apt_id = 1 UNION SELECT apartments.apt_number FROM view_unit_status JOIN apartments ON view_unit_status.apt_id = apartments.apt_id WHERE apartments.apt_id = 1	apartment_rentals
SELECT apartments.apt_number FROM apartments, view_unit_status WHERE apartments.apt_id = 1 INTERSECT SELECT apartments.apt_number FROM apartments, view_unit_status WHERE apartments.apt_id = 0	apartment_rentals
SELECT country.name , league.name FROM country JOIN league ON country.id = league.country_id	soccer_1
SELECT COUNT( * ) FROM country JOIN league ON country.id = league.country_id WHERE country.name = 'England'	soccer_1
SELECT AVG( player.weight ) FROM player	soccer_1
SELECT MAX( player.height ) , MIN( player.height ) FROM player	soccer_1
SELECT player.player_name FROM player JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.overall_rating > (SELECT AVG( player_attributes.overall_rating ) FROM player)	soccer_1
SELECT player.player_name FROM player_attributes JOIN player ON player_attributes.player_api_id = player.player_api_id ORDER BY player_attributes.dribbling DESC LIMIT 1	soccer_1
SELECT player.player_name FROM player JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.crossing > 90 AND player_attributes.preferred_foot = 'right'	soccer_1
SELECT player.player_name FROM player JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.preferred_foot = 'left' AND player_attributes.overall_rating BETWEEN 85 and 90	soccer_1
SELECT AVG( player_attributes.overall_rating ) FROM player_attributes JOIN player ON player_attributes.player_api_id = player.player_api_id JOIN player_attributes ON player_attributes.player_fifa_api_id = player.player_fifa_api_id WHERE player_attributes.preferred_foot = 'left'	soccer_1
SELECT COUNT( * ) FROM player JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id JOIN player ON player_attributes.player_fifa_api_id = player.player_api_id WHERE player_attributes.preferred_foot = 'left' AND player_attributes.overall_rating > 80	soccer_1
SELECT player.id FROM player WHERE player.height >= 180 AND player_attributes.overall_rating > 85	soccer_1
SELECT player.id FROM player WHERE player.height BETWEEN 180 and 190	soccer_1
SELECT player_attributes.overall_rating FROM player_attributes JOIN player ON player_attributes.player_api_id = player.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 3	soccer_1
SELECT player.player_name , player.birthday FROM player JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 5	soccer_1
SELECT classroom.building FROM classroom WHERE classroom.capacity > 50	college_2
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building NOT IN (SELECT section.building FROM section)	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building != 'Lamberton'	college_2
SELECT department.dept_name , department.building FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT department.dept_name , department.building FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT classroom.room_number , classroom.building FROM classroom WHERE classroom.capacity BETWEEN 50 and 100	college_2
SELECT classroom.room_number , classroom.building FROM classroom WHERE classroom.capacity BETWEEN 50 and 100	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC LIMIT 1	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC LIMIT 1	college_2
SELECT student.name FROM student WHERE student.dept_name = 'History' ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT student.name FROM student WHERE student.dept_name = 'History' ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT SUM( classroom.room_number ) FROM classroom JOIN section ON classroom.building = section.building	college_2
SELECT COUNT( * ) FROM classroom JOIN section ON classroom.room_number = section.building WHERE classroom.building = 'Lamberton'	college_2
SELECT COUNT( DISTINCT advisor.s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT advisor.s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT course.dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT course.dept_name ) FROM course	college_2
SELECT COUNT( * ) FROM course WHERE course.dept_name = 'Physics'	college_2
SELECT COUNT( * ) FROM course WHERE course.dept_name = 'Physics'	college_2
SELECT course.title FROM course JOIN prereq ON course.course_id = prereq.course_id GROUP BY course.course_id HAVING COUNT( * ) = 2	college_2
SELECT course.title FROM course JOIN prereq ON course.course_id = prereq.course_id GROUP BY course.course_id HAVING COUNT( * ) = 2	college_2
SELECT course.title , course.credits , course.dept_name FROM course JOIN prereq ON course.course_id = prereq.course_id GROUP BY course.dept_name HAVING COUNT( * ) > 1	college_2
SELECT course.title , course.credits , course.dept_name FROM course JOIN prereq ON course.course_id = prereq.course_id GROUP BY course.dept_name HAVING COUNT( * ) > 1	college_2
SELECT COUNT( * ) FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT COUNT( * ) FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT course.title FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT course.title FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches	college_2
SELECT SUM( department.budget ) FROM department WHERE department.dept_name = 'Marketing' OR department.dept_name = 'Finance'	college_2
SELECT SUM( department.budget ) FROM department WHERE department.dept_name = 'Marketing'	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.name LIKE '%Soisalon%'	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.name = 'Soisalon'	college_2
SELECT COUNT( * ) FROM classroom, section WHERE classroom.building = 'Lamberton' AND classroom.capacity<50	college_2
SELECT COUNT( * ) FROM classroom JOIN section ON classroom.room_number = section.room_number WHERE classroom.capacity<50	college_2
SELECT department.dept_name , department.budget FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT AVG( department.budget ) FROM department	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC LIMIT 1	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC LIMIT 1	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' INTERSECT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' INTERSECT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' EXCEPT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' EXCEPT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
instructor , teaches	college_2
SELECT instructor.id FROM teaches	college_2
SELECT student.name FROM takes JOIN student ON takes.id = student.id WHERE takes.year = 2009 INTERSECT SELECT student.name FROM takes JOIN student ON takes.id = student.id WHERE takes.year = 2010	college_2
SELECT student.name FROM takes JOIN student ON takes.id = student.id WHERE takes.year = 2009 OR takes.year = 2010	college_2
SELECT department.dept_name FROM department JOIN course ON department.dept_name = course.dept_name GROUP BY department.dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT department.dept_name FROM department JOIN course ON department.dept_name = course.dept_name GROUP BY department.dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT department.dept_name FROM department JOIN student ON department.dept_name = student.dept_name ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT department.dept_name FROM department JOIN student ON department.dept_name = student.dept_name ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT course.title , course.credits FROM course ORDER BY course.credits ASC	college_2
SELECT course.title , course.credits FROM course ORDER BY course.credits ASC	college_2
SELECT department.dept_name FROM department ORDER BY department.budget ASC LIMIT 1	college_2
SELECT department.dept_name FROM department ORDER BY department.budget ASC LIMIT 1	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC	college_2
SELECT instructor.name FROM instructor ORDER BY instructor.salary DESC LIMIT 1	college_2
SELECT instructor.name FROM instructor ORDER BY instructor.salary DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY instructor.salary ASC	college_2
SELECT * FROM instructor ORDER BY instructor.salary ASC	college_2
SELECT student.name , student.dept_name FROM student ORDER BY student.tot_cred ASC	college_2
SELECT student.name , student.dept_name FROM student ORDER BY student.tot_cred ASC	college_2
SELECT course.title , instructor.name FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN section ON section.year = teaches.id JOIN instructor ON teaches.year = instructor.id ORDER BY course.title ASC	college_2
SELECT course.title , instructor.name FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN section ON teaches.course_id = section.course_id WHERE course.title LIKE '%2008%' ORDER BY course.title ASC	college_2
SELECT instructor.name FROM advisor JOIN instructor ON advisor.i_id = instructor.id GROUP BY advisor.i_id HAVING COUNT( * ) > 1	college_2
SELECT instructor.name FROM advisor JOIN instructor ON advisor.i_id = instructor.id GROUP BY advisor.i_id HAVING COUNT( * ) > 1	college_2
SELECT student.name FROM advisor JOIN student ON advisor.s_id = student.id GROUP BY advisor.s_id HAVING COUNT( * ) > 1	college_2
SELECT student.name FROM advisor JOIN student ON advisor.s_id = student.id GROUP BY advisor.s_id HAVING COUNT( * ) > 1	college_2
SELECT COUNT( * ) , classroom.building FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building	college_2
SELECT COUNT( * ) , classroom.building FROM classroom JOIN section ON classroom.building = section.building WHERE classroom.capacity > 50 GROUP BY classroom.building	college_2
SELECT MAX( classroom.capacity ) , AVG( classroom.capacity ) , classroom.building FROM classroom GROUP BY classroom.building	college_2
SELECT MAX( classroom.capacity ) , MIN( classroom.capacity ) , classroom.building FROM classroom GROUP BY classroom.building	college_2
SELECT course.title FROM course GROUP BY course.title HAVING COUNT( * ) > 1	college_2
SELECT course.title FROM course GROUP BY course.title HAVING COUNT( * ) > 1	college_2
SELECT SUM( course.credits ) , course.dept_name FROM course GROUP BY course.dept_name	college_2
SELECT SUM( student.tot_cred ) , student.dept_name FROM student GROUP BY student.dept_name	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > (SELECT AVG( instructor.salary ) FROM instructor)	college_2
SELECT AVG( instructor.salary ) FROM instructor	college_2
section , section	college_2
SELECT COUNT( * ) , section.semester FROM section JOIN teaches ON section.semester = teaches.semester GROUP BY section.semester	college_2
SELECT section.year FROM section JOIN teaches ON section.year = teaches.course_id JOIN course ON course.course_id = teaches.course_id GROUP BY section.year ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT teaches.year FROM course JOIN teaches ON course.course_id = teaches.course_id GROUP BY section.year ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT section.year , teaches.semester FROM section JOIN teaches ON section.year = teaches.year GROUP BY section.year ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT section.year , section.semester FROM section JOIN teaches ON section.year = teaches.year GROUP BY section.year ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , student.dept_name FROM student GROUP BY student.dept_name	college_2
SELECT student.dept_name , COUNT( * ) FROM student GROUP BY student.dept_name	college_2
SELECT takes.semester , takes.year FROM takes JOIN section ON takes.semester = section.year GROUP BY takes.year ORDER BY COUNT( * ) ASC LIMIT 1	college_2
SELECT section.semester , section.year FROM takes JOIN section ON takes.year = section.semester GROUP BY section.year ORDER BY COUNT( * ) ASC LIMIT 1	college_2
advisor , advisor	college_2
advisor , advisor	college_2
SELECT instructor.name , instructor.salary FROM advisor JOIN instructor ON advisor.i_id = instructor.id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'History'	college_2
SELECT instructor.name , instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'History'	college_2
SELECT course.course_id FROM course EXCEPT SELECT prereq.course_id FROM prereq	college_2
SELECT course.course_id FROM course EXCEPT SELECT prereq.course_id FROM prereq	college_2
SELECT course.title FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT course.title FROM course WHERE course.course_id NOT IN (SELECT prereq.course_id FROM prereq)	college_2
SELECT prereq.prereq_id FROM prereq JOIN course ON prereq.course_id = course.course_id WHERE course.title = 'International Finance'	college_2
SELECT prereq.prereq_id FROM prereq JOIN course ON prereq.course_id = course.course_id WHERE course.title = 'International Finance'	college_2
SELECT course.title FROM course JOIN prereq ON course.course_id = prereq.course_id JOIN course ON prereq.prereq_id = course.course_id	college_2
SELECT course.title FROM course JOIN prereq ON course.course_id = prereq.prereq_id GROUP BY Different ORDER BY Different DESC LIMIT course.title	college_2
SELECT student.name FROM student JOIN takes ON student.id = takes.id WHERE takes.semester = 'fall' AND takes.year = 2003	college_2
SELECT student.name FROM student JOIN takes ON student.id = takes.id WHERE takes.year = 2003 UNION SELECT student.name FROM student JOIN takes ON student.id = takes.id WHERE takes.year = 2003	college_2
SELECT course.title FROM course JOIN section ON course.course_id = section.course_id WHERE section.semester = 'fall' AND section.building = 'Chandler'	college_2
SELECT course.title FROM course JOIN section ON course.course_id = section.course_id WHERE section.building = 'Fall' AND section.building = 'Fall'	college_2
SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN course ON teaches.course_id = course.course_id WHERE course.title = 'C Programming'	college_2
SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN course ON teaches.course_id = course.course_id WHERE course.title = 'C Programming'	college_2
SELECT instructor.name , instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON student.id = advisor.s_id WHERE student.dept_name = 'Math'	college_2
SELECT instructor.name , instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'Math'	college_2
SELECT instructor.name FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'Math' ORDER BY student.tot_cred ASC	college_2
SELECT instructor.name FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'math' ORDER BY student.tot_cred ASC	college_2
SELECT course.title FROM prereq JOIN course ON prereq.prereq_id = course.course_id WHERE course.title = 'Mobile Computing'	college_2
SELECT course.title FROM course JOIN prereq ON course.course_id = prereq.course_id WHERE course.title = 'Mobile Computing'	college_2
SELECT instructor.name FROM advisor JOIN instructor ON advisor.i_id = instructor.id JOIN student ON advisor.s_id = student.id ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT instructor.name FROM advisor JOIN instructor ON advisor.i_id = instructor.id JOIN student ON advisor.s_id = student.id ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT instructor.name FROM instructor WHERE instructor.id NOT IN (SELECT teaches.id FROM teaches)	college_2
SELECT instructor.name FROM instructor WHERE instructor.id NOT IN (SELECT teaches.id FROM teaches)	college_2
SELECT instructor.id FROM instructor EXCEPT SELECT teaches.id FROM teaches	college_2
SELECT instructor.id FROM instructor EXCEPT SELECT teaches.id FROM teaches	college_2
SELECT instructor.name FROM instructor EXCEPT SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN section ON teaches.course_id = section.course_id WHERE teaches.semester = 'Spring'	college_2
SELECT instructor.name FROM instructor EXCEPT SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN section ON teaches.course_id = section.course_id WHERE teaches.semester = 'Spring'	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.salary > (SELECT AVG( instructor.salary ) FROM instructor) GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , AVG( instructor.salary ) FROM instructor JOIN department ON instructor.dept_name = department.dept_name WHERE department.budget = (SELECT MAX( department.budget ) FROM department)	college_2
SELECT department.budget FROM department	college_2
SELECT course.title , course.credits FROM course JOIN section ON course.course_id = section.course_id JOIN classroom ON section.room_number = classroom.room_number WHERE classroom.capacity = (SELECT MAX( classroom.capacity ) FROM classroom) ORDER BY classroom.capacity DESC LIMIT 1	college_2
SELECT course.title , course.credits FROM course JOIN section ON course.course_id = section.course_id JOIN classroom ON section.room_number = classroom.room_number ORDER BY classroom.capacity DESC LIMIT 1	college_2
SELECT student.name FROM student WHERE student.dept_name != 'Biology'	college_2
SELECT student.name FROM student EXCEPT SELECT student.name FROM student JOIN takes ON student.id = takes.id JOIN course ON takes.course_id = course.course_id WHERE course.title = 'Biology'	college_2
SELECT student.dept_name , COUNT( * ) FROM instructor GROUP BY instructor.dept_name	college_2
SELECT department.dept_name , instructor.name , COUNT( * ) FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON student.id = student.dept_name GROUP BY student.dept_name	college_2
SELECT student.name FROM prereq JOIN course ON prereq.course_id = course.course_id JOIN student ON prereq.prereq_id = student.id WHERE course.title = 'International Finance'	college_2
SELECT student.name FROM student JOIN prereq ON student.id = prereq.prereq_id JOIN student ON prereq.course_id = student.id WHERE course.title = 'International Finance'	college_2
SELECT AVG( instructor.salary ) FROM instructor	college_2
SELECT instructor.name , instructor.salary FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Physics')	college_2
SELECT student.name FROM student JOIN course ON student.dept_name = course.course_id WHERE course.dept_name = 'Statistics'	college_2
course , course	college_2
classroom.building , section.room_number	college_2
classroom.building = section.building	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'computer science'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci' AND instructor.salary > 80000	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci' AND instructor.salary > 80000	college_2
SELECT DISTINCT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN course ON teaches.course_id = course.course_id	college_2
SELECT instructor.name , teaches.course_id FROM instructor JOIN teaches ON instructor.id = teaches.id	college_2
course.course_id = course.course_id	college_2
SELECT instructor.name , teaches.course_id FROM instructor JOIN teaches ON instructor.id = teaches.id WHERE teaches.course_id = 'Art instructors who have taught a course,'	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
SELECT course.title FROM course JOIN section ON course.course_id = section.course_id JOIN takes ON takes.year = section.year WHERE takes.semester = 'Fall 2009' OR takes.semester = 'Spring 2010'	college_2
SELECT course.course_id FROM section JOIN takes ON section.course_id = takes.course_id WHERE takes.semester = 'Fall' AND takes.semester = 'Spring' OR takes.year = 2010	college_2
SELECT takes.semester FROM course JOIN takes ON course.course_id = takes.course_id WHERE section.semester = 'Fall 2009' AND takes.semester = 'Spring 2010'	college_2
SELECT takes.semester FROM course JOIN takes ON course.course_id = takes.course_id WHERE takes.semester = 'Fall' INTERSECT SELECT takes.semester FROM course JOIN takes ON course.course_id = takes.course_id WHERE takes.semester = 'Fall'	college_2
SELECT takes.semester FROM course JOIN section ON course.course_id = section.course_id WHERE section.semester = 'Fall 2009 but' AND section.semester = 'Spring 2010'	college_2
SELECT course.course_id FROM takes JOIN section ON takes.year = section.course_id WHERE section.semester = 'Fall of 2009' AND takes.semester = 'Fall of 2009 but not in Spring' INTERSECT SELECT course.course_id FROM takes JOIN section ON takes.year = section.course_id WHERE section.semester = 'Fall of 2009' AND takes.semester = 'Fall of 2009 but not in Spring'	college_2
SELECT MAX( instructor.salary ) FROM instructor	college_2
SELECT MIN( instructor.salary ) FROM instructor	college_2
SELECT COUNT( * ) FROM teaches JOIN section ON teaches.course_id = section.course_id WHERE teaches.semester = 'Spring 2010'	college_2
section , section	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > 42000	college_2
SELECT instructor.dept_name FROM department JOIN instructor ON department.dept_name = instructor.dept_name GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > 42000	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MIN( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MIN( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT instructor.salary FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT instructor.salary FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT customers.customer_details FROM customers ORDER BY customers.customer_details ASC	insurance_and_eClaims
SELECT customers.customer_details FROM customers ORDER BY customers.customer_details ASC	insurance_and_eClaims
SELECT DISTINCT policies.policy_type_code FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE customers.customer_details = 'Dayana Robel'	insurance_and_eClaims
SELECT policies.policy_type_code FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE customers.customer_details = 'Dayana Robel'	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT SUM( claim_headers.amount_piad ) , AVG( claim_headers.amount_piad ) FROM claim_headers	insurance_and_eClaims
SELECT SUM( claim_headers.amount_claimed ) , AVG( claim_headers.amount_piad ) FROM claim_headers	insurance_and_eClaims
SELECT SUM( claim_headers.amount_claimed ) FROM claims_documents JOIN claim_headers ON claims_documents.claim_id = claim_headers.claim_header_id ORDER BY claims_documents.created_date DESC LIMIT 1	insurance_and_eClaims
SELECT SUM( claim_headers.amount_claimed ) FROM claims_documents JOIN claim_headers ON claims_documents.claim_id = claim_headers.claim_header_id ORDER BY claims_documents.created_date DESC LIMIT 1	insurance_and_eClaims
SELECT claim_headers.amount_claimed FROM claim_headers ORDER BY claim_headers.amount_claimed DESC LIMIT 1	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN claim_headers ON customers.customer_id = claim_headers.claim_header_id ORDER BY claim_headers.amount_claimed DESC LIMIT 1	insurance_and_eClaims
SELECT MIN( claim_headers.amount_claimed ) , customers.customer_id FROM customers JOIN claim_headers ON customers.customer_id = claim_headers.claim_header_id GROUP BY customers.customer_id ORDER BY claim_headers.amount_claimed ASC LIMIT 1	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN claim_headers ON customers.customer_id = claim_headers.claim_header_id ORDER BY claim_headers.amount_claimed ASC LIMIT 1	insurance_and_eClaims
SELECT customers.customer_details FROM customers EXCEPT SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id	insurance_and_eClaims
SELECT customers.customer_details FROM customers EXCEPT SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id	insurance_and_eClaims
SELECT COUNT( * ) FROM claims_processing_stages	insurance_and_eClaims
SELECT COUNT( * ) FROM claims_processing_stages	insurance_and_eClaims
SELECT claims_processing_stages.claim_status_name FROM claims_processing_stages GROUP BY claims_processing_stages.claim_stage_id ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT claims_processing_stages.claim_status_name FROM claims_processing_stages GROUP BY claims_processing_stages.claim_stage_id ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code = 'deputy'	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code = 'Deputy'	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code = 'deputy' OR policies.policy_type_code = 'uniformed'	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code = 'Deputy' OR policies.policy_type_code = 'Uniform'	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers JOIN staff ON customers.customer_id = staff.staff_id	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers JOIN staff ON customers.customer_id = staff.staff_id	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
SELECT customers.customer_id , customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id GROUP BY customers.customer_id ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id GROUP BY customers.customer_details ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT claims_processing_stages.claim_status_description FROM claims_processing_stages WHERE claims_processing_stages.claim_status_name = 'Open'	insurance_and_eClaims
SELECT claims_processing_stages.claim_status_description FROM claims_processing_stages WHERE claims_processing_stages.claim_status_name = 'Open'	insurance_and_eClaims
SELECT COUNT( DISTINCT claims_processing.claim_outcome_code ) FROM claims_processing	insurance_and_eClaims
SELECT COUNT( DISTINCT claims_processing.claim_outcome_code ) FROM claims_processing	insurance_and_eClaims
SELECT customers.customer_id , customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id ORDER BY policies.end_date DESC LIMIT 1	insurance_and_eClaims
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id ORDER BY policies.start_date DESC LIMIT 1	insurance_and_eClaims
SELECT COUNT( * ) FROM church WHERE church.open_date<1850	wedding
SELECT church.name , church.open_date , church.organized_by FROM church	wedding
SELECT church.name FROM church ORDER BY church.open_date DESC	wedding
SELECT church.open_date FROM church GROUP BY church.open_date HAVING COUNT( * ) >= 2	wedding
SELECT church.organized_by , church.name FROM church WHERE church.open_date BETWEEN 1830 and 1840	wedding
SELECT church.open_date , COUNT( * ) FROM church GROUP BY church.open_date	wedding
SELECT church.name , church.open_date FROM church ORDER BY church.open_date DESC LIMIT 3	wedding
SELECT COUNT( * ) FROM people JOIN wedding ON people.people_id = wedding.female_id WHERE people.age > 30	wedding
SELECT people.country FROM people WHERE people.age > 30 INTERSECT SELECT people.country FROM people WHERE people.age<25	wedding
SELECT MIN( people.age ) , MAX( people.age ) , AVG( people.age ) FROM people	wedding
SELECT people.name , people.country FROM people WHERE people.age<(SELECT AVG( people.age ) FROM people)	wedding
SELECT people.name , people.name FROM wedding JOIN people ON wedding.female_id = people.people_id WHERE wedding.year > 2014	wedding
SELECT people.name , people.age FROM people WHERE people.people_id NOT IN (SELECT wedding.male_id FROM wedding)	wedding
SELECT church.name FROM church EXCEPT SELECT church.name FROM wedding JOIN church ON wedding.church_id = church.church_id WHERE wedding.year = 2015	wedding
SELECT church.name FROM wedding JOIN church ON wedding.church_id = church.church_id GROUP BY church.church_id HAVING COUNT( * ) >= 2	wedding
SELECT people.name FROM wedding JOIN people ON wedding.female_id = people.people_id WHERE people.country = 'f' AND wedding.year = 2016	wedding
SELECT COUNT( * ) FROM wedding WHERE wedding.year = 2016	wedding
SELECT church.name FROM wedding JOIN people ON wedding.female_id = people.people_id JOIN church ON wedding.church_id = church.church_id WHERE people.age > 30	wedding
SELECT people.country , COUNT( * ) FROM people GROUP BY people.country	wedding
SELECT COUNT( * ) FROM wedding WHERE wedding.year = 2016	wedding
SELECT item.i_id FROM item WHERE item.title = 'orange'	epinions_1
SELECT * FROM item	epinions_1
SELECT COUNT( * ) FROM review	epinions_1
SELECT COUNT( * ) FROM useracct JOIN * ON useracct.u_id = * GROUP BY * ORDER BY COUNT( * ) DESC LIMIT *	epinions_1
SELECT AVG( review.rating ) , MAX( review.rating ) FROM review	epinions_1
SELECT review.rank FROM review ORDER BY review.rank DESC LIMIT 1	epinions_1
SELECT COUNT( DISTINCT review.u_id ) FROM review	epinions_1
SELECT COUNT( DISTINCT review.i_id ) FROM review	epinions_1
SELECT COUNT( * ) FROM item WHERE item.i_id NOT IN (SELECT review.i_id FROM review)	epinions_1
SELECT useracct.name FROM useracct WHERE useracct.u_id NOT IN (SELECT review.u_id FROM review)	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id WHERE review.rating = 10	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id WHERE review.rating > (SELECT AVG( review.rating ) FROM review)	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id WHERE review.rating<5	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id WHERE review.rating > 8 INTERSECT SELECT item.title FROM item JOIN review ON item.i_id = review.i_id WHERE review.rating<5	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id GROUP BY review.i_id HAVING AVG( review.rating ) > 5	epinions_1
SELECT item.title FROM item JOIN review ON item.i_id = review.i_id GROUP BY item.i_id ORDER BY AVG( review.rating ) ASC LIMIT 1	epinions_1
SELECT item.title FROM item ORDER BY item.title ASC	epinions_1
SELECT review.u_id FROM review GROUP BY review.u_id ORDER BY COUNT( * ) DESC LIMIT 1	epinions_1
SELECT item.title , item.i_id FROM item JOIN review ON item.i_id = review.i_id GROUP BY review.i_id ORDER BY AVG( review.rating ) DESC LIMIT 1	epinions_1
item , item	epinions_1
SELECT review.u_id , AVG( review.rating ) FROM review GROUP BY review.u_id	epinions_1
SELECT review.u_id , COUNT( * ) FROM review GROUP BY review.u_id	epinions_1
SELECT useracct.name FROM review ORDER BY review.rating DESC LIMIT 1	epinions_1
SELECT trust.source_u_id FROM trust GROUP BY trust.source_u_id ORDER BY AVG( trust.trust ) DESC LIMIT 1	epinions_1
SELECT trust.target_u_id , AVG( trust.trust ) FROM trust GROUP BY trust.target_u_id	epinions_1
SELECT trust.target_u_id FROM trust ORDER BY trust.trust ASC LIMIT 1	epinions_1
SELECT item.title FROM item WHERE item.i_id NOT IN (SELECT review.i_id FROM review)	epinions_1
SELECT useracct.name FROM useracct WHERE useracct.u_id NOT IN (SELECT review.u_id FROM review)	epinions_1
SELECT COUNT( * ) FROM review WHERE review.u_id != review.u_id	epinions_1
SELECT COUNT( * ) FROM item WHERE item.i_id NOT IN (SELECT review.i_id FROM review)	epinions_1
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.total_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.total_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC	gymnast
SELECT AVG( gymnast.horizontal_bar_points ) FROM gymnast	gymnast
SELECT AVG( gymnast.horizontal_bar_points ) FROM gymnast	gymnast
SELECT people.name FROM people ORDER BY people.name ASC	gymnast
SELECT people.name FROM people ORDER BY people.name ASC	gymnast
SELECT people.name FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id	gymnast
SELECT people.name FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id	gymnast
SELECT people.name FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id WHERE people.hometown != 'Santo Domingo'	gymnast
SELECT people.name FROM people WHERE people.hometown != 'Santo Domingo'	gymnast
SELECT people.age FROM people ORDER BY people.height DESC LIMIT 1	gymnast
SELECT people.age FROM people ORDER BY people.height DESC LIMIT 1	gymnast
SELECT people.name FROM people ORDER BY people.age DESC LIMIT 5	gymnast
SELECT people.name FROM people ORDER BY people.age DESC LIMIT 5	gymnast
SELECT SUM( gymnast.total_points ) FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id ORDER BY people.age ASC LIMIT 1	gymnast
SELECT gymnast.total_points FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id ORDER BY people.age ASC LIMIT 1	gymnast
SELECT AVG( people.age ) FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id	gymnast
SELECT AVG( people.age ) FROM people	gymnast
SELECT DISTINCT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id WHERE gymnast.total_points > 57.5	gymnast
SELECT DISTINCT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id WHERE gymnast.total_points > 57.5	gymnast
SELECT people.hometown , COUNT( * ) FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown	gymnast
SELECT people.hometown , COUNT( * ) FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown	gymnast
SELECT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown ORDER BY COUNT( * ) DESC LIMIT 1	gymnast
SELECT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown ORDER BY COUNT( * ) DESC LIMIT 1	gymnast
SELECT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown HAVING COUNT( * ) >= 2	gymnast
SELECT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id GROUP BY people.hometown HAVING COUNT( * ) >= 2	gymnast
SELECT people.name FROM people ORDER BY people.height ASC	gymnast
SELECT people.name FROM people ORDER BY people.height ASC	gymnast
SELECT DISTINCT people.hometown FROM people WHERE people.people_id NOT IN (SELECT gymnast.gymnast_id FROM gymnast)	gymnast
SELECT people.hometown FROM people EXCEPT SELECT people.hometown FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id	gymnast
SELECT people.hometown FROM people WHERE people.age > 23 INTERSECT SELECT people.hometown FROM people WHERE people.age<20	gymnast
SELECT people.hometown FROM people WHERE people.age > 23 INTERSECT SELECT people.hometown FROM people WHERE people.age<20	gymnast
SELECT COUNT( DISTINCT people.hometown ) FROM people	gymnast
SELECT COUNT( DISTINCT people.hometown ) FROM people	gymnast
SELECT people.age FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id ORDER BY gymnast.total_points DESC	gymnast
SELECT people.age FROM people JOIN gymnast ON people.people_id = gymnast.gymnast_id ORDER BY gymnast.total_points DESC	gymnast
SELECT COUNT( * ) FROM browser WHERE browser.market_share >= 5	browser_web
SELECT browser.name FROM browser ORDER BY browser.market_share DESC	browser_web
SELECT browser.id , browser.name , browser.market_share FROM browser	browser_web
SELECT MAX( browser.market_share ) , MIN( browser.market_share ) , AVG( browser.market_share ) FROM browser	browser_web
SELECT browser.id , browser.market_share FROM browser WHERE browser.name = 'Safari'	browser_web
SELECT web_client_accelerator.name , web_client_accelerator.operating_system FROM web_client_accelerator WHERE web_client_accelerator.connection != 'Broadband'	browser_web
SELECT browser.name FROM accelerator_compatible_browser JOIN browser ON accelerator_compatible_browser.browser_id = browser.id WHERE accelerator_compatible_browser.compatible_since_year > 1998	browser_web
SELECT accelerator_compatible_browser.accelerator_id , web_client_accelerator.name FROM web_client_accelerator JOIN accelerator_compatible_browser ON web_client_accelerator.id = accelerator_compatible_browser.accelerator_id GROUP BY accelerator_compatible_browser.accelerator_id HAVING COUNT( * ) >= 2	browser_web
SELECT accelerator_compatible_browser.browser_id , browser.name FROM browser JOIN accelerator_compatible_browser ON browser.id = accelerator_compatible_browser.browser_id GROUP BY accelerator_compatible_browser.browser_id ORDER BY COUNT( * ) DESC LIMIT 1	browser_web
SELECT accelerator_compatible_browser.compatible_since_year FROM accelerator_compatible_browser JOIN web_client_accelerator ON accelerator_compatible_browser.accelerator_id = web_client_accelerator.id JOIN browser ON accelerator_compatible_browser.browser_id = browser.id WHERE web_client_accelerator.name = 'CACHEbox' AND browser.name = 'Internet Explorer'	browser_web
SELECT COUNT( DISTINCT web_client_accelerator.client ) FROM web_client_accelerator	browser_web
SELECT COUNT( * ) FROM accelerator_compatible_browser WHERE accelerator_compatible_browser.accelerator_id != accelerator_compatible_browser.accelerator_id	browser_web
SELECT DISTINCT web_client_accelerator.name FROM accelerator_compatible_browser JOIN browser ON accelerator_compatible_browser.browser_id = browser.id JOIN web_client_accelerator ON accelerator_compatible_browser.accelerator_id = web_client_accelerator.id WHERE browser.market_share > 15	browser_web
SELECT browser.name FROM browser WHERE browser.name = 'CACHEbox' UNION SELECT browser.name FROM accelerator_compatible_browser JOIN browser ON accelerator_compatible_browser.browser_id = browser.id WHERE browser.name = 'CACHEbox'	browser_web
SELECT web_client_accelerator.name , web_client_accelerator.operating_system FROM accelerator_compatible_browser JOIN web_client_accelerator ON accelerator_compatible_browser.accelerator_id = web_client_accelerator.id JOIN browser ON accelerator_compatible_browser.browser_id = browser.id WHERE browser.name = 'Opera'	browser_web
SELECT web_client_accelerator.name FROM web_client_accelerator WHERE web_client_accelerator.name LIKE '%Opera%'	browser_web
SELECT web_client_accelerator.operating_system , COUNT( * ) FROM web_client_accelerator GROUP BY web_client_accelerator.operating_system	browser_web
SELECT browser.name FROM browser JOIN accelerator_compatible_browser ON browser.id = accelerator_compatible_browser.browser_id ORDER BY accelerator_compatible_browser.compatible_since_year DESC	browser_web
SELECT COUNT( * ) FROM school	school_finance
SELECT COUNT( * ) FROM school	school_finance
SELECT school.school_name FROM school ORDER BY school.school_name ASC	school_finance
SELECT school.school_name , school.location , school.mascot FROM school	school_finance
SELECT SUM( school.enrollment ) , AVG( school.enrollment ) FROM school	school_finance
SELECT school.mascot FROM school WHERE school.enrollment > (SELECT AVG( school.enrollment ) FROM school)	school_finance
SELECT school.school_name FROM school ORDER BY school.enrollment ASC LIMIT 1	school_finance
SELECT AVG( school.enrollment ) , MAX( school.enrollment ) , MIN( school.enrollment ) FROM school	school_finance
SELECT school.county , COUNT( * ) , SUM( school.enrollment ) FROM school GROUP BY school.county	school_finance
SELECT COUNT( * ) FROM endowment JOIN school ON endowment.school_id = school.school_id WHERE school.school_name = 'Glenn'	school_finance
SELECT endowment.donator_name , endowment.amount FROM endowment ORDER BY endowment.amount DESC	school_finance
SELECT school.school_name FROM school WHERE school.school_id NOT IN (SELECT endowment.school_id FROM endowment)	school_finance
SELECT school.school_name FROM endowment JOIN school ON endowment.school_id = school.school_id WHERE endowment.amount <= 10	school_finance
SELECT endowment.donator_name FROM endowment JOIN school ON endowment.school_id = school.school_id WHERE school.school_name = 'Glenn' INTERSECT SELECT endowment.donator_name FROM endowment JOIN school ON endowment.school_id = school.school_id WHERE school.school_name = 'Triton'	school_finance
SELECT endowment.donator_name FROM endowment EXCEPT SELECT endowment.donator_name FROM endowment WHERE endowment.amount<9	school_finance
SELECT endowment.amount , endowment.donator_name FROM endowment ORDER BY endowment.amount DESC LIMIT 1	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.year BETWEEN 3000 and 2001	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.year BETWEEN 2001 and 3000	school_finance
SELECT school.school_name , SUM( budget.invested ) FROM budget JOIN school ON budget.school_id = school.school_id WHERE budget.year >= 2002 GROUP BY school.school_name	school_finance
SELECT endowment.donator_name FROM endowment	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.budgeted<budget.invested	school_finance
SELECT SUM( budget.budgeted ) FROM budget JOIN school ON budget.school_id = school.school_id WHERE school.school_name = 'Glenn'	school_finance
SELECT school.school_name FROM school JOIN endowment ON school.school_id = endowment.school_id WHERE budget.total_budget_percent_budgeted > 100 OR endowment.amount > 10	school_finance
SELECT school.school_name FROM endowment JOIN school ON endowment.school_id = school.school_id GROUP BY endowment.school_id HAVING COUNT( * ) > 1	school_finance
SELECT COUNT( * ) FROM endowment WHERE endowment.amount<8.5 HAVING COUNT( * ) > 1	school_finance
SELECT school.school_name , school.ihsaa_class , school.mascot FROM budget JOIN school ON budget.school_id = school.school_id WHERE budget.invested > 6000 OR budget.year<2003 GROUP BY school.mascot UNION SELECT school.school_name , school.ihsaa_football_class , school.mascot FROM school JOIN budget ON school.school_id = budget.school_id WHERE budget.invested > 6000 AND budget.year<2003	school_finance
SELECT cinema.location FROM cinema EXCEPT SELECT cinema.location FROM cinema WHERE cinema.capacity > 800	cinema
SELECT cinema.location FROM cinema WHERE cinema.openning_year = 2010 INTERSECT SELECT cinema.location FROM cinema WHERE cinema.openning_year = 2011	cinema
SELECT COUNT( * ) FROM cinema	cinema
SELECT COUNT( * ) FROM cinema	cinema
SELECT cinema.name , cinema.openning_year , cinema.capacity FROM cinema	cinema
SELECT cinema.name , cinema.location FROM cinema WHERE cinema.capacity > (SELECT AVG( cinema.capacity ) FROM cinema)	cinema
SELECT DISTINCT cinema.location FROM cinema	cinema
SELECT DISTINCT cinema.location FROM cinema	cinema
SELECT cinema.name , cinema.openning_year FROM cinema ORDER BY cinema.openning_year DESC	cinema
SELECT cinema.name , cinema.location FROM cinema ORDER BY cinema.capacity DESC LIMIT 1	cinema
SELECT AVG( cinema.capacity ) , MIN( cinema.capacity ) , MAX( cinema.capacity ) FROM cinema WHERE cinema.openning_year >= 2011	cinema
SELECT cinema.location , COUNT( * ) FROM cinema GROUP BY cinema.location	cinema
SELECT cinema.location FROM cinema WHERE cinema.openning_year >= 2010 GROUP BY cinema.location ORDER BY COUNT( * ) DESC LIMIT 1	cinema
SELECT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT( * ) >= 2	cinema
SELECT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT( * ) >= 2	cinema
SELECT film.title , film.directed_by FROM film	cinema
SELECT film.title , film.directed_by FROM film	cinema
SELECT DISTINCT film.directed_by FROM film	cinema
SELECT DISTINCT film.directed_by FROM film	cinema
SELECT film.directed_by , COUNT( * ) FROM film GROUP BY film.directed_by	cinema
SELECT SUM( schedule.show_times_per_day ) , cinema.cinema_id FROM cinema JOIN schedule ON cinema.cinema_id = schedule.cinema_id GROUP BY cinema.cinema_id	cinema
SELECT film.title , MAX( schedule.price ) FROM film JOIN schedule ON film.film_id = schedule.film_id GROUP BY film.title	cinema
SELECT film.title , MAX( schedule.price ) FROM film JOIN schedule ON film.film_id = schedule.film_id GROUP BY film.title	cinema
SELECT cinema.name , film.title , schedule.price FROM cinema JOIN schedule ON cinema.cinema_id = schedule.cinema_id JOIN film ON schedule.film_id = film.film_id	cinema
SELECT film.title , film.directed_by FROM film WHERE film.film_id NOT IN (SELECT schedule.film_id FROM schedule)	cinema
SELECT film.directed_by FROM film JOIN schedule ON film.film_id = schedule.film_id GROUP BY film.directed_by ORDER BY SUM( schedule.show_times_per_day ) DESC LIMIT 1	cinema
SELECT cinema.location FROM cinema GROUP BY cinema.location HAVING COUNT( * ) > 1	cinema
SELECT cinema.location FROM cinema GROUP BY cinema.location HAVING COUNT( * ) > 1	cinema
SELECT COUNT( * ) FROM film WHERE film.title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM film WHERE film.title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM phone	phone_market
SELECT phone.name FROM phone ORDER BY phone.price ASC	phone_market
SELECT phone.memory_in_g , phone.carrier FROM phone	phone_market
SELECT DISTINCT phone.carrier FROM phone WHERE phone.memory_in_g > 32	phone_market
SELECT phone.name FROM phone WHERE phone.carrier = 'Sprint' OR phone.carrier = 'TMobile'	phone_market
SELECT phone.carrier FROM phone ORDER BY phone.price DESC LIMIT 1	phone_market
SELECT phone.carrier , COUNT( * ) FROM phone GROUP BY phone.carrier	phone_market
SELECT phone.carrier FROM phone GROUP BY phone.carrier ORDER BY COUNT( * ) DESC LIMIT 1	phone_market
SELECT phone.carrier FROM phone WHERE phone.memory_in_g<32 INTERSECT SELECT phone.carrier FROM phone WHERE phone.memory_in_g > 64	phone_market
SELECT phone.name , market.district FROM phone_market JOIN market ON phone_market.market_id = market.market_id JOIN phone ON phone_market.phone_id = phone.phone_id	phone_market
SELECT phone.name , market.district FROM phone_market JOIN market ON phone_market.market_id = market.market_id JOIN phone ON phone_market.phone_id = phone.phone_id ORDER BY market.ranking ASC	phone_market
SELECT phone.name FROM phone_market JOIN market ON phone_market.market_id = market.market_id JOIN phone ON phone_market.phone_id = phone.phone_id WHERE market.num_of_shops > 50	phone_market
SELECT phone.name , SUM( phone_market.num_of_stock ) FROM phone_market JOIN phone ON phone_market.phone_id = phone.phone_id GROUP BY phone.phone_id	phone_market
SELECT phone.name FROM phone_market JOIN phone ON phone_market.phone_id = phone.phone_id GROUP BY phone_market.phone_id HAVING SUM( phone_market.num_of_stock ) > 2000	phone_market
SELECT phone.name FROM phone WHERE phone.phone_id NOT IN (SELECT phone_market.phone_id FROM phone_market)	phone_market
SELECT ref_document_status.document_status_code FROM ref_document_status	cre_Doc_Control_Systems
SELECT ref_document_status.document_status_description FROM ref_document_status WHERE ref_document_status.document_status_code = 'working'	cre_Doc_Control_Systems
SELECT DISTINCT documents.document_type_code FROM documents	cre_Doc_Control_Systems
SELECT ref_document_types.document_type_description FROM ref_document_types WHERE ref_document_types.document_type_code = 'Paper'	cre_Doc_Control_Systems
SELECT ref_shipping_agents.shipping_agent_name FROM ref_shipping_agents	cre_Doc_Control_Systems
SELECT ref_shipping_agents.shipping_agent_code FROM ref_shipping_agents WHERE ref_shipping_agents.shipping_agent_name = 'UPS'	cre_Doc_Control_Systems
SELECT DISTINCT employees.role_code FROM employees	cre_Doc_Control_Systems
SELECT roles.role_description FROM roles WHERE roles.role_code = 'ED'	cre_Doc_Control_Systems
SELECT COUNT( * ) FROM employees	cre_Doc_Control_Systems
SELECT employees.role_code FROM employees WHERE employees.employee_name = 'Koby'	cre_Doc_Control_Systems
SELECT documents.document_id , documents.receipt_date FROM documents	cre_Doc_Control_Systems
SELECT roles.role_description , employees.role_code , COUNT( * ) FROM employees JOIN roles ON employees.role_code = roles.role_code GROUP BY employees.role_code	cre_Doc_Control_Systems
SELECT roles.role_description , COUNT( * ) FROM employees JOIN roles ON employees.role_code = roles.role_code GROUP BY employees.role_code HAVING COUNT( * ) > 1	cre_Doc_Control_Systems
SELECT ref_document_status.document_status_description FROM documents JOIN ref_document_status ON documents.document_status_code = ref_document_status.document_status_code WHERE documents.document_id = 1	cre_Doc_Control_Systems
SELECT COUNT( * ) FROM documents WHERE documents.document_status_code = 'done'	cre_Doc_Control_Systems
SELECT documents.document_type_code FROM documents WHERE documents.document_id = 2	cre_Doc_Control_Systems
SELECT documents.document_id FROM documents WHERE documents.document_status_code = 'done' AND documents.document_type_code = 'paper'	cre_Doc_Control_Systems
SELECT ref_shipping_agents.shipping_agent_name FROM documents JOIN ref_shipping_agents ON documents.shipping_agent_code = ref_shipping_agents.shipping_agent_code WHERE documents.document_id = 2	cre_Doc_Control_Systems
SELECT COUNT( * ) FROM documents WHERE documents.shipping_agent_code = 'USPS'	cre_Doc_Control_Systems
SELECT ref_shipping_agents.shipping_agent_name , COUNT( * ) FROM documents JOIN ref_shipping_agents ON documents.shipping_agent_code = ref_shipping_agents.shipping_agent_code GROUP BY documents.shipping_agent_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Control_Systems
SELECT documents.receipt_date FROM documents WHERE documents.document_id = 3	cre_Doc_Control_Systems
SELECT addresses.address_details FROM documents_mailed JOIN addresses ON documents_mailed.mailed_to_address_id = addresses.address_id WHERE documents_mailed.document_id = 4	cre_Doc_Control_Systems
SELECT documents_mailed.mailing_date FROM documents_mailed WHERE documents_mailed.document_id = 7	cre_Doc_Control_Systems
SELECT documents.document_id FROM documents WHERE documents.document_status_code = 'done' AND ref_shipping_agents.shipping_agent_name = 'Paper' UNION SELECT documents.document_id FROM documents WHERE documents.document_status_code = 'done and type Paper' AND ref_shipping_agents.shipping_agent_name = 'USPS'	cre_Doc_Control_Systems
SELECT documents.document_id FROM documents JOIN ref_document_status ON documents.document_status_code = ref_document_status.document_status_code JOIN ref_shipping_agents ON documents.shipping_agent_code = ref_shipping_agents.shipping_agent_code WHERE documents.document_type_code = 'done' AND ref_shipping_agents.shipping_agent_name = 'USPS'	cre_Doc_Control_Systems
SELECT document_drafts.draft_details FROM document_drafts WHERE document_drafts.document_id = 7	cre_Doc_Control_Systems
SELECT COUNT( * ) FROM draft_copies WHERE draft_copies.document_id = 2	cre_Doc_Control_Systems
SELECT draft_copies.document_id , COUNT( * ) FROM draft_copies GROUP BY draft_copies.document_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Control_Systems
SELECT draft_copies.document_id , COUNT( * ) FROM draft_copies GROUP BY draft_copies.document_id HAVING COUNT( * ) > 1	cre_Doc_Control_Systems
SELECT employees.employee_name FROM employees JOIN circulation_history ON employees.employee_id = circulation_history.employee_id WHERE circulation_history.document_id = 1	cre_Doc_Control_Systems
SELECT employees.employee_name FROM employees WHERE employees.employee_id NOT IN (SELECT circulation_history.employee_id FROM circulation_history)	cre_Doc_Control_Systems
SELECT employees.employee_name , COUNT( * ) FROM employees JOIN circulation_history ON employees.employee_id = circulation_history.employee_id JOIN draft_copies ON circulation_history.copy_number = draft_copies.document_id GROUP BY circulation_history.employee_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Control_Systems
SELECT circulation_history.document_id , COUNT( * ) FROM circulation_history GROUP BY circulation_history.document_id	cre_Doc_Control_Systems
SELECT events.event_details FROM events JOIN services ON events.service_id = services.service_id WHERE services.service_type_code = 'Marriage'	local_govt_in_alabama
SELECT events.event_id , events.event_details FROM events JOIN participants_in_events ON events.event_id = participants_in_events.event_id GROUP BY events.event_id HAVING COUNT( * ) > 1	local_govt_in_alabama
SELECT participants_in_events.participant_id , COUNT( * ) , participants.participant_type_code FROM participants_in_events JOIN participants ON participants_in_events.participant_id = participants.participant_id GROUP BY participants.participant_id	local_govt_in_alabama
SELECT participants.participant_id , participants.participant_type_code , participants.participant_details FROM participants	local_govt_in_alabama
SELECT COUNT( * ) FROM participants WHERE participants.participant_type_code = 'Organizer'	local_govt_in_alabama
SELECT services.service_type_code FROM services ORDER BY services.service_type_code ASC	local_govt_in_alabama
SELECT events.service_id , events.event_details FROM events	local_govt_in_alabama
SELECT COUNT( * ) FROM events JOIN participants_in_events ON events.event_id = participants_in_events.event_id JOIN participants ON participants_in_events.participant_id = participants.participant_id WHERE participants.participant_details LIKE '%Dr%'	local_govt_in_alabama
SELECT participants.participant_type_code FROM participants GROUP BY participants.participant_type_code ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
SELECT services.service_id , services.service_type_code FROM services JOIN participants_in_events ON services.service_id = participants_in_events.event_id JOIN participants ON participants_in_events.participant_id = participants.participant_id GROUP BY services.service_id ORDER BY COUNT( * ) ASC LIMIT 1	local_govt_in_alabama
SELECT events.event_id FROM events JOIN participants_in_events ON events.event_id = participants_in_events.event_id GROUP BY events.event_id ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
SELECT events.event_id FROM events EXCEPT SELECT events.event_id FROM events JOIN participants_in_events ON events.event_id = participants_in_events.event_id JOIN participants ON participants_in_events.participant_id = participants.participant_id WHERE participants.participant_details = 'Kenyatta Kuhn'	local_govt_in_alabama
SELECT services.service_type_code FROM events JOIN services ON events.service_id = services.service_id WHERE events.event_details = 'successful' INTERSECT SELECT services.service_type_code FROM events JOIN services ON events.service_id = services.service_id WHERE events.event_details = 'failure'	local_govt_in_alabama
SELECT COUNT( * ) FROM events WHERE events.event_id NOT IN (SELECT participants_in_events.event_id FROM participants_in_events)	local_govt_in_alabama
SELECT DISTINCT participants_in_events.participant_id FROM participants_in_events	local_govt_in_alabama
SELECT COUNT( * ) FROM technician	machine_repair
SELECT COUNT( * ) FROM technician	machine_repair
SELECT technician.name FROM technician ORDER BY technician.age ASC	machine_repair
SELECT technician.name FROM technician ORDER BY technician.age ASC	machine_repair
SELECT technician.team , technician.starting_year FROM technician	machine_repair
SELECT technician.team , technician.starting_year FROM technician	machine_repair
SELECT technician.name FROM technician WHERE technician.team != 'NYY'	machine_repair
SELECT technician.name FROM technician WHERE technician.team != 'NYY'	machine_repair
SELECT technician.name FROM technician WHERE technician.age = 36 OR technician.age = 37	machine_repair
SELECT technician.name FROM technician WHERE technician.age = 36 OR technician.age = 37	machine_repair
SELECT technician.starting_year FROM technician ORDER BY technician.age DESC LIMIT 1	machine_repair
SELECT technician.starting_year FROM technician ORDER BY technician.age DESC LIMIT 1	machine_repair
SELECT technician.team , COUNT( * ) FROM technician GROUP BY technician.team	machine_repair
SELECT technician.team , COUNT( * ) FROM technician GROUP BY technician.team	machine_repair
SELECT technician.team FROM technician GROUP BY technician.team ORDER BY COUNT( * ) DESC LIMIT 1	machine_repair
SELECT technician.team FROM technician GROUP BY technician.team ORDER BY COUNT( * ) DESC LIMIT 1	machine_repair
SELECT technician.team FROM technician GROUP BY technician.team HAVING COUNT( * ) >= 2	machine_repair
SELECT technician.team FROM technician GROUP BY technician.team HAVING COUNT( * ) >= 2	machine_repair
SELECT technician.name , machine.machine_series FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id	machine_repair
SELECT technician.name , machine.machine_series FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id	machine_repair
SELECT technician.name FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id ORDER BY machine.quality_rank ASC	machine_repair
SELECT technician.name FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id ORDER BY machine.quality_rank ASC	machine_repair
SELECT technician.name FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id WHERE machine.value_points > 70	machine_repair
SELECT technician.name FROM repair_assignment JOIN machine ON repair_assignment.machine_id = machine.machine_id JOIN technician ON repair_assignment.technician_id = technician.technician_id WHERE machine.value_points > 70	machine_repair
SELECT technician.name , COUNT( * ) FROM repair_assignment JOIN technician ON repair_assignment.technician_id = technician.technician_id GROUP BY technician.name	machine_repair
SELECT technician.name , COUNT( * ) FROM repair_assignment JOIN technician ON repair_assignment.technician_id = technician.technician_id GROUP BY technician.name	machine_repair
SELECT technician.name FROM technician WHERE technician.technician_id NOT IN (SELECT repair_assignment.technician_id FROM repair_assignment)	machine_repair
SELECT technician.name FROM technician WHERE technician.technician_id NOT IN (SELECT repair_assignment.technician_id FROM repair_assignment)	machine_repair
SELECT technician.starting_year FROM technician WHERE technician.team = 'CLE' INTERSECT SELECT technician.starting_year FROM technician WHERE technician.team = 'CWS'	machine_repair
SELECT technician.starting_year FROM technician WHERE technician.team = 'CLE' OR technician.team = 'CWS'	machine_repair
SELECT COUNT( * ) FROM perpetrator	perpetrator
SELECT perpetrator.date FROM perpetrator ORDER BY perpetrator.killed DESC	perpetrator
SELECT perpetrator.injured FROM perpetrator ORDER BY perpetrator.injured ASC	perpetrator
SELECT AVG( perpetrator.injured ) FROM perpetrator	perpetrator
SELECT perpetrator.location FROM perpetrator ORDER BY perpetrator.killed DESC LIMIT 1	perpetrator
SELECT people.name FROM people ORDER BY people.height ASC	perpetrator
SELECT people.name FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id	perpetrator
SELECT people.name FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id WHERE perpetrator.country != 'China'	perpetrator
SELECT people.name FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id ORDER BY people.weight DESC LIMIT 1	perpetrator
SELECT SUM( perpetrator.killed ) FROM perpetrator JOIN people ON perpetrator.people_id = people.people_id WHERE people.height > 1.84	perpetrator
SELECT people.name FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id WHERE perpetrator.country = 'China' OR perpetrator.country = 'Japan'	perpetrator
SELECT people.height FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id ORDER BY perpetrator.injured DESC	perpetrator
SELECT perpetrator.country , COUNT( * ) FROM perpetrator GROUP BY perpetrator.country	perpetrator
SELECT perpetrator.country FROM perpetrator GROUP BY perpetrator.country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT perpetrator.country FROM perpetrator GROUP BY perpetrator.country HAVING COUNT( * ) >= 2	perpetrator
SELECT people.name FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id ORDER BY perpetrator.year DESC	perpetrator
SELECT people.name FROM people WHERE people.people_id NOT IN (SELECT perpetrator.people_id FROM perpetrator)	perpetrator
SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured > 50 INTERSECT SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured<20	perpetrator
SELECT COUNT( DISTINCT perpetrator.location ) FROM perpetrator	perpetrator
SELECT perpetrator.date FROM people JOIN perpetrator ON people.people_id = perpetrator.people_id ORDER BY people.height DESC LIMIT 1	perpetrator
SELECT perpetrator.year FROM perpetrator GROUP BY perpetrator.year ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT movie.title FROM movie WHERE movie.director = 'steven spielberg'	movie_1
SELECT movie.title FROM movie WHERE movie.director = 'Steven Spielberg'	movie_1
SELECT movie.title FROM movie WHERE movie.year > 2000 AND movie.director = 'James Cameron'	movie_1
SELECT movie.title FROM movie WHERE movie.director = 'James Cameron' AND movie.year > 2000	movie_1
SELECT COUNT( * ) FROM movie WHERE movie.year<2000	movie_1
SELECT COUNT( * ) FROM movie WHERE movie.year<2000	movie_1
SELECT movie.director FROM movie WHERE movie.title = 'Avatar'	movie_1
SELECT movie.director FROM movie WHERE movie.title = 'Avatar'	movie_1
SELECT COUNT( * ) FROM reviewer	movie_1
SELECT COUNT( * ) FROM reviewer	movie_1
SELECT reviewer.rid FROM reviewer WHERE reviewer.name LIKE '%Mike%'	movie_1
SELECT reviewer.rid FROM reviewer WHERE reviewer.name LIKE '%Mike%'	movie_1
SELECT reviewer.rid FROM reviewer WHERE reviewer.name = 'Daniel Lewis'	movie_1
SELECT reviewer.rid FROM reviewer WHERE reviewer.name = 'Daniel Lewis'	movie_1
SELECT COUNT( * ) FROM rating WHERE rating.stars > 3	movie_1
SELECT COUNT( * ) FROM rating WHERE rating.stars > 3	movie_1
SELECT MIN( rating.stars ) , MAX( rating.stars ) FROM rating	movie_1
SELECT MAX( rating.stars ) , MIN( rating.stars ) FROM rating	movie_1
SELECT movie.year FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY movie.year ORDER BY movie.year ASC	movie_1
SELECT movie.year FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 4 ORDER BY movie.year ASC	movie_1
SELECT movie.director , movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 5	movie_1
SELECT movie.director , movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 5	movie_1
SELECT AVG( rating.stars ) , reviewer.rid FROM rating JOIN reviewer ON rating.rid = reviewer.rid GROUP BY reviewer.rid	movie_1
SELECT AVG( rating.stars ) , reviewer.rid FROM rating JOIN reviewer ON rating.rid = reviewer.rid GROUP BY reviewer.rid	movie_1
SELECT movie.title FROM movie WHERE movie.mid NOT IN (SELECT rating.mid FROM rating)	movie_1
SELECT movie.title FROM movie WHERE movie.mid NOT IN (SELECT rating.mid FROM rating)	movie_1
SELECT reviewer.name FROM reviewer JOIN rating ON reviewer.rid = rating.rid WHERE rating.ratingdate = 'NULL'	movie_1
SELECT DISTINCT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.rid NOT IN (SELECT rating.rid FROM rating)	movie_1
SELECT AVG( rating.stars ) FROM movie JOIN rating ON movie.mid = rating.mid ORDER BY movie.year ASC LIMIT 1	movie_1
SELECT AVG( rating.stars ) , movie.title FROM movie JOIN rating ON movie.mid = rating.mid ORDER BY movie.year ASC LIMIT 1	movie_1
SELECT movie.title FROM movie ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT movie.title FROM movie ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT rating.stars , movie.year FROM movie JOIN rating ON movie.mid = rating.mid ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT rating.ratingdate FROM movie JOIN rating ON movie.mid = rating.mid WHERE movie.year = (SELECT MAX( movie.year ) FROM movie) ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT movie.title FROM movie WHERE movie.year > (SELECT movie.year FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
SELECT movie.title FROM movie WHERE movie.director = (SELECT MAX( movie.director ) FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
SELECT James Cameron FROM movie WHERE movie.director = 'James Cameron'	movie_1
SELECT movie.title , movie.director FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars > (SELECT AVG( rating.stars ) FROM rating) GROUP BY rating.mid ORDER BY AVG( rating.stars ) DESC	movie_1
SELECT reviewer.name , movie.title , rating.ratingdate FROM reviewer JOIN rating ON reviewer.rid = rating.rid ORDER BY movie.title , reviewer.name ASC	movie_1
SELECT reviewer.name , movie.title , rating.ratingdate FROM movie JOIN rating ON movie.mid = rating.mid JOIN movie ON movie.mid = rating.mid ORDER BY movie.title , reviewer.name ASC	movie_1
SELECT reviewer.name FROM reviewer JOIN rating ON reviewer.rid = rating.rid GROUP BY rating.rid HAVING COUNT( * ) >= 3	movie_1
SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid GROUP BY reviewer.rid HAVING COUNT( * ) >= 3	movie_1
SELECT reviewer.name FROM rating JOIN movie ON rating.mid = movie.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE movie.title = 'Gone with the Wind'	movie_1
SELECT DISTINCT reviewer.name FROM rating JOIN movie ON rating.rid = movie.mid JOIN reviewer ON rating.mid = reviewer.rid WHERE movie.title = 'Gone with the Wind'	movie_1
SELECT movie.director FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Sarah Martinez'	movie_1
SELECT movie.director FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Sarah Martinez'	movie_1
SELECT reviewer.name , movie.title , rating.stars FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid	movie_1
SELECT DISTINCT reviewer.name , movie.title , rating.stars FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid	movie_1
SELECT reviewer.name , movie.title FROM movie JOIN reviewer ON movie.mid = reviewer.rid	movie_1
SELECT reviewer.name , movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid	movie_1
SELECT movie.title FROM movie EXCEPT SELECT movie.title FROM rating JOIN movie ON rating.mid = movie.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Chris Jackson'	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name != 'Chris Jackson'	movie_1
SELECT movie.title , movie.director FROM movie GROUP BY movie.director ORDER BY movie.director ASC HAVING COUNT( * ) > 1	movie_1
SELECT movie.director , movie.title , COUNT( * ) FROM movie GROUP BY movie.director HAVING COUNT( * ) > 1	movie_1
SELECT movie.title , movie.year FROM movie GROUP BY movie.director HAVING COUNT( * ) > 1	movie_1
SELECT movie.director , movie.title , COUNT( * ) FROM movie GROUP BY movie.director HAVING COUNT( * ) > 1	movie_1
SELECT movie.director FROM movie GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
SELECT movie.director FROM movie GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
SELECT movie.director FROM movie EXCEPT SELECT movie.director FROM movie WHERE * = 'NULL'	movie_1
SELECT movie.director FROM movie WHERE movie.director != 'NULL'	movie_1
SELECT movie.director , COUNT( * ) FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY movie.director	movie_1
SELECT movie.director , COUNT( * ) FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY movie.director	movie_1
movie , rating	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY rating.mid ORDER BY AVG( rating.stars ) DESC LIMIT 1	movie_1
SELECT movie.title , rating.ratingdate FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY rating.mid ORDER BY AVG( rating.ratingdate ) ASC LIMIT 1	movie_1
SELECT movie.title , rating.ratingdate FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY rating.mid ORDER BY AVG( rating.ratingdate ) ASC LIMIT 1	movie_1
SELECT movie.title , movie.year FROM movie JOIN rating ON movie.mid = rating.mid ORDER BY rating.stars DESC LIMIT 3	movie_1
SELECT movie.title , movie.director , movie.year FROM movie JOIN rating ON movie.mid = rating.mid ORDER BY 3 DESC LIMIT 3	movie_1
SELECT movie.title , MAX( rating.stars ) , movie.director FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY movie.director	movie_1
SELECT movie.title , reviewer.name , movie.director FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid	movie_1
movie , movie	movie_1
SELECT movie.title , rating.rid FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY rating.rid ORDER BY COUNT( * ) ASC LIMIT 1	movie_1
SELECT movie.title , movie.director FROM movie JOIN rating ON movie.mid = rating.mid	movie_1
SELECT movie.title , movie.director FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY movie.director ORDER BY COUNT( * ) ASC LIMIT 1	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid GROUP BY rating.mid ORDER BY COUNT( * ) DESC LIMIT 1	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid GROUP BY rating.mid ORDER BY COUNT( * ) DESC LIMIT 1	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars BETWEEN 3 and 5	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars BETWEEN 3 and 5	movie_1
SELECT reviewer.name FROM reviewer JOIN rating ON reviewer.rid = rating.rid WHERE rating.stars > 3	movie_1
SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE rating.stars > 3	movie_1
SELECT rating.mid , AVG( rating.stars ) FROM movie WHERE movie.mid NOT IN (SELECT rating.mid FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Brittany Harris')	movie_1
SELECT rating.rid FROM reviewer	movie_1
SELECT movie.mid FROM movie EXCEPT SELECT movie.mid FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Brittany Harris'	movie_1
SELECT movie.mid FROM movie EXCEPT SELECT movie.mid FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE reviewer.name = 'Britanny Harris'	movie_1
SELECT rating.mid FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 2	movie_1
SELECT rating.mid FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 3	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT reviewer.rid FROM reviewer JOIN rating ON reviewer.rid = rating.rid GROUP BY rating.rid HAVING COUNT( * ) >= 4	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE movie.year > 2000 OR reviewer.name = 'Brittany Harris'	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid WHERE movie.year > 2000 OR reviewer.name = 'Brittany Harris'	movie_1
SELECT movie.title FROM movie WHERE movie.year > 1980 OR movie.director = 'James Cameron'	movie_1
SELECT movie.title FROM movie WHERE movie.year > 1980 OR movie.director = 'James Cameron'	movie_1
SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE rating.stars = 3 INTERSECT SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE rating.stars = 4	movie_1
SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE rating.stars = 3 UNION SELECT reviewer.name FROM rating JOIN reviewer ON rating.rid = reviewer.rid WHERE rating.stars = 4	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 3 INTERSECT SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 4	movie_1
SELECT movie.title FROM movie JOIN rating ON movie.mid = rating.mid WHERE rating.stars = 3 OR rating.stars = 4	movie_1
SELECT rooms.roomname FROM rooms JOIN two ON rooms.beds = two WHERE rooms.baseprice<160	inn_1
SELECT rooms.roomname FROM rooms JOIN two ON rooms.beds = two WHERE rooms.baseprice<160	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT rooms.roomname FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY reservations.room ORDER BY COUNT( * ) DESC LIMIT 1	inn_1
SELECT rooms.roomname FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY reservations.room ORDER BY COUNT( * ) DESC LIMIT 1	inn_1
SELECT SUM( reservations.kids ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
SELECT SUM( reservations.kids ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZ'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
SELECT rooms.roomname , reservations.checkin , reservations.checkout FROM reservations JOIN rooms ON reservations.room = rooms.roomid ORDER BY reservations.rate DESC LIMIT 1	inn_1
SELECT rooms.roomname , reservations.checkin , reservations.checkout FROM reservations JOIN rooms ON reservations.room = rooms.roomid ORDER BY reservations.rate DESC LIMIT 1	inn_1
SELECT SUM( reservations.adults ) FROM reservations WHERE reservations.checkin = 'CONRAD SELBIG'	inn_1
SELECT SUM( reservations.adults ) FROM reservations WHERE reservations.firstname = 'CONRAD SELBIG' AND reservations.checkin = 2010	inn_1
SELECT SUM( reservations.kids ) FROM reservations JOIN rooms ON reservations.room = rooms.roomid WHERE reservations.firstname = 'DAMIEN TRACHSEL' AND reservations.checkin = 2010	inn_1
SELECT reservations.kids FROM reservations WHERE reservations.firstname = 'DAMIEN TRACHSEL' AND reservations.checkin = 2010	inn_1
SELECT SUM( rooms.beds ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT SUM( rooms.beds ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT rooms.roomname , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname , rooms.baseprice FROM rooms ORDER BY rooms.baseprice ASC LIMIT 1	inn_1
SELECT rooms.roomname , rooms.baseprice FROM rooms ORDER BY rooms.baseprice ASC LIMIT 1	inn_1
SELECT rooms.decor FROM rooms WHERE rooms.roomname = 'Recluse' AND rooms.roomname = 'defiance'	inn_1
SELECT rooms.decor FROM rooms WHERE rooms.roomname = 'defiance'	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT COUNT( * ) FROM reservations JOIN reservations ON reservations.code = reservations.code JOIN rooms ON rooms.roomid = reservations.room WHERE rooms.decor = 'modern'	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.decor = 'modern'	inn_1
SELECT rooms.decor FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY rooms.decor ORDER BY COUNT( * ) ASC LIMIT 1	inn_1
SELECT rooms.decor FROM rooms GROUP BY rooms.decor ORDER BY COUNT( * ) ASC LIMIT 1	inn_1
reservations , reservations	inn_1
SELECT COUNT( * ) FROM reservations JOIN rooms ON reservations.room = rooms.roomid WHERE rooms.maxoccupancy = (SELECT MAX( rooms.maxoccupancy ) FROM rooms)	inn_1
SELECT rooms.baseprice FROM rooms	inn_1
SELECT rooms.baseprice FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT rooms.bedtype , COUNT( * ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.bedtype , COUNT( * ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.maxoccupancy DESC LIMIT 1	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.maxoccupancy DESC LIMIT 1	inn_1
SELECT rooms.roomid , rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 1	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 1	inn_1
SELECT rooms.bedtype , rooms.roomname FROM rooms WHERE rooms.decor = 'traditional'	inn_1
SELECT rooms.bedtype , rooms.roomname FROM rooms WHERE rooms.decor = 'traditional'	inn_1
SELECT COUNT( * ) , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' GROUP BY rooms.decor	inn_1
SELECT COUNT( * ) , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' GROUP BY rooms.decor	inn_1
SELECT AVG( rooms.baseprice ) , MIN( rooms.baseprice ) , rooms.decor FROM rooms GROUP BY rooms.decor	inn_1
SELECT AVG( rooms.baseprice ) , MIN( rooms.baseprice ) , rooms.decor FROM rooms GROUP BY rooms.decor	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.baseprice ASC	inn_1
SELECT COUNT( * ) , rooms.decor FROM rooms WHERE rooms.baseprice > 120 GROUP BY rooms.decor	inn_1
SELECT COUNT( * ) , rooms.decor FROM rooms WHERE rooms.baseprice > 120 GROUP BY rooms.decor	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT AVG( rooms.baseprice ) , rooms.bedtype FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.bedtype = 'king' OR rooms.bedtype = 'queen'	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.bedtype = 'king' OR rooms.bedtype = 'queen'	inn_1
SELECT COUNT( DISTINCT rooms.bedtype ) FROM rooms	inn_1
SELECT COUNT( DISTINCT rooms.bedtype ) FROM rooms	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms ORDER BY rooms.baseprice DESC LIMIT 3	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms ORDER BY rooms.baseprice DESC LIMIT 3	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice > (SELECT AVG( rooms.baseprice ) FROM rooms)	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice > (SELECT AVG( rooms.baseprice ) FROM rooms)	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.roomid NOT IN (SELECT reservations.room FROM reservations)	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.roomid NOT IN (SELECT reservations.room FROM reservations)	inn_1
SELECT rooms.roomname , COUNT( * ) FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY rooms.roomname	inn_1
SELECT rooms.roomname , COUNT( * ) FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY rooms.roomname	inn_1
SELECT rooms.roomname FROM rooms JOIN reservations ON rooms.roomid = reservations.room GROUP BY rooms.roomid HAVING COUNT( * ) > 60	inn_1
reservations , rooms	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice BETWEEN 120 and 150	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice BETWEEN 120 and 150	inn_1
SELECT rooms.roomname FROM rooms JOIN reservations ON rooms.roomid = reservations.room WHERE reservations.firstname LIKE '%ROY%'	inn_1
SELECT rooms.roomname FROM rooms JOIN reservations ON rooms.roomid = reservations.room WHERE reservations.firstname LIKE '%ROY%'	inn_1
SELECT COUNT( * ) FROM party	party_host
SELECT COUNT( * ) FROM party	party_host
SELECT party.party_theme FROM party ORDER BY party.number_of_hosts ASC	party_host
SELECT party.party_theme FROM party ORDER BY party.number_of_hosts ASC	party_host
SELECT party.party_theme , party.location FROM party	party_host
SELECT party.party_theme , party.location FROM party	party_host
SELECT party.first_year , party.last_year FROM party WHERE party.party_theme = 'Spring' OR party.party_theme = 'Teqnology'	party_host
SELECT party.first_year , party.last_year FROM party WHERE party.party_theme = 'Spring' OR party.party_theme = 'Teqnology'	party_host
SELECT AVG( party.number_of_hosts ) FROM party	party_host
SELECT AVG( party.number_of_hosts ) FROM party	party_host
SELECT party.location FROM party ORDER BY party.number_of_hosts DESC LIMIT 1	party_host
SELECT party.location FROM party ORDER BY party.number_of_hosts DESC LIMIT 1	party_host
SELECT host.nationality , COUNT( * ) FROM host GROUP BY host.nationality	party_host
SELECT host.nationality , COUNT( * ) FROM host GROUP BY host.nationality	party_host
SELECT host.nationality FROM host GROUP BY host.nationality ORDER BY COUNT( * ) DESC LIMIT 1	party_host
SELECT host.nationality FROM host GROUP BY host.nationality ORDER BY COUNT( * ) DESC LIMIT 1	party_host
SELECT host.nationality FROM host WHERE host.age > 45 INTERSECT SELECT host.nationality FROM host WHERE host.age<35	party_host
SELECT host.nationality FROM host WHERE host.age > 45 INTERSECT SELECT host.nationality FROM host WHERE host.age<35	party_host
SELECT party.party_theme , host.name FROM party_host JOIN host ON party_host.host_id = host.host_id JOIN party ON party_host.party_id = party.party_id	party_host
SELECT party.party_theme , host.name FROM party JOIN party_host ON party.party_id = party_host.party_id JOIN host ON party_host.host_id = host.host_id	party_host
SELECT party.location , host.name FROM party_host JOIN host ON party_host.host_id = host.host_id JOIN party ON party_host.party_id = party.party_id ORDER BY host.age ASC	party_host
SELECT party.location , host.name FROM party JOIN party_host ON party.party_id = party_host.party_id JOIN host ON party_host.host_id = host.host_id ORDER BY host.age ASC	party_host
SELECT party.location FROM host JOIN party_host ON host.host_id = party_host.host_id JOIN party ON party.party_id = party_host.party_id WHERE party.number_of_hosts > 50 AND party.number_of_hosts > 50	party_host
SELECT party.location FROM party JOIN party_host ON party.party_id = party_host.host_id JOIN host ON party_host.host_id = host.host_id WHERE host.age > 50	party_host
SELECT host.name FROM party_host JOIN host ON party_host.host_id = host.host_id JOIN party ON party_host.party_id = party.party_id WHERE party.number_of_hosts > 20	party_host
SELECT host.name FROM party_host JOIN host ON party_host.host_id = host.host_id JOIN party_host ON party.party_id = party_host.party_id WHERE party.number_of_hosts > 20 UNION SELECT host.name FROM party_host JOIN host ON party_host.host_id = host.host_id JOIN party_host ON party.party_id = party_host.party_id WHERE party.number_of_hosts > 20	party_host
SELECT host.name , host.nationality FROM host ORDER BY host.age DESC LIMIT 1	party_host
SELECT host.name , host.nationality FROM host ORDER BY host.age DESC LIMIT 1	party_host
SELECT host.name FROM host WHERE host.host_id NOT IN (SELECT party_host.host_id FROM party_host)	party_host
SELECT host.name FROM host WHERE host.host_id NOT IN (SELECT party_host.host_id FROM party_host)	party_host
SELECT COUNT( * ) FROM county	election
SELECT COUNT( * ) FROM county	election
SELECT county.county_name , county.population FROM county	election
SELECT county.county_name , county.population FROM county	election
SELECT AVG( county.population ) FROM county	election
SELECT AVG( county.population ) FROM county	election
SELECT MAX( county.population ) , MIN( county.population ) FROM county	election
SELECT MAX( county.population ) , MIN( county.population ) FROM county	election
SELECT DISTINCT election.district FROM election	election
SELECT DISTINCT election.district FROM election	election
SELECT county.zip_code FROM county WHERE county.county_name = 'Howard'	election
SELECT county.zip_code FROM county WHERE county.county_name = 'Howard'	election
SELECT election.delegate FROM election WHERE election.district = 1	election
SELECT election.delegate FROM election WHERE election.district = 1	election
SELECT election.delegate , election.committee FROM election	election
SELECT election.delegate , election.committee FROM election	election
SELECT COUNT( DISTINCT party.governor ) FROM party	election
SELECT COUNT( DISTINCT party.governor ) FROM party	election
SELECT party.lieutenant_governor , party.comptroller FROM party WHERE party.party = 'democratic'	election
SELECT party.lieutenant_governor , party.comptroller FROM party WHERE party.party = 'democratic'	election
SELECT DISTINCT party.year FROM party WHERE party.governor = 'Eliot Spitzer'	election
SELECT DISTINCT party.year FROM party WHERE party.governor = 'Eliot Spitzer'	election
SELECT * FROM election	election
SELECT * FROM election	election
SELECT election.delegate , county.county_name FROM election JOIN county ON election.district = county.county_id	election
SELECT election.delegate , county.county_name FROM election JOIN county ON election.district = county.county_id	election
SELECT election.delegate FROM election JOIN county ON election.district = county.county_id WHERE county.population<100000	election
SELECT election.delegate FROM election JOIN county ON election.district = county.county_id WHERE county.population<100000	election
SELECT COUNT( DISTINCT election.delegate ) FROM election JOIN county ON election.district = county.county_id WHERE county.population > 50000	election
SELECT COUNT( DISTINCT election.delegate ) FROM election JOIN county ON election.district = county.county_id WHERE county.population > 50000	election
SELECT county.county_name FROM election JOIN county ON election.district = county.county_id WHERE election.committee = 'Appropriations'	election
SELECT county.county_name FROM election JOIN county ON election.district = county.county_id WHERE election.committee = 'Appropriations'	election
SELECT election.delegate , party.party FROM election JOIN party ON election.party = party.party_id	election
SELECT election.delegate , party.party FROM election JOIN party ON election.party = party.party_id	election
SELECT party.governor FROM election JOIN party ON election.party = party.party_id WHERE election.district = 1	election
SELECT party.party , party.governor FROM election JOIN party ON election.party = party.party_id WHERE election.district = 1	election
SELECT party.comptroller FROM election JOIN party ON election.party = party.party_id WHERE election.district = 1 OR election.district = 2	election
SELECT party.party , party.comptroller FROM election JOIN party ON election.party = party.party_id WHERE election.district = 1 OR election.district = 2	election
SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'Democratic'	election
SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'Democratic'	election
SELECT county.county_name , COUNT( * ) FROM election JOIN county ON election.district = county.county_id GROUP BY county.county_name	election
SELECT county.county_name , COUNT( * ) FROM election JOIN county ON election.district = county.county_id GROUP BY county.county_id	election
SELECT party.party , COUNT( * ) FROM election JOIN party ON election.party = party.party_id GROUP BY party.party	election
SELECT party.party , COUNT( * ) FROM election JOIN party ON election.party = party.party_id GROUP BY party.party	election
SELECT county.county_name FROM county ORDER BY county.population ASC	election
SELECT county.county_name FROM county ORDER BY county.population ASC	election
SELECT county.county_name FROM county ORDER BY county.county_name DESC	election
SELECT county.county_name FROM county ORDER BY county.county_name DESC	election
SELECT county.county_name FROM county ORDER BY county.population DESC LIMIT 1	election
SELECT county.county_name FROM county ORDER BY county.population DESC LIMIT 1	election
SELECT county.county_name FROM county ORDER BY county.population ASC LIMIT 3	election
SELECT county.county_name FROM county ORDER BY county.population ASC LIMIT 3	election
SELECT county.county_name FROM election JOIN county ON election.district = county.county_id GROUP BY county.county_id HAVING COUNT( * ) >= 2	election
SELECT county.county_name FROM election JOIN county ON election.district = county.county_id GROUP BY county.county_id HAVING COUNT( * ) >= 2	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id ORDER BY election.delegate DESC LIMIT 1	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id GROUP BY party.party ORDER BY SUM( election.delegate ) DESC LIMIT 1	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.party FROM party WHERE party.party_id NOT IN (SELECT election.party FROM election)	election
SELECT party.party FROM party WHERE party.party_id NOT IN (SELECT election.party FROM election)	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id WHERE election.committee = 'Appropriations'	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id WHERE election.committee = 'Appropriations' INTERSECT SELECT party.party FROM election JOIN party ON election.party = party.party_id WHERE election.committee = 'Economic Matters'	election
SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'democratic' INTERSECT SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'liberal'	election
SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'democratic' INTERSECT SELECT election.committee FROM election JOIN party ON election.party = party.party_id WHERE party.party = 'liberal'	election
SELECT COUNT( * ) FROM restaurant	restaurant_1
SELECT restaurant.address FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
SELECT restaurant.rating FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
SELECT DISTINCT restaurant_type.restypename FROM restaurant_type	restaurant_1
SELECT restaurant_type.restypedescription FROM restaurant_type WHERE restaurant_type.restypename = 'Sandwich'	restaurant_1
SELECT restaurant.resname , restaurant.rating FROM restaurant ORDER BY restaurant.rating DESC LIMIT 1	restaurant_1
SELECT student.age FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
SELECT student.sex FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
SELECT student.fname , student.lname FROM student WHERE student.major = 600	restaurant_1
SELECT student.city_code FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
SELECT COUNT( * ) FROM student WHERE student.advisor = 1121	restaurant_1
SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor ORDER BY COUNT( * ) DESC LIMIT 1	restaurant_1
SELECT student.major , COUNT( * ) FROM student GROUP BY student.major ORDER BY COUNT( * ) ASC LIMIT 1	restaurant_1
SELECT student.major , COUNT( * ) FROM student GROUP BY student.major HAVING COUNT( * ) BETWEEN 2 and 30	restaurant_1
SELECT student.fname , student.lname FROM student WHERE student.age > 18 AND student.major = 600	restaurant_1
SELECT student.fname , student.lname FROM student WHERE student.sex = 'f' AND student.age > 18 AND student.major != 600	restaurant_1
SELECT COUNT( * ) FROM type_of_restaurant JOIN restaurant_type ON type_of_restaurant.restypeid = restaurant_type.restypeid WHERE restaurant_type.restypename = 'Sandwich'	restaurant_1
SELECT SUM( visits_restaurant.spent ) FROM visits_restaurant JOIN student ON visits_restaurant.stuid = student.stuid WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
restaurant , visits_restaurant	restaurant_1
SELECT visits_restaurant.time FROM student JOIN visits_restaurant ON student.stuid = visits_restaurant.stuid WHERE student.fname = 'Smith' AND restaurant.resname = 'Subway'	restaurant_1
SELECT restaurant.resname , visits_restaurant.time FROM restaurant JOIN visits_restaurant ON restaurant.resid = visits_restaurant.resid GROUP BY restaurant.resid ORDER BY COUNT( * ) ASC LIMIT 1	restaurant_1
SELECT student.fname , student.lname FROM visits_restaurant JOIN student ON visits_restaurant.stuid = student.stuid GROUP BY visits_restaurant.stuid ORDER BY COUNT( * ) DESC LIMIT 1	restaurant_1
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM inst	icfp_1
SELECT COUNT( * ) FROM inst	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.instid = papers.paperid WHERE authors.lname = 'Gibbons'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Jeremy' AND authors.lname = 'Gibbons'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid JOIN authorship ON authorship.paperid = papers.paperid WHERE authors.lname = 'Aaron Turon'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Aaron Turon' AND authors.lname = 'Aaron Turon'	icfp_1
SELECT COUNT( * ) FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.lname = 'Atsushi Ohori'	icfp_1
SELECT COUNT( * ) FROM authors WHERE authors.fname = 'Atsushi Ohori' AND authors.lname = 'Ohori'	icfp_1
SELECT inst.name FROM authorship JOIN inst ON authorship.instid = inst.instid JOIN authors ON authorship.authid = authors.authid WHERE authors.fname = 'Matthias Blume'	icfp_1
SELECT inst.name FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN authors ON authorship.authid = authors.authid WHERE authors.fname = 'Matthias Blume'	icfp_1
SELECT inst.name FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN authors ON authorship.authid = authors.authid WHERE authors.fname = 'Katsuhiro Ueno'	icfp_1
SELECT inst.name FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN authors ON authorship.authid = authors.authid WHERE authors.fname = 'Katsuhiro Ueno'	icfp_1
SELECT authors.fname , authors.lname FROM inst JOIN inst ON inst.instid = inst.instid WHERE inst.name = 'University of Oxford'	icfp_1
SELECT authors.fname , authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN inst ON authorship.instid = inst.instid WHERE inst.name = 'University of Oxford'	icfp_1
SELECT authors.fname , authors.lname FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN authors ON authorship.authid = authors.authid WHERE inst.name = 'Google'	icfp_1
SELECT authors.fname , authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN inst ON authorship.instid = inst.instid WHERE inst.name = 'Google'	icfp_1
SELECT authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title = 'Binders Unbound'	icfp_1
SELECT authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title = 'Binders Unbound'	icfp_1
SELECT authors.fname , authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title = 'Painless'	icfp_1
SELECT authors.fname , authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title = 'Painless'	icfp_1
SELECT papers.title FROM inst JOIN papers ON inst.instid = papers.paperid WHERE inst.name = 'Indiana University'	icfp_1
SELECT papers.title FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN papers ON authorship.paperid = papers.paperid WHERE inst.name = 'Indiana University'	icfp_1
SELECT papers.title FROM inst JOIN papers ON inst.instid = papers.paperid WHERE inst.name = 'Google'	icfp_1
SELECT papers.title FROM authorship JOIN inst ON authorship.instid = inst.instid JOIN papers ON authorship.paperid = papers.paperid WHERE inst.name = 'Google'	icfp_1
SELECT COUNT( * ) FROM inst WHERE inst.name = 'Tokohu University'	icfp_1
SELECT COUNT( * ) FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN papers ON authorship.paperid = papers.paperid WHERE inst.name = 'Tokohu University'	icfp_1
SELECT COUNT( * ) FROM inst WHERE inst.name = 'University of Pennsylvania'	icfp_1
SELECT COUNT( * ) FROM authorship JOIN inst ON authorship.instid = inst.instid JOIN papers ON authorship.authid = papers.paperid WHERE inst.name = 'University of Pennsylvania'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Olin Shivers' AND authors.lname = 'Shivers'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Olin Shivers' AND authors.lname = 'Shivers'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Stephanie' AND authors.lname = 'Weirich'	icfp_1
SELECT papers.title FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.fname = 'Stephanie' AND authors.lname = 'Weirich'	icfp_1
SELECT papers.title FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN authors ON authorship.authid = authors.authid WHERE inst.country = 'Turon' AND inst.country = 'USA'	icfp_1
SELECT papers.title FROM authorship JOIN inst ON authorship.authid = inst.instid JOIN papers ON authorship.paperid = papers.paperid WHERE authors.lname = 'Turon' AND inst.country = 'USA'	icfp_1
SELECT papers.title FROM inst JOIN authorship ON inst.instid = authorship.authid JOIN papers ON authorship.authid = papers.paperid WHERE inst.country = 'Japan' AND authors.lname = 'Ohori'	icfp_1
authors.authid = authorship.authid	icfp_1
SELECT authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid GROUP BY authorship.authid ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT authors.lname FROM authorship JOIN authors ON authorship.authid = authors.authid GROUP BY authorship.authid ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT inst.country FROM inst GROUP BY inst.country ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT inst.country FROM inst GROUP BY inst.country ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT inst.name FROM inst JOIN authorship ON inst.instid = authorship.instid JOIN papers ON authorship.paperid = papers.paperid GROUP BY inst.name ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT inst.name FROM inst GROUP BY inst.name ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
SELECT authors.fname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title LIKE '%Functional%'	icfp_1
SELECT authors.fname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title LIKE '%Functional%'	icfp_1
SELECT DISTINCT authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title LIKE '%Monadic%'	icfp_1
SELECT authors.lname FROM authors JOIN authorship ON authors.authid = authorship.authid JOIN papers ON authorship.paperid = papers.paperid WHERE papers.title LIKE '%Monadic%'	icfp_1
SELECT papers.title FROM papers JOIN authorship ON papers.paperid = authorship.paperid GROUP BY papers.paperid ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT papers.title FROM papers JOIN authorship ON papers.paperid = authorship.paperid GROUP BY papers.paperid ORDER BY COUNT( * ) DESC LIMIT 1	icfp_1
SELECT authors.fname FROM authors WHERE authors.lname = 'Ueno'	icfp_1
SELECT authors.fname FROM authors WHERE authors.lname = 'Ueno'	icfp_1
SELECT authors.lname FROM authors WHERE authors.fname = 'Amal'	icfp_1
SELECT authors.lname FROM authors WHERE authors.fname = 'Amal'	icfp_1
SELECT authors.fname FROM authors ORDER BY authors.fname ASC	icfp_1
SELECT authors.fname FROM authors ORDER BY authors.fname ASC	icfp_1
SELECT authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
SELECT authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
SELECT authors.fname , authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
SELECT authors.fname , authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
SELECT COUNT( * ) FROM bank	loan_1
SELECT COUNT( * ) FROM bank	loan_1
SELECT COUNT( * ) FROM customer	loan_1
SELECT SUM( bank.no_of_customers ) FROM bank	loan_1
SELECT COUNT( * ) FROM bank WHERE bank.city = 'New York City'	loan_1
SELECT COUNT( * ) FROM bank WHERE bank.city = 'New York City'	loan_1
SELECT AVG( bank.no_of_customers ) FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE bank.state = 'Utah'	loan_1
SELECT AVG( bank.no_of_customers ) FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE bank.state = 'Utah'	loan_1
SELECT AVG( bank.no_of_customers ) FROM bank	loan_1
SELECT AVG( bank.no_of_customers ) FROM bank	loan_1
SELECT bank.city , bank.state FROM bank WHERE bank.bname = 'morningside'	loan_1
SELECT bank.city , bank.state FROM bank WHERE bank.bname = 'morningside'	loan_1
SELECT bank.bname FROM bank WHERE bank.state = 'New York'	loan_1
SELECT bank.bname FROM bank WHERE bank.state = 'New York'	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC	loan_1
SELECT DISTINCT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id ORDER BY loan.amount ASC	loan_1
SELECT customer.cust_name , SUM( loan.amount ) FROM customer JOIN loan ON customer.cust_id = loan.cust_id GROUP BY customer.cust_name ORDER BY SUM( loan.amount ) ASC	loan_1
SELECT customer.state , customer.acc_type , customer.credit_score FROM customer WHERE customer.no_of_loans = 0	loan_1
SELECT customer.state , customer.acc_type , customer.credit_score FROM customer WHERE customer.no_of_loans = 0	loan_1
SELECT COUNT( DISTINCT bank.city ) FROM bank	loan_1
SELECT COUNT( DISTINCT bank.city ) FROM bank	loan_1
SELECT COUNT( DISTINCT bank.state ) FROM bank	loan_1
SELECT COUNT( DISTINCT bank.state ) FROM bank	loan_1
SELECT COUNT( DISTINCT customer.acc_type ) FROM customer	loan_1
SELECT COUNT( DISTINCT customer.acc_type ) FROM customer	loan_1
SELECT customer.cust_name , customer.acc_bal FROM customer WHERE customer.cust_name LIKE '%a%'	loan_1
SELECT customer.cust_name , customer.acc_bal FROM customer WHERE customer.cust_name LIKE '%a%'	loan_1
SELECT SUM( customer.acc_bal ) FROM customer JOIN bank ON customer.branch_id = bank.branch_id WHERE customer.state = 'Utah' OR customer.state = 'Texas'	loan_1
SELECT SUM( customer.acc_bal ) FROM customer JOIN bank ON customer.branch_id = bank.branch_id WHERE customer.state = 'Utah' OR customer.state = 'Texas'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'saving' INTERSECT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'checking'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'savings' INTERSECT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'checking'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.acc_type != 'saving'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.acc_type != 'saving'	loan_1
SELECT customer.cust_name FROM customer EXCEPT SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.loan_type = 'Mortgages'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.cust_id NOT IN (SELECT loan.cust_id FROM loan)	loan_1
SELECT customer.cust_name FROM loan JOIN customer ON loan.cust_id = customer.cust_id WHERE loan.loan_type = 'Mortgages' INTERSECT SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.loan_type = 'Mortgages'	loan_1
SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.loan_type = 'Auto' INTERSECT SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.loan_type = 'Mortgage'	loan_1
SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id GROUP BY bank.branch_id ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM bank ORDER BY bank.no_of_customers DESC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.no_of_loans DESC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id GROUP BY customer.cust_name ORDER BY SUM( loan.amount ) DESC LIMIT 1	loan_1
SELECT customer.state FROM customer GROUP BY customer.state ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT bank.state FROM bank JOIN customer ON bank.branch_id = customer.branch_id GROUP BY bank.state ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT customer.acc_type , AVG( customer.acc_bal ) FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
SELECT AVG( customer.acc_bal ) , customer.acc_type FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
SELECT SUM( loan.amount ) , loan.branch_id FROM loan GROUP BY loan.branch_id	loan_1
SELECT bank.bname , SUM( loan.amount ) FROM loan JOIN bank ON loan.branch_id = bank.branch_id GROUP BY bank.bname	loan_1
SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id GROUP BY customer.cust_name HAVING COUNT( * ) > 1	loan_1
SELECT customer.cust_name FROM customer GROUP BY customer.cust_name HAVING COUNT( * ) > 1	loan_1
SELECT customer.cust_name , customer.acc_bal FROM customer JOIN loan ON customer.cust_id = loan.cust_id GROUP BY loan.cust_id HAVING SUM( loan.amount ) > 5000	loan_1
SELECT customer.cust_name , customer.acc_bal FROM customer JOIN loan ON customer.cust_name = loan.cust_id GROUP BY customer.cust_name HAVING COUNT( * ) >= 5000	loan_1
SELECT bank.bname FROM bank JOIN loan ON bank.branch_id = loan.branch_id GROUP BY loan.branch_id ORDER BY SUM( loan.amount ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM loan JOIN bank ON loan.branch_id = bank.branch_id GROUP BY loan.branch_id ORDER BY SUM( loan.amount ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE customer.credit_score<100 GROUP BY bank.branch_id ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE customer.credit_score<100 GROUP BY bank.branch_id ORDER BY SUM( loan.amount ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM loan JOIN bank ON loan.branch_id = bank.branch_id	loan_1
SELECT DISTINCT bank.bname FROM bank JOIN loan ON bank.branch_id = loan.branch_id	loan_1
SELECT customer.cust_name , customer.credit_score FROM customer	loan_1
SELECT DISTINCT customer.cust_name , customer.credit_score FROM customer	loan_1
SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.amount > 3000	loan_1
SELECT customer.cust_name FROM customer JOIN loan ON customer.cust_id = loan.cust_id WHERE loan.amount > 3000	loan_1
SELECT bank.city , bank.bname FROM bank JOIN loan ON bank.branch_id = loan.branch_id WHERE loan.loan_type = 'business'	loan_1
SELECT bank.bname , bank.city FROM bank JOIN loan ON bank.branch_id = loan.branch_id WHERE loan.loan_type = 'business'	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE customer.credit_score<100	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id WHERE customer.credit_score<100	loan_1
SELECT SUM( loan.amount ) FROM loan JOIN bank ON loan.branch_id = bank.branch_id WHERE bank.state = 'New York'	loan_1
SELECT SUM( loan.amount ) FROM bank JOIN loan ON bank.branch_id = loan.branch_id WHERE bank.state = 'New York'	loan_1
SELECT AVG( customer.credit_score ) FROM customer JOIN loan ON customer.cust_id = loan.cust_id	loan_1
SELECT AVG( customer.credit_score ) FROM customer	loan_1
SELECT AVG( customer.credit_score ) FROM customer WHERE customer.cust_id NOT IN (SELECT loan.cust_id FROM loan)	loan_1
SELECT AVG( customer.credit_score ) FROM customer WHERE customer.cust_id NOT IN (SELECT loan.cust_id FROM loan)	loan_1
SELECT assets.asset_id , assets.other_asset_details FROM assets JOIN asset_parts ON assets.asset_id = asset_parts.asset_id GROUP BY assets.asset_id HAVING COUNT( * )<2	assets_maintenance
SELECT COUNT( * ) , assets.maintenance_contract_id FROM assets GROUP BY assets.maintenance_contract_id	assets_maintenance
SELECT COUNT( * ) , assets.supplier_company_id FROM assets GROUP BY assets.supplier_company_id	assets_maintenance
SELECT third_party_companies.company_address FROM third_party_companies JOIN maintenance_engineers ON third_party_companies.company_id = maintenance_engineers.company_id GROUP BY third_party_companies.company_address HAVING COUNT( * ) >= 2	assets_maintenance
SELECT staff.staff_name FROM staff EXCEPT SELECT staff.staff_name FROM staff JOIN engineer_visits ON staff.staff_id = engineer_visits.contact_staff_id	assets_maintenance
SELECT engineer_visits.engineer_id , maintenance_engineers.first_name , maintenance_engineers.last_name FROM engineer_visits JOIN maintenance_engineers ON engineer_visits.engineer_id = maintenance_engineers.engineer_id GROUP BY engineer_visits.engineer_id ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT parts.part_name , asset_parts.part_id FROM parts JOIN asset_parts ON parts.part_id = asset_parts.part_id GROUP BY asset_parts.part_id HAVING COUNT( * ) > 2	assets_maintenance
SELECT maintenance_engineers.first_name , maintenance_engineers.last_name , engineer_skills.skill_id FROM maintenance_engineers JOIN engineer_skills ON maintenance_engineers.engineer_id = engineer_skills.engineer_id	assets_maintenance
SELECT skills.skill_description , parts.chargeable_amount FROM skills JOIN skills_required_to_fix ON skills.skill_id = skills_required_to_fix.skill_id	assets_maintenance
SELECT asset_parts.part_id , COUNT( * ) FROM asset_parts JOIN parts ON asset_parts.part_id = parts.part_id GROUP BY asset_parts.part_id	assets_maintenance
SELECT fault_log.fault_description , fault_log_parts.fault_status FROM fault_log JOIN fault_log_parts ON fault_log.fault_log_entry_id = fault_log_parts.fault_log_entry_id	assets_maintenance
SELECT COUNT( * ) , engineer_visits.fault_log_entry_id FROM engineer_visits GROUP BY engineer_visits.fault_log_entry_id ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT maintenance_engineers.last_name FROM maintenance_engineers	assets_maintenance
SELECT COUNT( DISTINCT fault_log_parts.fault_status ) FROM fault_log_parts	assets_maintenance
SELECT maintenance_engineers.first_name , maintenance_engineers.last_name FROM maintenance_engineers WHERE maintenance_engineers.engineer_id NOT IN (SELECT engineer_visits.engineer_id FROM engineer_visits)	assets_maintenance
SELECT assets.asset_id , assets.other_asset_details , assets.asset_make , assets.asset_model FROM assets	assets_maintenance
SELECT assets.asset_acquired_date FROM assets ORDER BY assets.asset_acquired_date ASC LIMIT 1	assets_maintenance
fault_log_parts.part_fault_id = part_faults.part_fault_id	assets_maintenance
SELECT parts.part_name FROM parts JOIN part_faults ON parts.part_id = part_faults.part_id JOIN part_faults ON part_faults.part_fault_id = part_faults.part_id GROUP BY parts.part_name ORDER BY COUNT( * ) ASC LIMIT 1	assets_maintenance
SELECT engineer_visits.engineer_id , maintenance_engineers.first_name , maintenance_engineers.last_name FROM engineer_visits JOIN maintenance_engineers ON engineer_visits.engineer_id = maintenance_engineers.engineer_id GROUP BY engineer_visits.engineer_id ORDER BY COUNT( * ) ASC LIMIT 1	assets_maintenance
SELECT staff.staff_name , maintenance_engineers.first_name , maintenance_engineers.last_name FROM staff JOIN engineer_visits ON staff.staff_id = engineer_visits.contact_staff_id JOIN maintenance_engineers ON engineer_visits.engineer_id = maintenance_engineers.engineer_id	assets_maintenance
SELECT fault_log.fault_log_entry_id , fault_log.fault_description , fault_log.fault_log_entry_datetime FROM fault_log JOIN fault_log_parts ON fault_log.fault_log_entry_id = fault_log_parts.fault_log_entry_id JOIN parts ON fault_log_parts.part_fault_id = parts.part_id GROUP BY fault_log.fault_log_entry_datetime ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT skills.skill_code , fault_log.fault_description FROM skills JOIN engineer_skills ON skills.skill_id = engineer_skills.skill_id GROUP BY skills.skill_id ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT assets.asset_model FROM assets	assets_maintenance
SELECT assets.asset_make , assets.asset_model , assets.asset_details FROM assets ORDER BY assets.asset_disposed_date ASC	assets_maintenance
SELECT asset_parts.part_id , parts.part_name FROM parts JOIN part_faults ON parts.part_id = part_faults.part_id GROUP BY parts.part_id ORDER BY SUM( parts.chargeable_amount ) ASC LIMIT 1	assets_maintenance
SELECT third_party_companies.company_name FROM third_party_companies JOIN maintenance_contracts ON third_party_companies.company_id = maintenance_contracts.maintenance_contract_company_id ORDER BY maintenance_contracts.contract_start_date ASC LIMIT 1	assets_maintenance
SELECT third_party_companies.company_address FROM third_party_companies JOIN maintenance_contracts ON third_party_companies.company_id = maintenance_contracts.maintenance_contract_company_id ORDER BY maintenance_contracts.contract_end_date DESC LIMIT 1	assets_maintenance
SELECT staff.gender FROM staff GROUP BY staff.gender ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT staff.staff_name , COUNT( * ) FROM staff JOIN engineer_visits ON staff.staff_id = engineer_visits.contact_staff_id GROUP BY staff.staff_name	assets_maintenance
SELECT assets.asset_model FROM assets WHERE assets.asset_id NOT IN (SELECT fault_log.asset_id FROM fault_log)	assets_maintenance
SELECT COUNT( * ) FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'accounting'	college_1
SELECT COUNT( * ) FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'accounting'	college_1
SELECT COUNT( * ) FROM class WHERE class.class_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM class WHERE class.class_code = 'ACCT-211'	college_1
SELECT professor.dept_code FROM department	college_1
SELECT SUM( course.crs_credit ) FROM professor JOIN class ON professor.dept_code = class.prof_num JOIN course ON class.crs_code = course.crs_code WHERE professor.prof_high_degree = 'biology professors'	college_1
SELECT student.stu_dob , employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.emp_num JOIN student ON class.crs_code = student.prof_num WHERE course.crs_code = 'ACCT-211'	college_1
SELECT professor.dept_code , student.stu_dob FROM professor JOIN employee ON professor.dept_code = employee.emp_num JOIN student ON professor.emp_num = student.prof_num WHERE professor.prof_extension = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM class JOIN professor ON class.prof_num = professor.dept_code WHERE professor.prof_high_degree = 'Graztevski'	college_1
SELECT COUNT( * ) FROM class JOIN professor ON class.prof_num = professor.dept_code WHERE professor.prof_office = 'Graztevski'	college_1
SELECT department.school_code FROM department WHERE department.dept_name = 'accounting'	college_1
SELECT department.school_code FROM department WHERE department.dept_name = 'accounting'	college_1
SELECT SUM( course.crs_credit ) , course.crs_description FROM course WHERE course.crs_code = 'CIS-220'	college_1
class , class	college_1
SELECT department.dept_address FROM department WHERE department.dept_name = 'history'	college_1
SELECT department.dept_address FROM department JOIN course ON department.dept_code = course.dept_code WHERE department.dept_name = 'history'	college_1
SELECT COUNT( DISTINCT department.dept_address ) FROM department WHERE department.school_code = 'BUS'	college_1
SELECT DISTINCT class.class_room FROM class JOIN department ON class.class_code = department.dept_address WHERE department.school_code = 'BUS'	college_1
SELECT COUNT( DISTINCT department.school_code ) FROM department	college_1
SELECT department.school_code , COUNT( DISTINCT department.dept_address ) FROM department GROUP BY department.school_code	college_1
SELECT course.crs_description , course.crs_credit FROM course WHERE course.crs_code = 'QM-261'	college_1
SELECT course.crs_description , course.crs_credit FROM course WHERE course.crs_code = 'QM-261'	college_1
SELECT COUNT( * ) , department.school_code FROM department GROUP BY department.school_code	college_1
SELECT COUNT( * ) , department.school_code FROM department GROUP BY department.school_code	college_1
SELECT COUNT( * ) , department.school_code FROM department GROUP BY department.school_code HAVING COUNT( * ) >= 5	college_1
SELECT COUNT( * ) , department.school_code FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY department.school_code HAVING COUNT( * )<5	college_1
SELECT class.crs_code , COUNT( DISTINCT class.class_section ) FROM class GROUP BY class.crs_code	college_1
SELECT class.crs_code , COUNT( DISTINCT class.class_section ) FROM class GROUP BY class.crs_code	college_1
SELECT SUM( course.crs_credit ) FROM course	college_1
SELECT SUM( course.crs_credit ) FROM course	college_1
SELECT class.class_room , COUNT( * ) FROM class GROUP BY class.class_room HAVING COUNT( * ) >= 2	college_1
SELECT class.class_room , COUNT( * ) FROM class GROUP BY class.class_room HAVING COUNT( * ) >= 2	college_1
SELECT department.dept_code , COUNT( * ) FROM department GROUP BY department.dept_code	college_1
SELECT department.dept_code , COUNT( * ) FROM department GROUP BY department.dept_code	college_1
SELECT COUNT( * ) , department.school_code FROM class JOIN department ON class.class_code = department.school_code GROUP BY department.school_code	college_1
SELECT class.class_code , COUNT( * ) FROM class GROUP BY class.class_code	college_1
SELECT department.school_code , COUNT( * ) FROM department JOIN professor ON department.dept_code = professor.dept_code GROUP BY department.school_code	college_1
SELECT COUNT( * ) , department.school_code FROM professor JOIN department ON professor.dept_code = department.dept_code GROUP BY department.school_code	college_1
SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT department.school_code FROM department JOIN professor ON department.dept_code = professor.dept_code GROUP BY department.school_code ORDER BY COUNT( * ) ASC LIMIT 1	college_1
SELECT department.school_code FROM department JOIN professor ON department.dept_code = professor.dept_code GROUP BY department.school_code ORDER BY COUNT( * ) ASC LIMIT 1	college_1
SELECT COUNT( * ) , professor.dept_code FROM professor WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code	college_1
SELECT professor.dept_code , COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code	college_1
SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT SUM( student.stu_hrs ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT student.dept_code , SUM( student.stu_hrs ) FROM student GROUP BY student.dept_code	college_1
SELECT AVG( student.stu_gpa ) , MAX( student.stu_gpa ) , MIN( student.stu_gpa ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT MAX( student.stu_gpa ) , MIN( student.stu_gpa ) , AVG( student.stu_gpa ) FROM student	college_1
department , student	college_1
SELECT department.dept_name , AVG( student.stu_gpa ) FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY AVG( student.stu_gpa ) DESC LIMIT 1	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( DISTINCT department.school_code ) FROM department	college_1
SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
SELECT COUNT( * ) FROM course	college_1
SELECT COUNT( DISTINCT course.crs_code ) FROM course	college_1
SELECT COUNT( * ) FROM department WHERE department.school_code = 'college'	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( * ) FROM course JOIN department ON course.dept_code = department.dept_code WHERE department.dept_name = 'Computer Info. Systems'	college_1
SELECT COUNT( * ) FROM course JOIN department ON course.dept_code = department.dept_code WHERE department.dept_name = 'Computer Information Systmes'	college_1
SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
SELECT SUM( course.crs_credit ) , course.dept_code FROM course GROUP BY course.dept_code	college_1
SELECT course.dept_code , SUM( course.crs_credit ) FROM course GROUP BY course.dept_code	college_1
SELECT department.dept_name FROM department JOIN course ON department.dept_code = course.dept_code ORDER BY course.crs_credit DESC LIMIT 1	college_1
SELECT course.dept_code FROM course GROUP BY course.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT COUNT( * ) FROM enroll WHERE enroll.class_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM enroll WHERE enroll.class_code = 'ACCT-211'	college_1
SELECT student.stu_fname FROM enroll JOIN student ON enroll.stu_num = student.stu_num WHERE enroll.class_code = 'ACCT-211'	college_1
SELECT student.stu_fname FROM student JOIN class ON student.stu_num = class.crs_code JOIN course ON course.crs_credit = class.crs_code WHERE course.crs_code = 'ACCT-211'	college_1
SELECT student.stu_fname FROM enroll JOIN enroll ON enroll.class_code = enroll.stu_num JOIN student ON enroll.stu_num = student.stu_num WHERE enroll.enroll_grade = 'ACCT-211'	college_1
SELECT student.stu_fname FROM class JOIN course ON class.crs_code = course.crs_code WHERE course.crs_credit = 'C' AND course.crs_credit = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D'	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 1	college_1
class.class_code = class.crs_code	college_1
class , class	college_1
SELECT department.dept_name FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY department.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT department.dept_name FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
SELECT class.crs_code FROM class WHERE class.class_room = 'KLR209'	college_1
SELECT class.crs_code FROM class WHERE class.class_room = 'KLR209'	college_1
SELECT employee.emp_fname FROM employee WHERE employee.emp_jobcode = 'PROF' ORDER BY employee.emp_dob ASC	college_1
SELECT employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.emp_num WHERE professor.prof_office = 'professors' ORDER BY employee.emp_dob ASC	college_1
SELECT employee.emp_fname , professor.prof_extension , professor.prof_office FROM professor ORDER BY employee.emp_fname ASC	college_1
SELECT professor.prof_high_degree , professor.prof_office FROM professor ORDER BY professor.prof_office ASC	college_1
SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob DESC LIMIT 1	college_1
SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob ASC LIMIT 1	college_1
SELECT student.stu_fname , student.stu_lname FROM student WHERE student.stu_gpa > 3 ORDER BY student.stu_dob ASC LIMIT 1	college_1
SELECT student.stu_fname , student.stu_lname FROM student WHERE student.stu_gpa > 3	college_1
SELECT student.stu_fname FROM enroll JOIN student ON enroll.stu_num = student.stu_num JOIN class ON enroll.class_code = class.class_code WHERE enroll.enroll_grade = 'C'	college_1
SELECT student.stu_fname FROM enroll JOIN class ON enroll.class_code = class.class_code WHERE enroll.enroll_grade = 'C'	college_1
SELECT department.dept_name FROM department JOIN professor ON department.dept_code = professor.dept_code GROUP BY department.dept_name ORDER BY COUNT( * ) ASC LIMIT 1	college_1
SELECT department.dept_name FROM department JOIN professor ON department.dept_code = professor.dept_code GROUP BY department.dept_name ORDER BY COUNT( * ) ASC LIMIT 1	college_1
SELECT department.dept_name FROM department JOIN professor ON department.dept_code = professor.dept_code WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT professor.dept_code FROM professor WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT * FROM professor WHERE professor.dept_code NOT IN (SELECT class.prof_num FROM class)	college_1
SELECT employee.emp_fname FROM professor EXCEPT SELECT professor.dept_code FROM class	college_1
SELECT * FROM department JOIN professor ON department.dept_code = professor.dept_code JOIN course ON class.crs_code = course.crs_code WHERE department.dept_name = 'history'	college_1
SELECT * FROM class JOIN course ON class.crs_code = course.crs_code WHERE course.crs_description = 'history professors'	college_1
SELECT professor.dept_code FROM department	college_1
SELECT professor.prof_high_degree FROM professor JOIN class ON professor.dept_code = class.prof_num JOIN class ON class.class_code = class.prof_num WHERE professor.prof_high_degree = 'history professors'	college_1
SELECT department.dept_name , professor.prof_office FROM department JOIN department ON department.dept_code = department.dept_code	college_1
SELECT department.dept_name , professor.prof_office FROM department JOIN department ON department.dept_code = department.dept_code	college_1
SELECT employee.emp_lname , employee.emp_hiredate FROM professor JOIN employee ON professor.emp_num = employee.emp_num WHERE professor.prof_office = 'DRE 102'	college_1
SELECT employee.emp_hiredate FROM employee JOIN professor ON employee.emp_num = professor.emp_num WHERE professor.prof_office = 'DRE 102'	college_1
SELECT course.crs_code FROM course JOIN student ON course.dept_code = student.stu_num WHERE student.stu_lname = 'Smithson'	college_1
SELECT class.crs_code FROM class JOIN student ON class.class_code = student.stu_class WHERE student.stu_lname = 'Smithson'	college_1
SELECT course.crs_description , course.crs_credit FROM course JOIN student ON course.crs_code = student.stu_num WHERE student.stu_lname = 'Smithson'	college_1
SELECT course.crs_credit , course.crs_description FROM course JOIN student ON course.crs_code = student.stu_num WHERE student.stu_lname = 'Smithson'	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' OR professor.prof_high_degree = 'MA'	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' OR professor.prof_high_degree = 'Masters'	college_1
SELECT COUNT( * ) FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'Accounting' OR department.dept_name = 'Biology'	college_1
SELECT COUNT( * ) FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'Accounting' OR department.dept_name = 'Biology'	college_1
SELECT employee.emp_fname FROM employee JOIN class ON employee.emp_num = class.prof_num JOIN course ON class.crs_code = course.crs_code WHERE class.crs_code = 'QM-261' ORDER BY employee.emp_fname ASC LIMIT 2 HAVING COUNT( * ) >= 2	college_1
SELECT professor.prof_office FROM professor JOIN department ON professor.dept_code = department.dept_code JOIN class ON department.emp_num = class.prof_num JOIN course ON class.crs_code = course.crs_code WHERE class.crs_code = 'CIS-220' INTERSECT SELECT professor.prof_office FROM professor JOIN department ON professor.dept_code = department.dept_code JOIN class ON department.emp_num = class.prof_num JOIN course ON class.crs_code = course.crs_code WHERE class.crs_code = 'CIS-220'	college_1
SELECT student.stu_fname FROM class JOIN course ON class.crs_code = course.crs_code JOIN student ON class.class_code = student.dept_code WHERE department.dept_name = 'accounting' INTERSECT SELECT student.stu_fname FROM class JOIN course ON class.crs_code = course.crs_code JOIN student ON class.class_code = student.dept_code WHERE department.dept_name = 'accounting'	college_1
SELECT student.stu_fname FROM student WHERE student.stu_class = 'accoutning' UNION SELECT student.stu_fname FROM class JOIN course ON class.crs_code = course.crs_code WHERE class.crs_code = 'Computer Information Systems'	college_1
SELECT AVG( student.stu_gpa ) FROM student JOIN enroll ON student.stu_num = enroll.stu_num WHERE course.crs_code = 'ACCT-211'	college_1
SELECT AVG( student.stu_gpa ) FROM student JOIN course ON student.stu_class = course.dept_code WHERE class.crs_code = 'ACCT-211'	college_1
SELECT student.stu_fname , student.stu_gpa , student.stu_phone FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
SELECT student.stu_fname , student.stu_gpa , student.stu_phone FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
SELECT department.dept_name FROM department JOIN student ON department.dept_code = student.dept_code ORDER BY student.stu_gpa ASC LIMIT 1	college_1
SELECT department.dept_name FROM department JOIN student ON department.dept_code = student.dept_code ORDER BY student.stu_gpa ASC LIMIT 1	college_1
SELECT student.stu_fname FROM student WHERE student.stu_gpa<(SELECT AVG( student.stu_gpa ) FROM student)	college_1
SELECT AVG( student.stu_gpa ) FROM student	college_1
SELECT department.dept_name , department.dept_address FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT department.dept_name , department.dept_address FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT department.dept_name , department.dept_address , COUNT( * ) , student.dept_code FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY COUNT( * ) DESC LIMIT 3	college_1
SELECT department.dept_name , department.dept_address , COUNT( * ) , student.dept_code FROM department JOIN student ON department.dept_code = student.dept_code GROUP BY student.dept_code ORDER BY COUNT( * ) DESC LIMIT 3	college_1
SELECT professor.dept_code , professor.prof_office FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'history' AND professor.prof_high_degree = 'Ph.D'	college_1
SELECT professor.prof_high_degree FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'Ph.D' AND department.dept_name = 'history'	college_1
SELECT employee.emp_fname , class.class_code FROM class JOIN course ON class.crs_code = course.crs_code	college_1
SELECT class.class_time , class.class_code FROM class JOIN course ON class.crs_code = course.crs_code	college_1
SELECT course.crs_description , class.class_code FROM class JOIN course ON class.crs_code = course.crs_code	college_1
SELECT class.class_code , course.crs_description FROM class JOIN course ON class.crs_code = course.crs_code	college_1
SELECT course.crs_description , employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.emp_num JOIN course ON class.crs_code = course.crs_code	college_1
SELECT professor.prof_office , employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.emp_num JOIN course ON class.crs_code = course.crs_code WHERE professor.prof_high_degree = 'lecturers'	college_1
SELECT employee.emp_fname , course.crs_description , department.dept_name FROM employee JOIN professor ON employee.emp_num = professor.emp_num JOIN course ON professor.emp_num = course.crs_code JOIN department ON department.dept_name = course.crs_code	college_1
SELECT course.crs_description , employee.emp_fname FROM professor JOIN department ON professor.dept_code = department.dept_code JOIN course ON department.dept_code = course.dept_code	college_1
SELECT student.stu_fname , course.crs_description FROM student JOIN course ON student.stu_num = course.crs_code	college_1
SELECT student.stu_fname , course.crs_description FROM class JOIN course ON class.crs_code = course.crs_code	college_1
SELECT student.stu_fname , student.stu_lname FROM class JOIN course ON class.crs_code = course.crs_code WHERE course.crs_credit = 'A' OR course.crs_credit = 'C'	college_1
SELECT student.stu_fname FROM class JOIN course ON class.crs_code = course.crs_code WHERE course.crs_credit = 'A' OR course.crs_credit = 'C'	college_1
class , professor	college_1
SELECT class.class_room , class.class_code FROM professor JOIN department ON professor.dept_code = department.dept_code JOIN course ON department.dept_code = course.dept_code JOIN class ON class.crs_code = course.crs_code JOIN class ON class.crs_code = class.class_code WHERE department.dept_name = 'Accounting professors'	college_1
class , department	college_1
SELECT DISTINCT professor.prof_high_degree FROM professor JOIN department ON professor.dept_code = department.dept_code WHERE department.dept_name = 'Computer Information Systems'	college_1
SELECT student.stu_lname FROM enroll JOIN student ON enroll.stu_num = student.stu_num WHERE enroll.enroll_grade = '10018' AND enroll.enroll_grade = 'A'	college_1
class , class	college_1
SELECT professor.prof_office , employee.emp_fname FROM professor WHERE professor.prof_high_degree = 'history professor' AND professor.prof_high_degree != 'Ph.D'	college_1
SELECT professor.prof_office , employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.dept_code WHERE professor.prof_high_degree != 'history professors'	college_1
SELECT class.prof_num FROM professor JOIN professor ON professor.emp_num = professor.emp_num JOIN class ON employee.emp_num = class.prof_num GROUP BY class.prof_num HAVING COUNT( * ) > 1	college_1
SELECT class.prof_num FROM class GROUP BY class.prof_num HAVING COUNT( * ) > 1	college_1
SELECT student.stu_fname FROM student GROUP BY student.stu_fname HAVING COUNT( * ) = 1	college_1
SELECT student.stu_fname FROM student GROUP BY student.stu_fname HAVING COUNT( * ) = 1	college_1
SELECT department.dept_name FROM department JOIN course ON department.dept_code = course.dept_code WHERE course.crs_description LIKE '%Statistics%'	college_1
SELECT department.dept_name FROM department JOIN course ON department.dept_code = course.dept_code WHERE course.crs_description LIKE '%Statistics%'	college_1
SELECT student.stu_fname FROM student WHERE class.crs_code = 'S' AND student.stu_class = 'ACCT-211'	college_1
SELECT student.stu_fname FROM student WHERE student.stu_lname LIKE '%S%' OR student.stu_lname LIKE '%ACCT-211%'	college_1
SELECT SUM( furniture.num_of_component ) FROM furniture	manufacturer
SELECT furniture.name , furniture.furniture_id FROM furniture ORDER BY furniture.market_rate DESC LIMIT 1	manufacturer
SELECT SUM( furniture.market_rate ) FROM furniture	manufacturer
SELECT furniture.num_of_component , furniture.name FROM furniture WHERE furniture.num_of_component > 10	manufacturer
SELECT furniture.name , furniture.num_of_component FROM furniture	manufacturer
SELECT furniture.name FROM furniture JOIN furniture_manufacte ON furniture.furniture_id = furniture_manufacte.furniture_id WHERE furniture_manufacte.price_in_dollar<(SELECT MAX( furniture_manufacte.price_in_dollar ) FROM furniture_manufacte)	manufacturer
SELECT manufacturer.name , manufacturer.open_year FROM manufacturer ORDER BY manufacturer.num_of_shops DESC LIMIT 1	manufacturer
SELECT AVG( manufacturer.num_of_factories ) FROM manufacturer WHERE manufacturer.num_of_shops > 20	manufacturer
SELECT manufacturer.name , manufacturer.manufacturer_id FROM manufacturer ORDER BY manufacturer.open_year ASC	manufacturer
SELECT manufacturer.name , manufacturer.open_year FROM manufacturer WHERE manufacturer.num_of_factories<10 OR manufacturer.num_of_shops > 10	manufacturer
SELECT AVG( manufacturer.num_of_factories ) , MAX( manufacturer.num_of_shops ) FROM manufacturer WHERE manufacturer.open_year<1990	manufacturer
SELECT manufacturer.manufacturer_id , manufacturer.num_of_shops FROM furniture_manufacte JOIN manufacturer ON furniture_manufacte.manufacturer_id = manufacturer.manufacturer_id ORDER BY furniture_manufacte.price_in_dollar DESC LIMIT 1	manufacturer
SELECT COUNT( * ) , manufacturer.name FROM furniture_manufacte JOIN manufacturer ON furniture_manufacte.manufacturer_id = manufacturer.manufacturer_id GROUP BY manufacturer.name	manufacturer
SELECT furniture.name , furniture_manufacte.price_in_dollar FROM furniture_manufacte JOIN furniture ON furniture_manufacte.furniture_id = furniture.furniture_id JOIN manufacturer ON furniture_manufacte.manufacturer_id = manufacturer.manufacturer_id	manufacturer
SELECT furniture.market_rate , furniture.name FROM furniture WHERE furniture.furniture_id NOT IN (SELECT furniture_manufacte.furniture_id FROM furniture_manufacte)	manufacturer
SELECT manufacturer.name FROM furniture_manufacte JOIN manufacturer ON furniture_manufacte.manufacturer_id = manufacturer.manufacturer_id JOIN furniture ON furniture_manufacte.furniture_id = furniture.furniture_id WHERE furniture.num_of_component > 10	manufacturer
SELECT song.song_name FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
SELECT song.song_name FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
SELECT song.f_id FROM song ORDER BY song.resolution DESC LIMIT 1	music_1
SELECT song.f_id FROM song JOIN files ON song.f_id = files.f_id ORDER BY files.duration DESC LIMIT 1	music_1
SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
SELECT song.f_id FROM files, song WHERE files.formats = 'mp3'	music_1
SELECT files.formats FROM files WHERE files.formats = 'mp3'	music_1
SELECT song.artist_name , artist.country FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE song.rating > 9	music_1
SELECT DISTINCT artist.artist_name , artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.rating > 9	music_1
SELECT files.file_size , files.formats FROM files JOIN song ON files.f_id = song.f_id WHERE song.resolution<800	music_1
SELECT files.file_size , files.formats FROM files JOIN song ON files.f_id = song.f_id WHERE song.resolution<800	music_1
SELECT song.artist_name FROM song ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT song.artist_name FROM song ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT artist.artist_name , artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name ORDER BY song.rating DESC LIMIT 3	music_1
SELECT song.artist_name , song.country FROM song JOIN artist ON song.artist_name = artist.artist_name ORDER BY song.rating DESC LIMIT 3	music_1
SELECT COUNT( * ) FROM song JOIN files ON song.f_id = files.f_id WHERE files.duration = 4	music_1
SELECT COUNT( * ) FROM song JOIN files ON song.f_id = files.f_id WHERE files.duration = 4	music_1
SELECT COUNT( * ) FROM artist WHERE artist.country = 'Bangladesh'	music_1
SELECT COUNT( * ) FROM artist WHERE artist.country = 'Bangladeshi'	music_1
SELECT AVG( song.rating ) FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE artist.gender = 'f'	music_1
SELECT COUNT( * ) FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE artist.gender = 'f'	music_1
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist.artist_name FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE artist.country = 'UK' AND song.languages = 'English'	music_1
SELECT artist.artist_name FROM artist JOIN song ON artist.country = song.artist_name WHERE song.country = 'UK' AND song.languages = 'English'	music_1
SELECT song.f_id FROM song WHERE files.formats = 'mp4' AND song.resolution<1000	music_1
SELECT * FROM files JOIN song ON files.f_id = song.f_id WHERE files.formats = 'mp4' AND song.resolution<1000	music_1
SELECT artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE artist.gender = 'f' INTERSECT SELECT artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.languages = 'Bangla'	music_1
SELECT artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.languages = 'Bangla'	music_1
SELECT AVG( files.duration ) FROM files JOIN song ON files.f_id = song.f_id WHERE files.formats = 'mp3' AND song.resolution<800	music_1
SELECT AVG( files.duration ) FROM files JOIN song ON files.f_id = song.f_id WHERE files.formats = 'mp3' AND song.resolution<800	music_1
SELECT artist.gender , COUNT( * ) FROM artist GROUP BY artist.gender	music_1
SELECT COUNT( * ) FROM artist WHERE artist.gender = 'f'	music_1
SELECT song.languages , AVG( song.rating ) FROM song GROUP BY song.languages	music_1
SELECT song.languages , AVG( song.rating ) FROM song GROUP BY song.languages	music_1
SELECT artist.gender , artist.artist_name FROM song JOIN artist ON song.artist_name = artist.artist_name ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT artist.gender , artist.artist_name FROM artist JOIN song ON artist.artist_name = song.artist_name ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT files.formats , COUNT( * ) FROM files JOIN song ON files.f_id = song.f_id GROUP BY files.formats	music_1
SELECT files.formats , COUNT( * ) FROM song JOIN files ON song.f_id = files.f_id GROUP BY files.formats	music_1
SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN( song.resolution ) FROM song WHERE song.languages = 'English')	music_1
SELECT DISTINCT song.song_name FROM song WHERE song.languages NOT IN (SELECT song.song_name FROM song WHERE song.languages = 'English')	music_1
genre , genre	music_1
SELECT song.song_name FROM song JOIN genre ON song.genre_is = genre.g_name WHERE genre.rating<(SELECT AVG( genre.rating ) FROM genre)	music_1
SELECT artist.artist_name , artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.song_name LIKE '%love%'	music_1
SELECT song.artist_name , artist.country FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.song_name LIKE '%love%'	music_1
SELECT artist.artist_name , artist.gender FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.releasedate = 'March'	music_1
SELECT artist.artist_name , artist.gender FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE song.releasedate = 'March'	music_1
SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
SELECT song.f_id FROM song JOIN files ON song.f_id = files.f_id WHERE files.formats = 'mp4' OR song.resolution > 720	music_1
SELECT song.f_id FROM song WHERE song.resolution = 'mp4' OR song.resolution > 720	music_1
SELECT song.song_name FROM song JOIN files ON song.f_id = files.f_id WHERE files.duration = 4 UNION SELECT song.song_name FROM song JOIN files ON song.f_id = files.f_id WHERE song.languages = 'English'	music_1
SELECT song.song_name FROM song JOIN files ON song.f_id = files.f_id WHERE song.languages = 'English' UNION SELECT 4 FROM song JOIN files ON song.f_id = files.f_id WHERE song.languages = 'English'	music_1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.languages FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.artist_name , song.languages FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist.artist_name FROM artist WHERE artist.gender = 'Male' AND artist.country = 'UK'	music_1
SELECT artist.artist_name FROM artist WHERE artist.gender = 'm'	music_1
SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
SELECT song.song_name FROM song JOIN files ON song.f_id = files.f_id WHERE files.formats = 'mp3' AND song.resolution<1000	music_1
SELECT song.song_name FROM song JOIN files ON song.f_id = files.f_id WHERE files.formats = 'mp3' AND song.resolution<1000	music_1
SELECT song.artist_name FROM artist JOIN artist ON artist.country = artist.artist_name WHERE song.country = 'UK' AND song.languages = 'English'	music_1
SELECT song.artist_name FROM song, artist WHERE artist.country = 'UK' AND song.languages = 'English'	music_1
SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'Bangla'	music_1
SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'bangla'	music_1
SELECT MAX( song.resolution ) , MIN( song.resolution ) FROM song JOIN files ON song.f_id = files.f_id WHERE files.duration = 3	music_1
SELECT MAX( song.resolution ) , MIN( song.resolution ) FROM song JOIN files ON song.f_id = files.f_id WHERE files.duration = 3	music_1
SELECT MAX( files.duration ) , song.resolution , song.languages FROM song JOIN files ON song.f_id = files.f_id GROUP BY song.languages ORDER BY song.languages ASC	music_1
SELECT MAX( files.duration ) , song.resolution , song.languages FROM song JOIN files ON song.f_id = files.f_id GROUP BY song.languages ORDER BY song.languages ASC	music_1
SELECT song.genre_is , genre.rating , MIN( song.rating ) FROM song JOIN genre ON song.genre_is = genre.g_name GROUP BY genre.g_name ORDER BY song.genre_is ASC	music_1
SELECT MIN( song.song_name ) , MIN( song.rating ) , song.genre_is FROM song JOIN genre ON song.genre_is = genre.g_name GROUP BY song.genre_is ORDER BY song.genre_is ASC	music_1
SELECT song.artist_name , COUNT( * ) FROM song WHERE song.languages = 'English' GROUP BY song.artist_name	music_1
SELECT song.artist_name , COUNT( * ) FROM song WHERE song.languages = 'English' GROUP BY song.artist_name	music_1
SELECT artist.artist_name , artist.country FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE song.resolution > 900 GROUP BY artist.artist_name HAVING COUNT( * ) >= 1	music_1
SELECT artist.artist_name , artist.country FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE song.resolution > 900	music_1
SELECT artist.artist_name , COUNT( * ) FROM song JOIN artist ON song.artist_name = artist.artist_name GROUP BY artist.artist_name ORDER BY COUNT( * ) DESC LIMIT 3	music_1
SELECT artist.artist_name , COUNT( * ) FROM song JOIN artist ON song.artist_name = artist.artist_name GROUP BY artist.artist_name ORDER BY COUNT( * ) DESC LIMIT 3	music_1
SELECT artist.country FROM song JOIN artist ON song.artist_name = artist.artist_name GROUP BY artist.country ORDER BY COUNT( * ) ASC LIMIT 1	music_1
SELECT artist.country FROM song JOIN artist ON song.artist_name = artist.artist_name GROUP BY artist.country ORDER BY COUNT( * ) ASC LIMIT 1	music_1
SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
SELECT song.f_id FROM song WHERE song.rating<(SELECT MAX( song.resolution ) FROM song WHERE song.rating<8)	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT song.resolution FROM song WHERE song.rating<8)	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song WHERE song.genre_is = 'modern')	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song)	music_1
SELECT song.artist_name FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE song.languages = 'Bangla' GROUP BY song.artist_name ORDER BY COUNT( * ) DESC LIMIT 3	music_1
SELECT song.artist_name FROM song WHERE song.languages = 'Bangla' GROUP BY song.artist_name ORDER BY COUNT( * ) DESC LIMIT 3	music_1
SELECT song.f_id , genre.g_name , song.artist_name FROM song JOIN genre ON song.genre_is = genre.g_name WHERE song.languages = 'English' ORDER BY genre.rating ASC	music_1
SELECT song.f_id , song.genre_is , artist.artist_name FROM song JOIN genre ON song.f_id = genre.g_name ORDER BY song.rating ASC	music_1
SELECT files.duration , files.file_size , files.formats FROM song JOIN files ON song.f_id = files.f_id WHERE song.genre_is = 'pop,' ORDER BY song.song_name ASC	music_1
SELECT files.duration , files.file_size , files.formats FROM song JOIN files ON song.f_id = files.f_id WHERE song.genre_is = 'pop song,' ORDER BY song.song_name ASC	music_1
SELECT artist.artist_name FROM artist WHERE song.languages = 'English' EXCEPT SELECT artist.artist_name FROM song JOIN genre ON song.artist_name = genre.g_name WHERE song.languages = 'English' AND song.rating > 8	music_1
SELECT song.artist_name FROM artist WHERE song.languages = 'English' EXCEPT SELECT DISTINCT song.artist_name FROM song WHERE song.languages = 'English' AND song.rating > 8	music_1
artist , genre	music_1
SELECT artist.artist_name FROM artist WHERE artist.country = 'Bangladesh'	music_1
SELECT COUNT( * ) FROM camera_lens WHERE camera_lens.focal_length_mm > 15	mountain_photos
SELECT camera_lens.brand , camera_lens.name FROM camera_lens ORDER BY camera_lens.max_aperture DESC	mountain_photos
SELECT photos.id , photos.color , photos.name FROM photos	mountain_photos
SELECT MAX( mountain.height ) , MIN( mountain.height ) FROM mountain	mountain_photos
SELECT AVG( mountain.prominence ) FROM mountain WHERE mountain.country = 'Morocco'	mountain_photos
SELECT mountain.name , mountain.height , mountain.prominence FROM mountain WHERE mountain.range != 'Aberdare Range'	mountain_photos
SELECT photos.id , photos.name FROM photos	mountain_photos
SELECT photos.mountain_id , mountain.name FROM photos JOIN mountain ON photos.mountain_id = mountain.id GROUP BY photos.mountain_id HAVING COUNT( * ) >= 2	mountain_photos
SELECT camera_lens.name FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id GROUP BY photos.camera_lens_id ORDER BY COUNT( * ) DESC LIMIT 1	mountain_photos
SELECT photos.name FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id WHERE camera_lens.brand = 'Sigma' OR camera_lens.brand = 'Olympus'	mountain_photos
SELECT COUNT( DISTINCT camera_lens.brand ) FROM camera_lens	mountain_photos
SELECT COUNT( * ) FROM camera_lens WHERE camera_lens.id NOT IN (SELECT photos.camera_lens_id FROM photos)	mountain_photos
SELECT COUNT( DISTINCT camera_lens.name ) FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id JOIN mountain ON photos.mountain_id = mountain.id WHERE mountain.country = 'Ethiopia'	mountain_photos
SELECT camera_lens.brand FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id JOIN mountain ON photos.mountain_id = mountain.id WHERE mountain.range = 'Toubkal Atlas' INTERSECT SELECT camera_lens.brand FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id JOIN mountain ON photos.mountain_id = mountain.id WHERE mountain.range = 'Lasta Massif'	mountain_photos
SELECT mountain.name , mountain.prominence FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id JOIN mountain ON photos.mountain_id = mountain.id WHERE camera_lens.brand = 'Sigma' GROUP BY mountain.id	mountain_photos
SELECT camera_lens.name FROM camera_lens WHERE camera_lens.name LIKE '%Digital%'	mountain_photos
SELECT camera_lens.name , COUNT( * ) FROM photos JOIN camera_lens ON photos.camera_lens_id = camera_lens.id GROUP BY photos.camera_lens_id ORDER BY COUNT( * ) ASC	mountain_photos
SELECT COUNT( * ) FROM courses	e_learning
SELECT COUNT( * ) FROM courses	e_learning
SELECT courses.course_description FROM courses WHERE courses.course_name = 'database'	e_learning
SELECT courses.course_description FROM courses WHERE courses.course_name = 'database'	e_learning
SELECT course_authors_and_tutors.address_line_1 FROM course_authors_and_tutors WHERE course_authors_and_tutors.personal_name = 'Cathrine'	e_learning
SELECT course_authors_and_tutors.address_line_1 FROM course_authors_and_tutors WHERE course_authors_and_tutors.personal_name = 'Cathrine'	e_learning
SELECT course_authors_and_tutors.address_line_1 FROM course_authors_and_tutors	e_learning
SELECT DISTINCT course_authors_and_tutors.address_line_1 FROM course_authors_and_tutors	e_learning
SELECT course_authors_and_tutors.login_name , course_authors_and_tutors.family_name FROM course_authors_and_tutors	e_learning
SELECT course_authors_and_tutors.login_name , course_authors_and_tutors.family_name FROM course_authors_and_tutors	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_course_enrolment.student_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_course_enrolment.student_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_course_enrolment.course_id ) FROM student_course_enrolment	e_learning
SELECT COUNT( DISTINCT student_course_enrolment.course_id ) FROM courses	e_learning
SELECT student_tests_taken.date_test_taken FROM student_tests_taken WHERE student_tests_taken.test_result = 'Pass'	e_learning
SELECT student_tests_taken.date_test_taken FROM student_tests_taken WHERE student_tests_taken.test_result = 'Pass'	e_learning
SELECT COUNT( * ) FROM student_tests_taken WHERE student_tests_taken.test_result = 'Fail'	e_learning
SELECT COUNT( * ) FROM student_tests_taken WHERE student_tests_taken.test_result = 'Fail'	e_learning
SELECT students.login_name FROM students WHERE students.family_name = 'Ward'	e_learning
SELECT students.login_name FROM students WHERE students.family_name = 'Ward'	e_learning
SELECT students.date_of_latest_logon FROM students WHERE students.family_name = 'Jaskolski' OR students.family_name = 'Langosh'	e_learning
SELECT students.date_of_latest_logon FROM students WHERE students.family_name = 'Jaskolski' OR students.family_name = 'Langosh'	e_learning
SELECT COUNT( * ) FROM students WHERE students.personal_name LIKE '%son%'	e_learning
SELECT COUNT( * ) FROM students WHERE students.personal_name LIKE '%son%'	e_learning
SELECT subjects.subject_name FROM subjects	e_learning
SELECT subjects.subject_name FROM subjects	e_learning
SELECT * FROM course_authors_and_tutors ORDER BY course_authors_and_tutors.personal_name ASC	e_learning
SELECT * FROM course_authors_and_tutors ORDER BY course_authors_and_tutors.personal_name ASC	e_learning
SELECT students.personal_name , students.family_name FROM students ORDER BY students.family_name ASC	e_learning
SELECT students.personal_name , students.family_name FROM students ORDER BY students.family_name ASC	e_learning
SELECT student_tests_taken.test_result , COUNT( * ) FROM student_tests_taken GROUP BY student_tests_taken.test_result ORDER BY COUNT( * ) DESC	e_learning
SELECT student_tests_taken.test_result , COUNT( * ) FROM student_tests_taken GROUP BY student_tests_taken.test_result	e_learning
SELECT course_authors_and_tutors.login_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE courses.course_name = 'advanced database'	e_learning
SELECT course_authors_and_tutors.login_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE courses.course_name = 'advanced database'	e_learning
SELECT course_authors_and_tutors.address_line_1 FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE courses.course_name = 'operating system' OR courses.course_name = 'data structure'	e_learning
SELECT course_authors_and_tutors.address_line_1 FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE courses.course_name = 'operating system' OR courses.course_name = 'data structure'	e_learning
SELECT course_authors_and_tutors.personal_name , course_authors_and_tutors.family_name , courses.author_id FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id GROUP BY courses.author_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT course_authors_and_tutors.personal_name , course_authors_and_tutors.family_name , courses.author_id FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id GROUP BY courses.author_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT course_authors_and_tutors.address_line_1 , courses.author_id FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id GROUP BY courses.author_id HAVING COUNT( * ) >= 2	e_learning
SELECT course_authors_and_tutors.address_line_1 , courses.author_id FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id JOIN courses ON courses.author_id = course_authors_and_tutors.author_id HAVING COUNT( * ) >= 2	e_learning
SELECT courses.course_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE course_authors_and_tutors.personal_name = 'Julio'	e_learning
SELECT courses.course_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id WHERE course_authors_and_tutors.personal_name = 'Julio'	e_learning
SELECT courses.course_name , courses.course_description FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id WHERE subjects.subject_name = 'Computer Science'	e_learning
SELECT courses.course_name , courses.course_description FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id WHERE subjects.subject_name = 'Computer Science'	e_learning
SELECT courses.subject_id , subjects.subject_name , COUNT( * ) FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id GROUP BY courses.subject_id	e_learning
SELECT courses.subject_id , subjects.subject_name , COUNT( * ) FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id GROUP BY courses.subject_id	e_learning
SELECT courses.subject_id , subjects.subject_name , COUNT( * ) FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id GROUP BY courses.subject_id ORDER BY COUNT( * ) ASC	e_learning
SELECT courses.subject_id , subjects.subject_name , COUNT( * ) FROM courses JOIN subjects ON courses.subject_id = subjects.subject_id GROUP BY courses.subject_id ORDER BY COUNT( * ) ASC	e_learning
SELECT student_course_enrolment.date_of_enrolment FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id WHERE courses.course_name = 'Spanish'	e_learning
SELECT student_course_enrolment.date_of_enrolment FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id WHERE courses.course_name = 'Spanish'	e_learning
SELECT courses.course_name FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT courses.course_name FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT courses.course_name FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id HAVING COUNT( * ) = 1	e_learning
SELECT courses.course_name FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id HAVING COUNT( * ) = 1	e_learning
SELECT courses.course_description , courses.course_name FROM student_course_enrolment JOIN courses ON student_course_enrolment.course_id = courses.course_id HAVING COUNT( * ) > 2	e_learning
SELECT courses.course_description , courses.course_name FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id HAVING COUNT( * ) > 2	e_learning
SELECT courses.course_name , COUNT( * ) FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id	e_learning
SELECT courses.course_name , COUNT( * ) FROM courses JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.course_id GROUP BY courses.course_id	e_learning
SELECT student_course_enrolment.date_of_enrolment FROM student_course_enrolment JOIN student_tests_taken ON student_course_enrolment.registration_id = student_tests_taken.registration_id WHERE student_tests_taken.test_result = 'Pass'	e_learning
SELECT student_course_enrolment.date_of_enrolment FROM student_course_enrolment JOIN student_tests_taken ON student_course_enrolment.registration_id = student_tests_taken.registration_id WHERE student_tests_taken.test_result = 'Pass'	e_learning
SELECT student_tests_taken.date_test_taken FROM student_tests_taken WHERE student_tests_taken.test_result = 'Fail'	e_learning
SELECT student_tests_taken.date_test_taken FROM student_tests_taken WHERE student_tests_taken.test_result = 'Fail'	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id WHERE students.personal_name = 'Karson'	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id WHERE students.personal_name = 'Karson'	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id WHERE students.family_name = 'Zieme' AND students.personal_name = 'Bernie'	e_learning
SELECT student_course_enrolment.date_of_enrolment , student_course_enrolment.date_of_completion FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id WHERE students.family_name = 'Zieme' AND students.personal_name = 'Bernie'	e_learning
SELECT student_course_enrolment.student_id , students.login_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY student_course_enrolment.student_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT students.student_id , students.login_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY student_course_enrolment.student_id ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT students.student_id , students.personal_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY students.student_id HAVING COUNT( * ) >= 2	e_learning
SELECT students.student_id , students.personal_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY student_course_enrolment.student_id HAVING COUNT( * ) >= 2	e_learning
SELECT students.student_id , students.middle_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY students.student_id HAVING COUNT( * ) <= 2	e_learning
SELECT student_course_enrolment.student_id , students.middle_name FROM student_course_enrolment JOIN students ON student_course_enrolment.student_id = students.student_id GROUP BY student_course_enrolment.student_id HAVING COUNT( * ) <= 2	e_learning
SELECT students.personal_name FROM students WHERE students.student_id NOT IN (SELECT student_course_enrolment.student_id FROM student_course_enrolment)	e_learning
SELECT students.personal_name FROM students WHERE students.student_id NOT IN (SELECT student_course_enrolment.student_id FROM student_course_enrolment)	e_learning
SELECT COUNT( * ) FROM students WHERE students.student_id NOT IN (SELECT student_course_enrolment.student_id FROM student_course_enrolment)	e_learning
SELECT COUNT( * ) FROM students WHERE students.student_id NOT IN (SELECT student_course_enrolment.student_id FROM student_course_enrolment)	e_learning
SELECT course_authors_and_tutors.login_name FROM course_authors_and_tutors JOIN students ON course_authors_and_tutors.author_id = students.login_name GROUP BY students.login_name ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT course_authors_and_tutors.login_name FROM course_authors_and_tutors INTERSECT SELECT students.login_name FROM students	e_learning
SELECT course_authors_and_tutors.personal_name , students.personal_name FROM course_authors_and_tutors JOIN courses ON course_authors_and_tutors.author_id = courses.author_id JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.student_id GROUP BY course_authors_and_tutors.personal_name ORDER BY COUNT( * ) DESC LIMIT 1	e_learning
SELECT course_authors_and_tutors.personal_name , students.personal_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.student_id INTERSECT SELECT students.personal_name FROM courses JOIN course_authors_and_tutors ON courses.author_id = course_authors_and_tutors.author_id JOIN student_course_enrolment ON courses.course_id = student_course_enrolment.student_id	e_learning
SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT department.head FROM department GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT department.head FROM department GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT department.name , physician.position FROM department JOIN physician ON department.head = physician.employeeid GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT department.name , physician.position FROM department JOIN physician ON department.head = physician.employeeid GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn	hospital_1
SELECT patient.name , patient.phone FROM appointment JOIN patient ON appointment.patient = patient.ssn GROUP BY appointment.patient HAVING COUNT( * ) > 1	hospital_1
SELECT patient.name , patient.phone FROM appointment JOIN patient ON appointment.patient = patient.ssn GROUP BY appointment.patient HAVING COUNT( * ) > 1	hospital_1
SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
SELECT physician.name FROM appointment JOIN physician ON appointment.physician = physician.employeeid	hospital_1
SELECT physician.name FROM appointment JOIN physician ON appointment.physician = physician.employeeid	hospital_1
SELECT physician.name FROM physician WHERE physician.employeeid NOT IN (SELECT appointment.physician FROM appointment)	hospital_1
SELECT physician.name FROM physician WHERE physician.employeeid NOT IN (SELECT appointment.physician FROM appointment)	hospital_1
SELECT physician.name , affiliated_with.primaryaffiliation FROM affiliated_with JOIN physician ON affiliated_with.physician = physician.employeeid	hospital_1
SELECT physician.name , affiliated_with.primaryaffiliation FROM affiliated_with JOIN physician ON affiliated_with.physician = physician.employeeid	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn ORDER BY appointment.end DESC LIMIT 1	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn ORDER BY appointment.start DESC LIMIT 1	hospital_1
SELECT COUNT( * ) FROM stay WHERE stay.room = 112	hospital_1
SELECT COUNT( * ) FROM stay WHERE stay.room = 112	hospital_1
SELECT COUNT( * ) FROM prescribes JOIN physician ON prescribes.physician = physician.employeeid WHERE physician.name = 'Dorian'	hospital_1
SELECT COUNT( * ) FROM prescribes JOIN physician ON prescribes.physician = physician.employeeid WHERE physician.name = 'Dorian'	hospital_1
SELECT medication.name FROM medication JOIN stay ON medication.code = stay.stayid WHERE stay.room = 111	hospital_1
SELECT medication.name FROM medication JOIN stay ON medication.code = stay.patient WHERE stay.room = 111	hospital_1
SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.stayend DESC LIMIT 1	hospital_1
SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.stayend DESC LIMIT 1	hospital_1
SELECT nurse.name FROM appointment JOIN nurse ON appointment.prepnurse = nurse.employeeid GROUP BY nurse.name ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT nurse.name FROM appointment JOIN nurse ON appointment.prepnurse = nurse.employeeid GROUP BY nurse.name ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT physician.name , COUNT( * ) FROM physician JOIN patient ON physician.employeeid = patient.pcp GROUP BY physician.name	hospital_1
SELECT physician.name , COUNT( * ) FROM physician JOIN patient ON physician.employeeid = patient.pcp GROUP BY physician.name	hospital_1
SELECT physician.name FROM physician JOIN patient ON physician.employeeid = patient.pcp GROUP BY physician.name HAVING COUNT( * ) > 1	hospital_1
SELECT physician.name FROM physician JOIN patient ON physician.employeeid = patient.pcp GROUP BY physician.name HAVING COUNT( * ) > 1	hospital_1
SELECT COUNT( * ) , room.blockfloor FROM block JOIN room ON block.blockcode = room.blockcode GROUP BY room.blockfloor	hospital_1
SELECT COUNT( * ) , room.blockfloor FROM block JOIN room ON block.blockcode = room.blockcode GROUP BY room.blockfloor	hospital_1
SELECT room.blockcode , COUNT( * ) FROM block JOIN room ON block.blockcode = room.blockcode GROUP BY room.blockcode	hospital_1
SELECT room.blockcode , COUNT( * ) FROM block JOIN room ON block.blockcode = room.blockcode GROUP BY room.blockcode	hospital_1
SELECT COUNT( DISTINCT room.blockcode ) FROM room	hospital_1
SELECT DISTINCT room.blockcode FROM room	hospital_1
SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
SELECT physician.name FROM prescribes JOIN medication ON prescribes.medication = medication.code JOIN physician ON prescribes.physician = physician.employeeid WHERE medication.name = 'Thesisin'	hospital_1
SELECT physician.name FROM medication JOIN prescribes ON medication.code = prescribes.medication JOIN physician ON prescribes.physician = physician.employeeid WHERE medication.name = 'Thesisin'	hospital_1
SELECT physician.name , physician.position FROM physician JOIN prescribes ON physician.employeeid = prescribes.physician JOIN medication ON prescribes.medication = medication.code WHERE medication.brand = 'X'	hospital_1
SELECT physician.name , physician.position FROM prescribes JOIN medication ON prescribes.medication = medication.code JOIN physician ON prescribes.physician = physician.employeeid WHERE medication.brand = 'X'	hospital_1
SELECT medication.brand , COUNT( * ) FROM medication JOIN prescribes ON medication.code = prescribes.medication GROUP BY medication.brand	hospital_1
SELECT medication.brand , COUNT( * ) FROM medication JOIN prescribes ON medication.code = prescribes.medication GROUP BY medication.brand	hospital_1
SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
SELECT patient.name FROM patient JOIN appointment ON patient.ssn = appointment.patient GROUP BY appointment.patient ORDER BY appointment.end DESC LIMIT 1	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn ORDER BY appointment.end DESC LIMIT 1	hospital_1
SELECT patient.name FROM patient JOIN stay ON patient.ssn = stay.patient WHERE stay.room = 111	hospital_1
SELECT patient.name FROM patient JOIN stay ON patient.ssn = stay.patient JOIN appointment ON room.roomnumber = appointment.patient WHERE stay.room = 111	hospital_1
SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
SELECT nurse.name FROM nurse WHERE nurse.position = 'undergoing'	hospital_1
SELECT nurse.name FROM nurse UNION SELECT nurse.position FROM nurse	hospital_1
SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
SELECT physician.name FROM prescribes JOIN physician ON prescribes.physician = physician.employeeid ORDER BY prescribes.dose DESC LIMIT 1	hospital_1
SELECT physician.name FROM prescribes JOIN physician ON prescribes.physician = physician.employeeid ORDER BY prescribes.dose DESC LIMIT 1	hospital_1
SELECT affiliated_with.physician , affiliated_with.primaryaffiliation FROM affiliated_with	hospital_1
SELECT affiliated_with.physician , affiliated_with.department FROM affiliated_with	hospital_1
SELECT department.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid	hospital_1
SELECT department.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid	hospital_1
SELECT nurse.name FROM on_call JOIN nurse ON on_call.nurse = nurse.employeeid WHERE on_call.blockfloor = 1 AND on_call.blockcode = 1	hospital_1
SELECT on_call.nurse FROM on_call WHERE on_call.blockfloor = 1 INTERSECT SELECT on_call.nurse FROM on_call WHERE on_call.blockcode = 1	hospital_1
SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
SELECT procedures.cost FROM procedures ORDER BY procedures.cost DESC LIMIT 3	hospital_1
SELECT procedures.cost FROM procedures ORDER BY procedures.cost DESC LIMIT 3	hospital_1
SELECT DISTINCT physician.name FROM trained_in JOIN physician ON trained_in.physician = physician.employeeid JOIN procedures ON trained_in.treatment = procedures.code WHERE procedures.cost > 5000	hospital_1
SELECT physician.name FROM trained_in JOIN physician ON trained_in.physician = physician.employeeid JOIN procedures ON trained_in.treatment = procedures.code WHERE procedures.cost > 5000	hospital_1
SELECT physician.name FROM physician JOIN trained_in ON physician.employeeid = trained_in.physician JOIN procedures ON trained_in.treatment = procedures.code ORDER BY procedures.cost DESC LIMIT 1	hospital_1
SELECT physician.name FROM physician JOIN trained_in ON physician.employeeid = trained_in.physician JOIN procedures ON trained_in.treatment = procedures.code ORDER BY procedures.cost DESC LIMIT 1	hospital_1
SELECT AVG( procedures.cost ) FROM procedures JOIN trained_in ON procedures.code = trained_in.treatment JOIN physician ON physician.employeeid = trained_in.physician WHERE physician.name = 'John Wen'	hospital_1
SELECT AVG( procedures.cost ) FROM procedures JOIN trained_in ON procedures.code = trained_in.treatment JOIN physician ON physician.employeeid = trained_in.physician WHERE physician.name = 'Wen'	hospital_1
SELECT procedures.name FROM trained_in JOIN procedures ON trained_in.treatment = procedures.code JOIN physician ON trained_in.physician = physician.employeeid WHERE physician.name = 'Wen'	hospital_1
SELECT procedures.name FROM trained_in JOIN procedures ON trained_in.treatment = procedures.code JOIN physician ON trained_in.physician = physician.employeeid WHERE physician.name = 'Wen'	hospital_1
SELECT procedures.name FROM procedures JOIN trained_in ON procedures.code = trained_in.treatment JOIN physician ON trained_in.physician = physician.employeeid WHERE procedures.cost > 1000 OR physician.name = 'John Wen'	hospital_1
SELECT procedures.name FROM procedures JOIN undergoes ON procedures.code = undergoes.procedures JOIN physician ON undergoes.physician = physician.employeeid WHERE procedures.cost > 1000 OR physician.name = 'John Wen'	hospital_1
SELECT procedures.name FROM procedures JOIN trained_in ON procedures.code = trained_in.treatment JOIN physician ON trained_in.physician = physician.employeeid WHERE procedures.cost > 1000 AND physician.name != 'John Wen'	hospital_1
SELECT DISTINCT procedures.name FROM procedures JOIN undergoes ON procedures.code = undergoes.procedures JOIN physician ON undergoes.physician = physician.employeeid WHERE procedures.cost > 1000 AND physician.name != 'John Wen'	hospital_1
SELECT procedures.name FROM trained_in JOIN procedures ON trained_in.treatment = procedures.code JOIN physician ON trained_in.physician = physician.employeeid WHERE physician.name = 'John Wen' AND procedures.cost<5000	hospital_1
SELECT DISTINCT procedures.name FROM procedures JOIN trained_in ON procedures.code = trained_in.treatment JOIN physician ON trained_in.physician = physician.employeeid WHERE procedures.cost<5000 AND physician.name = 'John Wen'	hospital_1
SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid JOIN physician ON affiliated_with.physician = physician.employeeid WHERE department.name = 'Surgery' INTERSECT SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid JOIN physician ON affiliated_with.physician = physician.employeeid WHERE department.name = 'Psychiatry'	hospital_1
SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid JOIN physician ON affiliated_with.physician = physician.employeeid WHERE department.name = 'Surgery' INTERSECT SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid WHERE department.name = 'Psychiatry'	hospital_1
SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid JOIN physician ON department.head = physician.employeeid WHERE department.name = 'Surgery' OR department.name = 'Psychiatry'	hospital_1
SELECT physician.name FROM affiliated_with JOIN department ON affiliated_with.department = department.departmentid WHERE department.name = 'Surgery' OR department.name = 'Psychiatry'	hospital_1
SELECT patient.name FROM patient	hospital_1
SELECT patient.name FROM patient	hospital_1
SELECT COUNT( * ) FROM patient WHERE patient.ssn NOT IN (SELECT patient.pcp FROM medication WHERE medication.name = 'Procrastin-X')	hospital_1
SELECT COUNT( * ) FROM patient JOIN prescribes ON patient.ssn = prescribes.patient JOIN patient ON patient.pcp = patient.ssn WHERE medication.brand = 'Procrastin' AND medication.name != 'Procrastin-X'	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
SELECT nurse.name FROM nurse JOIN on_call ON nurse.employeeid = on_call.nurse	hospital_1
SELECT DISTINCT nurse.name FROM nurse	hospital_1
SELECT COUNT( * ) FROM list	student_1
SELECT COUNT( * ) FROM list	student_1
SELECT list.lastname FROM list WHERE list.classroom = 111	student_1
SELECT list.lastname FROM list WHERE list.classroom = 111	student_1
SELECT list.firstname FROM list WHERE list.classroom = 108	student_1
SELECT list.firstname FROM list WHERE list.classroom = 108	student_1
SELECT list.firstname FROM list WHERE list.classroom = 107	student_1
SELECT list.firstname FROM list WHERE list.classroom = 107	student_1
SELECT list.classroom , list.grade FROM list	student_1
SELECT list.grade , list.classroom FROM list	student_1
SELECT list.grade FROM list WHERE list.classroom = 103	student_1
SELECT list.grade FROM list WHERE list.classroom = 103	student_1
SELECT list.grade FROM list WHERE list.classroom = 105	student_1
SELECT list.grade FROM list WHERE list.classroom = 105	student_1
SELECT list.classroom FROM list WHERE list.grade = 4	student_1
SELECT list.classroom FROM list WHERE list.grade = 4	student_1
SELECT list.classroom FROM list WHERE list.grade = 5	student_1
SELECT list.classroom FROM list WHERE list.grade = 5	student_1
SELECT teachers.lastname FROM teachers, list, teachers WHERE list.grade = 5	student_1
SELECT teachers.lastname FROM list, teachers WHERE list.grade = 5	student_1
SELECT teachers.firstname FROM list JOIN list ON list.firstname = list.firstname JOIN first ON list.grade = first	student_1
SELECT teachers.firstname FROM list JOIN teachers ON list.classroom = teachers.classroom WHERE list.grade = 1	student_1
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers	student_1
SELECT list.firstname , list.lastname FROM list	student_1
SELECT list.firstname , list.lastname FROM list	student_1
SELECT list.lastname , list.firstname FROM teachers JOIN list ON teachers.firstname = list.classroom WHERE teachers.firstname = 'OTHA' AND teachers.lastname = 'MOYER'	student_1
SELECT list.lastname , list.firstname FROM list, teachers, teachers, list WHERE teachers.firstname = 'OTHA' AND teachers.lastname = 'MOYER'	student_1
SELECT list.lastname , list.firstname FROM list, teachers, list, teachers WHERE teachers.firstname = 'MARROTTE' AND teachers.lastname = 'MARROTTE KIRK'	student_1
SELECT list.lastname , list.firstname FROM list, teachers, list WHERE teachers.firstname = 'MARROTTE' AND teachers.lastname = 'MARROTTE KIRK'	student_1
SELECT teachers.lastname , teachers.firstname FROM list JOIN teachers ON list.firstname = teachers.classroom WHERE list.lastname = 'BROMLEY'	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE list.firstname = 'EVELINA' AND list.lastname = 'BROMLEY'	student_1
SELECT list.lastname FROM teachers WHERE teachers.firstname = 'GELL TAMI'	student_1
SELECT teachers.lastname FROM list JOIN teachers ON list.classroom = teachers.classroom WHERE list.firstname = 'GELL TAMI'	student_1
SELECT COUNT( * ) FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE teachers.firstname = 'LORIA'	student_1
SELECT COUNT( * ) FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE teachers.firstname = 'LORIA'	student_1
SELECT COUNT( * ) FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE teachers.firstname = 'KAWA GORDON'	student_1
SELECT COUNT( * ) FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE teachers.firstname = 'KAWA GORDON' AND teachers.lastname = 'KAWA GORDON'	student_1
SELECT COUNT( * ) FROM teachers, teachers WHERE teachers.firstname = 'TARRING' AND teachers.lastname = 'TARRING LEIA'	student_1
SELECT COUNT( * ) FROM teachers JOIN list ON teachers.classroom = list.classroom WHERE teachers.lastname = 'TARRING LEIA'	student_1
SELECT COUNT( * ) FROM list WHERE list.firstname = 'CHRISSY'	student_1
SELECT COUNT( * ) FROM teachers JOIN teachers ON teachers.firstname = teachers.firstname	student_1
SELECT COUNT( * ) FROM list WHERE list.firstname = 'MADLOCK RAY'	student_1
SELECT COUNT( * ) FROM list WHERE list.firstname = 'MADLOCK RAY'	student_1
SELECT list.firstname , list.lastname FROM list , teachers , teachers , teachers , teachers , teachers	student_1
SELECT list.firstname , list.lastname FROM list WHERE list.classroom NOT IN (SELECT teachers.firstname FROM teachers)	student_1
SELECT list.lastname FROM list WHERE list.grade = 'COVIN JEROME'	student_1
SELECT list.lastname FROM list WHERE list.grade = 'third' UNION SELECT teachers.lastname FROM teachers WHERE teachers.lastname = 'COVIN JEROME'	student_1
SELECT COUNT( * ) , list.grade FROM list GROUP BY list.grade	student_1
SELECT COUNT( * ) , COUNT( * ) , list.grade FROM list GROUP BY list.grade	student_1
SELECT list.classroom , COUNT( * ) , SUM( list.grade ) FROM list GROUP BY list.classroom	student_1
SELECT list.classroom , COUNT( DISTINCT list.grade ) FROM list GROUP BY list.classroom	student_1
SELECT list.classroom FROM list ORDER BY list.classroom DESC LIMIT 1	student_1
SELECT list.classroom FROM list GROUP BY list.classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
SELECT teachers.classroom , COUNT( * ) FROM list GROUP BY list.classroom	student_1
SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = 0 GROUP BY list.classroom	student_1
SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = 0 GROUP BY list.classroom	student_1
SELECT COUNT( * ) FROM list JOIN fourth ON list.grade = fourth GROUP BY list.classroom	student_1
SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = 4 GROUP BY list.classroom	student_1
SELECT teachers.firstname FROM teachers JOIN list ON teachers.classroom = list.classroom GROUP BY teachers.classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers JOIN list ON teachers.classroom = list.firstname GROUP BY list.firstname ORDER BY COUNT( * ) DESC LIMIT 1	student_1
SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
SELECT COUNT( * ) FROM film	film_rank
SELECT COUNT( * ) FROM film	film_rank
SELECT DISTINCT film.director FROM film	film_rank
SELECT DISTINCT film.director FROM film	film_rank
SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
SELECT film_market_estimation.low_estimate , film_market_estimation.high_estimate FROM film_market_estimation	film_rank
SELECT film_market_estimation.low_estimate , film_market_estimation.high_estimate FROM film_market_estimation	film_rank
SELECT film_market_estimation.type FROM film_market_estimation WHERE film_market_estimation.year = 1995	film_rank
SELECT film_market_estimation.type FROM film_market_estimation WHERE film_market_estimation.year = 1995	film_rank
SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
SELECT market.country FROM market ORDER BY market.country ASC	film_rank
SELECT market.country FROM market ORDER BY market.country ASC	film_rank
SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
SELECT film.title , film_market_estimation.type FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id	film_rank
SELECT film.title , film_market_estimation.type FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id	film_rank
SELECT DISTINCT film.director FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id WHERE film_market_estimation.year = 1995	film_rank
SELECT DISTINCT film.director FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id WHERE film_market_estimation.year = 1995	film_rank
SELECT AVG( market.number_cities ) FROM market JOIN film_market_estimation ON market.market_id = film_market_estimation.market_id WHERE film_market_estimation.low_estimate > 10000	film_rank
SELECT AVG( market.number_cities ) FROM market JOIN film_market_estimation ON market.market_id = film_market_estimation.market_id WHERE film_market_estimation.low_estimate > 10000	film_rank
SELECT market.country , film_market_estimation.year FROM film_market_estimation JOIN market ON film_market_estimation.market_id = market.market_id	film_rank
SELECT market.country , film_market_estimation.year FROM film_market_estimation JOIN market ON film_market_estimation.market_id = market.market_id	film_rank
SELECT film_market_estimation.year FROM film_market_estimation JOIN market ON film_market_estimation.market_id = market.market_id WHERE market.country = 'Japan' ORDER BY film_market_estimation.year DESC	film_rank
SELECT film_market_estimation.year FROM film_market_estimation JOIN market ON film_market_estimation.market_id = market.market_id WHERE market.country = 'Japan' ORDER BY film_market_estimation.year DESC	film_rank
SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
SELECT film.title FROM film WHERE film.film_id NOT IN (SELECT film_market_estimation.film_id FROM film_market_estimation)	film_rank
SELECT film.title FROM film WHERE film.film_id NOT IN (SELECT film_market_estimation.film_id FROM film_market_estimation)	film_rank
SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) > 4500000	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) > 4500000	film_rank
SELECT film.title FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id ORDER BY film_market_estimation.high_estimate DESC LIMIT 1	film_rank
SELECT film.title FROM film_market_estimation JOIN film ON film_market_estimation.film_id = film.film_id ORDER BY film_market_estimation.high_estimate DESC LIMIT 1	film_rank
SELECT film.title , film.director FROM film WHERE market.country != 'China'	film_rank
SELECT film.title , film.director FROM film WHERE film.film_id NOT IN (SELECT film.film_id FROM market WHERE market.country = 'China')	film_rank
SELECT COUNT( * ) FROM personfriend WHERE personfriend.friend = 'Dan'	network_2
SELECT COUNT( * ) FROM personfriend WHERE personfriend.friend = 'Dan'	network_2
SELECT COUNT( * ) FROM person WHERE person.gender = 'f'	network_2
SELECT COUNT( * ) FROM person WHERE person.gender = 'f'	network_2
SELECT AVG( person.age ) FROM person	network_2
SELECT AVG( person.age ) FROM person	network_2
SELECT COUNT( DISTINCT person.city ) FROM person	network_2
SELECT COUNT( DISTINCT person.city ) FROM person	network_2
SELECT COUNT( DISTINCT person.job ) FROM person	network_2
SELECT COUNT( DISTINCT person.job ) FROM person	network_2
SELECT person.age FROM person ORDER BY person.age DESC LIMIT 1	network_2
SELECT person.name FROM person ORDER BY person.age DESC LIMIT 1	network_2
SELECT person.age FROM person WHERE person.job = 'student' ORDER BY person.age DESC LIMIT 1	network_2
SELECT person.name FROM person ORDER BY person.age DESC LIMIT 1	network_2
SELECT MIN( person.age ) FROM person ORDER BY person.age ASC LIMIT 1	network_2
SELECT person.name FROM person WHERE person.gender = 'm' ORDER BY person.age ASC LIMIT 1	network_2
SELECT person.age FROM person WHERE person.job = 'doctor' AND person.name = 'Zach'	network_2
SELECT person.age FROM person WHERE person.job = 'doctor' AND person.name = 'Zach'	network_2
SELECT person.name FROM person WHERE person.age<30	network_2
SELECT person.name FROM person WHERE person.age<30	network_2
SELECT COUNT( * ) FROM person WHERE person.age > 30 AND person.job = 'engineer'	network_2
SELECT COUNT( * ) FROM person JOIN HOw many engineers are older than 30 ON person.job = HOw many engineers are older than 30 WHERE person.age > 30	network_2
SELECT AVG( person.age ) , person.gender FROM person GROUP BY person.gender	network_2
SELECT person.gender , AVG( person.age ) FROM person GROUP BY person.gender	network_2
SELECT AVG( person.age ) , person.job FROM person GROUP BY person.job	network_2
SELECT person.job , AVG( person.age ) FROM person GROUP BY person.job	network_2
SELECT AVG( person.age ) , person.job FROM person WHERE person.gender = 'm' GROUP BY person.job	network_2
SELECT AVG( person.age ) , person.job FROM person WHERE person.gender = 'm' GROUP BY person.job	network_2
SELECT MIN( person.age ) , person.job FROM person GROUP BY person.job	network_2
SELECT MIN( person.age ) , person.job FROM person GROUP BY person.job	network_2
SELECT COUNT( * ) , person.gender FROM person WHERE person.age<40 GROUP BY person.gender	network_2
SELECT person.gender , COUNT( * ) FROM person WHERE person.age<40 GROUP BY person.gender	network_2
SELECT person.name FROM person WHERE person.job = 'engineer' ORDER BY person.age ASC	network_2
SELECT person.name FROM person WHERE person.job = 'engineer' ORDER BY person.age ASC	network_2
SELECT COUNT( * ) FROM person WHERE person.age = 'engineers' ORDER BY person.age DESC LIMIT *	network_2
SELECT COUNT( * ) FROM personfriend, personfriend WHERE person.job = 'engineer'	network_2
SELECT person.name , person.job FROM person ORDER BY person.name ASC	network_2
SELECT person.name , person.job FROM person ORDER BY person.name ASC	network_2
SELECT person.name FROM person ORDER BY person.age DESC	network_2
SELECT person.name FROM person ORDER BY person.age DESC	network_2
SELECT person.name , person.age FROM person WHERE person.gender = 'm' ORDER BY person.age ASC	network_2
SELECT person.name , person.age FROM person WHERE person.gender = 'm' ORDER BY person.age ASC	network_2
SELECT person.name , person.age FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Dan' INTERSECT SELECT person.name , person.age FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Alice'	network_2
SELECT person.name , person.age FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Dan' INTERSECT SELECT person.name , person.age FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Alice'	network_2
SELECT person.name , person.age FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Dan' OR personfriend.friend = 'Alice'	network_2
SELECT personfriend.name , person.age FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.name = 'Dan' OR person.name = 'alice'	network_2
SELECT person.name FROM person WHERE person.age > 40 INTERSECT SELECT person.name FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.age<30	network_2
SELECT person.name FROM person WHERE person.age > 40 INTERSECT SELECT person.name FROM person JOIN personfriend ON person.name = personfriend.name WHERE person.age<30	network_2
SELECT person.name FROM person WHERE person.age > 40 UNION SELECT personfriend.name FROM person JOIN personfriend ON person.age = personfriend.friend WHERE person.age <= 30	network_2
person , personfriend	network_2
SELECT person.name FROM person EXCEPT SELECT personfriend.name FROM personfriend	network_2
SELECT person.name FROM person EXCEPT SELECT personfriend.friend FROM personfriend	network_2
SELECT personfriend.name FROM personfriend GROUP BY personfriend.name HAVING COUNT( * ) = 1	network_2
SELECT personfriend.name FROM personfriend GROUP BY personfriend.name HAVING COUNT( * ) = 1	network_2
SELECT personfriend.friend FROM personfriend WHERE personfriend.name = 'Bob'	network_2
SELECT personfriend.friend FROM personfriend WHERE personfriend.name = 'Bob'	network_2
SELECT personfriend.name FROM personfriend WHERE personfriend.friend = 'Bob'	network_2
SELECT personfriend.name FROM personfriend WHERE personfriend.friend = 'Bob'	network_2
person , personfriend	network_2
SELECT person.gender FROM person INTERSECT SELECT person.gender FROM person JOIN personfriend ON person.name = personfriend.name WHERE personfriend.friend = 'Zach'	network_2
SELECT personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.friend WHERE personfriend.name = 'Alice' AND person.gender = 'f'	network_2
SELECT personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.name WHERE person.gender = 'Alice'	network_2
SELECT personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.name WHERE person.name = 'Alice' AND person.job = 'doctor'	network_2
SELECT personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.name WHERE person.name = 'doctors'	network_2
SELECT personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.city = 'new york'	network_2
SELECT personfriend.name FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.city = 'New York'	network_2
person , person	network_2
SELECT DISTINCT personfriend.name FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.age<(SELECT AVG( person.age ) FROM person)	network_2
SELECT AVG( person.age ) FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.age > (SELECT AVG( person.age ) FROM person JOIN personfriend ON person.name = personfriend.friend)	network_2
SELECT person.name , personfriend.name , personfriend.friend FROM person JOIN personfriend ON person.name = personfriend.friend WHERE person.age > (SELECT AVG( person.age ) FROM person JOIN personfriend ON person.name = personfriend.friend)	network_2
SELECT personfriend.friend FROM personfriend WHERE person.name = 'Zach' ORDER BY personfriend.year DESC LIMIT 1	network_2
SELECT personfriend.friend FROM personfriend WHERE personfriend.name = 'Zach' ORDER BY personfriend.friend DESC LIMIT 1	network_2
SELECT person.age FROM person JOIN personfriend ON person.name = personfriend.friend WHERE personfriend.year = 'Zach' ORDER BY personfriend.year DESC LIMIT 1	network_2
SELECT person.age FROM person JOIN personfriend ON person.name = personfriend.friend WHERE personfriend.friend = 'Zach'	network_2
SELECT personfriend.name FROM personfriend WHERE personfriend.friend = 'Alice' ORDER BY personfriend.year ASC LIMIT 1	network_2
SELECT personfriend.name FROM personfriend WHERE personfriend.friend = 'Alice' ORDER BY personfriend.name DESC LIMIT 1	network_2
SELECT person.name , person.age , person.job FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Alice' ORDER BY personfriend.year DESC LIMIT 1	network_2
SELECT person.name , person.age , person.job FROM personfriend JOIN person ON personfriend.name = person.name WHERE personfriend.friend = 'Alice' ORDER BY personfriend.friend DESC LIMIT 1	network_2
SELECT person.name FROM person WHERE person.name NOT IN (SELECT personfriend.friend FROM personfriend)	network_2
SELECT person.name FROM person	network_2
SELECT person.name FROM person, personfriend WHERE personfriend.friend = (SELECT personfriend.friend FROM personfriend GROUP BY personfriend.friend ORDER BY AVG( person.age ) DESC LIMIT 1) GROUP BY personfriend.name	network_2
SELECT person.name , personfriend.name FROM person JOIN personfriend ON person.name = personfriend.friend GROUP BY person.name ORDER BY AVG( person.age ) DESC LIMIT 1	network_2
SELECT COUNT( * ) FROM person WHERE person.name NOT IN (SELECT personfriend.friend FROM personfriend WHERE person.city = 'Austin')	network_2
SELECT COUNT( * ) FROM person WHERE person.name NOT IN (SELECT personfriend.friend FROM personfriend WHERE person.city = 'Austin')	network_2
SELECT personfriend.friend FROM personfriend WHERE personfriend.name = 'Alice'	network_2
SELECT personfriend.name FROM personfriend WHERE personfriend.friend = 'Alice'	network_2
SELECT COUNT( * ) FROM member	decoration_competition
SELECT member.name FROM member ORDER BY member.name ASC	decoration_competition
SELECT member.name , member.country FROM member	decoration_competition
SELECT member.name FROM member WHERE member.country = 'United States' OR member.country = 'Canada'	decoration_competition
SELECT member.country , COUNT( * ) FROM member GROUP BY member.country	decoration_competition
SELECT member.country FROM member GROUP BY member.country ORDER BY COUNT( * ) DESC LIMIT 1	decoration_competition
SELECT member.country FROM member GROUP BY member.country HAVING COUNT( * ) > 2	decoration_competition
SELECT college.leader_name , college.college_location FROM college	decoration_competition
SELECT member.name , college.name FROM college JOIN member ON college.college_id = member.college_id	decoration_competition
SELECT member.name , college.college_location FROM college JOIN member ON college.college_id = member.college_id ORDER BY member.name ASC	decoration_competition
SELECT DISTINCT college.leader_name FROM college JOIN member ON college.college_id = member.college_id WHERE member.country = 'Canada'	decoration_competition
SELECT member.name , round.decoration_theme FROM member JOIN round ON member.member_id = round.member_id	decoration_competition
SELECT member.name FROM member JOIN round ON member.member_id = round.member_id WHERE round.rank_in_round > 3	decoration_competition
SELECT member.name FROM round JOIN member ON round.member_id = member.member_id ORDER BY round.rank_in_round ASC	decoration_competition
SELECT member.name FROM member WHERE member.member_id NOT IN (SELECT round.member_id FROM round)	decoration_competition
SELECT COUNT( * ) FROM companies	company_office
SELECT COUNT( * ) FROM companies	company_office
SELECT companies.name FROM companies ORDER BY companies.market_value_billion DESC	company_office
SELECT companies.name FROM companies ORDER BY companies.market_value_billion DESC	company_office
SELECT companies.name FROM companies WHERE companies.headquarters != 'USA'	company_office
SELECT companies.name FROM companies WHERE companies.headquarters != 'USA'	company_office
SELECT companies.name , companies.assets_billion FROM companies ORDER BY companies.name ASC	company_office
SELECT companies.name , companies.assets_billion FROM companies ORDER BY companies.name ASC	company_office
SELECT AVG( companies.profits_billion ) FROM companies	company_office
SELECT AVG( companies.profits_billion ) FROM companies	company_office
SELECT MAX( companies.sales_billion ) , MIN( companies.sales_billion ) FROM companies WHERE companies.industry != 'Banking'	company_office
SELECT MAX( companies.sales_billion ) , MIN( companies.sales_billion ) FROM companies WHERE companies.industry != 'Banking'	company_office
SELECT COUNT( DISTINCT companies.industry ) FROM companies	company_office
SELECT COUNT( DISTINCT companies.industry ) FROM companies	company_office
SELECT buildings.name FROM buildings ORDER BY buildings.height DESC	company_office
SELECT buildings.name FROM buildings ORDER BY buildings.height DESC	company_office
SELECT buildings.stories FROM buildings ORDER BY buildings.height DESC LIMIT 1	company_office
SELECT buildings.stories FROM buildings ORDER BY buildings.height DESC LIMIT 1	company_office
SELECT companies.name , buildings.name FROM office_locations JOIN buildings ON office_locations.building_id = buildings.id JOIN companies ON office_locations.company_id = companies.id	company_office
SELECT companies.name , buildings.name FROM office_locations JOIN companies ON office_locations.company_id = companies.id JOIN buildings ON office_locations.building_id = buildings.id	company_office
SELECT buildings.name FROM office_locations JOIN buildings ON office_locations.building_id = buildings.id GROUP BY office_locations.building_id HAVING COUNT( * ) > 1	company_office
SELECT buildings.name FROM office_locations JOIN buildings ON office_locations.building_id = buildings.id GROUP BY office_locations.building_id HAVING COUNT( * ) > 1	company_office
SELECT buildings.name FROM buildings JOIN office_locations ON buildings.id = office_locations.building_id GROUP BY office_locations.building_id ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT buildings.name FROM buildings JOIN office_locations ON buildings.id = office_locations.building_id GROUP BY office_locations.building_id ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT buildings.name FROM buildings WHERE buildings.status = 'on-hold' ORDER BY buildings.stories ASC	company_office
SELECT buildings.name FROM buildings WHERE buildings.status = 'on-hold' ORDER BY buildings.stories ASC	company_office
SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry	company_office
SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry	company_office
SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC	company_office
SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC	company_office
SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
SELECT buildings.name FROM buildings WHERE buildings.id NOT IN (SELECT office_locations.building_id FROM office_locations)	company_office
SELECT buildings.name FROM buildings WHERE buildings.id NOT IN (SELECT office_locations.building_id FROM office_locations)	company_office
SELECT companies.industry FROM companies WHERE companies.headquarters = 'USA' INTERSECT SELECT companies.industry FROM companies WHERE companies.headquarters = 'China'	company_office
SELECT companies.industry FROM companies WHERE companies.headquarters = 'USA' INTERSECT SELECT companies.industry FROM companies WHERE companies.headquarters = 'China'	company_office
SELECT COUNT( * ) FROM companies WHERE companies.industry = 'Banking' OR companies.industry = 'Conglomerate'	company_office
SELECT COUNT( * ) FROM companies WHERE companies.industry = 'Banking' OR companies.industry = 'Conglomerate'	company_office
SELECT companies.headquarters FROM companies GROUP BY companies.headquarters HAVING COUNT( * ) > 2	company_office
SELECT companies.headquarters FROM companies GROUP BY companies.headquarters HAVING COUNT( * ) > 2	company_office
SELECT COUNT( * ) FROM artwork	entertainment_awards
SELECT artwork.name FROM artwork ORDER BY artwork.name ASC	entertainment_awards
SELECT artwork.name FROM artwork WHERE artwork.type != 'Program Talent Show'	entertainment_awards
SELECT festival_detail.festival_name , festival_detail.location FROM festival_detail	entertainment_awards
SELECT festival_detail.chair_name FROM festival_detail ORDER BY festival_detail.year ASC	entertainment_awards
SELECT festival_detail.location FROM festival_detail ORDER BY festival_detail.num_of_audience DESC LIMIT 1	entertainment_awards
SELECT festival_detail.festival_name FROM festival_detail WHERE festival_detail.year = 2007	entertainment_awards
SELECT AVG( festival_detail.num_of_audience ) FROM festival_detail	entertainment_awards
SELECT festival_detail.festival_name FROM festival_detail ORDER BY festival_detail.year DESC LIMIT 3	entertainment_awards
SELECT artwork.name , festival_detail.festival_name FROM nomination JOIN artwork ON nomination.artwork_id = artwork.artwork_id JOIN festival_detail ON nomination.festival_id = festival_detail.festival_id	entertainment_awards
SELECT DISTINCT artwork.type FROM nomination JOIN artwork ON nomination.artwork_id = artwork.artwork_id WHERE festival_detail.year = 2007	entertainment_awards
SELECT artwork.name FROM nomination JOIN artwork ON nomination.artwork_id = artwork.artwork_id ORDER BY festival_detail.year ASC	entertainment_awards
SELECT festival_detail.festival_name FROM nomination JOIN artwork ON nomination.artwork_id = artwork.artwork_id JOIN festival_detail ON nomination.artwork_id = festival_detail.festival_id WHERE artwork.type = 'Program Talent Show'	entertainment_awards
SELECT nomination.festival_id , festival_detail.festival_name FROM nomination JOIN festival_detail ON nomination.festival_id = festival_detail.festival_id GROUP BY nomination.festival_id HAVING COUNT( * ) >= 2	entertainment_awards
SELECT nomination.festival_id , festival_detail.festival_name , COUNT( * ) FROM nomination JOIN festival_detail ON nomination.festival_id = festival_detail.festival_id GROUP BY nomination.festival_id	entertainment_awards
SELECT artwork.type , COUNT( * ) FROM artwork GROUP BY artwork.type	entertainment_awards
SELECT artwork.type FROM artwork GROUP BY artwork.type ORDER BY COUNT( * ) DESC LIMIT 1	entertainment_awards
SELECT festival_detail.year FROM festival_detail GROUP BY festival_detail.year HAVING COUNT( * ) > 1	entertainment_awards
SELECT artwork.name FROM artwork WHERE artwork.artwork_id NOT IN (SELECT nomination.artwork_id FROM nomination)	entertainment_awards
SELECT festival_detail.num_of_audience FROM festival_detail WHERE festival_detail.year = 2008 OR festival_detail.year = 2010	entertainment_awards
SELECT SUM( festival_detail.num_of_audience ) FROM festival_detail	entertainment_awards
SELECT festival_detail.year FROM festival_detail WHERE festival_detail.location != 'United States' INTERSECT SELECT festival_detail.year FROM festival_detail WHERE festival_detail.location != 'United States'	entertainment_awards
SELECT COUNT( * ) FROM course	college_3
SELECT COUNT( * ) FROM course	college_3
SELECT COUNT( * ) FROM course WHERE course.credits > 2	college_3
SELECT COUNT( * ) FROM course WHERE course.credits > 2	college_3
SELECT course.cname FROM course WHERE course.credits = 1	college_3
SELECT course.cname FROM course WHERE course.credits = 1	college_3
SELECT course.cname FROM course WHERE course.days = 'MTW'	college_3
SELECT course.cname FROM course WHERE course.days = 'MTW'	college_3
SELECT COUNT( * ) FROM department WHERE department.division = 'AS'	college_3
SELECT COUNT( * ) FROM department WHERE department.division = 'AS'	college_3
SELECT department.dphone FROM department WHERE department.room = 268	college_3
SELECT department.dphone FROM department WHERE department.room = 268	college_3
SELECT COUNT( * ) FROM enrolled_in WHERE enrolled_in.grade = 'B'	college_3
SELECT COUNT( * ) FROM enrolled_in WHERE enrolled_in.grade = 'B'	college_3
SELECT gradeconversion.lettergrade , MAX( gradeconversion.gradepoint ) , MIN( gradeconversion.gradepoint ) FROM gradeconversion GROUP BY gradeconversion.lettergrade	college_3
SELECT MAX( gradeconversion.gradepoint ) , MIN( gradeconversion.gradepoint ) FROM gradeconversion	college_3
SELECT student.fname , student.lname FROM student WHERE student.fname LIKE '%a%'	college_3
SELECT DISTINCT student.lname FROM student WHERE student.fname LIKE '%a%'	college_3
SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.sex = 'M' AND faculty.building = 'NEB'	college_3
SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.sex = 'm' AND faculty.building = 'NEB'	college_3
SELECT faculty.room FROM faculty WHERE faculty.rank = 'professor' AND department.building = 'NEB'	college_3
SELECT faculty.room FROM faculty JOIN member_of ON faculty.facid = member_of.facid JOIN department ON member_of.dno = department.dno WHERE faculty.rank = 'professors' AND department.building = 'NEB'	college_3
SELECT department.dname FROM department WHERE department.building = 'Mergenthaler'	college_3
SELECT department.dname FROM department WHERE department.building = 'Mergenthaler'	college_3
SELECT * FROM course ORDER BY course.credits ASC	college_3
SELECT * FROM course ORDER BY course.credits ASC	college_3
SELECT course.cname FROM course ORDER BY course.credits ASC	college_3
SELECT course.cname FROM course ORDER BY course.credits ASC	college_3
SELECT student.fname FROM student ORDER BY student.age DESC	college_3
SELECT student.fname FROM student ORDER BY student.age DESC	college_3
SELECT student.lname FROM student WHERE student.sex = 'f' ORDER BY student.age DESC	college_3
SELECT student.lname FROM student WHERE student.sex = 'f' ORDER BY student.age DESC	college_3
SELECT faculty.lname FROM faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC	college_3
SELECT faculty.lname FROM faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC	college_3
SELECT faculty.fname FROM faculty WHERE faculty.rank = 'Professor' ORDER BY faculty.fname ASC	college_3
SELECT faculty.fname FROM faculty WHERE faculty.rank = 'professors,' ORDER BY faculty.fname ASC	college_3
SELECT department.dname FROM department JOIN minor_in ON department.dno = minor_in.dno GROUP BY department.dname ORDER BY COUNT( * ) DESC LIMIT 1	college_3
SELECT department.dname FROM department JOIN minor_in ON department.dno = minor_in.dno GROUP BY department.dname ORDER BY COUNT( * ) DESC LIMIT 1	college_3
SELECT department.dname FROM department WHERE department.dno NOT IN (SELECT minor_in.dno FROM minor_in)	college_3
SELECT department.dname FROM department EXCEPT SELECT department.dname FROM department JOIN minor_in ON department.dno = minor_in.dno	college_3
SELECT department.dname FROM department JOIN member_of ON department.dno = member_of.dno GROUP BY department.dname ORDER BY COUNT( * ) ASC LIMIT 1	college_3
SELECT department.dname FROM department JOIN member_of ON department.dno = member_of.dno GROUP BY department.dname ORDER BY COUNT( * ) ASC LIMIT 1	college_3
SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
SELECT faculty.fname , faculty.lname FROM faculty JOIN course ON faculty.facid = course.instructor GROUP BY course.instructor ORDER BY COUNT( * ) DESC LIMIT 3	college_3
SELECT faculty.fname , faculty.lname FROM faculty JOIN course ON faculty.facid = course.instructor GROUP BY course.instructor ORDER BY COUNT( * ) DESC LIMIT 3	college_3
SELECT faculty.building FROM faculty JOIN course ON faculty.facid = course.instructor GROUP BY faculty.building ORDER BY COUNT( * ) DESC LIMIT 1	college_3
SELECT faculty.building FROM faculty JOIN course ON faculty.facid = course.instructor GROUP BY faculty.building ORDER BY COUNT( * ) DESC LIMIT 1	college_3
SELECT course.cname FROM enrolled_in JOIN course ON enrolled_in.cid = course.cid GROUP BY course.cid HAVING COUNT( * ) >= 5	college_3
SELECT course.cname FROM enrolled_in JOIN course ON enrolled_in.cid = course.cid GROUP BY course.cid HAVING COUNT( * ) >= 5	college_3
SELECT faculty.fname , faculty.lname FROM course JOIN faculty ON course.instructor = faculty.facid	college_3
SELECT faculty.fname , faculty.lname FROM course JOIN faculty ON course.instructor = faculty.facid WHERE course.cname = 'COMPUTER LITERACY'	college_3
SELECT department.dname , department.room FROM course JOIN department ON course.dno = department.dno WHERE course.cname = 'COMPUTER SCIENCE'	college_3
SELECT department.dname , department.room FROM course JOIN department ON course.dno = department.dno WHERE course.cname = 'INTRODUCTION TO COMPUTER SCIENCE'	college_3
SELECT student.fname , student.lname , gradeconversion.gradepoint FROM enrolled_in JOIN student ON enrolled_in.stuid = student.stuid	college_3
SELECT faculty.fname , faculty.lname , gradeconversion.gradepoint FROM enrolled_in JOIN gradeconversion ON enrolled_in.grade = gradeconversion.lettergrade	college_3
SELECT DISTINCT student.fname FROM enrolled_in JOIN student ON enrolled_in.stuid = student.stuid WHERE gradeconversion.gradepoint >= 3.8	college_3
SELECT DISTINCT student.fname FROM enrolled_in JOIN student ON enrolled_in.stuid = student.stuid WHERE gradeconversion.gradepoint >= 3.8	college_3
SELECT faculty.fname , faculty.lname FROM member_of JOIN faculty ON member_of.facid = faculty.facid WHERE member_of.dno = 520	college_3
SELECT faculty.fname , faculty.lname FROM faculty JOIN member_of ON faculty.facid = member_of.facid WHERE member_of.dno = 520	college_3
SELECT student.fname , student.lname FROM student JOIN minor_in ON student.stuid = minor_in.stuid WHERE minor_in.dno = 140	college_3
SELECT student.fname , student.lname FROM minor_in JOIN student ON minor_in.stuid = student.stuid WHERE minor_in.dno = 140	college_3
SELECT faculty.lname FROM faculty JOIN member_of ON faculty.facid = member_of.facid JOIN department ON member_of.dno = department.dno WHERE department.dname = 'computer science'	college_3
SELECT faculty.lname FROM faculty JOIN member_of ON faculty.facid = member_of.facid JOIN department ON member_of.dno = department.dno WHERE department.dname = 'computer science'	college_3
SELECT AVG( gradeconversion.gradepoint ) FROM student WHERE student.lname = 'Smith'	college_3
SELECT AVG( gradeconversion.gradepoint ) FROM gradeconversion JOIN enrolled_in ON gradeconversion.lettergrade = enrolled_in.stuid JOIN student ON student.stuid = enrolled_in.stuid WHERE student.lname = 'Smith'	college_3
SELECT MAX( gradeconversion.gradepoint ) , MIN( gradeconversion.gradepoint ) FROM gradeconversion WHERE student.city_code = 'NYC'	college_3
SELECT MAX( gradeconversion.gradepoint ) , MIN( gradeconversion.gradepoint ) FROM gradeconversion WHERE student.city_code = 'NYC'	college_3
SELECT course.cname FROM course WHERE course.credits = 3 OR course.hours = 4	college_3
SELECT course.cname FROM course WHERE course.credits = 3 OR course.hours = 4	college_3
SELECT department.dname FROM department WHERE department.division = 'AS' OR department.division = 'NEB'	college_3
SELECT department.dname FROM department WHERE department.division = 'AS' OR department.building = 'NEB'	college_3
SELECT student.fname FROM student WHERE student.stuid NOT IN (SELECT enrolled_in.stuid FROM enrolled_in)	college_3
SELECT student.fname FROM student WHERE student.stuid NOT IN (SELECT enrolled_in.stuid FROM enrolled_in)	college_3
SELECT COUNT( * ) FROM aircraft	aircraft
SELECT COUNT( * ) FROM aircraft	aircraft
SELECT aircraft.description FROM aircraft	aircraft
SELECT aircraft.description FROM aircraft	aircraft
SELECT AVG( airport.international_passengers ) FROM airport	aircraft
SELECT AVG( airport.international_passengers ) FROM airport	aircraft
SELECT SUM( airport.international_passengers ) FROM airport WHERE airport.airport_name = 'Heathrow'	aircraft
SELECT SUM( airport.international_passengers ) , SUM( airport.domestic_passengers ) FROM airport WHERE airport.airport_name = 'London Heathrow'	aircraft
SELECT SUM( airport.domestic_passengers ) FROM airport WHERE airport.airport_name LIKE '%London%'	aircraft
SELECT SUM( airport.domestic_passengers ) FROM airport WHERE airport.airport_name = 'London'	aircraft
SELECT MAX( airport.transit_passengers ) , MIN( airport.transit_passengers ) FROM airport	aircraft
SELECT MAX( airport.transit_passengers ) , MIN( airport.transit_passengers ) FROM airport	aircraft
SELECT pilot.name FROM pilot WHERE pilot.age >= 25	aircraft
SELECT pilot.name FROM pilot WHERE pilot.age >= 25	aircraft
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC	aircraft
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC	aircraft
SELECT pilot.name FROM pilot WHERE pilot.age <= 30 ORDER BY pilot.name DESC	aircraft
SELECT pilot.name FROM pilot WHERE pilot.age <= 30 ORDER BY pilot.name DESC	aircraft
SELECT aircraft.aircraft FROM airport JOIN airport_aircraft ON airport.airport_id = airport_aircraft.airport_id JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id WHERE airport.airport_name = 'London Gatwick'	aircraft
SELECT aircraft.aircraft FROM airport_aircraft JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id JOIN airport ON airport_aircraft.airport_id = airport.airport_id WHERE airport.airport_name = 'London Gatwick'	aircraft
SELECT aircraft.aircraft , aircraft.description FROM airport_aircraft JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id JOIN airport ON airport_aircraft.airport_id = airport.airport_id WHERE airport.total_passengers > 10000000	aircraft
SELECT aircraft.aircraft , aircraft.description FROM airport_aircraft JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id JOIN airport ON airport_aircraft.airport_id = airport.airport_id WHERE airport.total_passengers > 10000000	aircraft
SELECT AVG( airport.total_passengers ) FROM airport JOIN airport_aircraft ON airport.airport_id = airport_aircraft.airport_id JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id WHERE aircraft.aircraft = 'Robinson R-22'	aircraft
SELECT AVG( airport.total_passengers ) FROM airport_aircraft JOIN airport ON airport_aircraft.airport_id = airport.airport_id JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id WHERE aircraft.aircraft = 'Robinson R-22'	aircraft
SELECT match.location , match.winning_aircraft FROM match	aircraft
SELECT match.location , match.winning_aircraft FROM match	aircraft
SELECT aircraft.aircraft FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft ORDER BY COUNT( * ) DESC LIMIT 1	aircraft
SELECT aircraft.aircraft FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft ORDER BY COUNT( * ) DESC LIMIT 1	aircraft
SELECT aircraft.aircraft , COUNT( * ) FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft	aircraft
SELECT aircraft.aircraft , COUNT( * ) FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft	aircraft
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
SELECT aircraft.aircraft FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft HAVING COUNT( * ) >= 2	aircraft
SELECT aircraft.aircraft FROM aircraft JOIN match ON aircraft.aircraft_id = match.winning_aircraft GROUP BY match.winning_aircraft HAVING COUNT( * ) >= 2	aircraft
SELECT aircraft.aircraft FROM aircraft WHERE aircraft.aircraft_id NOT IN (SELECT match.winning_aircraft FROM match)	aircraft
SELECT aircraft.aircraft FROM aircraft WHERE aircraft.aircraft_id NOT IN (SELECT match.winning_aircraft FROM match)	aircraft
SELECT aircraft.aircraft FROM airport_aircraft JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id JOIN airport ON airport_aircraft.airport_id = airport.airport_id WHERE airport.airport_name = 'London Heathrow' INTERSECT SELECT aircraft.aircraft FROM airport_aircraft JOIN aircraft ON airport_aircraft.aircraft_id = aircraft.aircraft_id JOIN airport ON airport_aircraft.airport_id = airport.airport_id WHERE airport.airport_name = 'London Gatwick'	aircraft
SELECT aircraft.aircraft FROM airport_aircraft JOIN airport ON airport_aircraft.aircraft_id = airport.airport_id JOIN airport_aircraft ON airport_aircraft.airport_id = airport.airport_id WHERE airport.airport_name = 'London Heathrow' UNION SELECT aircraft.aircraft FROM airport_aircraft JOIN airport ON airport_aircraft.aircraft_id = airport.airport_id JOIN aircraft ON airport_aircraft.airport_id = aircraft.aircraft_id WHERE airport.airport_name = 'Gatwick'	aircraft
SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
SELECT pilot.name , pilot.age FROM pilot JOIN match ON pilot.pilot_id = match.winning_pilot WHERE pilot.age<30 GROUP BY match.winning_pilot ORDER BY COUNT( * ) DESC LIMIT 1	aircraft
SELECT pilot.name , pilot.age FROM pilot JOIN match ON pilot.pilot_id = match.winning_pilot WHERE pilot.age<30 GROUP BY match.winning_pilot ORDER BY COUNT( * ) DESC LIMIT 1	aircraft
SELECT pilot.name , pilot.age FROM pilot JOIN match ON pilot.pilot_id = match.winning_pilot ORDER BY match.winning_pilot ASC LIMIT 1	aircraft
SELECT pilot.age , pilot.name FROM pilot JOIN match ON pilot.pilot_id = match.winning_pilot ORDER BY match.winning_pilot ASC LIMIT 1	aircraft
SELECT pilot.name FROM pilot EXCEPT SELECT pilot.name FROM match JOIN pilot ON match.winning_pilot = pilot.pilot_id WHERE match.country = 'Australia'	aircraft
SELECT pilot.name FROM pilot EXCEPT SELECT pilot.name FROM match JOIN pilot ON match.winning_pilot = pilot.pilot_id WHERE match.country = 'Australia'	aircraft
SELECT SUM( college.enr ) FROM college	soccer_2
SELECT SUM( college.enr ) FROM college	soccer_2
SELECT AVG( college.enr ) FROM college	soccer_2
SELECT college.cname , AVG( college.enr ) FROM college GROUP BY college.cname	soccer_2
SELECT COUNT( * ) FROM college	soccer_2
SELECT COUNT( DISTINCT college.cname ) FROM college	soccer_2
SELECT COUNT( * ) FROM player WHERE player.hs > 1000	soccer_2
SELECT COUNT( * ) FROM player WHERE player.hs > 1000	soccer_2
SELECT COUNT( * ) FROM college WHERE college.enr > 15000	soccer_2
SELECT COUNT( * ) FROM college WHERE college.enr > 15000	soccer_2
SELECT AVG( player.hs ) FROM player	soccer_2
SELECT AVG( player.hs ) FROM player	soccer_2
SELECT player.pname , player.hs FROM player WHERE player.hs<1500	soccer_2
SELECT player.pname , player.hs FROM player WHERE player.hs<1500	soccer_2
SELECT COUNT( DISTINCT tryout.cname ) FROM tryout	soccer_2
SELECT COUNT( DISTINCT tryout.cname ) FROM tryout	soccer_2
SELECT COUNT( DISTINCT tryout.ppos ) FROM tryout	soccer_2
SELECT DISTINCT tryout.ppos FROM tryout	soccer_2
SELECT COUNT( * ) FROM tryout WHERE tryout.decision = 'accepted'	soccer_2
SELECT COUNT( * ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE player.ycard = 'yes'	soccer_2
SELECT COUNT( * ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT COUNT( * ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT AVG( player.hs ) , MAX( player.hs ) , MIN( player.hs ) FROM player	soccer_2
SELECT AVG( player.hs ) , MAX( player.hs ) , MIN( player.hs ) FROM player	soccer_2
SELECT AVG( college.enr ) FROM college WHERE college.state = 'FL'	soccer_2
SELECT AVG( college.enr ) FROM college WHERE college.state = 'Florida'	soccer_2
SELECT player.pname FROM player WHERE player.hs BETWEEN 500 and 1500	soccer_2
SELECT player.pname FROM player WHERE player.hs BETWEEN 500 and 1500	soccer_2
SELECT player.pname FROM player WHERE player.pname LIKE '%a%'	soccer_2
SELECT player.pname FROM player WHERE player.pname LIKE '%a%'	soccer_2
SELECT college.cname , college.enr FROM college WHERE college.enr > 10000 AND college.state = 'LA'	soccer_2
SELECT college.cname , college.enr FROM college WHERE college.enr > 10000 AND college.state = 'Louisiana'	soccer_2
SELECT * FROM college ORDER BY college.enr ASC	soccer_2
SELECT * FROM college ORDER BY college.enr ASC	soccer_2
SELECT college.cname FROM college WHERE college.enr > 18000 ORDER BY college.cname ASC	soccer_2
SELECT college.cname FROM college WHERE college.enr > 18000 ORDER BY college.cname ASC	soccer_2
SELECT player.pname FROM player WHERE player.ycard = 'yes' ORDER BY player.hs DESC	soccer_2
SELECT player.pname FROM player ORDER BY player.hs DESC	soccer_2
SELECT DISTINCT tryout.cname FROM tryout ORDER BY tryout.cname ASC	soccer_2
SELECT DISTINCT tryout.cname FROM tryout ORDER BY college.cname ASC	soccer_2
SELECT tryout.ppos FROM tryout GROUP BY tryout.ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
SELECT tryout.ppos FROM tryout GROUP BY tryout.ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
SELECT tryout.cname , COUNT( * ) FROM tryout GROUP BY tryout.cname ORDER BY COUNT( * ) DESC	soccer_2
SELECT tryout.cname , COUNT( * ) FROM tryout GROUP BY tryout.cname ORDER BY COUNT( * ) DESC	soccer_2
SELECT MIN( player.hs ) , tryout.ppos FROM tryout JOIN player ON tryout.pid = player.pid GROUP BY tryout.ppos	soccer_2
SELECT MIN( player.hs ) , tryout.ppos FROM tryout JOIN player ON tryout.pid = player.pid GROUP BY tryout.ppos	soccer_2
SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
SELECT college.cname , college.state , MIN( college.enr ) FROM college GROUP BY college.state	soccer_2
SELECT college.cname FROM college ORDER BY college.enr ASC LIMIT 1	soccer_2
SELECT DISTINCT college.state FROM college JOIN tryout ON college.cname = tryout.cname	soccer_2
SELECT DISTINCT college.state FROM college JOIN tryout ON college.cname = tryout.cname	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.decision = 'yes'	soccer_2
SELECT DISTINCT college.state FROM college JOIN tryout ON college.cname = tryout.cname	soccer_2
SELECT college.cname , player.pname FROM college JOIN tryout ON college.cname = tryout.cname JOIN player ON tryout.pid = player.pid WHERE tryout.decision = 'yes'	soccer_2
SELECT player.pname , tryout.cname FROM tryout JOIN player ON tryout.pid = player.pid WHERE player.ycard = 'yes'	soccer_2
SELECT player.pname FROM tryout JOIN player ON tryout.pid = player.pid ORDER BY player.pname ASC	soccer_2
SELECT player.pname FROM tryout JOIN player ON tryout.pid = player.pid ORDER BY player.pname ASC	soccer_2
SELECT player.pname , player.hs FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.decision = 'yes'	soccer_2
SELECT player.pname , player.hs FROM player WHERE player.ycard = 'yes'	soccer_2
SELECT DISTINCT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'striker'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'striker'	soccer_2
SELECT player.pname FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'striker' AND tryout.decision = 'yes'	soccer_2
SELECT player.pname FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'striker'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname JOIN player ON tryout.pid = player.pid WHERE player.pname = 'Charles'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname JOIN player ON tryout.pid = player.pid WHERE player.pname = 'Charles'	soccer_2
SELECT AVG( player.hs ) , MAX( player.hs ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.decision = 'yes'	soccer_2
SELECT AVG( player.hs ) , MAX( player.hs ) FROM tryout JOIN player ON tryout.pid = player.pid	soccer_2
SELECT AVG( player.hs ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.decision = 'no'	soccer_2
SELECT AVG( player.hs ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE tryout.decision = 'rejected'	soccer_2
SELECT COUNT( DISTINCT tryout.ppos ) FROM tryout JOIN player ON tryout.pid = player.pid WHERE player.hs > 1000	soccer_2
SELECT player.pname FROM tryout JOIN player ON tryout.pid = player.pid GROUP BY tryout.ppos HAVING SUM( player.hs ) > 1000	soccer_2
SELECT college.cname FROM tryout JOIN player ON tryout.pid = player.pid WHERE player.pname LIKE '%D%'	soccer_2
SELECT college.cname FROM tryout JOIN player ON tryout.pid = player.pid WHERE player.pname LIKE '%D%'	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.pid JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT MAX( college.enr ) FROM college	soccer_2
SELECT college.cname FROM college JOIN tryout ON college.cname = tryout.cname GROUP BY tryout.cname ORDER BY college.enr DESC LIMIT 1	soccer_2
SELECT college.enr , college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.decision = 'accepted'	soccer_2
SELECT SUM( college.enr ) , college.state FROM college JOIN tryout ON college.cname = tryout.cname GROUP BY college.state	soccer_2
SELECT college.cname FROM college WHERE college.state = 'LA' OR college.enr<13000	soccer_2
SELECT college.cname FROM college WHERE college.state = '15,000 students and of colleges in AZ' UNION SELECT college.cname FROM college WHERE college.state = 'LA' AND college.enr<13,000	soccer_2
SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname WHERE tryout.ppos = 'goalie' INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname WHERE tryout.ppos = 'mid'	soccer_2
SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goal' INTERSECT SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'mid'-field	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie' INTERSECT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie' INTERSECT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid-field'	soccer_2
SELECT COUNT( * ) FROM tryout WHERE tryout.ppos = 'mid'	soccer_2
SELECT COUNT( * ) FROM tryout WHERE tryout.ppos = 'mid-field'	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'mid'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid' EXCEPT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid' EXCEPT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid position but'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid' EXCEPT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie'	soccer_2
SELECT COUNT( DISTINCT college.state ) FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid'	soccer_2
SELECT college.state FROM college WHERE college.enr<(SELECT MAX( college.enr ) FROM college)	soccer_2
SELECT college.state FROM college WHERE college.enr<(SELECT AVG( college.enr ) FROM college)	soccer_2
SELECT college.cname FROM college WHERE college.enr > (SELECT MIN( college.enr ) FROM college WHERE college.state = 'FL')	soccer_2
SELECT college.cname FROM college WHERE college.cname > (SELECT college.cname FROM college WHERE college.state = 'Florida')	soccer_2
SELECT college.cname FROM college WHERE college.enr > (SELECT college.enr FROM college WHERE college.state = 'FL')	soccer_2
SELECT college.cname FROM college WHERE college.enr > (SELECT AVG( college.enr ) FROM college WHERE college.state = 'Florida')	soccer_2
SELECT SUM( college.enr ) FROM college WHERE college.cname NOT IN (SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goalie')	soccer_2
SELECT SUM( college.enr ) FROM college WHERE college.cname NOT IN (SELECT tryout.cname FROM tryout)	soccer_2
SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr > (SELECT AVG( college.enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr > (SELECT AVG( college.enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr<(SELECT AVG( college.enr ) FROM college)	soccer_2
SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.state<(SELECT AVG( college.enr ) FROM college)	soccer_2
SELECT COUNT( * ) FROM device	device
SELECT COUNT( * ) FROM device	device
SELECT device.carrier FROM device ORDER BY device.carrier ASC	device
SELECT DISTINCT device.carrier FROM device ORDER BY device.carrier ASC	device
SELECT device.carrier FROM device WHERE device.software_platform != 'Android'	device
SELECT device.carrier FROM device WHERE device.software_platform != 'Android'	device
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC	device
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC	device
SELECT AVG( stock.quantity ) FROM stock	device
SELECT AVG( stock.quantity ) FROM stock	device
SELECT shop.shop_name , shop.location FROM shop ORDER BY shop.shop_name ASC	device
SELECT shop.shop_name , shop.location FROM shop ORDER BY shop.shop_name ASC	device
SELECT COUNT( DISTINCT device.software_platform ) FROM device	device
SELECT COUNT( DISTINCT device.software_platform ) FROM device	device
SELECT shop.open_date , shop.open_year FROM shop WHERE shop.shop_name = 'Apple'	device
SELECT shop.open_date , shop.open_year FROM shop WHERE shop.shop_name = 'Apple'	device
SELECT shop.shop_name FROM shop ORDER BY shop.open_year DESC LIMIT 1	device
SELECT shop.shop_name FROM shop ORDER BY shop.open_year DESC LIMIT 1	device
SELECT shop.shop_name , device.carrier FROM stock JOIN device ON stock.device_id = device.device_id JOIN shop ON stock.shop_id = shop.shop_id	device
SELECT shop.shop_name , device.carrier FROM stock JOIN device ON stock.device_id = device.device_id JOIN shop ON stock.shop_id = shop.shop_id	device
SELECT shop.shop_name FROM stock JOIN shop ON stock.shop_id = shop.shop_id GROUP BY stock.shop_id HAVING COUNT( * ) > 1	device
shop , stock	device
SELECT shop.shop_name FROM stock JOIN shop ON stock.shop_id = shop.shop_id GROUP BY stock.shop_id ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT shop.shop_name FROM stock JOIN shop ON stock.shop_id = shop.shop_id GROUP BY stock.shop_id ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT shop.shop_name FROM stock JOIN shop ON stock.shop_id = shop.shop_id GROUP BY stock.shop_id ORDER BY SUM( stock.quantity ) DESC LIMIT 1	device
SELECT shop.shop_name FROM stock JOIN shop ON stock.shop_id = shop.shop_id GROUP BY stock.shop_id ORDER BY SUM( stock.quantity ) DESC LIMIT 1	device
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform	device
SELECT COUNT( * ) , device.software_platform FROM device GROUP BY device.software_platform	device
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT shop.shop_name FROM shop WHERE shop.shop_id NOT IN (SELECT stock.shop_id FROM stock)	device
SELECT shop.shop_name FROM shop WHERE shop.shop_id NOT IN (SELECT stock.shop_id FROM stock)	device
SELECT shop.location FROM shop WHERE shop.open_year<2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
SELECT shop.location FROM shop WHERE shop.open_year > 2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
SELECT device.carrier FROM device WHERE device.device_id NOT IN (SELECT stock.device_id FROM stock)	device
SELECT device.carrier FROM device WHERE device.device_id NOT IN (SELECT stock.device_id FROM stock)	device
SELECT device.carrier FROM stock JOIN device ON stock.device_id = device.device_id GROUP BY device.carrier HAVING COUNT( * ) > 1	device
SELECT device.carrier FROM stock JOIN device ON stock.device_id = device.device_id GROUP BY device.carrier HAVING COUNT( * ) > 1	device
SELECT COUNT( * ) FROM band	music_2
SELECT COUNT( * ) FROM band	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT albums.title FROM albums WHERE albums.year = 2012	music_2
SELECT * FROM albums WHERE albums.year = 2012	music_2
SELECT performance.stageposition FROM performance JOIN band ON performance.bandmate = band.id WHERE band.firstname = 'Solveig'	music_2
SELECT DISTINCT performance.stageposition FROM performance JOIN band ON performance.bandmate = band.id WHERE band.firstname = 'Solveig'	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT songs.title FROM songs JOIN performance ON songs.songid = performance.songid JOIN band ON band.id = performance.bandmate WHERE band.lastname = 'Heilo'	music_2
SELECT songs.title FROM songs JOIN band ON songs.songid = band.id WHERE band.lastname = 'Heilo'	music_2
SELECT COUNT( * ) FROM songs JOIN performance ON songs.songid = performance.songid WHERE songs.title = 'Flash'	music_2
SELECT COUNT( * ) FROM songs JOIN instruments ON songs.songid = instruments.songid WHERE songs.title = 'Flash'	music_2
SELECT songs.title FROM songs JOIN instruments ON songs.songid = instruments.songid JOIN band ON instruments.bandmateid = band.id WHERE band.firstname = 'Marianne'	music_2
SELECT songs.title FROM songs JOIN instruments ON songs.songid = instruments.songid JOIN band ON instruments.bandmateid = band.id WHERE band.firstname = 'Marianne'	music_2
SELECT band.firstname , band.lastname FROM songs JOIN performance ON songs.songid = performance.bandmate JOIN band ON performance.bandmate = band.id WHERE songs.title = 'Badlands'	music_2
SELECT band.firstname , band.lastname FROM band JOIN performance ON band.id = performance.bandmate JOIN songs ON performance.songid = songs.songid WHERE songs.title = 'Badlands'	music_2
SELECT band.firstname , band.lastname FROM band JOIN performance ON band.id = performance.bandmate JOIN songs ON performance.songid = songs.songid WHERE performance.stageposition = 'Badlands'	music_2
SELECT band.lastname , band.firstname FROM band JOIN performance ON band.id = performance.bandmate JOIN songs ON performance.songid = songs.songid WHERE performance.stageposition = 'Badlands'	music_2
SELECT COUNT( DISTINCT albums.label ) FROM albums	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate WHERE performance.stageposition = 'back' GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate WHERE performance.stageposition = 'back' GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
SELECT DISTINCT instruments.instrument FROM instruments	music_2
SELECT DISTINCT instruments.instrument FROM instruments	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id JOIN songs ON instruments.songid = songs.songid WHERE band.lastname = 'Le Pop'	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id JOIN songs ON instruments.songid = songs.songid WHERE band.lastname = 'Le Pop'	music_2
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
SELECT instruments.instrument FROM songs JOIN instruments ON songs.songid = instruments.songid WHERE songs.title = 'Le Pop'	music_2
SELECT instruments.instrument FROM songs JOIN instruments ON songs.songid = instruments.songid WHERE songs.title = 'Le Pop'	music_2
SELECT COUNT( * ) FROM songs JOIN instruments ON songs.songid = instruments.songid WHERE songs.title = 'Le Pop'	music_2
SELECT COUNT( DISTINCT instruments.instrument ) FROM instruments JOIN songs ON instruments.songid = songs.songid WHERE songs.title = 'Le Pop'	music_2
SELECT SUM( instruments.instrument ) FROM instruments JOIN band ON instruments.bandmateid = band.id WHERE band.lastname = 'Heilo'	music_2
SELECT COUNT( DISTINCT instruments.instrument ) FROM instruments JOIN band ON instruments.bandmateid = band.id WHERE band.lastname = 'Heilo'	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id WHERE band.lastname = 'Heilo'	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id WHERE band.lastname = 'Heilo'	music_2
SELECT songs.title FROM songs JOIN vocals ON songs.songid = vocals.songid GROUP BY songs.songid ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT songs.title FROM songs JOIN vocals ON songs.songid = vocals.songid GROUP BY vocals.songid ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.lastname = 'Heilo' GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.lastname = 'Heilo' GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM songs JOIN vocals ON songs.songid = vocals.songid WHERE songs.title = 'Le Pop'	music_2
SELECT vocals.type FROM vocals WHERE songs.title = 'Le Pop'	music_2
SELECT COUNT( DISTINCT vocals.type ) FROM vocals JOIN songs ON vocals.songid = songs.songid WHERE songs.title = 'Demon Kitty Rag'	music_2
SELECT vocals.type FROM vocals JOIN songs ON vocals.songid = songs.songid WHERE songs.title = 'Demon Kitty Rag'	music_2
SELECT COUNT( * ) FROM songs JOIN vocals ON songs.songid = vocals.songid WHERE vocals.type = 'lead'	music_2
SELECT COUNT( * ) FROM vocals WHERE vocals.type = 'lead'	music_2
SELECT vocals.type FROM vocals JOIN songs ON vocals.songid = songs.songid WHERE band.firstname = 'Solveig' AND songs.title = 'A Bar in Amsterdam'	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.firstname = 'Solveig' AND songs.title = 'A Bar in Amsterdam'	music_2
SELECT songs.title FROM songs WHERE songs.songid NOT IN (SELECT vocals.songid FROM vocals)	music_2
SELECT songs.title FROM songs WHERE songs.songid NOT IN (SELECT vocals.songid FROM vocals)	music_2
SELECT DISTINCT vocals.type FROM vocals	music_2
SELECT DISTINCT vocals.type FROM vocals	music_2
SELECT albums.title FROM albums WHERE albums.year = 2010	music_2
SELECT * FROM albums WHERE albums.year = 2010	music_2
SELECT performance.bandmate FROM songs JOIN performance ON songs.songid = performance.songid WHERE songs.title = 'Le Pop'	music_2
SELECT band.lastname , band.firstname FROM band JOIN performance ON band.id = performance.bandmate JOIN songs ON performance.songid = songs.songid WHERE songs.title = 'Le Pop'	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.lastname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY band.lastname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id JOIN songs ON instruments.songid = songs.songid WHERE band.lastname = 'Badlands'	music_2
SELECT instruments.instrument FROM instruments JOIN band ON instruments.bandmateid = band.id WHERE band.lastname = 'Heilo' AND songs.title = 'Badlands'	music_2
SELECT COUNT( * ) FROM songs JOIN instruments ON songs.songid = instruments.songid WHERE songs.title = 'Badlands'	music_2
SELECT COUNT( DISTINCT instruments.instrument ) FROM instruments JOIN songs ON instruments.songid = songs.songid WHERE songs.title = 'Badlands'	music_2
SELECT vocals.type FROM songs JOIN vocals ON songs.songid = vocals.songid WHERE songs.title = 'Badlands'	music_2
SELECT vocals.type FROM vocals WHERE songs.title = 'Badlands'	music_2
SELECT COUNT( DISTINCT vocals.type ) FROM vocals JOIN songs ON vocals.songid = songs.songid WHERE songs.title = 'Le Pop'	music_2
SELECT COUNT( DISTINCT vocals.type ) FROM vocals JOIN songs ON vocals.songid = songs.songid WHERE songs.title = 'Le Pop'	music_2
SELECT COUNT( DISTINCT vocals.songid ) FROM vocals	music_2
SELECT COUNT( DISTINCT vocals.songid ) FROM vocals	music_2
SELECT songs.title FROM songs EXCEPT SELECT songs.title FROM songs JOIN vocals ON songs.songid = vocals.songid WHERE vocals.type = 'back'	music_2
SELECT DISTINCT songs.title FROM songs WHERE songs.songid NOT IN (SELECT vocals.songid FROM vocals)	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.firstname = 'Solveig' GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.firstname = 'Solveig' GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM songs JOIN vocals ON songs.songid = vocals.songid JOIN band ON vocals.bandmate = band.id WHERE songs.title = 'Heilo' AND band.lastname = 'Der Kapitan'	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.lastname = 'Der Kapitan' AND songs.title = 'Heilo'	music_2
SELECT band.firstname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY performance.bandmate ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.firstname FROM band JOIN performance ON band.id = performance.bandmate GROUP BY band.firstname ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.firstname = 'Marianne' GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals JOIN band ON vocals.bandmate = band.id WHERE band.firstname = 'Marianne' GROUP BY vocals.bandmate ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT band.firstname , band.lastname FROM performance JOIN band ON performance.bandmate = band.id JOIN songs ON performance.songid = songs.songid WHERE performance.stageposition = 'back' AND songs.title = 'Der Kapitan'	music_2
SELECT band.lastname , band.firstname FROM band JOIN performance ON band.id = performance.bandmate JOIN songs ON performance.songid = songs.songid WHERE performance.stageposition = 'Der Kapitan'	music_2
SELECT songs.title FROM songs EXCEPT SELECT songs.title FROM songs JOIN vocals ON songs.songid = vocals.songid WHERE vocals.type = 'back'	music_2
SELECT songs.title FROM songs WHERE songs.songid NOT IN (SELECT vocals.songid FROM vocals)	music_2
SELECT songs.title FROM albums JOIN tracklists ON albums.aid = tracklists.albumid JOIN songs ON tracklists.songid = songs.songid WHERE albums.title = 'A Kiss Before You Go: Live in Hamburg'	music_2
SELECT songs.title FROM albums JOIN tracklists ON albums.aid = tracklists.albumid JOIN songs ON tracklists.songid = songs.songid WHERE albums.title = 'A Kiss Before You Go: Live in Hamburg'	music_2
SELECT songs.title FROM albums JOIN songs ON albums.aid = songs.songid WHERE albums.label = 'Universal Music Group'	music_2
SELECT songs.title FROM albums JOIN albums ON albums.aid = albums.aid JOIN songs ON instruments.songid = songs.songid WHERE albums.label = 'Universal Music Group'	music_2
SELECT COUNT( * ) FROM albums WHERE albums.type = 'studio'	music_2
SELECT COUNT( * ) FROM albums WHERE albums.type = 'studio'	music_2
SELECT problem_log.problem_log_id FROM problem_log ORDER BY problem_log.log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log.problem_log_id FROM problem_log ORDER BY problem_log.log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.problem_id FROM problem_log ORDER BY problem_log.problem_id DESC LIMIT 1	tracking_software_problems
SELECT MAX( problem_log.problem_log_id ) , problem_log.problem_id FROM problem_log	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.log_entry_date FROM problem_log WHERE problem_log.problem_id = 10	tracking_software_problems
SELECT DISTINCT problem_log.problem_id , problem_log.log_entry_date FROM problem_log JOIN problems ON problem_log.problem_id = problems.problem_id WHERE problem_log.problem_log_id = 10	tracking_software_problems
SELECT problem_log.problem_log_id , problems.problem_description FROM problem_log JOIN problem_category_codes ON problem_log.problem_category_code = problem_category_codes.problem_category_code JOIN problems ON problem_log.problem_id = problems.problem_id	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.log_entry_description FROM problem_log	tracking_software_problems
SELECT DISTINCT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problem_log ON staff.staff_id = problem_log.assigned_to_staff_id WHERE problem_log.problem_id = 1	tracking_software_problems
SELECT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problems ON staff.staff_id = problems.closure_authorised_by_staff_id WHERE problem_log.problem_id = 1	tracking_software_problems
SELECT problem_log.problem_id , problem_log.problem_log_id FROM staff JOIN problem_log ON staff.staff_id = problem_log.assigned_to_staff_id WHERE staff.staff_first_name = 'Rylan' AND staff.staff_last_name = 'Homenick'	tracking_software_problems
SELECT problem_log.problem_id , problem_log.problem_log_id FROM staff JOIN problem_log ON staff.staff_id = problem_log.assigned_to_staff_id WHERE staff.staff_first_name = 'Rylan' AND staff.staff_last_name = 'Homenick'	tracking_software_problems
SELECT COUNT( * ) FROM product JOIN problems ON product.product_id = problems.product_id WHERE product.product_name = 'voluptatem'	tracking_software_problems
SELECT COUNT( * ) FROM product JOIN problems ON product.product_id = problems.product_id WHERE product.product_name = 'voluptatem'	tracking_software_problems
SELECT COUNT( * ) , product.product_name , product.product_name FROM product JOIN problems ON product.product_id = problems.product_id GROUP BY problems.product_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_software_problems
SELECT problems.product_id , product.product_name , COUNT( * ) FROM product JOIN problems ON product.product_id = problems.product_id GROUP BY problems.product_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_software_problems
SELECT problems.problem_description FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE staff.staff_first_name = 'Christop'	tracking_software_problems
SELECT problems.problem_description FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE staff.staff_first_name = 'Christop'	tracking_software_problems
SELECT problems.problem_id FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE staff.staff_last_name = 'Bosco'	tracking_software_problems
SELECT problems.problem_id FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE staff.staff_last_name = 'Bosco'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT problems.product_id , COUNT( * ) FROM problems GROUP BY problems.product_id	tracking_software_problems
SELECT COUNT( * ) , problems.product_id FROM problems GROUP BY problems.product_id	tracking_software_problems
SELECT COUNT( * ) , problems.product_id FROM problems WHERE problems.date_problem_reported > '1986-11-13' GROUP BY problems.product_id	tracking_software_problems
SELECT problems.product_id , COUNT( * ) FROM problems WHERE problems.date_problem_reported > '1986-11-13' GROUP BY problems.product_id	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
SELECT problems.problem_id FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE staff.staff_last_name = 'Dameon Frami' OR staff.staff_last_name = 'Weber'	tracking_software_problems
SELECT problems.problem_id FROM problems JOIN staff ON problems.reported_by_staff_id = staff.staff_id WHERE staff.staff_last_name = 'Dameon Frami' OR staff.staff_last_name = 'Weber'	tracking_software_problems
SELECT problems.product_id FROM problems WHERE problems.reported_by_staff_id = 'Christop' AND problems.closure_authorised_by_staff_id = 'Ashley Medhurst'	tracking_software_problems
SELECT problems.product_id FROM product JOIN problems ON product.product_id = problems.reported_by_staff_id WHERE problems.reported_by_staff_id = 'Christop' AND problems.closure_authorised_by_staff_id = 'Ashley Medhurst'	tracking_software_problems
SELECT problems.problem_id FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id WHERE problems.date_problem_reported<(SELECT MIN( problems.date_problem_reported ) FROM problems WHERE staff.staff_first_name = 'Lysanne')	tracking_software_problems
SELECT problems.problem_id FROM problems JOIN staff ON problems.closure_authorised_by_staff_id = staff.staff_id WHERE staff.staff_last_name = 'Lysanne' UNION SELECT problems.problem_id FROM problems JOIN staff ON problems.reported_by_staff_id = staff.staff_id WHERE staff.staff_last_name = 'Lysanne'	tracking_software_problems
SELECT AVG( problems.date_problem_reported ) FROM problems	tracking_software_problems
problems , staff	tracking_software_problems
SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id GROUP BY problems.product_id ORDER BY COUNT( * ) DESC LIMIT 3	tracking_software_problems
SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id GROUP BY problems.product_id ORDER BY COUNT( * ) DESC LIMIT 3	tracking_software_problems
SELECT problems.problem_id FROM product JOIN problems ON product.product_id = problems.product_id WHERE product.product_name = 'voluptatem' AND problems.date_problem_reported > 1995	tracking_software_problems
SELECT problems.problem_id FROM product JOIN problems ON product.product_id = problems.product_id WHERE product.product_name = 'voluptatem' AND problems.date_problem_reported > 1995	tracking_software_problems
SELECT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id JOIN product ON problems.product_id = product.product_id WHERE product.product_name = 'rem' EXCEPT SELECT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id JOIN product ON problems.product_id = product.product_id WHERE product.product_name = 'aut'	tracking_software_problems
SELECT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id JOIN product ON problems.product_id = product.product_id WHERE product.product_name = 'rem' EXCEPT SELECT staff.staff_first_name , staff.staff_last_name FROM staff JOIN problems ON staff.staff_id = problems.reported_by_staff_id JOIN product ON problems.product_id = product.product_id WHERE product.product_name = 'aut'	tracking_software_problems
SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id WHERE problems.reported_by_staff_id = 'Lacey Bosco' INTERSECT SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id WHERE problems.reported_by_staff_id = 'Lacey Bosco'	tracking_software_problems
SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id JOIN staff ON problems.closure_authorised_by_staff_id = staff.staff_id WHERE staff.staff_last_name = 'Champlin' INTERSECT SELECT product.product_name FROM product JOIN problems ON product.product_id = problems.product_id JOIN staff ON problems.closure_authorised_by_staff_id = staff.staff_id WHERE staff.staff_first_name = 'Lacey Bosco'	tracking_software_problems
SELECT COUNT( * ) FROM student	voter_2
SELECT COUNT( * ) FROM student	voter_2
SELECT COUNT( * ) FROM voting_record	voter_2
SELECT COUNT( * ) FROM voting_record	voter_2
SELECT COUNT( DISTINCT voting_record.president_vote ) FROM voting_record	voter_2
SELECT COUNT( DISTINCT voting_record.president_vote ) FROM voting_record	voter_2
SELECT MAX( student.age ) FROM student	voter_2
SELECT student.age FROM student ORDER BY student.age DESC LIMIT 1	voter_2
SELECT student.lname FROM student WHERE student.major = 50	voter_2
SELECT student.lname FROM student WHERE student.major = 50	voter_2
SELECT student.fname FROM student WHERE student.age > 22	voter_2
SELECT student.fname FROM student WHERE student.age > 22	voter_2
SELECT student.major FROM student WHERE student.sex = 'm'	voter_2
SELECT student.major FROM student WHERE student.sex = 'm'	voter_2
SELECT AVG( student.age ) FROM student WHERE student.sex = 'f'	voter_2
SELECT AVG( student.age ) FROM student WHERE student.sex = 'f'	voter_2
SELECT MAX( student.age ) , MIN( student.age ) FROM student WHERE student.major = 600	voter_2
SELECT MAX( student.age ) , MIN( student.age ) FROM student WHERE student.major = 600	voter_2
SELECT student.advisor FROM student WHERE student.city_code = 'BAL'	voter_2
SELECT student.advisor FROM student WHERE student.city_code = 'BAL'	voter_2
SELECT DISTINCT voting_record.secretary_vote FROM voting_record WHERE voting_record.election_cycle = 'fall'	voter_2
SELECT DISTINCT voting_record.secretary_vote FROM voting_record WHERE voting_record.election_cycle = 'fall'	voter_2
SELECT DISTINCT voting_record.president_vote FROM voting_record JOIN 08/30/2015 ON voting_record.election_cycle = 08/30/2015	voter_2
SELECT DISTINCT voting_record.president_vote FROM voting_record JOIN 08/30/2015 ON voting_record.election_cycle = 08/30/2015	voter_2
SELECT DISTINCT voting_record.registration_date , voting_record.election_cycle FROM voting_record	voter_2
SELECT DISTINCT voting_record.registration_date , voting_record.election_cycle FROM voting_record	voter_2
SELECT DISTINCT voting_record.president_vote , voting_record.vice_president_vote FROM voting_record	voter_2
SELECT DISTINCT voting_record.president_vote , voting_record.vice_president_vote FROM voting_record	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.class_president_vote = student.stuid	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.class_president_vote = student.stuid	voter_2
SELECT DISTINCT student.fname FROM voting_record JOIN student ON voting_record.class_senator_vote = student.stuid	voter_2
SELECT DISTINCT student.fname FROM voting_record JOIN student ON voting_record.class_president_vote = student.stuid	voter_2
SELECT DISTINCT student.age FROM voting_record JOIN student ON voting_record.secretary_vote = student.stuid WHERE voting_record.election_cycle = 'fall'	voter_2
SELECT DISTINCT student.age FROM voting_record JOIN student ON voting_record.secretary_vote = student.stuid WHERE voting_record.election_cycle = 'fall'	voter_2
SELECT DISTINCT student.advisor FROM voting_record JOIN student ON voting_record.treasurer_vote = student.stuid WHERE voting_record.election_cycle = 'spring'	voter_2
SELECT student.advisor FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.election_cycle = 'spring'	voter_2
SELECT DISTINCT student.major FROM voting_record JOIN student ON voting_record.stuid = student.stuid JOIN treasurer ON voting_record.treasurer_vote = treasurer	voter_2
SELECT DISTINCT student.major FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.treasurer_vote = 'treasurer'	voter_2
SELECT student.fname , student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.sex = 'f'	voter_2
SELECT student.fname , student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.sex = 'f'	voter_2
SELECT student.fname , student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.age = 18	voter_2
SELECT student.fname , student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.age = 18	voter_2
SELECT COUNT( * ) FROM voting_record JOIN student ON voting_record.class_senator_vote = student.stuid WHERE voting_record.election_cycle = 'fall' AND student.sex = 'M'	voter_2
SELECT COUNT( * ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.election_cycle = 'fall' AND student.sex = 'm'	voter_2
SELECT COUNT( * ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.election_cycle = 'spring' AND student.city_code = 'NYC'	voter_2
SELECT COUNT( * ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.election_cycle = 'spring' AND student.city_code = 'NYC'	voter_2
SELECT AVG( student.age ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.city_code = 'NYC' AND voting_record.election_cycle = 'spring'	voter_2
SELECT AVG( student.age ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.city_code = 'NYC' AND voting_record.election_cycle = 'spring'	voter_2
SELECT AVG( student.age ) FROM voting_record JOIN student ON voting_record.secretary_vote = student.stuid WHERE voting_record.election_cycle = 'spring' AND student.sex = 'F'	voter_2
SELECT AVG( student.age ) FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.election_cycle = 'spring' AND student.sex = 'f'	voter_2
SELECT DISTINCT student.fname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.city_code != 'PIT'	voter_2
SELECT DISTINCT student.fname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.city_code != 'PIT'	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.president_vote = student.stuid WHERE student.advisor != 2192	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE student.advisor != 2192	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.president_vote = student.stuid WHERE student.advisor = 8741	voter_2
SELECT DISTINCT student.lname FROM voting_record JOIN student ON voting_record.stuid = student.stuid WHERE voting_record.president_vote = 8741 AND student.advisor = 8741	voter_2
SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	voter_2
SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	voter_2
SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
SELECT student.major FROM student GROUP BY student.major HAVING COUNT( * )<3	voter_2
SELECT student.major FROM student GROUP BY student.major HAVING COUNT( * )<3	voter_2
SELECT voting_record.election_cycle , COUNT( * ) FROM voting_record GROUP BY voting_record.election_cycle	voter_2
SELECT COUNT( * ) , voting_record.election_cycle FROM voting_record GROUP BY voting_record.election_cycle	voter_2
SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT student.major FROM student WHERE student.sex = 'f' GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT student.major FROM student WHERE student.sex = 'f' GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
SELECT DISTINCT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
SELECT COUNT( * ) FROM event	swimming
SELECT event.name FROM event ORDER BY event.year DESC	swimming
SELECT event.name FROM event ORDER BY event.year DESC LIMIT 1	swimming
SELECT COUNT( * ) FROM stadium	swimming
SELECT stadium.name FROM stadium ORDER BY stadium.capacity DESC LIMIT 1	swimming
SELECT stadium.name FROM stadium WHERE stadium.capacity<(SELECT AVG( stadium.capacity ) FROM stadium)	swimming
SELECT stadium.country FROM stadium GROUP BY stadium.country ORDER BY COUNT( * ) DESC LIMIT 1	swimming
SELECT stadium.country FROM stadium GROUP BY stadium.country HAVING COUNT( * ) <= 3	swimming
SELECT stadium.country FROM stadium WHERE stadium.capacity > 60000 INTERSECT SELECT stadium.country FROM stadium WHERE stadium.capacity<50000	swimming
SELECT COUNT( * ) FROM stadium WHERE stadium.opening_year<2006	swimming
SELECT stadium.country , COUNT( * ) FROM stadium GROUP BY stadium.country	swimming
SELECT stadium.country FROM stadium EXCEPT SELECT stadium.country FROM stadium WHERE stadium.opening_year > 2006	swimming
SELECT COUNT( * ) FROM stadium WHERE stadium.country != 'Russia'	swimming
SELECT swimmer.name FROM swimmer ORDER BY swimmer.meter_100 ASC	swimming
SELECT COUNT( DISTINCT swimmer.nationality ) FROM swimmer	swimming
SELECT swimmer.nationality FROM swimmer GROUP BY swimmer.nationality HAVING COUNT( * ) > 1	swimming
SELECT swimmer.meter_200 , swimmer.meter_300 FROM swimmer WHERE swimmer.nationality = 'Australia'	swimming
SELECT swimmer.name FROM record JOIN swimmer ON record.swimmer_id = swimmer.id WHERE record.result = 'win'	swimming
SELECT stadium.name FROM event JOIN stadium ON event.stadium_id = stadium.id GROUP BY event.stadium_id ORDER BY COUNT( * ) DESC LIMIT 1	swimming
SELECT stadium.name , stadium.capacity FROM event JOIN stadium ON event.stadium_id = stadium.id WHERE event.name = 'World Junior'	swimming
SELECT stadium.name FROM stadium WHERE stadium.id NOT IN (SELECT event.stadium_id FROM event)	swimming
SELECT swimmer.name FROM swimmer JOIN record ON swimmer.id = record.swimmer_id GROUP BY record.swimmer_id ORDER BY COUNT( * ) DESC LIMIT 1	swimming
SELECT swimmer.name FROM record JOIN swimmer ON record.swimmer_id = swimmer.id GROUP BY record.swimmer_id HAVING COUNT( * ) >= 2	swimming
record , record	swimming
SELECT swimmer.name FROM swimmer WHERE swimmer.id NOT IN (SELECT record.swimmer_id FROM record)	swimming
SELECT swimmer.name FROM record JOIN swimmer ON record.swimmer_id = swimmer.id WHERE record.result = 'win' INTERSECT SELECT swimmer.name FROM record JOIN swimmer ON record.swimmer_id = swimmer.id WHERE record.result = 'loss'	swimming
SELECT stadium.name FROM stadium JOIN event ON stadium.id = event.stadium_id JOIN swimmer ON record.swimmer_id = swimmer.id WHERE swimmer.nationality = 'Australian'	swimming
SELECT stadium.name FROM stadium JOIN event ON stadium.id = event.stadium_id GROUP BY stadium.id ORDER BY COUNT( * ) DESC LIMIT 1	swimming
SELECT * FROM swimmer	swimming
SELECT AVG( stadium.capacity ) FROM stadium WHERE stadium.opening_year = 2005	swimming
SELECT COUNT( * ) FROM addresses WHERE addresses.country = 'USA'	customers_and_products_contacts
SELECT DISTINCT addresses.city FROM addresses	customers_and_products_contacts
SELECT addresses.state_province_county , COUNT( * ) FROM addresses GROUP BY addresses.state_province_county	customers_and_products_contacts
SELECT customers.customer_name , customers.customer_phone FROM customers WHERE customers.customer_id NOT IN (SELECT customer_address_history.customer_id FROM customer_address_history)	customers_and_products_contacts
SELECT customers.customer_name FROM customers JOIN customer_orders ON customers.customer_id = customer_orders.customer_id GROUP BY customer_orders.customer_id ORDER BY COUNT( * ) DESC LIMIT 1	customers_and_products_contacts
SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING COUNT( * ) >= 2	customers_and_products_contacts
SELECT customers.customer_name FROM customers JOIN customer_orders ON customers.customer_id = customer_orders.customer_id WHERE customer_orders.order_status_code = 'completed' INTERSECT SELECT customers.customer_name FROM customers JOIN customer_orders ON customers.customer_id = customer_orders.customer_id WHERE customer_orders.order_status_code = 'part'	customers_and_products_contacts
SELECT customers.customer_name , customers.customer_phone , customers.payment_method_code FROM customers ORDER BY customers.customer_number DESC	customers_and_products_contacts
SELECT products.product_name , SUM( order_items.order_quantity ) FROM order_items JOIN products ON order_items.product_id = products.product_id GROUP BY products.product_name	customers_and_products_contacts
SELECT MIN( products.product_price ) , MAX( products.product_price ) , AVG( products.product_price ) FROM products	customers_and_products_contacts
SELECT COUNT( * ) FROM products WHERE products.product_price > (SELECT AVG( products.product_price ) FROM products)	customers_and_products_contacts
SELECT customers.customer_name , customer_address_history.date_from , customer_address_history.date_to FROM customer_address_history JOIN customers ON customer_address_history.customer_id = customers.customer_id	customers_and_products_contacts
SELECT customers.customer_name FROM customer_orders JOIN customers ON customer_orders.customer_id = customers.customer_id GROUP BY customers.customer_name HAVING COUNT( * ) > 2	customers_and_products_contacts
SELECT customers.customer_name , customers.customer_phone FROM customers JOIN customer_orders ON customers.customer_id = customer_orders.customer_id JOIN order_items ON customer_orders.order_id = order_items.order_id ORDER BY order_items.order_quantity DESC LIMIT 1	customers_and_products_contacts
SELECT products.product_type_code , products.product_name FROM products WHERE products.product_price > 1000 OR products.product_price<500	customers_and_products_contacts
SELECT COUNT( * ) FROM submission	workshop_paper
SELECT COUNT( * ) FROM submission	workshop_paper
SELECT submission.author FROM submission ORDER BY submission.scores ASC	workshop_paper
SELECT submission.author FROM submission ORDER BY submission.scores ASC	workshop_paper
SELECT submission.author , submission.college FROM submission	workshop_paper
SELECT submission.author , submission.college FROM submission	workshop_paper
SELECT submission.author FROM submission WHERE submission.college = 'Florida' OR submission.college = 'Temple'	workshop_paper
SELECT submission.author FROM submission WHERE submission.college = 'Florida' OR submission.college = 'Temple'	workshop_paper
SELECT AVG( submission.scores ) FROM submission	workshop_paper
SELECT AVG( submission.scores ) FROM submission	workshop_paper
SELECT submission.author FROM submission ORDER BY submission.scores DESC LIMIT 1	workshop_paper
SELECT submission.author FROM submission ORDER BY submission.scores DESC LIMIT 1	workshop_paper
SELECT submission.college , COUNT( * ) FROM submission GROUP BY submission.college	workshop_paper
SELECT submission.college , COUNT( * ) FROM submission GROUP BY submission.college	workshop_paper
SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
SELECT submission.college FROM submission WHERE submission.scores > 90 INTERSECT SELECT submission.college FROM submission WHERE submission.scores<80	workshop_paper
SELECT submission.college FROM submission WHERE submission.scores > 90 INTERSECT SELECT submission.college FROM submission WHERE submission.scores<80	workshop_paper
SELECT submission.author , acceptance.result FROM acceptance JOIN submission ON acceptance.submission_id = submission.submission_id	workshop_paper
SELECT submission.author , acceptance.result FROM acceptance JOIN submission ON acceptance.submission_id = submission.submission_id	workshop_paper
SELECT acceptance.result FROM acceptance JOIN submission ON acceptance.submission_id = submission.submission_id ORDER BY submission.scores DESC LIMIT 1	workshop_paper
SELECT submission.scores FROM acceptance JOIN submission ON acceptance.submission_id = submission.submission_id ORDER BY submission.scores DESC LIMIT 1	workshop_paper
SELECT submission.author , COUNT( * ) FROM submission GROUP BY submission.author	workshop_paper
SELECT submission.author , COUNT( * ) FROM submission JOIN acceptance ON submission.submission_id = acceptance.submission_id GROUP BY submission.author	workshop_paper
SELECT submission.author FROM submission GROUP BY submission.author HAVING COUNT( * ) > 1	workshop_paper
SELECT submission.author FROM submission GROUP BY submission.author HAVING COUNT( * ) > 1	workshop_paper
SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
SELECT submission.author FROM submission EXCEPT SELECT submission.author FROM submission	workshop_paper
SELECT submission.author FROM submission EXCEPT SELECT submission.author FROM submission	workshop_paper
SELECT COUNT( * ) FROM hotels	cre_Theme_park
SELECT COUNT( * ) FROM hotels	cre_Theme_park
SELECT hotels.price_range FROM hotels	cre_Theme_park
SELECT DISTINCT hotels.price_range FROM hotels	cre_Theme_park
SELECT DISTINCT locations.location_name FROM locations	cre_Theme_park
SELECT DISTINCT locations.location_name FROM locations	cre_Theme_park
SELECT staff.name , staff.other_details FROM staff	cre_Theme_park
SELECT staff.name , staff.other_details FROM staff	cre_Theme_park
SELECT visitors.tourist_details FROM visitors	cre_Theme_park
SELECT COUNT( DISTINCT visits.tourist_id ) FROM visitors	cre_Theme_park
SELECT hotels.price_range FROM hotels WHERE hotels.star_rating_code = 5	cre_Theme_park
SELECT hotels.price_range FROM hotels WHERE hotels.star_rating_code = 5	cre_Theme_park
SELECT AVG( hotels.price_range ) FROM hotels WHERE hotels.star_rating_code = 5 AND hotels.pets_allowed_yn = 'pets'	cre_Theme_park
SELECT AVG( hotels.price_range ) FROM hotels WHERE hotels.pets_allowed_yn = 5	cre_Theme_park
SELECT locations.address FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
SELECT locations.address FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
SELECT locations.other_details FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
SELECT locations.other_details FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
SELECT locations.location_name FROM locations WHERE locations.location_name LIKE '%film%'	cre_Theme_park
SELECT locations.location_name FROM locations WHERE locations.location_name LIKE '%film%'	cre_Theme_park
SELECT COUNT( DISTINCT photos.name ) FROM photos	cre_Theme_park
SELECT COUNT( DISTINCT photos.name ) FROM photos	cre_Theme_park
SELECT DISTINCT visits.visit_date FROM visits	cre_Theme_park
SELECT DISTINCT visits.visit_date FROM visits	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions WHERE tourist_attractions.how_to_get_there = 'bus'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions WHERE tourist_attractions.how_to_get_there = 'bus'	cre_Theme_park
SELECT tourist_attractions.name , tourist_attractions.opening_hours FROM tourist_attractions WHERE tourist_attractions.how_to_get_there = 'bus' OR tourist_attractions.how_to_get_there = 'walk'	cre_Theme_park
SELECT tourist_attractions.name , tourist_attractions.opening_hours FROM tourist_attractions WHERE tourist_attractions.how_to_get_there = 'bus' OR tourist_attractions.how_to_get_there = 'walk'	cre_Theme_park
SELECT ref_hotel_star_ratings.star_rating_description FROM hotels JOIN ref_hotel_star_ratings ON hotels.star_rating_code = ref_hotel_star_ratings.star_rating_code WHERE hotels.price_range > 10000	cre_Theme_park
SELECT ref_hotel_star_ratings.star_rating_description FROM hotels JOIN ref_hotel_star_ratings ON hotels.star_rating_code = ref_hotel_star_ratings.star_rating_code WHERE hotels.price_range > 10000	cre_Theme_park
SELECT museums.museum_details , tourist_attractions.opening_hours FROM museums	cre_Theme_park
SELECT museums.museum_details , tourist_attractions.opening_hours FROM museums	cre_Theme_park
SELECT tourist_attractions.name FROM photos JOIN tourist_attractions ON photos.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE photos.name = 'game1'	cre_Theme_park
SELECT tourist_attractions.name FROM photos JOIN tourist_attractions ON photos.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE photos.name = 'game1'	cre_Theme_park
SELECT photos.name , photos.description FROM photos JOIN tourist_attractions ON photos.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.name = 'film festival'	cre_Theme_park
SELECT photos.name , photos.description FROM photos JOIN tourist_attractions ON photos.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.name = 'film festival'	cre_Theme_park
SELECT royal_family.royal_family_details , tourist_attractions.how_to_get_there FROM tourist_attractions JOIN royal_family ON tourist_attractions.tourist_attraction_id = royal_family.royal_family_id	cre_Theme_park
SELECT tourist_attractions.description , tourist_attractions.how_to_get_there FROM tourist_attractions JOIN royal_family ON tourist_attractions.tourist_attraction_id = royal_family.royal_family_id	cre_Theme_park
SELECT shops.shop_details FROM shops JOIN tourist_attractions ON shops.shop_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.how_to_get_there = 'walk'	cre_Theme_park
SELECT shops.shop_details FROM shops JOIN tourist_attractions ON shops.shop_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.how_to_get_there = 'walk'	cre_Theme_park
SELECT staff.name FROM staff JOIN tourist_attractions ON staff.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.name = 'US museum'	cre_Theme_park
SELECT staff.name FROM staff JOIN tourist_attractions ON staff.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.name = 'US museum'	cre_Theme_park
SELECT street_markets.market_details FROM street_markets JOIN street_markets ON street_markets.market_id = street_markets.market_id WHERE tourist_attractions.how_to_get_there = 'walk' OR tourist_attractions.how_to_get_there = 'bus'	cre_Theme_park
SELECT street_markets.market_details FROM street_markets WHERE tourist_attractions.how_to_get_there = 'walk' OR tourist_attractions.how_to_get_there = 'bus'	cre_Theme_park
features , features	cre_Theme_park
SELECT visits.visit_date , visits.visit_details FROM visits JOIN visitors ON visits.tourist_id = visitors.tourist_id JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE features.feature_details = 'Vincent'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN tourist_attraction_features ON tourist_attractions.tourist_attraction_id = tourist_attraction_features.tourist_attraction_id JOIN features ON tourist_attraction_features.feature_id = features.feature_id WHERE features.feature_details = 'Vincent'	cre_Theme_park
SELECT tourist_attractions.name FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id JOIN features ON tourist_attraction_features.feature_id = features.feature_id WHERE features.feature_details = 'Vincent'	cre_Theme_park
SELECT tourist_attractions.name , tourist_attractions.opening_hours FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE visitors.tourist_details = 'Vivian'	cre_Theme_park
SELECT tourist_attractions.name FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE tourist_attractions.name = 'Vincent' OR visitors.tourist_details = 'Vivian'	cre_Theme_park
SELECT AVG( hotels.price_range ) , hotels.star_rating_code FROM hotels GROUP BY hotels.star_rating_code	cre_Theme_park
SELECT AVG( hotels.price_range ) , hotels.star_rating_code FROM hotels GROUP BY hotels.star_rating_code	cre_Theme_park
SELECT AVG( hotels.price_range ) , hotels.pets_allowed_yn FROM hotels GROUP BY hotels.pets_allowed_yn	cre_Theme_park
SELECT AVG( hotels.price_range ) , hotels.pets_allowed_yn FROM hotels GROUP BY hotels.pets_allowed_yn	cre_Theme_park
SELECT hotels.hotel_id , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC	cre_Theme_park
SELECT hotels.hotel_id , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC	cre_Theme_park
SELECT hotels.other_hotel_details FROM hotels ORDER BY hotels.price_range DESC LIMIT 3	cre_Theme_park
SELECT hotels.other_hotel_details FROM hotels ORDER BY hotels.price_range DESC LIMIT 3	cre_Theme_park
SELECT hotels.other_hotel_details , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC LIMIT 3	cre_Theme_park
SELECT hotels.other_hotel_details , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC LIMIT 3	cre_Theme_park
SELECT tourist_attractions.how_to_get_there FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT tourist_attractions.how_to_get_there FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT tourist_attractions.description , tourist_attractions.attraction_type_code FROM tourist_attractions JOIN ref_attraction_types ON tourist_attractions.attraction_type_code = ref_attraction_types.attraction_type_code GROUP BY tourist_attractions.attraction_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT ref_attraction_types.attraction_type_description , ref_attraction_types.attraction_type_code FROM ref_attraction_types JOIN tourist_attractions ON ref_attraction_types.attraction_type_code = tourist_attractions.attraction_type_code GROUP BY ref_attraction_types.attraction_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Theme_park
SELECT tourist_attractions.how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there	cre_Theme_park
SELECT tourist_attractions.how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there	cre_Theme_park
SELECT tourist_attractions.name , COUNT( * ) FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id GROUP BY visits.tourist_attraction_id	cre_Theme_park
SELECT tourist_attractions.name , visits.tourist_attraction_id , COUNT( * ) FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id GROUP BY visits.tourist_attraction_id	cre_Theme_park
SELECT tourist_attractions.name , tourist_attraction_features.tourist_attraction_id FROM tourist_attraction_features JOIN tourist_attractions ON tourist_attraction_features.tourist_attraction_id = tourist_attractions.tourist_attraction_id GROUP BY tourist_attraction_features.tourist_attraction_id HAVING COUNT( * ) >= 2	cre_Theme_park
SELECT tourist_attractions.name , tourist_attraction_features.tourist_attraction_id FROM tourist_attractions JOIN tourist_attraction_features ON tourist_attractions.tourist_attraction_id = tourist_attraction_features.tourist_attraction_id GROUP BY tourist_attraction_features.tourist_attraction_id HAVING COUNT( * ) >= 2	cre_Theme_park
SELECT tourist_attractions.name , tourist_attractions.tourist_attraction_id FROM tourist_attractions JOIN visits ON tourist_attractions.tourist_attraction_id = visits.tourist_attraction_id GROUP BY visits.tourist_attraction_id ORDER BY COUNT( * ) DESC LIMIT 1 HAVING COUNT( * ) <= 1	cre_Theme_park
SELECT tourist_attractions.name , tourist_attractions.tourist_attraction_id FROM tourist_attractions JOIN visits ON tourist_attractions.tourist_attraction_id = visits.tourist_attraction_id GROUP BY tourist_attractions.tourist_attraction_id HAVING COUNT( * ) <= 1	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN locations ON tourist_attractions.location_id = locations.location_id WHERE locations.address = 'walk' OR locations.address = '660 Shea Crescent'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN locations ON tourist_attractions.location_id = locations.location_id WHERE locations.address = 'walk' OR locations.address = '660 Shea Crescent'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attraction_features JOIN tourist_attractions ON tourist_attraction_features.tourist_attraction_id = tourist_attractions.tourist_attraction_id JOIN features ON tourist_attraction_features.feature_id = features.feature_id WHERE features.feature_details = 'parking' OR features.feature_details = 'shopping'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN tourist_attraction_features ON tourist_attractions.tourist_attraction_id = tourist_attraction_features.tourist_attraction_id JOIN features ON tourist_attraction_features.feature_id = features.feature_id WHERE features.feature_details = 'parking' OR features.feature_details = 'shopping'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN locations ON tourist_attractions.location_id = locations.location_id WHERE locations.address = 'bus' OR locations.address = 'Ottilie Junction'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN locations ON tourist_attractions.location_id = locations.location_id WHERE locations.address = 'bus' OR locations.address = 'Ottilie Junction'	cre_Theme_park
SELECT tourist_attractions.name FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE visits.visit_date = 'Vincent' AND visitors.tourist_details = 'Marcelle'	cre_Theme_park
SELECT tourist_attractions.name FROM visits JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE visits.visit_date = 'Vincent' AND visitors.tourist_details = 'Marcelle'	cre_Theme_park
SELECT tourist_attractions.name FROM tourist_attractions JOIN visits ON tourist_attractions.tourist_attraction_id = visits.tourist_attraction_id WHERE visits.visit_date = 'Alison' UNION SELECT visits.tourist_attraction_id FROM tourist_attractions JOIN staff ON tourist_attractions.tourist_attraction_id = staff.tourist_attraction_id INTERSECT SELECT visits.tourist_attraction_id FROM tourist_attractions JOIN staff ON tourist_attractions.tourist_attraction_id = staff.tourist_attraction_id	cre_Theme_park
SELECT tourist_attractions.name FROM visitors JOIN visits ON visitors.tourist_id = visits.tourist_id JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE visitors.tourist_details = 'Alison' EXCEPT SELECT tourist_attractions.name FROM visitors JOIN visits ON visitors.tourist_id = visits.tourist_id JOIN tourist_attractions ON visits.tourist_attraction_id = tourist_attractions.tourist_attraction_id WHERE visitors.tourist_details = 'Rosalind'	cre_Theme_park
SELECT COUNT( DISTINCT visits.tourist_attraction_id ) FROM visits	cre_Theme_park
SELECT COUNT( DISTINCT visits.tourist_attraction_id ) FROM visits	cre_Theme_park
SELECT COUNT( * ) FROM roller_coaster	roller_coaster
SELECT roller_coaster.name FROM roller_coaster ORDER BY roller_coaster.length ASC	roller_coaster
SELECT roller_coaster.length , roller_coaster.height FROM roller_coaster	roller_coaster
SELECT country.name FROM country WHERE country.languages != 'German'	roller_coaster
SELECT roller_coaster.status FROM roller_coaster WHERE roller_coaster.length > 3300 OR roller_coaster.height > 100	roller_coaster
SELECT roller_coaster.speed FROM roller_coaster ORDER BY roller_coaster.length DESC LIMIT 1	roller_coaster
SELECT AVG( roller_coaster.speed ) FROM roller_coaster	roller_coaster
SELECT roller_coaster.status , COUNT( * ) FROM roller_coaster GROUP BY roller_coaster.status	roller_coaster
SELECT roller_coaster.status FROM roller_coaster GROUP BY roller_coaster.status ORDER BY COUNT( * ) DESC LIMIT 1	roller_coaster
SELECT roller_coaster.status FROM roller_coaster GROUP BY roller_coaster.status HAVING COUNT( * ) > 2	roller_coaster
SELECT roller_coaster.park FROM roller_coaster ORDER BY roller_coaster.speed DESC LIMIT 1	roller_coaster
SELECT roller_coaster.name , country.name FROM country JOIN roller_coaster ON country.country_id = roller_coaster.country_id	roller_coaster
SELECT country.name FROM roller_coaster JOIN country ON roller_coaster.country_id = country.country_id GROUP BY roller_coaster.country_id HAVING COUNT( * ) > 1	roller_coaster
SELECT country.name , country.population FROM country JOIN roller_coaster ON country.country_id = roller_coaster.country_id ORDER BY roller_coaster.height DESC LIMIT 1	roller_coaster
SELECT country.name , AVG( roller_coaster.speed ) FROM country JOIN roller_coaster ON country.country_id = roller_coaster.country_id GROUP BY country.name	roller_coaster
SELECT COUNT( * ) FROM country WHERE country.country_id NOT IN (SELECT roller_coaster.country_id FROM roller_coaster WHERE roller_coaster.length > 3000)	roller_coaster
SELECT country.name , country.area , country.population FROM country JOIN roller_coaster ON country.country_id = roller_coaster.country_id WHERE roller_coaster.speed > 2	roller_coaster
SELECT city.city_id FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city ORDER BY hosting_city.year DESC LIMIT 1	city_record
SELECT city.city FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city ORDER BY hosting_city.year DESC LIMIT 1	city_record
SELECT match.match_id FROM match WHERE match.competition = '1994 FIFA World Cup qualification'	city_record
SELECT match.match_id FROM match WHERE match.competition = 'World Cup qualification'	city_record
SELECT city.city FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city WHERE hosting_city.year > 2010	city_record
SELECT hosting_city.host_city FROM hosting_city WHERE hosting_city.year > 2010	city_record
SELECT city.city FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city GROUP BY hosting_city.host_city ORDER BY COUNT( * ) DESC LIMIT 1	city_record
SELECT city.city FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city GROUP BY hosting_city.host_city ORDER BY COUNT( * ) DESC LIMIT 1	city_record
SELECT match.venue FROM hosting_city JOIN city ON hosting_city.host_city = city.city_id JOIN match ON hosting_city.match_id = match.match_id WHERE match.competition = '1994 FIFA World Cup' AND city.city = 'Nanjing'	city_record
SELECT match.venue FROM hosting_city JOIN city ON hosting_city.host_city = city.city_id WHERE match.competition = '1994 FIFA World Cup' AND city.city = 'Nanjing'	city_record
SELECT temperature.jan FROM temperature JOIN temperature ON temperature.city_id = temperature.city_id WHERE city.city = 'Shanghai' ORDER BY temperature.jan ASC	city_record
SELECT temperature.jan FROM city JOIN temperature ON city.city_id = temperature.city_id WHERE city.city = 'Shanghai" city in January'	city_record
SELECT hosting_city.year FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city WHERE city.city = 'Zhejiang'	city_record
SELECT hosting_city.year FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city WHERE city.city = 'Zhejiang'	city_record
SELECT city.city FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
SELECT city.regional_population FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
city , city	city_record
SELECT city.city FROM city JOIN temperature ON city.city_id = temperature.city_id ORDER BY temperature.feb DESC LIMIT 1	city_record
SELECT city.city FROM city JOIN temperature ON city.city_id = temperature.city_id WHERE temperature.mar<'July' UNION SELECT city.city FROM temperature JOIN city ON temperature.city_id = city.city_id WHERE temperature.mar<'July'	city_record
SELECT city.city FROM city JOIN temperature ON city.city_id = temperature.city_id WHERE temperature.mar<'July' INTERSECT SELECT city.city FROM city JOIN temperature ON city.city_id = temperature.city_id WHERE temperature.jun<'July'	city_record
SELECT AVG( temperature.mar ) FROM temperature	city_record
SELECT city.city FROM city JOIN temperature ON city.city_id = temperature.city_id GROUP BY temperature.city_id ORDER BY COUNT( * ) DESC LIMIT 1 HAVING COUNT( * ) = 1	city_record
city , hosting_city	city_record
city , hosting_city	city_record
city , city	city_record
city , city	city_record
SELECT city.city FROM city WHERE city.regional_population > 10000000	city_record
SELECT city.city FROM city WHERE city.regional_population > 10000000	city_record
SELECT city.city FROM city WHERE city.regional_population > 8000000 OR city.regional_population<5000000	city_record
SELECT city.city FROM city WHERE city.regional_population > 8000000 OR city.regional_population<5000000	city_record
SELECT COUNT( * ) , match.competition FROM match GROUP BY match.competition	city_record
SELECT match.competition , COUNT( * ) FROM match GROUP BY match.competition	city_record
SELECT match.venue FROM match ORDER BY match.date DESC	city_record
SELECT match.venue FROM match ORDER BY match.date DESC	city_record
SELECT city.gdp FROM city ORDER BY city.city DESC LIMIT 1	city_record
SELECT city.gdp FROM city ORDER BY city.regional_population DESC LIMIT 1	city_record
SELECT city.gdp , city.regional_population FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city GROUP BY hosting_city.host_city HAVING COUNT( * ) > 1	city_record
SELECT city.city , city.gdp , city.regional_population FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city GROUP BY hosting_city.host_city HAVING COUNT( * ) > 1	city_record
SELECT COUNT( * ) FROM driver	school_bus
SELECT driver.name , driver.home_city , driver.age FROM driver	school_bus
SELECT driver.party , COUNT( * ) FROM driver GROUP BY driver.party	school_bus
SELECT driver.name FROM driver ORDER BY driver.age DESC	school_bus
SELECT DISTINCT driver.home_city FROM driver	school_bus
SELECT driver.home_city FROM driver GROUP BY driver.home_city ORDER BY COUNT( * ) DESC LIMIT 1	school_bus
SELECT driver.party FROM driver WHERE driver.home_city = 'Hartford' INTERSECT SELECT driver.party FROM driver WHERE driver.age > 40	school_bus
SELECT driver.home_city FROM driver WHERE driver.age > 40 GROUP BY driver.home_city HAVING COUNT( * ) >= 2	school_bus
SELECT driver.home_city FROM driver EXCEPT SELECT driver.home_city FROM driver WHERE driver.age > 40	school_bus
SELECT driver.name FROM driver WHERE driver.driver_id NOT IN (SELECT school_bus.driver_id FROM school_bus)	school_bus
SELECT school.type FROM school GROUP BY school.type HAVING COUNT( * ) = 2	school_bus
SELECT school.school , driver.name FROM school_bus JOIN school ON school_bus.school_id = school.school_id JOIN driver ON school_bus.driver_id = driver.driver_id	school_bus
SELECT MAX( school_bus.years_working ) , MIN( school_bus.years_working ) , AVG( school_bus.years_working ) FROM school_bus	school_bus
SELECT school.school , school.type FROM school WHERE school.school_id NOT IN (SELECT school_bus.school_id FROM school_bus)	school_bus
SELECT school.type , COUNT( * ) FROM school GROUP BY school.type	school_bus
SELECT COUNT( * ) FROM driver WHERE driver.home_city = 'Hartford' OR driver.age<40	school_bus
SELECT driver.name FROM driver WHERE driver.home_city = 'Hartford' AND driver.age<40	school_bus
SELECT driver.name FROM school_bus JOIN driver ON school_bus.driver_id = driver.driver_id ORDER BY school_bus.years_working DESC LIMIT 1	school_bus
SELECT wine.name FROM wine ORDER BY wine.score DESC LIMIT 1	wine_1
SELECT wine.name FROM wine ORDER BY wine.score DESC LIMIT 1	wine_1
SELECT wine.winery FROM wine ORDER BY wine.score DESC LIMIT 1	wine_1
SELECT wine.winery FROM wine ORDER BY wine.score DESC LIMIT 1	wine_1
SELECT wine.name FROM wine WHERE wine.year = 2008	wine_1
SELECT wine.name FROM wine WHERE wine.year = 2008	wine_1
SELECT wine.grape , wine.appelation FROM wine	wine_1
SELECT wine.grape , wine.appelation FROM wine JOIN grapes ON wine.grape = grapes.id	wine_1
SELECT wine.name , wine.score FROM wine	wine_1
SELECT wine.name , wine.score FROM wine	wine_1
SELECT appellations.area , appellations.county FROM appellations	wine_1
SELECT appellations.area , appellations.county FROM appellations	wine_1
SELECT wine.price FROM wine WHERE wine.year<2010	wine_1
SELECT wine.price FROM wine WHERE wine.year<2010	wine_1
SELECT DISTINCT wine.name FROM wine WHERE wine.score > 90	wine_1
SELECT wine.name FROM wine WHERE wine.score > 90	wine_1
SELECT DISTINCT wine.name FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'red'	wine_1
SELECT wine.name FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'red'	wine_1
SELECT DISTINCT wine.name FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.area = 'North Coast'	wine_1
SELECT DISTINCT wine.name FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.area = 'North Coast'	wine_1
SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa Country'	wine_1
SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa County'	wine_1
SELECT AVG( wine.price ) FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.county = 'Sonoma County'	wine_1
SELECT AVG( wine.price ) FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.county = 'Sonoma County'	wine_1
SELECT wine.name , wine.score FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'white'	wine_1
SELECT wine.name , wine.score FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'white'	wine_1
SELECT MAX( wine.price ) FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.area = 'Central Coast' AND wine.year<2005	wine_1
SELECT MAX( wine.price ) FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.area = 'Central Coast' AND wine.year<2005	wine_1
SELECT grapes.grape FROM wine JOIN grapes ON wine.grape = grapes.id WHERE grapes.color = 'white' AND wine.score > 90	wine_1
SELECT wine.grape FROM wine WHERE grapes.color = 'white' AND wine.score > 90	wine_1
SELECT wine.name FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE wine.price > 50 AND grapes.color = 'Red'	wine_1
SELECT wine.name FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'red' AND wine.price > 50	wine_1
SELECT wine.name FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.price<50 AND appellations.county = 'Monterey'	wine_1
SELECT wine.name FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.price<50 AND appellations.county = 'Monterey'	wine_1
SELECT wine.grape , COUNT( * ) FROM wine GROUP BY wine.grape	wine_1
SELECT wine.grape , COUNT( * ) FROM wine JOIN grapes ON wine.grape = grapes.id GROUP BY wine.grape	wine_1
SELECT AVG( wine.price ) , wine.year FROM wine GROUP BY wine.year	wine_1
SELECT wine.name , AVG( wine.price ) FROM wine GROUP BY wine.name	wine_1
SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MIN( wine.price ) FROM wine WHERE wine.winery = 'John Anthony')	wine_1
SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MAX( wine.price ) FROM wine WHERE wine.winery = 'John Anthony')	wine_1
SELECT DISTINCT wine.name FROM wine ORDER BY wine.name ASC	wine_1
SELECT wine.name FROM wine ORDER BY wine.name ASC	wine_1
SELECT DISTINCT wine.name FROM wine ORDER BY wine.price ASC	wine_1
SELECT wine.name FROM wine ORDER BY wine.price ASC	wine_1
SELECT appellations.area FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.year<2010 GROUP BY appellations.appelation ORDER BY COUNT( * ) DESC LIMIT 1	wine_1
SELECT appellations.area FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.year<2010 GROUP BY wine.appelation ORDER BY COUNT( * ) DESC LIMIT 1	wine_1
SELECT grapes.color FROM wine JOIN grapes ON wine.grape = grapes.grape GROUP BY grapes.color ORDER BY AVG( wine.price ) DESC LIMIT 1	wine_1
SELECT grapes.color FROM wine JOIN grapes ON wine.grape = grapes.grape GROUP BY wine.grape ORDER BY AVG( wine.price ) DESC LIMIT 1	wine_1
SELECT DISTINCT wine.name FROM wine WHERE wine.year<2000 OR wine.year > 2010	wine_1
SELECT DISTINCT wine.name FROM wine WHERE wine.year<2000 OR wine.year > 2010	wine_1
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 and 100	wine_1
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 and 100	wine_1
SELECT AVG( wine.price ) , AVG( wine.cases ) FROM wine WHERE wine.year = 2009 AND grapes.grape = 'Zinfandel'	wine_1
SELECT AVG( wine.price ) , AVG( wine.cases ) FROM wine WHERE wine.grape = 'Zinfandel' AND wine.year = 2009	wine_1
SELECT MAX( wine.price ) , wine.score FROM wine WHERE wine.appelation = 'St. Helena'	wine_1
SELECT MAX( wine.price ) , wine.score FROM wine WHERE wine.appelation = 'St. Helena'	wine_1
SELECT MAX( wine.price ) , wine.score , wine.year FROM wine GROUP BY wine.year	wine_1
SELECT MAX( wine.price ) , wine.score , wine.year FROM wine GROUP BY wine.year	wine_1
SELECT AVG( wine.price ) , AVG( wine.score ) , wine.appelation FROM wine GROUP BY wine.appelation	wine_1
SELECT AVG( wine.price ) , AVG( wine.score ) , wine.appelation FROM wine GROUP BY wine.appelation	wine_1
SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT( * ) >= 4	wine_1
SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT( * ) >= 4	wine_1
SELECT appellations.county FROM wine JOIN appellations ON wine.appelation = appellations.appelation GROUP BY appellations.appelation HAVING COUNT( * ) <= 3	wine_1
SELECT appellations.county FROM wine JOIN appellations ON wine.appelation = appellations.appelation GROUP BY appellations.appelation HAVING COUNT( * ) <= 3	wine_1
SELECT wine.name FROM wine WHERE wine.year<(SELECT MIN( wine.year ) FROM wine WHERE wine.winery = 'Brander')	wine_1
SELECT wine.name FROM wine WHERE wine.name != (SELECT wine.name FROM wine WHERE wine.winery = 'Brander')	wine_1
SELECT wine.name FROM wine WHERE wine.price > (SELECT MAX( wine.price ) FROM wine WHERE wine.year = 2006)	wine_1
SELECT wine.name FROM wine WHERE wine.price > (SELECT MAX( wine.price ) FROM wine WHERE wine.year = 2006)	wine_1
SELECT wine.winery FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'white' GROUP BY wine.winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1
SELECT wine.winery FROM wine JOIN grapes ON wine.grape = grapes.grape WHERE grapes.color = 'white' GROUP BY wine.winery ORDER BY COUNT( * ) DESC LIMIT 3	wine_1
SELECT wine.grape , wine.winery FROM wine WHERE wine.price > 100 ORDER BY wine.year ASC	wine_1
SELECT wine.grape , wine.winery FROM wine WHERE wine.price > 100 ORDER BY wine.year ASC	wine_1
SELECT wine.grape , wine.appelation , wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name ASC	wine_1
SELECT wine.grape , wine.appelation , wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name ASC	wine_1
SELECT wine.appelation FROM wine WHERE wine.year > 2008 AND appellations.area != 'Central Coast'	wine_1
SELECT wine.appelation FROM wine WHERE wine.year > 2008 AND appellations.area != 'Central Coast'	wine_1
SELECT AVG( wine.price ) FROM wine WHERE wine.appelation NOT IN (SELECT appellations.appelation FROM appellations WHERE appellations.county = 'Sonoma')	wine_1
SELECT AVG( wine.price ) FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE appellations.county = 'Sonoma'	wine_1
SELECT appellations.county FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.score > 90 GROUP BY appellations.county ORDER BY COUNT( * ) DESC LIMIT 1	wine_1
SELECT appellations.county FROM wine JOIN appellations ON wine.appelation = appellations.appelation WHERE wine.score > 90 GROUP BY appellations.county ORDER BY COUNT( * ) DESC LIMIT 1	wine_1
SELECT vehicles.vehicle_id FROM vehicles	driving_school
SELECT vehicles.vehicle_id FROM vehicles	driving_school
SELECT COUNT( * ) FROM vehicles	driving_school
SELECT COUNT( * ) FROM vehicles	driving_school
SELECT vehicles.vehicle_details FROM vehicles WHERE vehicles.vehicle_id = 1	driving_school
SELECT vehicles.vehicle_details FROM vehicles WHERE vehicles.vehicle_id = 1	driving_school
SELECT staff.first_name , staff.middle_name , staff.last_name FROM staff	driving_school
SELECT staff.first_name , staff.middle_name , staff.last_name FROM staff	driving_school
SELECT staff.date_of_birth FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT staff.date_of_birth FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Janessa Sawayn'	driving_school
SELECT staff.date_joined_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT staff.date_joined_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Janessa Sawayn'	driving_school
SELECT staff.date_left_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT staff.date_left_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Janessa Sawayn'	driving_school
SELECT COUNT( * ) FROM staff WHERE staff.first_name = 'Ludie'	driving_school
SELECT COUNT( * ) FROM staff WHERE staff.first_name = 'Ludie'	driving_school
SELECT staff.nickname FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT staff.nickname FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Janessa Sawayn'	driving_school
SELECT COUNT( * ) FROM staff	driving_school
SELECT COUNT( * ) FROM staff	driving_school
SELECT addresses.city FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT addresses.city FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT addresses.country , addresses.state_province_county FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT addresses.country , addresses.state_province_county FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT SUM( lessons.lesson_time ) FROM customers JOIN lessons ON customers.customer_id = lessons.customer_id WHERE customers.first_name = 'Rylan' AND customers.last_name = 'Goodwin'	driving_school
SELECT SUM( lessons.lesson_time ) FROM customers JOIN lessons ON customers.customer_id = lessons.customer_id WHERE customers.last_name = 'Rylan Goodwin'	driving_school
SELECT addresses.zip_postcode FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT addresses.zip_postcode FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT COUNT( * ) FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE addresses.state_province_county = 'Georgia'	driving_school
SELECT COUNT( * ) FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE addresses.state_province_county = 'Georgia'	driving_school
SELECT staff.first_name , staff.last_name FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE addresses.city = 'Damianfort'	driving_school
SELECT staff.first_name , staff.last_name FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id WHERE addresses.city = 'Damianfort'	driving_school
SELECT addresses.city , COUNT( * ) FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id GROUP BY addresses.city ORDER BY COUNT( * ) DESC LIMIT 1	driving_school
SELECT addresses.city , COUNT( * ) FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id GROUP BY addresses.city ORDER BY COUNT( * ) DESC LIMIT 1	driving_school
SELECT addresses.state_province_county FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id GROUP BY addresses.state_province_county HAVING COUNT( * ) BETWEEN 2 and 4	driving_school
SELECT addresses.state_province_county FROM addresses JOIN staff ON addresses.address_id = staff.staff_address_id GROUP BY addresses.state_province_county HAVING COUNT( * ) BETWEEN 2 and 4	driving_school
SELECT customers.first_name , customers.last_name FROM customers	driving_school
SELECT customers.first_name , customers.last_name FROM customers	driving_school
SELECT customers.email_address , customers.date_of_birth FROM customers WHERE customers.first_name = 'Carole'	driving_school
SELECT customers.email_address , customers.date_of_birth FROM customers WHERE customers.first_name = 'Carole'	driving_school
SELECT customers.phone_number , customers.email_address FROM customers WHERE customers.amount_outstanding > 2000	driving_school
SELECT customers.phone_number , customers.email_address FROM customers WHERE customers.amount_outstanding > 2000	driving_school
SELECT customers.customer_status_code , customers.cell_mobile_phone_number , customers.email_address FROM customers WHERE customers.last_name = 'Kohler' OR customers.first_name = 'Marina'	driving_school
SELECT customers.customer_status_code , customers.phone_number , customers.email_address FROM customers WHERE customers.first_name = 'Kohler' OR customers.first_name = 'Marina'	driving_school
SELECT customers.date_of_birth FROM customers WHERE customers.customer_status_code = 'Good Customer'	driving_school
SELECT customers.date_of_birth FROM customers WHERE customers.customer_status_code = 'Good Customer'	driving_school
SELECT customers.date_became_customer FROM customers WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT customers.date_became_customer FROM customers WHERE customers.date_became_customer<(SELECT customers.date_became_customer FROM customers WHERE customers.first_name = 'Bernhard')	driving_school
SELECT COUNT( * ) FROM customers	driving_school
SELECT COUNT( * ) FROM customers	driving_school
SELECT customers.customer_status_code , COUNT( * ) FROM customers GROUP BY customers.customer_status_code	driving_school
SELECT customers.customer_status_code , COUNT( * ) FROM customers GROUP BY customers.customer_status_code	driving_school
SELECT customers.customer_status_code FROM customers GROUP BY customers.customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
SELECT customers.customer_status_code FROM customers GROUP BY customers.customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
SELECT COUNT( * ) FROM customers JOIN lessons ON customers.customer_id = lessons.customer_id WHERE customers.first_name = 'Rylan' AND customers.last_name = 'Goodwin'	driving_school
SELECT COUNT( * ) FROM lessons JOIN customers ON lessons.customer_id = customers.customer_id WHERE customers.first_name = 'Ryan' AND customers.last_name = 'Goodwin'	driving_school
SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT customers.first_name , customers.last_name FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE addresses.city = 'Lockmanfurt'	driving_school
SELECT customers.first_name , customers.last_name FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE addresses.city = 'Lockmanfurt'	driving_school
SELECT addresses.country FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT addresses.country FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT addresses.zip_postcode FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT addresses.zip_postcode FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT addresses.city FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id GROUP BY addresses.city ORDER BY COUNT( * ) DESC LIMIT 1	driving_school
SELECT addresses.city FROM addresses JOIN customers ON addresses.address_id = customers.customer_address_id GROUP BY addresses.city ORDER BY COUNT( * ) DESC LIMIT 1	driving_school
SELECT SUM( customer_payments.amount_payment ) FROM customer_payments JOIN customers ON customer_payments.customer_id = customers.customer_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT SUM( customer_payments.amount_payment ) FROM customer_payments JOIN customers ON customer_payments.customer_id = customers.customer_id WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
SELECT COUNT( * ) FROM customers WHERE customers.customer_id NOT IN (SELECT customer_payments.customer_id FROM customer_payments)	driving_school
SELECT COUNT( * ) FROM customers WHERE customers.customer_id NOT IN (SELECT customer_payments.customer_id FROM customer_payments)	driving_school
SELECT customers.first_name , customers.last_name FROM customer_payments JOIN customers ON customer_payments.customer_id = customers.customer_id GROUP BY customer_payments.customer_id HAVING COUNT( * ) > 2	driving_school
SELECT customers.first_name , customers.last_name FROM customer_payments JOIN customers ON customer_payments.customer_id = customers.customer_id GROUP BY customer_payments.customer_id HAVING COUNT( * ) > 2	driving_school
SELECT customer_payments.payment_method_code , COUNT( * ) FROM customer_payments GROUP BY customer_payments.payment_method_code	driving_school
SELECT customer_payments.payment_method_code , COUNT( * ) FROM customer_payments GROUP BY customer_payments.payment_method_code	driving_school
SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
SELECT lessons.lesson_id FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.nickname LIKE '%Sawayn%' AND staff.last_name = 's'	driving_school
SELECT lessons.lesson_id FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.nickname LIKE '%s%'	driving_school
SELECT COUNT( * ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name LIKE '%a%'	driving_school
SELECT COUNT( * ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name LIKE '%a%'	driving_school
SELECT SUM( lessons.lesson_time ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT SUM( lessons.lesson_time ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT AVG( lessons.price ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT AVG( lessons.price ) FROM lessons JOIN staff ON lessons.staff_id = staff.staff_id WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
SELECT COUNT( * ) FROM customers JOIN lessons ON customers.customer_id = lessons.customer_id WHERE customers.first_name = 'Ray'	driving_school
SELECT COUNT( * ) FROM customers JOIN lessons ON customers.customer_id = lessons.customer_id WHERE customers.first_name = 'Ray'	driving_school
SELECT customers.last_name FROM customers UNION SELECT customers.last_name FROM customers JOIN staff ON customers.customer_id = staff.last_name	driving_school
SELECT customers.last_name FROM customers UNION SELECT customers.last_name FROM customers JOIN staff ON customers.customer_id = staff.last_name	driving_school
SELECT staff.first_name FROM staff WHERE staff.staff_id NOT IN (SELECT lessons.staff_id FROM lessons)	driving_school
SELECT staff.first_name FROM staff WHERE staff.staff_id NOT IN (SELECT lessons.staff_id FROM lessons)	driving_school
SELECT lessons.vehicle_id , vehicles.vehicle_details FROM lessons JOIN vehicles ON lessons.vehicle_id = vehicles.vehicle_id GROUP BY lessons.vehicle_id ORDER BY COUNT( * ) DESC LIMIT 1	driving_school
SELECT airports.name FROM airports WHERE airports.city = 'Goroka'	flight_4
SELECT airports.name FROM airports WHERE airports.city = 'Goroka'	flight_4
SELECT airports.name , airports.country , airports.elevation FROM airports WHERE airports.city = 'New York'	flight_4
SELECT airports.name , airports.country , airports.elevation FROM airports WHERE airports.city = 'New York'	flight_4
SELECT COUNT( * ) FROM airlines	flight_4
SELECT COUNT( * ) FROM airlines	flight_4
SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'Russia'	flight_4
SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'Russia'	flight_4
SELECT MAX( airports.elevation ) FROM airports WHERE airports.country = 'Iceland'	flight_4
SELECT MAX( airports.elevation ) FROM airports WHERE airports.country = 'Iceland'	flight_4
SELECT airports.name FROM airports WHERE airports.country = 'Cuba' OR airports.country = 'Argentina'	flight_4
SELECT airports.name FROM airports WHERE airports.country = 'Cuba' OR airports.country = 'Argentina'	flight_4
SELECT airlines.country FROM airlines WHERE airlines.name LIKE '%Orbit%'	flight_4
SELECT airlines.country FROM airlines WHERE airlines.name LIKE '%Orbit%'	flight_4
SELECT airports.name FROM airports WHERE airports.elevation BETWEEN 50 and 50	flight_4
SELECT airports.name FROM airports WHERE airports.elevation BETWEEN 50 and 50	flight_4
SELECT airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
SELECT airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
SELECT COUNT( * ) FROM airports WHERE airports.name LIKE '%International%'	flight_4
SELECT COUNT( * ) FROM airports WHERE airports.name LIKE '%Interanation%'	flight_4
SELECT COUNT( DISTINCT airports.city ) FROM airports WHERE airports.country = 'Greenland'	flight_4
SELECT SUM( airports.city ) FROM airports WHERE airports.country = 'Greenland'	flight_4
SELECT COUNT( * ) FROM routes JOIN airlines ON routes.alid = airlines.alid WHERE airlines.callsign = 'American Airlines'	flight_4
SELECT COUNT( * ) FROM routes JOIN airlines ON routes.alid = airlines.alid WHERE airlines.name = 'American Airlines'	flight_4
SELECT COUNT( * ) FROM routes JOIN airports ON routes.dst_apid = airports.apid WHERE airports.country = 'Canada'	flight_4
SELECT COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.dst_apid WHERE airports.country = 'Canadian'	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
SELECT airports.name , airports.city FROM airports JOIN routes ON airports.apid = routes.dst_apid GROUP BY routes.dst_apid ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airports.name , airports.city FROM airports JOIN routes ON airports.apid = routes.src_apid GROUP BY routes.dst_apid ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.name FROM airlines JOIN routes ON airlines.alid = routes.alid GROUP BY routes.alid ORDER BY COUNT( * ) DESC LIMIT 10	flight_4
SELECT airlines.name FROM routes JOIN airlines ON routes.alid = airlines.alid GROUP BY routes.alid ORDER BY COUNT( * ) DESC LIMIT 10	flight_4
SELECT airports.name , airports.city FROM airports JOIN routes ON airports.apid = routes.src_apid GROUP BY routes.src_apid ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airports.name , airports.city FROM airports JOIN routes ON airports.apid = routes.src_apid GROUP BY airports.name ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT COUNT( DISTINCT routes.dst_apid ) FROM airlines JOIN routes ON airlines.alid = routes.alid WHERE airlines.name = 'American Airlines'	flight_4
SELECT COUNT( DISTINCT routes.dst_apid ) FROM airlines JOIN routes ON airlines.alid = routes.alid WHERE airlines.name = 'American Airlines'	flight_4
SELECT airlines.country FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.country FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.country FROM airlines WHERE airlines.active = 'y' GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.country FROM airlines WHERE airlines.active = 'y' GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.country , COUNT( * ) FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC	flight_4
SELECT airlines.country , COUNT( * ) FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.country , COUNT( * ) FROM airports GROUP BY airports.country ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.country , COUNT( * ) FROM airports GROUP BY airports.country ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.city , COUNT( * ) FROM airports WHERE airports.country = 'United States' GROUP BY airports.city ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.city , COUNT( * ) FROM airports GROUP BY airports.city ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
SELECT airports.city FROM airports WHERE airports.country = 'United States' GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
SELECT COUNT( DISTINCT airports.city ) FROM airports GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
SELECT airports.city , COUNT( * ) FROM airports GROUP BY airports.city HAVING COUNT( * ) > 1	flight_4
SELECT airports.city , COUNT( * ) FROM airports GROUP BY airports.city HAVING COUNT( * ) > 1	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 2	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 2	flight_4
SELECT routes.src_ap , airports.name , COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.src_apid GROUP BY routes.src_ap	flight_4
SELECT airports.name , COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.dst_apid GROUP BY airports.name	flight_4
SELECT routes.src_ap , airports.name , COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.src_apid GROUP BY routes.src_ap ORDER BY COUNT( * ) DESC	flight_4
SELECT airports.name , COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.dst_apid GROUP BY airports.name ORDER BY COUNT( * ) DESC	flight_4
SELECT AVG( airports.elevation ) , airports.country FROM airports GROUP BY airports.country	flight_4
SELECT airports.country , AVG( airports.elevation ) FROM airports GROUP BY airports.country	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
SELECT airlines.country , airlines.name , COUNT( * ) FROM airlines JOIN routes ON airlines.alid = routes.alid GROUP BY airlines.country	flight_4
SELECT COUNT( * ) , airlines.country FROM airlines JOIN routes ON airlines.alid = routes.alid GROUP BY airlines.country	flight_4
SELECT COUNT( * ) FROM airports JOIN routes ON airports.apid = routes.dst_apid WHERE airports.country = 'Italy'	flight_4
SELECT COUNT( * ) FROM routes WHERE routes.dst_ap = 'Italian'	flight_4
SELECT COUNT( * ) FROM airlines JOIN routes ON airlines.alid = routes.alid WHERE routes.dst_ap = 'Italy' AND airlines.name = 'American Airlines'	flight_4
SELECT COUNT( * ) FROM airlines JOIN routes ON airlines.alid = routes.alid WHERE airlines.name = 'Italy' AND airlines.name = 'American Airlines'	flight_4
SELECT COUNT( * ) FROM routes WHERE routes.dst_ap = 'John F Kennedy International Airport'	flight_4
SELECT COUNT( * ) FROM routes WHERE routes.dst_ap = 'John F Kennedy International Airport'	flight_4
SELECT COUNT( * ) FROM routes WHERE routes.src_ap = 'United States' AND routes.dst_ap = 'Canada'	flight_4
SELECT COUNT( * ) FROM routes JOIN airports ON routes.dst_apid = airports.apid WHERE airports.country = 'United States' AND airports.country = 'Canada'	flight_4
SELECT routes.rid FROM routes WHERE routes.src_ap = 'United States'	flight_4
SELECT routes.rid FROM routes JOIN airports ON routes.src_apid = airports.apid WHERE airports.country = 'United States'	flight_4
SELECT airlines.name FROM routes JOIN airlines ON routes.alid = airlines.alid GROUP BY routes.alid ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airlines.name FROM routes JOIN airlines ON routes.alid = airlines.alid GROUP BY routes.airline ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT routes.src_ap FROM routes JOIN airports ON routes.src_apid = airports.apid WHERE airports.country = 'China' GROUP BY routes.src_ap ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airports.name FROM airports JOIN routes ON airports.apid = routes.src_apid WHERE airports.country = 'China' GROUP BY airports.name ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT routes.dst_ap FROM routes JOIN airports ON routes.dst_apid = airports.apid WHERE airports.country = 'China' GROUP BY routes.dst_ap ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT airports.name FROM airports JOIN routes ON airports.apid = routes.dst_apid WHERE airports.country = 'China' GROUP BY routes.dst_apid ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
SELECT COUNT( * ) FROM architect WHERE architect.gender = 'f'	architecture
SELECT architect.name , architect.nationality , architect.id FROM architect WHERE architect.gender = 'male' ORDER BY architect.name ASC	architecture
SELECT MAX( bridge.length_meters ) , architect.name FROM bridge JOIN architect ON bridge.architect_id = architect.id	architecture
SELECT AVG( bridge.length_feet ) FROM bridge	architecture
SELECT mill.name , mill.built_year FROM mill WHERE mill.type = 'Grondzeiler'	architecture
SELECT DISTINCT architect.name , architect.nationality FROM mill JOIN architect ON mill.architect_id = architect.id	architecture
SELECT mill.name FROM mill WHERE mill.location != 'Donceel'	architecture
SELECT DISTINCT mill.type FROM architect JOIN mill ON architect.id = mill.architect_id WHERE architect.nationality = 'American' OR architect.nationality = 'Canadian'	architecture
SELECT architect.id , architect.name FROM architect JOIN bridge ON architect.id = bridge.architect_id GROUP BY bridge.architect_id HAVING COUNT( * ) >= 3	architecture
SELECT architect.id , architect.name , architect.nationality FROM mill JOIN architect ON mill.architect_id = architect.id GROUP BY mill.architect_id ORDER BY COUNT( * ) DESC LIMIT 1	architecture
SELECT architect.id , architect.name , architect.gender FROM architect JOIN bridge ON architect.id = bridge.architect_id GROUP BY architect.id HAVING COUNT( * ) >= 2	architecture
SELECT bridge.location FROM bridge WHERE bridge.name = 'Kolob Arch' OR bridge.name = 'Rainbow Bridge'	architecture
SELECT mill.name FROM mill WHERE mill.name LIKE '%Moulin%'	architecture
SELECT DISTINCT mill.name FROM mill JOIN architect ON mill.architect_id = architect.id JOIN bridge ON architect.id = bridge.architect_id WHERE bridge.length_meters > 80	architecture
SELECT mill.type , COUNT( * ) FROM mill GROUP BY mill.type ORDER BY COUNT( * ) DESC LIMIT 1	architecture
SELECT COUNT( * ) FROM mill JOIN architect ON mill.architect_id = architect.id WHERE mill.built_year<1850	architecture
SELECT bridge.name FROM architect JOIN bridge ON architect.id = bridge.architect_id ORDER BY bridge.length_feet ASC	architecture
