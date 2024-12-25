SELECT COUNT( * ) FROM head WHERE head.age > 56	department_management
SELECT head.name , head.born_state , head.age FROM head ORDER BY head.age ASC	department_management
SELECT department.creation , department.name , department.budget_in_billions FROM department	department_management
SELECT MAX( department.budget_in_billions ) , MIN( department.budget_in_billions ) FROM department	department_management
SELECT AVG( department.num_employees ) FROM department WHERE department.ranking BETWEEN 10 and 15	department_management
SELECT head.name FROM head WHERE head.born_state != 'California'	department_management
SELECT head.born_state FROM head GROUP BY head.born_state HAVING COUNT( * ) >= 3	department_management
SELECT department.creation FROM department GROUP BY department.creation ORDER BY COUNT( * ) DESC LIMIT 1	department_management
SELECT COUNT( * ) FROM management WHERE management.temporary_acting = '1'	department_management
SELECT head.head_id , head.name FROM head WHERE head.name LIKE '%Ha%'	department_management
SELECT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT DISTINCT student_course_attendance.student_id FROM student_course_attendance	student_assessment
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT COUNT( * ) FROM book	book_2
SELECT book.writer FROM book ORDER BY book.writer ASC	book_2
SELECT book.title FROM book ORDER BY book.issues ASC	book_2
SELECT book.title FROM book WHERE book.writer != 'Elaine Lee'	book_2
SELECT book.title , book.issues FROM book	book_2
SELECT publication.publication_date FROM publication ORDER BY publication.price DESC	book_2
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 5000000	book_2
SELECT publication.publisher FROM publication ORDER BY publication.price DESC LIMIT 1	book_2
SELECT publication.publication_date FROM publication ORDER BY publication.price ASC LIMIT 3	book_2
SELECT publication.publisher FROM publication GROUP BY publication.publisher HAVING COUNT( * ) > 1	book_2
SELECT publication.publisher , COUNT( * ) FROM publication GROUP BY publication.publisher	book_2
SELECT publication.publication_date FROM publication GROUP BY publication.publication_date ORDER BY COUNT( * ) DESC LIMIT 1	book_2
SELECT book.writer FROM book GROUP BY book.writer HAVING COUNT( * ) > 1	book_2
SELECT publication.publisher FROM publication WHERE publication.price > 10000000 INTERSECT SELECT publication.publisher FROM publication WHERE publication.price<5000000	book_2
SELECT COUNT( DISTINCT publication.publication_date ) FROM publication	book_2
SELECT COUNT( DISTINCT publication.publication_date ) FROM publication	book_2
SELECT publication.price FROM publication WHERE publication.publisher = 'Person' OR publication.publisher = 'Wiley'	book_2
SELECT COUNT( * ) , follows.f1 FROM follows GROUP BY follows.f1	twitter_1
SELECT COUNT( * ) , follows.f1 FROM follows GROUP BY follows.f1	twitter_1
SELECT COUNT( * ) FROM tweets	twitter_1
SELECT COUNT( DISTINCT tweets.uid ) FROM tweets	twitter_1
SELECT tweets.text FROM tweets WHERE tweets.text LIKE '%intern%'	twitter_1
SELECT tweets.text FROM tweets ORDER BY tweets.createdate ASC	twitter_1
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
SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
SELECT employee.eid FROM employee EXCEPT SELECT certificate.eid FROM certificate	flight_1
SELECT employee.eid FROM employee EXCEPT SELECT certificate.eid FROM certificate	flight_1
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , invoices.total FROM invoices ORDER BY invoices.total DESC LIMIT 8	store_1
SELECT invoices.billing_country , SUM( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY SUM( invoices.total ) DESC LIMIT 8	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY AVG( invoices.total ) ASC	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
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
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.address FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT customers.address FROM employees JOIN employees ON employees.id = employees.address WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
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
SELECT DISTINCT genres.name FROM genres	store_1
SELECT DISTINCT genres.name FROM genres	store_1
SELECT playlists.name FROM playlists	store_1
SELECT playlists.name FROM playlists	store_1
SELECT tracks.composer FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT sqlite_sequence.seq FROM albums JOIN tracks ON albums.id = tracks.album_id JOIN sqlite_sequence ON tracks.composer = sqlite_sequence.name WHERE albums.title = 'Fast As a Shark'	store_1
SELECT COUNT( * ) FROM albums WHERE albums.title = 'Fast As a Shark'	store_1
SELECT SUM( tracks.milliseconds ) FROM albums JOIN tracks ON albums.id = tracks.album_id WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE albums.title = 'Fast As a Shark'	store_1
SELECT SUM( tracks.unit_price ) FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE albums.title = 'Fast As a Shark'	store_1
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
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved = 'No'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved != 1	medicine_enzyme_interaction
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
SELECT phone.company_name , COUNT( * ) FROM phone GROUP BY phone.company_name ORDER BY COUNT( * ) ASC LIMIT 1	phone_1
SELECT phone.company_name FROM phone GROUP BY phone.company_name HAVING COUNT( * ) > 1	phone_1
SELECT MAX( screen_mode.used_kb ) , MIN( screen_mode.used_kb ) , AVG( screen_mode.used_kb ) FROM screen_mode	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_level FROM phone GROUP BY phone.accreditation_level HAVING COUNT( * ) > 3	phone_1
SELECT * FROM chip_model	phone_1
SELECT COUNT( * ) FROM chip_model WHERE chip_model.wifi != 'wifi'	phone_1
SELECT COUNT( * ) FROM chip_model WHERE chip_model.wifi != 1	phone_1
SELECT chip_model.model_name FROM chip_model ORDER BY chip_model.launch_year ASC	phone_1
SELECT AVG( chip_model.ram_mib ) FROM chip_model WHERE chip_model.model_name NOT IN (SELECT phone.chip_model FROM phone)	phone_1
SELECT chip_model.model_name FROM chip_model EXCEPT SELECT phone.chip_model FROM phone WHERE phone.accreditation_type = 'full accreditation'	phone_1
SELECT people.birth_place , COUNT( * ) FROM people GROUP BY people.birth_place	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place ORDER BY COUNT( * ) DESC LIMIT 1	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place HAVING COUNT( * ) >= 2	body_builder
SELECT people.weight , people.height FROM people ORDER BY people.height DESC	body_builder
SELECT COUNT( DISTINCT people.birth_place ) FROM people	body_builder
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
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , student.dept_name FROM student GROUP BY student.dept_name	college_2
SELECT student.dept_name , COUNT( * ) FROM student GROUP BY student.dept_name	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.salary > (SELECT AVG( instructor.salary ) FROM instructor) GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT AVG( instructor.salary ) FROM instructor	college_2
SELECT instructor.name , instructor.salary FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Physics')	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'computer science'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci' AND instructor.salary > 80000	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci' AND instructor.salary > 80000	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
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
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT DISTINCT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
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
SELECT COUNT( * ) FROM wedding WHERE wedding.year = 2016	wedding
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
SELECT item.title FROM item ORDER BY item.title ASC	epinions_1
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT COUNT( * ) FROM gymnast	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.total_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.total_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC	gymnast
SELECT gymnast.total_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC	gymnast
SELECT AVG( gymnast.horizontal_bar_points ) FROM gymnast	gymnast
SELECT AVG( gymnast.horizontal_bar_points ) FROM gymnast	gymnast
SELECT people.age FROM people ORDER BY people.height DESC LIMIT 1	gymnast
SELECT people.age FROM people ORDER BY people.height DESC LIMIT 1	gymnast
SELECT people.hometown FROM people WHERE people.age > 23 INTERSECT SELECT people.hometown FROM people WHERE people.age<20	gymnast
SELECT people.hometown FROM people WHERE people.age > 23 INTERSECT SELECT people.hometown FROM people WHERE people.age<20	gymnast
SELECT COUNT( DISTINCT people.hometown ) FROM people	gymnast
SELECT COUNT( DISTINCT people.hometown ) FROM people	gymnast
SELECT COUNT( * ) FROM browser WHERE browser.market_share >= 5	browser_web
SELECT browser.name FROM browser ORDER BY browser.market_share DESC	browser_web
SELECT browser.id , browser.name , browser.market_share FROM browser	browser_web
SELECT MAX( browser.market_share ) , MIN( browser.market_share ) , AVG( browser.market_share ) FROM browser	browser_web
SELECT browser.id , browser.market_share FROM browser WHERE browser.name = 'Safari'	browser_web
SELECT COUNT( * ) FROM school	school_finance
SELECT COUNT( * ) FROM school	school_finance
SELECT school.school_name FROM school ORDER BY school.school_name ASC	school_finance
SELECT school.school_name , school.location , school.mascot FROM school	school_finance
SELECT SUM( school.enrollment ) , AVG( school.enrollment ) FROM school	school_finance
SELECT school.mascot FROM school WHERE school.enrollment > (SELECT AVG( school.enrollment ) FROM school)	school_finance
SELECT school.school_name FROM school ORDER BY school.enrollment ASC LIMIT 1	school_finance
SELECT AVG( school.enrollment ) , MAX( school.enrollment ) , MIN( school.enrollment ) FROM school	school_finance
SELECT school.county , COUNT( * ) , SUM( school.enrollment ) FROM school GROUP BY school.county	school_finance
SELECT endowment.donator_name , endowment.amount FROM endowment ORDER BY endowment.amount DESC	school_finance
SELECT endowment.donator_name FROM endowment EXCEPT SELECT endowment.donator_name FROM endowment WHERE endowment.amount<9	school_finance
SELECT endowment.amount , endowment.donator_name FROM endowment ORDER BY endowment.amount DESC LIMIT 1	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.year BETWEEN 3000 and 2001	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.year BETWEEN 2001 and 3000	school_finance
SELECT endowment.donator_name FROM endowment	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.budgeted<budget.invested	school_finance
SELECT COUNT( * ) FROM endowment WHERE endowment.amount<8.5 HAVING COUNT( * ) > 1	school_finance
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
SELECT COUNT( * ) FROM participants WHERE participants.participant_type_code = 'Organizer'	local_govt_in_alabama
SELECT services.service_type_code FROM services ORDER BY services.service_type_code ASC	local_govt_in_alabama
SELECT participants.participant_type_code FROM participants GROUP BY participants.participant_type_code ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
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
SELECT technician.starting_year FROM technician WHERE technician.team = 'CLE' INTERSECT SELECT technician.starting_year FROM technician WHERE technician.team = 'CWS'	machine_repair
SELECT technician.starting_year FROM technician WHERE technician.team = 'CLE' OR technician.team = 'CWS'	machine_repair
SELECT COUNT( * ) FROM perpetrator	perpetrator
SELECT perpetrator.date FROM perpetrator ORDER BY perpetrator.killed DESC	perpetrator
SELECT perpetrator.injured FROM perpetrator ORDER BY perpetrator.injured ASC	perpetrator
SELECT AVG( perpetrator.injured ) FROM perpetrator	perpetrator
SELECT perpetrator.location FROM perpetrator ORDER BY perpetrator.killed DESC LIMIT 1	perpetrator
SELECT perpetrator.country , COUNT( * ) FROM perpetrator GROUP BY perpetrator.country	perpetrator
SELECT perpetrator.country FROM perpetrator GROUP BY perpetrator.country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT perpetrator.country FROM perpetrator GROUP BY perpetrator.country HAVING COUNT( * ) >= 2	perpetrator
SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured > 50 INTERSECT SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured<20	perpetrator
SELECT COUNT( DISTINCT perpetrator.location ) FROM perpetrator	perpetrator
SELECT perpetrator.year FROM perpetrator GROUP BY perpetrator.year ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT rooms.roomname FROM rooms JOIN two ON rooms.beds = two WHERE rooms.baseprice<160	inn_1
SELECT rooms.roomname FROM rooms JOIN two ON rooms.beds = two WHERE rooms.baseprice<160	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT SUM( reservations.kids ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
SELECT SUM( reservations.kids ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZ'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY SWEAZY'	inn_1
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
SELECT COUNT( * ) FROM rooms WHERE rooms.decor = 'modern'	inn_1
SELECT rooms.decor FROM rooms GROUP BY rooms.decor ORDER BY COUNT( * ) ASC LIMIT 1	inn_1
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
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice BETWEEN 120 and 150	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice BETWEEN 120 and 150	inn_1
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
SELECT host.name , host.nationality FROM host ORDER BY host.age DESC LIMIT 1	party_host
SELECT host.name , host.nationality FROM host ORDER BY host.age DESC LIMIT 1	party_host
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
SELECT county.county_name FROM county ORDER BY county.population ASC	election
SELECT county.county_name FROM county ORDER BY county.population ASC	election
SELECT county.county_name FROM county ORDER BY county.county_name DESC	election
SELECT county.county_name FROM county ORDER BY county.county_name DESC	election
SELECT county.county_name FROM county ORDER BY county.population DESC LIMIT 1	election
SELECT county.county_name FROM county ORDER BY county.population DESC LIMIT 1	election
SELECT county.county_name FROM county ORDER BY county.population ASC LIMIT 3	election
SELECT county.county_name FROM county ORDER BY county.population ASC LIMIT 3	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.party FROM election JOIN party ON election.party = party.party_id GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM authors	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT COUNT( * ) FROM papers	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
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
SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
SELECT bank.bname FROM bank JOIN customer ON bank.branch_id = customer.branch_id GROUP BY bank.branch_id ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT bank.bname FROM bank ORDER BY bank.no_of_customers DESC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
SELECT customer.cust_name FROM customer ORDER BY customer.no_of_loans DESC LIMIT 1	loan_1
SELECT customer.state FROM customer GROUP BY customer.state ORDER BY COUNT( * ) DESC LIMIT 1	loan_1
SELECT customer.acc_type , AVG( customer.acc_bal ) FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
SELECT AVG( customer.acc_bal ) , customer.acc_type FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
SELECT AVG( customer.credit_score ) FROM customer JOIN loan ON customer.cust_id = loan.cust_id	loan_1
SELECT AVG( customer.credit_score ) FROM customer	loan_1
SELECT AVG( customer.credit_score ) FROM customer WHERE customer.cust_id NOT IN (SELECT loan.cust_id FROM loan)	loan_1
SELECT AVG( customer.credit_score ) FROM customer WHERE customer.cust_id NOT IN (SELECT loan.cust_id FROM loan)	loan_1
SELECT DISTINCT maintenance_engineers.last_name FROM maintenance_engineers	assets_maintenance
SELECT COUNT( DISTINCT fault_log_parts.fault_status ) FROM fault_log_parts	assets_maintenance
SELECT maintenance_engineers.first_name , maintenance_engineers.last_name FROM maintenance_engineers WHERE maintenance_engineers.engineer_id NOT IN (SELECT engineer_visits.engineer_id FROM engineer_visits)	assets_maintenance
SELECT assets.asset_id , assets.other_asset_details , assets.asset_make , assets.asset_model FROM assets	assets_maintenance
SELECT assets.asset_acquired_date FROM assets ORDER BY assets.asset_acquired_date ASC LIMIT 1	assets_maintenance
SELECT DISTINCT assets.asset_model FROM assets	assets_maintenance
SELECT assets.asset_make , assets.asset_model , assets.asset_details FROM assets ORDER BY assets.asset_disposed_date ASC	assets_maintenance
SELECT asset_parts.part_id , parts.part_name FROM parts JOIN part_faults ON parts.part_id = part_faults.part_id GROUP BY parts.part_id ORDER BY SUM( parts.chargeable_amount ) ASC LIMIT 1	assets_maintenance
SELECT staff.gender FROM staff GROUP BY staff.gender ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
SELECT assets.asset_model FROM assets WHERE assets.asset_id NOT IN (SELECT fault_log.asset_id FROM fault_log)	assets_maintenance
SELECT COUNT( * ) FROM class WHERE class.class_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM class WHERE class.class_code = 'ACCT-211'	college_1
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
SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
SELECT COUNT( * ) , professor.dept_code FROM professor WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code	college_1
SELECT professor.dept_code , COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' GROUP BY professor.dept_code	college_1
SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT SUM( student.stu_hrs ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT student.dept_code , SUM( student.stu_hrs ) FROM student GROUP BY student.dept_code	college_1
SELECT AVG( student.stu_gpa ) , MAX( student.stu_gpa ) , MIN( student.stu_gpa ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
SELECT MAX( student.stu_gpa ) , MIN( student.stu_gpa ) , AVG( student.stu_gpa ) FROM student	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( DISTINCT department.school_code ) FROM department	college_1
SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
SELECT COUNT( * ) FROM course	college_1
SELECT COUNT( DISTINCT course.crs_code ) FROM course	college_1
SELECT COUNT( * ) FROM department WHERE department.school_code = 'college'	college_1
SELECT COUNT( * ) FROM department	college_1
SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM employee	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D'	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 1	college_1
SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
SELECT class.crs_code FROM class WHERE class.class_room = 'KLR209'	college_1
SELECT class.crs_code FROM class WHERE class.class_room = 'KLR209'	college_1
SELECT employee.emp_fname FROM employee WHERE employee.emp_jobcode = 'PROF' ORDER BY employee.emp_dob ASC	college_1
SELECT employee.emp_fname FROM employee JOIN professor ON employee.emp_num = professor.emp_num WHERE professor.prof_office = 'professors' ORDER BY employee.emp_dob ASC	college_1
SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob DESC LIMIT 1	college_1
SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob ASC LIMIT 1	college_1
SELECT student.stu_fname , student.stu_lname FROM student WHERE student.stu_gpa > 3 ORDER BY student.stu_dob ASC LIMIT 1	college_1
SELECT student.stu_fname , student.stu_lname FROM student WHERE student.stu_gpa > 3	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' OR professor.prof_high_degree = 'MA'	college_1
SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D' OR professor.prof_high_degree = 'Masters'	college_1
SELECT student.stu_fname , student.stu_gpa , student.stu_phone FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
SELECT student.stu_fname , student.stu_gpa , student.stu_phone FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
SELECT student.stu_fname FROM student WHERE student.stu_gpa<(SELECT AVG( student.stu_gpa ) FROM student)	college_1
SELECT AVG( student.stu_gpa ) FROM student	college_1
SELECT SUM( furniture.num_of_component ) FROM furniture	manufacturer
SELECT furniture.name , furniture.furniture_id FROM furniture ORDER BY furniture.market_rate DESC LIMIT 1	manufacturer
SELECT SUM( furniture.market_rate ) FROM furniture	manufacturer
SELECT furniture.num_of_component , furniture.name FROM furniture WHERE furniture.num_of_component > 10	manufacturer
SELECT furniture.name , furniture.num_of_component FROM furniture	manufacturer
SELECT manufacturer.name , manufacturer.open_year FROM manufacturer ORDER BY manufacturer.num_of_shops DESC LIMIT 1	manufacturer
SELECT AVG( manufacturer.num_of_factories ) FROM manufacturer WHERE manufacturer.num_of_shops > 20	manufacturer
SELECT manufacturer.name , manufacturer.manufacturer_id FROM manufacturer ORDER BY manufacturer.open_year ASC	manufacturer
SELECT manufacturer.name , manufacturer.open_year FROM manufacturer WHERE manufacturer.num_of_factories<10 OR manufacturer.num_of_shops > 10	manufacturer
SELECT AVG( manufacturer.num_of_factories ) , MAX( manufacturer.num_of_shops ) FROM manufacturer WHERE manufacturer.open_year<1990	manufacturer
SELECT song.song_name FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
SELECT song.song_name FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
SELECT song.f_id FROM song ORDER BY song.resolution DESC LIMIT 1	music_1
SELECT song.f_id FROM song JOIN files ON song.f_id = files.f_id ORDER BY files.duration DESC LIMIT 1	music_1
SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
SELECT song.f_id FROM files, song WHERE files.formats = 'mp3'	music_1
SELECT files.formats FROM files WHERE files.formats = 'mp3'	music_1
SELECT song.artist_name FROM song ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT song.artist_name FROM song ORDER BY song.resolution ASC LIMIT 1	music_1
SELECT COUNT( * ) FROM artist WHERE artist.country = 'Bangladesh'	music_1
SELECT COUNT( * ) FROM artist WHERE artist.country = 'Bangladeshi'	music_1
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist.artist_name FROM artist JOIN song ON artist.artist_name = song.artist_name WHERE artist.country = 'UK' AND song.languages = 'English'	music_1
SELECT artist.artist_name FROM artist JOIN song ON artist.country = song.artist_name WHERE song.country = 'UK' AND song.languages = 'English'	music_1
SELECT song.f_id FROM song WHERE files.formats = 'mp4' AND song.resolution<1000	music_1
SELECT * FROM files JOIN song ON files.f_id = song.f_id WHERE files.formats = 'mp4' AND song.resolution<1000	music_1
SELECT artist.gender , COUNT( * ) FROM artist GROUP BY artist.gender	music_1
SELECT COUNT( * ) FROM artist WHERE artist.gender = 'f'	music_1
SELECT song.languages , AVG( song.rating ) FROM song GROUP BY song.languages	music_1
SELECT song.languages , AVG( song.rating ) FROM song GROUP BY song.languages	music_1
SELECT files.formats , COUNT( * ) FROM files JOIN song ON files.f_id = song.f_id GROUP BY files.formats	music_1
SELECT files.formats , COUNT( * ) FROM song JOIN files ON song.f_id = files.f_id GROUP BY files.formats	music_1
SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN( song.resolution ) FROM song WHERE song.languages = 'English')	music_1
SELECT DISTINCT song.song_name FROM song WHERE song.languages NOT IN (SELECT song.song_name FROM song WHERE song.languages = 'English')	music_1
genre , genre	music_1
SELECT song.song_name FROM song JOIN genre ON song.genre_is = genre.g_name WHERE genre.rating<(SELECT AVG( genre.rating ) FROM genre)	music_1
SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.languages FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT song.artist_name , song.languages FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
SELECT artist.artist_name FROM artist WHERE artist.gender = 'Male' AND artist.country = 'UK'	music_1
SELECT artist.artist_name FROM artist WHERE artist.gender = 'm'	music_1
SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'Bangla'	music_1
SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'bangla'	music_1
SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
SELECT song.f_id FROM song WHERE song.rating<(SELECT MAX( song.resolution ) FROM song WHERE song.rating<8)	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT song.resolution FROM song WHERE song.rating<8)	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song WHERE song.genre_is = 'modern')	music_1
SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song)	music_1
SELECT song.f_id , genre.g_name , song.artist_name FROM song JOIN genre ON song.genre_is = genre.g_name WHERE song.languages = 'English' ORDER BY genre.rating ASC	music_1
SELECT song.f_id , song.genre_is , artist.artist_name FROM song JOIN genre ON song.f_id = genre.g_name ORDER BY song.rating ASC	music_1
SELECT artist.artist_name FROM artist WHERE song.languages = 'English' EXCEPT SELECT artist.artist_name FROM song JOIN genre ON song.artist_name = genre.g_name WHERE song.languages = 'English' AND song.rating > 8	music_1
SELECT song.artist_name FROM artist WHERE song.languages = 'English' EXCEPT SELECT DISTINCT song.artist_name FROM song WHERE song.languages = 'English' AND song.rating > 8	music_1
artist , genre	music_1
SELECT artist.artist_name FROM artist WHERE artist.country = 'Bangladesh'	music_1
SELECT photos.id , photos.color , photos.name FROM photos	mountain_photos
SELECT MAX( mountain.height ) , MIN( mountain.height ) FROM mountain	mountain_photos
SELECT AVG( mountain.prominence ) FROM mountain WHERE mountain.country = 'Morocco'	mountain_photos
SELECT mountain.name , mountain.height , mountain.prominence FROM mountain WHERE mountain.range != 'Aberdare Range'	mountain_photos
SELECT COUNT( DISTINCT camera_lens.brand ) FROM camera_lens	mountain_photos
SELECT COUNT( * ) FROM camera_lens WHERE camera_lens.id NOT IN (SELECT photos.camera_lens_id FROM photos)	mountain_photos
SELECT camera_lens.name FROM camera_lens WHERE camera_lens.name LIKE '%Digital%'	mountain_photos
SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( * ) DESC LIMIT 1	hospital_1
SELECT department.head FROM department GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT department.head FROM department GROUP BY department.head ORDER BY COUNT( * ) ASC LIMIT 1	hospital_1
SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
SELECT COUNT( * ) FROM stay WHERE stay.room = 112	hospital_1
SELECT COUNT( * ) FROM stay WHERE stay.room = 112	hospital_1
SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.stayend DESC LIMIT 1	hospital_1
SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.stayend DESC LIMIT 1	hospital_1
SELECT COUNT( DISTINCT room.blockcode ) FROM room	hospital_1
SELECT DISTINCT room.blockcode FROM room	hospital_1
SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
SELECT patient.name FROM patient JOIN appointment ON patient.ssn = appointment.patient GROUP BY appointment.patient ORDER BY appointment.end DESC LIMIT 1	hospital_1
SELECT patient.name FROM appointment JOIN patient ON appointment.patient = patient.ssn ORDER BY appointment.end DESC LIMIT 1	hospital_1
SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
SELECT procedures.cost FROM procedures ORDER BY procedures.cost DESC LIMIT 3	hospital_1
SELECT procedures.cost FROM procedures ORDER BY procedures.cost DESC LIMIT 3	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
SELECT COUNT( * ) FROM appointment	hospital_1
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
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers	student_1
SELECT teachers.firstname , teachers.lastname FROM teachers	student_1
SELECT list.firstname , list.lastname FROM list	student_1
SELECT list.firstname , list.lastname FROM list	student_1
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
SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
SELECT COUNT( * ) FROM film	film_rank
SELECT COUNT( * ) FROM film	film_rank
SELECT DISTINCT film.director FROM film	film_rank
SELECT DISTINCT film.director FROM film	film_rank
SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
SELECT market.country FROM market ORDER BY market.country ASC	film_rank
SELECT market.country FROM market ORDER BY market.country ASC	film_rank
SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) > 4500000	film_rank
SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) > 4500000	film_rank
SELECT COUNT( * ) FROM member	decoration_competition
SELECT member.name FROM member ORDER BY member.name ASC	decoration_competition
SELECT member.name , member.country FROM member	decoration_competition
SELECT member.name FROM member WHERE member.country = 'United States' OR member.country = 'Canada'	decoration_competition
SELECT member.country , COUNT( * ) FROM member GROUP BY member.country	decoration_competition
SELECT member.country FROM member GROUP BY member.country ORDER BY COUNT( * ) DESC LIMIT 1	decoration_competition
SELECT member.country FROM member GROUP BY member.country HAVING COUNT( * ) > 2	decoration_competition
SELECT college.leader_name , college.college_location FROM college	decoration_competition
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
SELECT artwork.type , COUNT( * ) FROM artwork GROUP BY artwork.type	entertainment_awards
SELECT artwork.type FROM artwork GROUP BY artwork.type ORDER BY COUNT( * ) DESC LIMIT 1	entertainment_awards
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
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
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
SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
SELECT college.cname , college.state , MIN( college.enr ) FROM college GROUP BY college.state	soccer_2
SELECT college.cname FROM college ORDER BY college.enr ASC LIMIT 1	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.pid JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie' INTERSECT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie' INTERSECT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid-field'	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.cname FROM college INTERSECT SELECT college.cname FROM college JOIN tryout ON college.enr = tryout.cname JOIN player ON tryout.pid = player.pid WHERE tryout.ppos = 'mid'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid' EXCEPT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'goalie'	soccer_2
SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid' EXCEPT SELECT college.state FROM college JOIN tryout ON college.cname = tryout.cname WHERE tryout.ppos = 'mid position but'	soccer_2
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
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform	device
SELECT COUNT( * ) , device.software_platform FROM device GROUP BY device.software_platform	device
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
SELECT shop.location FROM shop WHERE shop.open_year<2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
SELECT shop.location FROM shop WHERE shop.open_year > 2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
SELECT COUNT( * ) FROM band	music_2
SELECT COUNT( * ) FROM band	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT albums.title FROM albums WHERE albums.year = 2012	music_2
SELECT * FROM albums WHERE albums.year = 2012	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT COUNT( * ) FROM songs	music_2
SELECT COUNT( DISTINCT albums.label ) FROM albums	music_2
SELECT DISTINCT albums.label FROM albums	music_2
SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
SELECT DISTINCT instruments.instrument FROM instruments	music_2
SELECT DISTINCT instruments.instrument FROM instruments	music_2
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
SELECT DISTINCT vocals.type FROM vocals	music_2
SELECT DISTINCT vocals.type FROM vocals	music_2
SELECT albums.title FROM albums WHERE albums.year = 2010	music_2
SELECT * FROM albums WHERE albums.year = 2010	music_2
SELECT problem_log.problem_log_id FROM problem_log ORDER BY problem_log.log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log.problem_log_id FROM problem_log ORDER BY problem_log.log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.problem_id FROM problem_log ORDER BY problem_log.problem_id DESC LIMIT 1	tracking_software_problems
SELECT MAX( problem_log.problem_log_id ) , problem_log.problem_id FROM problem_log	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.log_entry_date FROM problem_log WHERE problem_log.problem_id = 10	tracking_software_problems
SELECT DISTINCT problem_log.problem_id , problem_log.log_entry_date FROM problem_log JOIN problems ON problem_log.problem_id = problems.problem_id WHERE problem_log.problem_log_id = 10	tracking_software_problems
SELECT problem_log.problem_log_id , problems.problem_description FROM problem_log JOIN problem_category_codes ON problem_log.problem_category_code = problem_category_codes.problem_category_code JOIN problems ON problem_log.problem_id = problems.problem_id	tracking_software_problems
SELECT problem_log.problem_log_id , problem_log.log_entry_description FROM problem_log	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
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
SELECT * FROM swimmer	swimming
SELECT AVG( stadium.capacity ) FROM stadium WHERE stadium.opening_year = 2005	swimming
SELECT COUNT( * ) FROM addresses WHERE addresses.country = 'USA'	customers_and_products_contacts
SELECT DISTINCT addresses.city FROM addresses	customers_and_products_contacts
SELECT addresses.state_province_county , COUNT( * ) FROM addresses GROUP BY addresses.state_province_county	customers_and_products_contacts
SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING COUNT( * ) >= 2	customers_and_products_contacts
SELECT customers.customer_name , customers.customer_phone , customers.payment_method_code FROM customers ORDER BY customers.customer_number DESC	customers_and_products_contacts
SELECT MIN( products.product_price ) , MAX( products.product_price ) , AVG( products.product_price ) FROM products	customers_and_products_contacts
SELECT COUNT( * ) FROM products WHERE products.product_price > (SELECT AVG( products.product_price ) FROM products)	customers_and_products_contacts
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
SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
SELECT submission.author FROM submission EXCEPT SELECT submission.author FROM submission	workshop_paper
SELECT submission.author FROM submission EXCEPT SELECT submission.author FROM submission	workshop_paper
SELECT country.name FROM country WHERE country.languages != 'German'	roller_coaster
SELECT city.city_id FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city ORDER BY hosting_city.year DESC LIMIT 1	city_record
SELECT city.city FROM city JOIN hosting_city ON city.city_id = hosting_city.host_city ORDER BY hosting_city.year DESC LIMIT 1	city_record
SELECT match.match_id FROM match WHERE match.competition = '1994 FIFA World Cup qualification'	city_record
SELECT match.match_id FROM match WHERE match.competition = 'World Cup qualification'	city_record
SELECT city.city FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
SELECT city.regional_population FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
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
SELECT COUNT( * ) FROM driver	school_bus
SELECT driver.name , driver.home_city , driver.age FROM driver	school_bus
SELECT driver.party , COUNT( * ) FROM driver GROUP BY driver.party	school_bus
SELECT driver.name FROM driver ORDER BY driver.age DESC	school_bus
SELECT DISTINCT driver.home_city FROM driver	school_bus
SELECT driver.home_city FROM driver GROUP BY driver.home_city ORDER BY COUNT( * ) DESC LIMIT 1	school_bus
SELECT driver.party FROM driver WHERE driver.home_city = 'Hartford' INTERSECT SELECT driver.party FROM driver WHERE driver.age > 40	school_bus
SELECT driver.home_city FROM driver WHERE driver.age > 40 GROUP BY driver.home_city HAVING COUNT( * ) >= 2	school_bus
SELECT driver.home_city FROM driver EXCEPT SELECT driver.home_city FROM driver WHERE driver.age > 40	school_bus
SELECT school.type FROM school GROUP BY school.type HAVING COUNT( * ) = 2	school_bus
SELECT COUNT( * ) FROM driver WHERE driver.home_city = 'Hartford' OR driver.age<40	school_bus
SELECT driver.name FROM driver WHERE driver.home_city = 'Hartford' AND driver.age<40	school_bus
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
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
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
SELECT AVG( airports.elevation ) , airports.country FROM airports GROUP BY airports.country	flight_4
SELECT airports.country , AVG( airports.elevation ) FROM airports GROUP BY airports.country	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
SELECT COUNT( * ) FROM architect WHERE architect.gender = 'f'	architecture
SELECT architect.name , architect.nationality , architect.id FROM architect WHERE architect.gender = 'male' ORDER BY architect.name ASC	architecture
SELECT AVG( bridge.length_feet ) FROM bridge	architecture
SELECT mill.name , mill.built_year FROM mill WHERE mill.type = 'Grondzeiler'	architecture
SELECT mill.name FROM mill WHERE mill.location != 'Donceel'	architecture
SELECT bridge.location FROM bridge WHERE bridge.name = 'Kolob Arch' OR bridge.name = 'Rainbow Bridge'	architecture
SELECT mill.name FROM mill WHERE mill.name LIKE '%Moulin%'	architecture
SELECT mill.type , COUNT( * ) FROM mill GROUP BY mill.type ORDER BY COUNT( * ) DESC LIMIT 1	architecture
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
SELECT track.albumid FROM track WHERE track.albumid LIKE '%you%'	chinook_1
SELECT album.title FROM track JOIN genre ON track.genreid = genre.genreid WHERE track.name = 'you'	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT AVG( invoiceline.unitprice ) FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT MAX( track.milliseconds ) FROM track WHERE track.name = '1'	chinook_1
SELECT MIN( track.milliseconds ) , MAX( track.milliseconds ) FROM track	chinook_1
SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'embraer.com.br'	chinook_1
SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'embraer.com.br'	chinook_1
SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
SELECT employee.phone FROM employee	chinook_1
SELECT employee.phone FROM employee	chinook_1
SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
SELECT DISTINCT invoiceline.unitprice FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT DISTINCT invoiceline.unitprice FROM invoiceline JOIN track ON invoiceline.trackid = track.trackid	chinook_1
SELECT COUNT( * ) FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
SELECT COUNT( * ) FROM artist WHERE artist.artistid NOT IN (SELECT album.artistid FROM album)	chinook_1
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
SELECT AVG( player.weight ) FROM player	soccer_1
SELECT MAX( player.height ) , MIN( player.height ) FROM player	soccer_1
SELECT player.id FROM player WHERE player.height >= 180 AND player_attributes.overall_rating > 85	soccer_1
SELECT player.id FROM player WHERE player.height BETWEEN 180 and 190	soccer_1
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
SELECT movie.title FROM movie WHERE movie.mid NOT IN (SELECT rating.mid FROM rating)	movie_1
SELECT movie.title FROM movie WHERE movie.mid NOT IN (SELECT rating.mid FROM rating)	movie_1
SELECT movie.title FROM movie ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT movie.title FROM movie ORDER BY movie.year DESC LIMIT 1	movie_1
SELECT movie.title FROM movie WHERE movie.year > (SELECT movie.year FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
SELECT movie.title FROM movie WHERE movie.director = (SELECT MAX( movie.director ) FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
SELECT reviewer.name , movie.title FROM movie JOIN reviewer ON movie.mid = reviewer.rid	movie_1
SELECT reviewer.name , movie.title FROM movie JOIN rating ON movie.mid = rating.mid JOIN reviewer ON rating.rid = reviewer.rid	movie_1
SELECT rating.mid FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 2	movie_1
SELECT rating.mid FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 3	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT rating.rid FROM rating	movie_1
SELECT reviewer.rid FROM reviewer EXCEPT SELECT reviewer.rid FROM reviewer JOIN rating ON reviewer.rid = rating.rid GROUP BY rating.rid HAVING COUNT( * ) >= 4	movie_1
SELECT movie.title FROM movie WHERE movie.year > 1980 OR movie.director = 'James Cameron'	movie_1
SELECT movie.title FROM movie WHERE movie.year > 1980 OR movie.director = 'James Cameron'	movie_1
SELECT COUNT( * ) FROM restaurant	restaurant_1
SELECT restaurant.address FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
SELECT restaurant.rating FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
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
SELECT course.cname FROM course WHERE course.credits = 3 OR course.hours = 4	college_3
SELECT course.cname FROM course WHERE course.credits = 3 OR course.hours = 4	college_3
SELECT department.dname FROM department WHERE department.division = 'AS' OR department.division = 'NEB'	college_3
SELECT department.dname FROM department WHERE department.division = 'AS' OR department.building = 'NEB'	college_3
SELECT student.fname FROM student WHERE student.stuid NOT IN (SELECT enrolled_in.stuid FROM enrolled_in)	college_3
SELECT student.fname FROM student WHERE student.stuid NOT IN (SELECT enrolled_in.stuid FROM enrolled_in)	college_3
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
SELECT tourist_attractions.how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there	cre_Theme_park
SELECT tourist_attractions.how_to_get_there , COUNT( * ) FROM tourist_attractions GROUP BY tourist_attractions.how_to_get_there	cre_Theme_park
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
SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa Country'	wine_1
SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa County'	wine_1
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
SELECT customers.customer_status_code FROM customers GROUP BY customers.customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_schoolSELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
SELECT customer_payments.payment_method_code , COUNT( * ) FROM customer_payments GROUP BY customer_payments.payment_method_code	driving_school
SELECT customer_payments.payment_method_code , COUNT( * ) FROM customer_payments GROUP BY customer_payments.payment_method_code	driving_school
SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
SELECT customers.last_name FROM customers UNION SELECT customers.last_name FROM customers JOIN staff ON customers.customer_id = staff.last_name	driving_school
SELECT customers.last_name FROM customers UNION SELECT customers.last_name FROM customers JOIN staff ON customers.customer_id = staff.last_name	driving_school




