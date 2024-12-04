SELECT COUNT( * ) FROM singer	concert_singer
SELECT COUNT( * ) FROM singer	concert_singer
SELECT name , country , age FROM singer ORDER BY age ASC	concert_singer
SELECT name , country , age FROM singer ORDER BY age DESC	concert_singer
SELECT AVG( age ) , MIN( age ) , MAX( age ) FROM singer WHERE country = 'France'	concert_singer
SELECT AVG( age ) , MIN( age ) , MAX( age ) FROM singer WHERE country = 'French'	concert_singer
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1	concert_singer
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1	concert_singer
SELECT DISTINCT country FROM singer WHERE age > 20	concert_singer
SELECT DISTINCT country FROM singer WHERE age > 20	concert_singer
SELECT country , COUNT( * ) FROM singer GROUP BY country	concert_singer
SELECT country , COUNT( * ) FROM singer GROUP BY country	concert_singer
SELECT song_name FROM singer WHERE age > (SELECT AVG( age ) FROM singer)	concert_singer
SELECT song_name FROM singer WHERE age > (SELECT AVG( age ) FROM singer)	concert_singer
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 and 10000	concert_singer
SELECT location , capacity FROM stadium WHERE capacity BETWEEN 5000 and 10000	concert_singer
SELECT MAX( capacity ) , AVG( average ) FROM stadium	concert_singer
SELECT AVG( average ) , MAX( capacity ) FROM stadium	concert_singer
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT COUNT( * ) FROM concert WHERE year = 2014 OR year = 2015	concert_singer
SELECT COUNT( * ) FROM concert WHERE year = 2014 OR year = 2015	concert_singer
SELECT year FROM concert GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	concert_singer
SELECT year FROM concert GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	concert_singer
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age<30	concert_singer
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT COUNT( * ) FROM pets WHERE weight > 10	pets_1
SELECT COUNT( * ) FROM pets WHERE weight > 10	pets_1
SELECT weight FROM pets WHERE pettype = 'dog' AND pet_age = (SELECT MIN( pet_age ) FROM pets)	pets_1
SELECT weight FROM pets WHERE pettype = 'dog' AND pet_age = (SELECT MIN( pet_age ) FROM pets)	pets_1
SELECT pettype , MAX( weight ) FROM pets GROUP BY pettype	pets_1
SELECT pettype , MAX( weight ) , MAX( weight ) FROM pets GROUP BY pettype	pets_1
SELECT COUNT( DISTINCT pettype ) FROM pets	pets_1
SELECT COUNT( DISTINCT pettype ) FROM pets	pets_1
SELECT pettype , weight FROM pets ORDER BY pet_age ASC LIMIT 1	pets_1
SELECT pettype , weight FROM pets ORDER BY pet_age ASC LIMIT 1	pets_1
SELECT petid , weight FROM pets WHERE pet_age > 1	pets_1
SELECT petid , weight FROM pets WHERE pet_age > 1	pets_1
SELECT pettype , AVG( age ) , MAX( age ) FROM student JOIN has_pet ON stuid = stuid JOIN pets ON petid = petid GROUP BY pettype	pets_1
SELECT pettype , AVG( age ) , MAX( age ) FROM student JOIN has_pet ON stuid = stuid JOIN pets ON petid = petid GROUP BY pettype	pets_1
SELECT pettype , AVG( weight ) FROM pets GROUP BY pettype	pets_1
SELECT COUNT( * ) FROM continents	car_1
SELECT COUNT( * ) FROM continents	car_1
SELECT COUNT( * ) FROM countries	car_1
SELECT COUNT( * ) FROM countries	car_1
SELECT AVG( mpg ) FROM cars_data WHERE cylinders = 4	car_1
SELECT AVG( mpg ) FROM cars_data WHERE cylinders = 4	car_1
SELECT MIN( weight ) FROM cars_data WHERE cylinders = 8 AND year = 1974	car_1
SELECT MIN( weight ) FROM cars_data WHERE cylinders = 8 AND year = 1974	car_1
SELECT maker , model FROM car_makers JOIN model_list ON id = maker	car_1
SELECT maker , model FROM car_makers JOIN model_list ON id = maker	car_1
SELECT COUNT( * ) FROM cars_data WHERE horsepower > 150	car_1
SELECT COUNT( * ) FROM cars_data WHERE horsepower > 150	car_1
SELECT AVG( weight ) , year FROM cars_data GROUP BY year	car_1
SELECT year , AVG( weight ) FROM cars_data GROUP BY year	car_1
SELECT AVG( horsepower ) FROM cars_data WHERE year<1980	car_1
SELECT AVG( horsepower ) FROM cars_data WHERE year<1980	car_1
SELECT MAX( accelerate ) , cylinders FROM cars_data GROUP BY cylinders	car_1
SELECT cylinders , MAX( accelerate ) FROM cars_data GROUP BY cylinders	car_1
SELECT model FROM car_names GROUP BY model ORDER BY COUNT( * ) DESC LIMIT 1	car_1
SELECT model FROM car_names GROUP BY model ORDER BY COUNT( * ) DESC LIMIT 1	car_1
SELECT COUNT( * ) FROM cars_data WHERE cylinders > 4	car_1
SELECT COUNT( * ) FROM cars_data WHERE cylinders > 4	car_1
SELECT COUNT( * ) FROM cars_data WHERE year = 1980	car_1
SELECT COUNT( * ) FROM cars_data WHERE year = 1980	car_1
SELECT year FROM cars_data WHERE weight BETWEEN 3000 and 4000	car_1
SELECT year FROM cars_data WHERE weight<4000 INTERSECT SELECT year FROM cars_data WHERE weight > 3000	car_1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1	car_1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1	car_1
SELECT COUNT( * ) FROM cars_data WHERE accelerate > (SELECT MAX( accelerate ) FROM cars_data) AND horsepower = (SELECT MAX( horsepower ) FROM cars_data)	car_1
SELECT COUNT( * ) FROM cars_data WHERE horsepower = (SELECT MAX( horsepower ) FROM cars_data)	car_1
SELECT COUNT( * ) FROM cars_data WHERE cylinders > 6	car_1
SELECT COUNT( * ) FROM cars_data WHERE cylinders > 6	car_1
SELECT MAX( mpg ) FROM cars_data WHERE cylinders = '8' AND year<1980	car_1
SELECT MAX( mpg ) FROM cars_data WHERE cylinders = '8' OR year<1980	car_1
SELECT country FROM airlines WHERE airline = 'JetBlue Airways'	flight_2
SELECT country FROM airlines WHERE airline = 'Jetblue Airways'	flight_2
SELECT abbreviation FROM airlines WHERE airline = 'JetBlue Airways'	flight_2
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'	flight_2
SELECT airline , abbreviation FROM airlines WHERE country = 'USA'	flight_2
SELECT airline , abbreviation FROM airlines WHERE country = 'USA'	flight_2
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'	flight_2
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'	flight_2
SELECT COUNT( * ) FROM airlines	flight_2
SELECT COUNT( * ) FROM airlines	flight_2
SELECT COUNT( * ) FROM airports	flight_2
SELECT COUNT( * ) FROM airports	flight_2
SELECT COUNT( * ) FROM flights	flight_2
SELECT COUNT( * ) FROM flights	flight_2
SELECT airline FROM airlines WHERE abbreviation = 'UAL'	flight_2
SELECT airline FROM airlines WHERE abbreviation = 'UAL'	flight_2
SELECT COUNT( * ) FROM airlines WHERE country = 'USA'	flight_2
SELECT COUNT( * ) FROM airlines WHERE country = 'USA'	flight_2
SELECT city , country FROM airports WHERE airportname = 'Alton'	flight_2
SELECT city , country FROM airports WHERE airportname = 'Alton'	flight_2
SELECT airportname FROM airports WHERE airportname = 'AKO'	flight_2
SELECT airportname FROM airports WHERE airportcode = 'AKO'	flight_2
SELECT airportname FROM airports WHERE city = 'Aberdeen'	flight_2
SELECT airportname FROM airports WHERE city = 'Aberdeen'	flight_2
SELECT COUNT( * ) FROM flights WHERE sourceairport = 'APG'	flight_2
SELECT COUNT( * ) FROM flights WHERE sourceairport = 'APG'	flight_2
SELECT COUNT( * ) FROM flights WHERE destairport = 'ATO'	flight_2
SELECT COUNT( * ) FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'ATO'	flight_2
SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2
SELECT flightno FROM flights WHERE sourceairport = 'APG'	flight_2
SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2
SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2
SELECT COUNT( * ) FROM employee	employee_hire_evaluation
SELECT COUNT( * ) FROM employee	employee_hire_evaluation
SELECT name FROM employee ORDER BY age ASC	employee_hire_evaluation
SELECT name FROM employee ORDER BY age ASC	employee_hire_evaluation
SELECT city , COUNT( * ) FROM employee GROUP BY city	employee_hire_evaluation
SELECT city , COUNT( * ) FROM employee GROUP BY city	employee_hire_evaluation
SELECT city FROM employee WHERE age<30 GROUP BY city HAVING COUNT( * ) > 1	employee_hire_evaluation
SELECT city FROM employee WHERE age<30 GROUP BY city HAVING COUNT( * ) > 1	employee_hire_evaluation
SELECT COUNT( * ) , location FROM shop GROUP BY location	employee_hire_evaluation
SELECT COUNT( * ) , location FROM shop GROUP BY location	employee_hire_evaluation
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT MIN( number_products ) , MAX( number_products ) FROM shop	employee_hire_evaluation
SELECT MIN( number_products ) , MAX( number_products ) FROM shop	employee_hire_evaluation
SELECT name , location , district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name , location , district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name FROM shop WHERE number_products > (SELECT AVG( number_products ) FROM shop)	employee_hire_evaluation
SELECT name FROM shop WHERE number_products > (SELECT AVG( number_products ) FROM shop)	employee_hire_evaluation
SELECT SUM( bonus ) FROM evaluation	employee_hire_evaluation
SELECT SUM( bonus ) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT district FROM shop WHERE number_products<3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000	employee_hire_evaluation
SELECT district FROM shop WHERE number_products<3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000	employee_hire_evaluation
SELECT COUNT( DISTINCT location ) FROM shop	employee_hire_evaluation
SELECT COUNT( DISTINCT location ) FROM shop	employee_hire_evaluation
SELECT COUNT( * ) FROM documents	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM documents	cre_Doc_Template_Mgt
SELECT document_id , document_name , document_description FROM documents	cre_Doc_Template_Mgt
SELECT document_id , document_name , document_description FROM documents	cre_Doc_Template_Mgt
SELECT document_name , template_id FROM documents WHERE document_description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT document_name , template_id FROM documents WHERE document_description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT document_id , template_id , document_description FROM documents WHERE document_name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT document_id , template_id , document_description FROM documents WHERE document_name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT COUNT( DISTINCT template_id ) FROM documents	cre_Doc_Template_Mgt
SELECT COUNT( DISTINCT template_id ) FROM documents	cre_Doc_Template_Mgt
SELECT template_id , COUNT( * ) FROM documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT template_id , COUNT( * ) FROM documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT template_id FROM documents GROUP BY template_id HAVING COUNT( * ) > 1	cre_Doc_Template_Mgt
SELECT template_id FROM documents GROUP BY template_id HAVING COUNT( * ) > 1	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates	cre_Doc_Template_Mgt
SELECT template_id , version_number , template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT template_id , version_number , template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'	cre_Doc_Template_Mgt
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates WHERE template_type_code = 'CV'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates WHERE template_type_code = 'CV'	cre_Doc_Template_Mgt
SELECT version_number , template_type_code FROM templates WHERE version_number > 5	cre_Doc_Template_Mgt
SELECT version_number , template_type_code FROM templates WHERE version_number > 5	cre_Doc_Template_Mgt
SELECT template_type_code , COUNT( * ) FROM templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT template_type_code , COUNT( * ) FROM templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT( * )<3	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT( * )<3	cre_Doc_Template_Mgt
SELECT MIN( version_number ) , template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT version_number , template_type_code FROM templates ORDER BY version_number ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code , template_type_description FROM ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_code , template_type_description FROM ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_description FROM ref_template_types WHERE template_type_code = 'AD'	cre_Doc_Template_Mgt
SELECT template_type_description FROM ref_template_types WHERE template_type_code = 'AD'	cre_Doc_Template_Mgt
SELECT template_type_code FROM ref_template_types WHERE template_type_description = 'Book'	cre_Doc_Template_Mgt
SELECT template_type_code FROM ref_template_types WHERE template_type_description = 'Book'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM paragraphs	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM paragraphs	cre_Doc_Template_Mgt
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'	cre_Doc_Template_Mgt
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'	cre_Doc_Template_Mgt
SELECT document_id , COUNT( * ) FROM paragraphs GROUP BY document_id	cre_Doc_Template_Mgt
SELECT document_id , COUNT( * ) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT( * ) >= 2	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT( * ) >= 2	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT( * ) BETWEEN 1 and 2	cre_Doc_Template_Mgt
SELECT document_id FROM documents JOIN paragraphs ON document_id = document_id GROUP BY document_id HAVING COUNT( * ) BETWEEN 1 and 2	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'	cre_Doc_Template_Mgt
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM teacher	course_teach
SELECT COUNT( * ) FROM teacher	course_teach
SELECT name FROM teacher ORDER BY age ASC	course_teach
SELECT name FROM teacher ORDER BY age ASC	course_teach
SELECT age , hometown FROM teacher	course_teach
SELECT age , hometown FROM teacher	course_teach
SELECT name FROM teacher WHERE hometown != 'Little Lever Urban District'	course_teach
SELECT name FROM teacher WHERE hometown != 'Little Lever Urban District'	course_teach
SELECT name FROM teacher WHERE age = 32 OR age = 33	course_teach
SELECT name FROM teacher WHERE age = 32 OR age = 33	course_teach
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1	course_teach
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1	course_teach
SELECT hometown , COUNT( * ) FROM teacher GROUP BY hometown	course_teach
SELECT hometown , COUNT( * ) FROM teacher GROUP BY hometown	course_teach
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT( * ) DESC LIMIT 1	course_teach
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT( * ) DESC LIMIT 1	course_teach
SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT( * ) >= 2	course_teach
SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT( * ) >= 2	course_teach
SELECT COUNT( * ) FROM visitor WHERE age<30	museum_visit
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC	museum_visit
SELECT AVG( age ) FROM visitor WHERE level_of_membership <= 4	museum_visit
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC	museum_visit
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1	museum_visit
SELECT AVG( num_of_staff ) FROM museum WHERE open_year<2009	museum_visit
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'	museum_visit
SELECT name FROM museum WHERE num_of_staff<(SELECT MIN( num_of_staff ) FROM museum WHERE open_year > 2010)	museum_visit
SELECT AVG( num_of_ticket ) , MAX( num_of_ticket ) FROM visit	museum_visit
SELECT COUNT( * ) FROM museum WHERE open_year > 2013 OR open_year<2008	museum_visit
SELECT COUNT( * ) FROM players	wta_1
SELECT COUNT( * ) FROM players	wta_1
SELECT COUNT( * ) FROM matches	wta_1
SELECT COUNT( * ) FROM matches	wta_1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT AVG( loser_age ) , AVG( winner_age ) FROM matches	wta_1
SELECT AVG( loser_age ) , AVG( winner_age ) FROM matches	wta_1
SELECT AVG( winner_rank ) FROM matches	wta_1
SELECT AVG( winner_rank ) FROM matches	wta_1
SELECT MIN( loser_rank ) FROM matches	wta_1
SELECT MIN( loser_rank ) FROM matches	wta_1
SELECT COUNT( DISTINCT country_code ) FROM players	wta_1
SELECT COUNT( DISTINCT country_code ) FROM players	wta_1
SELECT COUNT( DISTINCT loser_name ) FROM matches	wta_1
SELECT COUNT( DISTINCT loser_name ) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT( * ) > 10	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT( * ) > 10	wta_1
SELECT winner_name FROM matches WHERE year = 2016 INTERSECT SELECT winner_name FROM matches WHERE year = 2013	wta_1
SELECT first_name , last_name FROM players JOIN matches ON player_id = winner_id WHERE year = 2013 INTERSECT SELECT first_name , last_name FROM players JOIN matches ON player_id = winner_id WHERE year = 2016
SELECT COUNT( * ) FROM matches WHERE year = 2013 OR year = 2016	wta_1
SELECT COUNT( * ) FROM matches WHERE year = 2013 OR year = 2016	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1	wta_1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC	wta_1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC	wta_1
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC	wta_1
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC	wta_1
SELECT year FROM matches GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT year FROM matches GROUP BY year ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT winner_name , winner_rank_points FROM matches JOIN rankings ON winner_id = player_id GROUP BY winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT winner_name , COUNT( * ) , winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT country_code , COUNT( * ) FROM players GROUP BY country_code	wta_1
SELECT country_code , COUNT( * ) FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT( * ) > 50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT( * ) > 50	wta_1
SELECT ranking_date , SUM( tours ) FROM rankings GROUP BY ranking_date	wta_1
SELECT ranking_date , SUM( tours ) FROM rankings GROUP BY ranking_date	wta_1
SELECT year , COUNT( * ) FROM matches GROUP BY year	wta_1
SELECT year , COUNT( * ) FROM matches GROUP BY year	wta_1
SELECT winner_name , winner_rank FROM matches JOIN players ON winner_id = player_id ORDER BY birth_date ASC LIMIT 3	wta_1
SELECT winner_name , winner_rank FROM players JOIN matches ON player_id = winner_id ORDER BY birth_date ASC LIMIT 3	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT COUNT( * ) FROM players JOIN matches ON player_id = winner_id WHERE hand = 'left' AND tourney_name = 'WTA Championships'	wta_1
SELECT hand , COUNT( * ) FROM players GROUP BY hand	wta_1
SELECT hand , COUNT( * ) FROM players GROUP BY hand	wta_1
SELECT COUNT( * ) FROM battle JOIN ship ON id = lost_in_battle WHERE result = 'Captured'	battle_death
SELECT name , tonnage FROM ship ORDER BY name DESC	battle_death
SELECT name , date , result FROM battle	battle_death
SELECT MAX( killed ) , MIN( killed ) FROM death	battle_death
SELECT AVG( injured ) FROM death	battle_death
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'	battle_death
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death
SELECT COUNT( DISTINCT result ) FROM battle	battle_death
SELECT note FROM death JOIN ship ON caused_by_ship_id = id WHERE location LIKE '%East%'	battle_death
SELECT line_1 FROM addresses INTERSECT SELECT line_2 FROM addresses	student_transcripts_tracking
SELECT line_1 , line_2 FROM addresses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT course_description FROM courses WHERE course_name = 'math'	student_transcripts_tracking
SELECT course_description FROM courses WHERE course_name = 'math'	student_transcripts_tracking
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'	student_transcripts_tracking
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'	student_transcripts_tracking
SELECT COUNT( DISTINCT department_id ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( DISTINCT department_id ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( DISTINCT degree_summary_name ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( * ) FROM degree_programs	student_transcripts_tracking
SELECT section_name , section_description FROM sections	student_transcripts_tracking
SELECT section_name , section_description FROM sections	student_transcripts_tracking
SELECT section_name FROM sections ORDER BY section_name ASC	student_transcripts_tracking
SELECT section_name FROM sections ORDER BY section_name ASC	student_transcripts_tracking
SELECT department_description FROM departments WHERE department_name LIKE '%the computer%'	student_transcripts_tracking
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT ssn FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'	student_transcripts_tracking
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'	student_transcripts_tracking
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name , middle_name , last_name FROM degree_programs JOIN student_enrolment ON degree_program_id = degree_program_id JOIN students ON student_id = student_id ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name , middle_name , last_name FROM students JOIN student_enrolment ON student_id = student_id ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name , permanent_address_id FROM students WHERE permanent_address_id IN (SELECT MAX( ssn ) FROM students)	student_transcripts_tracking
SELECT first_name FROM students WHERE permanent_address_id<(SELECT MAX( ssn ) FROM students)	student_transcripts_tracking
SELECT AVG( other_details ) FROM transcripts	student_transcripts_tracking
SELECT AVG( transcript_date ) FROM transcripts	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT course_id , COUNT( * ) FROM student_enrolment_courses GROUP BY course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking
SELECT student_course_id , COUNT( * ) FROM courses JOIN transcript_contents ON course_id = student_course_id GROUP BY course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking
SELECT COUNT( DISTINCT current_address_id ) FROM students	student_transcripts_tracking
SELECT DISTINCT current_address_id FROM students	student_transcripts_tracking
SELECT ssn FROM students ORDER BY other_student_details ASC	student_transcripts_tracking
SELECT other_details FROM student_enrolment JOIN students ON student_id = student_id ORDER BY other_details ASC	student_transcripts_tracking
SELECT section_name FROM sections WHERE section_name = 'h'	student_transcripts_tracking
SELECT section_description FROM sections WHERE section_name = 'h'	student_transcripts_tracking
SELECT title FROM cartoon ORDER BY title ASC	tvshow
SELECT title FROM cartoon ORDER BY title ASC	tvshow
SELECT directed_by FROM cartoon WHERE directed_by = 'Ben Jones'	tvshow
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'	tvshow
SELECT COUNT( * ) FROM cartoon WHERE written_by = 'Joseph Kuhr'	tvshow
SELECT COUNT( * ) FROM cartoon WHERE written_by = 'Joseph Kuhr'	tvshow
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC	tvshow
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC	tvshow
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'	tvshow
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'	tvshow
SELECT country , COUNT( * ) FROM tv_channel GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	tvshow
SELECT country , COUNT( * ) FROM tv_channel GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	tvshow
SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow
SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow
SELECT content FROM tv_channel WHERE series_name = 'Sky Radio'	tvshow
SELECT content FROM tv_channel WHERE series_name = 'Sky Radio'	tvshow
SELECT package_option FROM tv_channel WHERE series_name = 'Sky Radio'	tvshow
SELECT package_option FROM tv_channel WHERE series_name = 'Sky Radio'	tvshow
SELECT COUNT( * ) FROM tv_channel WHERE language = 'English'	tvshow
SELECT COUNT( * ) FROM tv_channel WHERE language = 'English'	tvshow
SELECT language , COUNT( * ) FROM tv_channel GROUP BY language ORDER BY COUNT( language ) ASC LIMIT 1	tvshow
SELECT language , COUNT( * ) FROM tv_channel GROUP BY language ORDER BY COUNT( * ) ASC LIMIT 1	tvshow
SELECT language , COUNT( * ) FROM tv_channel GROUP BY language	tvshow
SELECT language , COUNT( * ) FROM tv_channel GROUP BY language	tvshow
SELECT episode FROM tv_series ORDER BY rating ASC	tvshow
SELECT episode FROM tv_series ORDER BY rating ASC	tvshow
SELECT episode , rating FROM tv_series ORDER BY rating DESC LIMIT 3	tvshow
SELECT episode , rating FROM tv_series ORDER BY rating DESC LIMIT 3	tvshow
SELECT MIN( share ) , MAX( share ) FROM tv_series	tvshow
SELECT MAX( share ) , MIN( share ) FROM tv_series	tvshow
SELECT air_date FROM tv_series WHERE episode = 'A Love of a Lifetime'	tvshow
SELECT air_date FROM tv_series WHERE episode = 'A Love of a Lifetime'	tvshow
SELECT weekly_rank FROM tv_series WHERE episode = 'A Love of a Lifetime'	tvshow
SELECT weekly_rank FROM tv_series WHERE episode = 'A Love of a Lifetime'	tvshow
SELECT COUNT( * ) , directed_by FROM cartoon GROUP BY directed_by	tvshow
SELECT directed_by , COUNT( * ) FROM cartoon GROUP BY directed_by	tvshow
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1	tvshow
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1	tvshow
SELECT package_option , series_name FROM tv_channel WHERE hight_definition_tv = 'TV'	tvshow
SELECT series_name , package_option FROM tv_channel WHERE hight_definition_tv = 'yes'	tvshow
SELECT pixel_aspect_ratio_par , country FROM tv_channel WHERE language != 'English'	tvshow
SELECT country , pixel_aspect_ratio_par FROM tv_channel WHERE language != 'English'	tvshow
SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow
SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow
SELECT COUNT( * ) FROM poker_player	poker_player
SELECT COUNT( * ) FROM poker_player	poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC	poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC	poker_player
SELECT final_table_made , best_finish FROM poker_player	poker_player
SELECT final_table_made , best_finish FROM poker_player	poker_player
SELECT AVG( earnings ) FROM poker_player	poker_player
SELECT AVG( earnings ) FROM poker_player	poker_player
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1	poker_player
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1	poker_player
SELECT MAX( final_table_made ) FROM poker_player WHERE earnings<200000	poker_player
SELECT MAX( final_table_made ) FROM poker_player WHERE earnings<200000	poker_player
SELECT nationality , COUNT( * ) FROM people GROUP BY nationality	poker_player
SELECT nationality , COUNT( * ) FROM people GROUP BY nationality	poker_player
SELECT nationality FROM people GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	poker_player
SELECT nationality FROM people GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	poker_player
SELECT nationality FROM people GROUP BY nationality HAVING COUNT( * ) >= 2	poker_player
SELECT nationality FROM people GROUP BY nationality HAVING COUNT( * ) >= 2	poker_player
SELECT name , birth_date FROM people ORDER BY name ASC	poker_player
SELECT name , birth_date FROM people ORDER BY name ASC	poker_player
SELECT name FROM people WHERE nationality != 'Russia'	poker_player
SELECT name FROM people WHERE nationality != 'Russia'	poker_player
SELECT COUNT( DISTINCT nationality ) FROM people	poker_player
SELECT COUNT( DISTINCT nationality ) FROM people	poker_player
SELECT COUNT( * ) FROM area_code_state	voter_1
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC	voter_1
SELECT vote_id , phone_number , state FROM votes	voter_1
SELECT MAX( area_code ) , MIN( area_code ) FROM area_code_state	voter_1
SELECT MAX( created ) FROM votes WHERE state = 'CA'	voter_1
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT state , created FROM votes	voter_1
SELECT COUNT( * ) FROM votes WHERE state = 'NY' OR state = 'CA'	voter_1
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'	voter_1
SELECT name FROM country WHERE indepyear > 1950	world_1
SELECT name FROM country WHERE indepyear > 1950	world_1
SELECT COUNT( * ) FROM country WHERE governmentform = 'republic'	world_1
SELECT COUNT( * ) FROM country WHERE governmentform = 'republic'	world_1
SELECT SUM( surfacearea ) FROM country WHERE region = 'Caribbean'	world_1
SELECT SUM( surfacearea ) FROM country WHERE region = 'Carribean'	world_1
SELECT continent FROM country WHERE name = 'Anguilla'	world_1
SELECT continent FROM country WHERE name = 'Anguilla'	world_1
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'	world_1
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'	world_1
SELECT region , population FROM country WHERE name = 'Angola'	world_1
SELECT region , population FROM country WHERE name = 'Angola'	world_1
SELECT AVG( lifeexpectancy ) FROM country WHERE region = 'Central Africa'	world_1
SELECT AVG( lifeexpectancy ) FROM country WHERE region = 'Central Africa'	world_1
SELECT name FROM country WHERE region = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1	world_1
SELECT name FROM country WHERE region = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1	world_1
SELECT SUM( population ) , MAX( gnp ) FROM country WHERE region = 'Asia'	world_1
SELECT gnp FROM country WHERE region = 'Asia' ORDER BY gnp DESC LIMIT 1	world_1
SELECT AVG( lifeexpectancy ) FROM country WHERE region = 'African' AND governmentform = 'republic'	world_1
SELECT AVG( lifeexpectancy ) FROM country WHERE continent = 'Africa' AND governmentform = 'Africa'	world_1
SELECT SUM( surfacearea ) FROM country WHERE continent = 'Asia' OR region = 'Europe'	world_1
SELECT SUM( surfacearea ) FROM country WHERE region = 'Asia' OR region = 'Europe'	world_1
SELECT SUM( population ) FROM city WHERE district = 'Gelderland'	world_1
SELECT SUM( population ) FROM city WHERE district = 'Gelderland'	world_1
SELECT AVG( gnp ) , SUM( population ) FROM country WHERE governmentform = 'US territory'	world_1
SELECT AVG( gnp ) , SUM( population ) FROM country WHERE region = 'US territory'	world_1
SELECT COUNT( DISTINCT language ) FROM countrylanguage	world_1
SELECT COUNT( DISTINCT language ) FROM countrylanguage	world_1
SELECT COUNT( DISTINCT governmentform ) FROM country WHERE region = 'Africa'	world_1
SELECT COUNT( DISTINCT governmentform ) FROM country WHERE region = 'Africa'	world_1
SELECT name , population , lifeexpectancy FROM country WHERE region = 'asian' ORDER BY surfacearea DESC LIMIT 1	world_1
SELECT name , population , lifeexpectancy FROM country WHERE region = 'Asian' ORDER BY surfacearea DESC LIMIT 1	world_1
SELECT name FROM country WHERE surfacearea > (SELECT MAX( surfacearea ) FROM country WHERE region = 'Europe')	world_1
SELECT name FROM country WHERE surfacearea > (SELECT MAX( surfacearea ) FROM country WHERE region = 'Europe')	world_1
SELECT name FROM country WHERE population<(SELECT MAX( population ) FROM country WHERE region = 'Asia')	world_1
SELECT name FROM country WHERE population<(SELECT MIN( population ) FROM country WHERE continent = 'African' AND region = 'Asia')	world_1
SELECT name FROM country WHERE population > (SELECT MAX( population ) FROM country WHERE region = 'Africa')	world_1
SELECT name FROM country WHERE population > (SELECT MAX( population ) FROM country WHERE region = 'Africa')	world_1
SELECT code FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'	world_1
SELECT code FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'	world_1
SELECT countrycode FROM countrylanguage WHERE language != 'English'	world_1
SELECT countrycode FROM countrylanguage WHERE language != 'English'	world_1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1	world_1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1	world_1
SELECT population , name , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1	world_1
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1	world_1
SELECT COUNT( * ) , district FROM city WHERE population > (SELECT AVG( population ) FROM city) GROUP BY district	world_1
SELECT COUNT( * ) , district FROM city WHERE population > (SELECT AVG( population ) FROM city) GROUP BY district	world_1
SELECT governmentform , SUM( population ) FROM country GROUP BY governmentform HAVING AVG( lifeexpectancy ) > 72	world_1
SELECT SUM( population ) , governmentform FROM country GROUP BY governmentform HAVING AVG( lifeexpectancy ) > 72	world_1
SELECT continent , SUM( population ) FROM country WHERE lifeexpectancy<72 GROUP BY continent	world_1
SELECT continent , SUM( population ) FROM country WHERE lifeexpectancy<72 GROUP BY continent	world_1
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5	world_1
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5	world_1
SELECT name FROM country ORDER BY population DESC LIMIT 3	world_1
SELECT name FROM country ORDER BY population DESC LIMIT 3	world_1
SELECT name FROM country ORDER BY population ASC LIMIT 3	world_1
SELECT name FROM country ORDER BY population ASC LIMIT 3	world_1
SELECT COUNT( * ) FROM country WHERE region = 'Asia'	world_1
SELECT COUNT( * ) FROM country WHERE region = 'Asia'	world_1
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000	world_1
SELECT name FROM country WHERE region = 'Europe' AND population = 80000	world_1
SELECT SUM( population ) , AVG( surfacearea ) FROM country WHERE continent = 'North America' HAVING AVG( surfacearea ) > 3000	world_1
SELECT SUM( population ) , AVG( surfacearea ) FROM country WHERE region = 'North America' AND surfacearea > 3000	world_1
SELECT name FROM city WHERE population BETWEEN 160000 and 900000	world_1
SELECT name FROM city WHERE population BETWEEN 160000 and 900000	world_1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT( * ) DESC LIMIT 1	world_1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT( * ) DESC LIMIT 1	world_1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1	world_1
SELECT countrycode , MAX( percentage ) FROM countrylanguage GROUP BY countrycode	world_1
SELECT COUNT( * ) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1	world_1
SELECT COUNT( * ) FROM countrylanguage WHERE language = 'Spanish'	world_1
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1	world_1
SELECT countrycode FROM countrylanguage WHERE percentage > (SELECT AVG( percentage ) FROM countrylanguage WHERE language = 'Spanish')	world_1
SELECT COUNT( * ) FROM conductor	orchestra
SELECT COUNT( * ) FROM conductor	orchestra
SELECT name FROM conductor ORDER BY age ASC	orchestra
SELECT name FROM conductor ORDER BY age ASC	orchestra
SELECT name FROM conductor WHERE nationality != 'USA'	orchestra
SELECT name FROM conductor WHERE nationality != 'USA'	orchestra
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC	orchestra
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC	orchestra
SELECT AVG( attendance ) FROM show	orchestra
SELECT AVG( attendance ) FROM show	orchestra
SELECT MAX( share ) , MIN( share ) FROM performance WHERE type != 'Live final'	orchestra
SELECT MAX( share ) , MIN( share ) FROM performance WHERE type != 'Live final'	orchestra
SELECT COUNT( DISTINCT nationality ) FROM conductor	orchestra
SELECT COUNT( DISTINCT nationality ) FROM conductor	orchestra
SELECT name FROM conductor ORDER BY year_of_work DESC	orchestra
SELECT name FROM conductor ORDER BY year_of_work DESC	orchestra
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1	orchestra
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1	orchestra
SELECT record_company , COUNT( * ) FROM orchestra GROUP BY record_company	orchestra
SELECT record_company , COUNT( * ) FROM orchestra GROUP BY record_company	orchestra
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT( * ) ASC	orchestra
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT( * ) ASC	orchestra
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT( * ) DESC LIMIT 1	orchestra
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT( * ) DESC LIMIT 1	orchestra
SELECT record_company FROM orchestra WHERE year_of_founded<2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003	orchestra
SELECT record_company FROM orchestra WHERE year_of_founded<2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003	orchestra
SELECT COUNT( * ) FROM orchestra WHERE major_record_format = 'CD' OR major_record_format = 'DVD'	orchestra
SELECT COUNT( * ) FROM orchestra WHERE major_record_format = 'CD' OR major_record_format = 'DVD'	orchestra
SELECT COUNT( * ) FROM highschooler	network_1
SELECT COUNT( * ) FROM highschooler	network_1
SELECT name , grade FROM highschooler	network_1
SELECT name , grade FROM highschooler	network_1
SELECT DISTINCT grade FROM highschooler	network_1
SELECT grade FROM highschooler	network_1
SELECT grade FROM highschooler WHERE name = 'Kyle'	network_1
SELECT grade FROM highschooler WHERE name = 'Kyle'	network_1
SELECT name FROM highschooler WHERE grade = 10	network_1
SELECT name FROM highschooler WHERE grade = 10	network_1
SELECT id FROM highschooler WHERE name = 'Kyle'	network_1
SELECT id FROM highschooler WHERE name = 'Kyle'	network_1
SELECT COUNT( * ) FROM highschooler WHERE grade = 9 OR grade = 10	network_1
SELECT COUNT( * ) FROM highschooler WHERE grade = 9 OR grade = 10	network_1
SELECT grade , COUNT( * ) FROM highschooler GROUP BY grade	network_1
SELECT COUNT( * ) , grade FROM highschooler GROUP BY grade	network_1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT( * ) DESC LIMIT 1	network_1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT( * ) DESC LIMIT 1	network_1
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT( * ) >= 4	network_1
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT( * ) >= 4	network_1
SELECT student_id , COUNT( * ) FROM friend GROUP BY student_id	network_1
SELECT student_id , COUNT( * ) FROM friend GROUP BY student_id	network_1
SELECT COUNT( * ) , student_id FROM likes GROUP BY student_id	network_1
SELECT student_id , COUNT( * ) FROM likes GROUP BY student_id	network_1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT date_arrived , date_departed FROM dogs	dog_kennels
SELECT date_arrived , date_departed FROM dogs	dog_kennels
SELECT COUNT( DISTINCT dog_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT dog_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT professional_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT professional_id ) FROM treatments	dog_kennels
SELECT role_code , city , street , state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'	dog_kennels
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'	dog_kennels
SELECT COUNT( * ) FROM dogs WHERE age<(SELECT AVG( age ) FROM dogs)	dog_kennels
SELECT COUNT( * ) FROM dogs WHERE age<(SELECT AVG( age ) FROM dogs)	dog_kennels
SELECT cost_of_treatment FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1	dog_kennels
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels
SELECT AVG( age ) FROM dogs	dog_kennels
SELECT AVG( age ) FROM dogs	dog_kennels
SELECT age FROM dogs ORDER BY age DESC LIMIT 1	dog_kennels
SELECT age FROM dogs ORDER BY age DESC LIMIT 1	dog_kennels
SELECT charge_type , charge_amount FROM charges	dog_kennels
SELECT charge_type , charge_amount FROM charges	dog_kennels
SELECT SUM( charge_amount ) FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels
SELECT email_address , cell_number , home_phone FROM professionals	dog_kennels
SELECT email_address , cell_number , home_phone FROM professionals	dog_kennels
SELECT DISTINCT breed_name , size_description FROM breeds JOIN dogs ON breed_code = breed_code JOIN sizes ON size_code = size_code	dog_kennels
SELECT DISTINCT breed_code , size_code FROM dogs	dog_kennels
SELECT COUNT( * ) FROM singer	singer
SELECT COUNT( * ) FROM singer	singer
SELECT name FROM singer ORDER BY net_worth_millions ASC	singer
SELECT name FROM singer ORDER BY net_worth_millions ASC	singer
SELECT birth_year , citizenship FROM singer	singer
SELECT birth_year , citizenship FROM singer	singer
SELECT name FROM singer WHERE citizenship != 'France'	singer
SELECT name FROM singer WHERE citizenship != 'French'	singer
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949	singer
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949	singer
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1	singer
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1	singer
SELECT citizenship , COUNT( * ) FROM singer GROUP BY citizenship	singer
SELECT citizenship , COUNT( * ) FROM singer GROUP BY citizenship	singer
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT( * ) DESC LIMIT 1	singer
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT( * ) DESC LIMIT 1	singer
SELECT citizenship , MAX( net_worth_millions ) FROM singer GROUP BY citizenship	singer
SELECT MAX( net_worth_millions ) , citizenship FROM singer GROUP BY citizenship	singer
SELECT citizenship FROM singer WHERE birth_year<1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955	singer
SELECT citizenship FROM singer WHERE birth_year<1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955	singer
SELECT COUNT( * ) FROM other_available_features	real_estate_properties
SELECT property_name FROM properties WHERE room_count > 1	real_estate_properties
