SELECT COUNT( * ) FROM singer	concert_singer
SELECT COUNT( * ) FROM singer	concert_singer
SELECT singer.name , singer.country , singer.age FROM singer ORDER BY singer.age ASC	concert_singer
SELECT singer.name , singer.country , singer.age FROM singer ORDER BY singer.age DESC	concert_singer
SELECT AVG( singer.age ) , MIN( singer.age ) , MAX( singer.age ) FROM singer WHERE singer.country = 'France'	concert_singer
SELECT AVG( singer.age ) , MIN( singer.age ) , MAX( singer.age ) FROM singer WHERE singer.country = 'French'	concert_singer
SELECT singer.song_name , singer.song_release_year FROM singer ORDER BY singer.age ASC LIMIT 1	concert_singer
SELECT singer.song_name , singer.song_release_year FROM singer ORDER BY singer.age ASC LIMIT 1	concert_singer
SELECT DISTINCT singer.country FROM singer WHERE singer.age > 20	concert_singer
SELECT DISTINCT singer.country FROM singer WHERE singer.age > 20	concert_singer
SELECT singer.country , COUNT( * ) FROM singer GROUP BY singer.country	concert_singer
SELECT singer.country , COUNT( * ) FROM singer GROUP BY singer.country	concert_singer
SELECT singer.song_name FROM singer WHERE singer.age > (SELECT AVG( singer.age ) FROM singer)	concert_singer
SELECT singer.song_name FROM singer WHERE singer.age > (SELECT AVG( singer.age ) FROM singer)	concert_singer
SELECT stadium.location , stadium.name FROM stadium WHERE stadium.capacity BETWEEN 5000 and 10000	concert_singer
SELECT stadium.location , stadium.capacity FROM stadium WHERE stadium.capacity BETWEEN 5000 and 10000	concert_singer
SELECT MAX( stadium.capacity ) , AVG( stadium.average ) FROM stadium	concert_singer
SELECT AVG( stadium.average ) , MAX( stadium.capacity ) FROM stadium	concert_singer
SELECT stadium.name , stadium.capacity FROM stadium ORDER BY stadium.average DESC LIMIT 1	concert_singer
SELECT stadium.name , stadium.capacity FROM stadium ORDER BY stadium.average DESC LIMIT 1	concert_singer
SELECT COUNT( * ) FROM concert WHERE concert.year = 2014 OR concert.year = 2015	concert_singer
SELECT COUNT( * ) FROM concert WHERE concert.year = 2014 OR concert.year = 2015	concert_singer
SELECT concert.year FROM concert GROUP BY concert.year ORDER BY COUNT( * ) DESC LIMIT 1	concert_singer
SELECT concert.year FROM concert GROUP BY concert.year ORDER BY COUNT( * ) DESC LIMIT 1	concert_singer
SELECT singer.country FROM singer WHERE singer.age > 40 INTERSECT SELECT singer.country FROM singer WHERE singer.age<30	concert_singer
SELECT singer.name , singer.country FROM singer WHERE singer.song_name LIKE '%Hey%'	concert_singer
SELECT singer.name , singer.country FROM singer WHERE singer.song_name LIKE '%Hey%'	concert_singer
SELECT COUNT( * ) FROM pets WHERE pets.weight > 10	pets_1
SELECT COUNT( * ) FROM pets WHERE pets.weight > 10	pets_1
SELECT pets.weight FROM pets WHERE pets.pettype = 'dog' AND pets.pet_age = (SELECT MIN( pets.pet_age ) FROM pets)	pets_1
SELECT pets.weight FROM pets WHERE pets.pettype = 'dog' AND pets.pet_age = (SELECT MIN( pets.pet_age ) FROM pets)	pets_1
SELECT pets.pettype , MAX( pets.weight ) FROM pets GROUP BY pets.pettype	pets_1
SELECT pets.pettype , MAX( pets.weight ) , MAX( pets.weight ) FROM pets GROUP BY pets.pettype	pets_1
SELECT COUNT( DISTINCT pets.pettype ) FROM pets	pets_1
SELECT COUNT( DISTINCT pets.pettype ) FROM pets	pets_1
SELECT pets.pettype , pets.weight FROM pets ORDER BY pets.pet_age ASC LIMIT 1	pets_1
SELECT pets.pettype , pets.weight FROM pets ORDER BY pets.pet_age ASC LIMIT 1	pets_1
SELECT pets.petid , pets.weight FROM pets WHERE pets.pet_age > 1	pets_1
SELECT pets.petid , pets.weight FROM pets WHERE pets.pet_age > 1	pets_1
SELECT pets.pettype , AVG( student.age ) , MAX( student.age ) FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid GROUP BY pets.pettype	pets_1
SELECT pets.pettype , AVG( student.age ) , MAX( student.age ) FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid GROUP BY pets.pettype	pets_1
SELECT pets.pettype , AVG( pets.weight ) FROM pets GROUP BY pets.pettype	pets_1
SELECT COUNT( * ) FROM continents	car_1
SELECT COUNT( * ) FROM continents	car_1
SELECT COUNT( * ) FROM countries	car_1
SELECT COUNT( * ) FROM countries	car_1
SELECT AVG( cars_data.mpg ) FROM cars_data WHERE cars_data.cylinders = 4	car_1
SELECT AVG( cars_data.mpg ) FROM cars_data WHERE cars_data.cylinders = 4	car_1
SELECT MIN( cars_data.weight ) FROM cars_data WHERE cars_data.cylinders = 8 AND cars_data.year = 1974	car_1
SELECT MIN( cars_data.weight ) FROM cars_data WHERE cars_data.cylinders = 8 AND cars_data.year = 1974	car_1
SELECT car_makers.maker , model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker	car_1
SELECT car_makers.maker , model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.horsepower > 150	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.horsepower > 150	car_1
SELECT AVG( cars_data.weight ) , cars_data.year FROM cars_data GROUP BY cars_data.year	car_1
SELECT cars_data.year , AVG( cars_data.weight ) FROM cars_data GROUP BY cars_data.year	car_1
SELECT AVG( cars_data.horsepower ) FROM cars_data WHERE cars_data.year<1980	car_1
SELECT AVG( cars_data.horsepower ) FROM cars_data WHERE cars_data.year<1980	car_1
SELECT MAX( cars_data.accelerate ) , cars_data.cylinders FROM cars_data GROUP BY cars_data.cylinders	car_1
SELECT cars_data.cylinders , MAX( cars_data.accelerate ) FROM cars_data GROUP BY cars_data.cylinders	car_1
SELECT car_names.model FROM car_names GROUP BY car_names.model ORDER BY COUNT( * ) DESC LIMIT 1	car_1
SELECT car_names.model FROM car_names GROUP BY car_names.model ORDER BY COUNT( * ) DESC LIMIT 1	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.cylinders > 4	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.cylinders > 4	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.year = 1980	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.year = 1980	car_1
SELECT cars_data.year FROM cars_data WHERE cars_data.weight BETWEEN 3000 and 4000	car_1
SELECT cars_data.year FROM cars_data WHERE cars_data.weight<4000 INTERSECT SELECT cars_data.year FROM cars_data WHERE cars_data.weight > 3000	car_1
SELECT cars_data.horsepower FROM cars_data ORDER BY cars_data.accelerate DESC LIMIT 1	car_1
SELECT cars_data.horsepower FROM cars_data ORDER BY cars_data.accelerate DESC LIMIT 1	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.accelerate > (SELECT MAX( cars_data.accelerate ) FROM cars_data) AND cars_data.horsepower = (SELECT MAX( cars_data.horsepower ) FROM cars_data)	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.horsepower = (SELECT MAX( cars_data.horsepower ) FROM cars_data)	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.cylinders > 6	car_1
SELECT COUNT( * ) FROM cars_data WHERE cars_data.cylinders > 6	car_1
SELECT MAX( cars_data.mpg ) FROM cars_data WHERE cars_data.cylinders = '8' AND cars_data.year<1980	car_1
SELECT MAX( cars_data.mpg ) FROM cars_data WHERE cars_data.cylinders = '8' OR cars_data.year<1980	car_1
SELECT airlines.country FROM airlines WHERE airlines.airline = 'JetBlue Airways'	flight_2
SELECT airlines.country FROM airlines WHERE airlines.airline = 'Jetblue Airways'	flight_2
SELECT airlines.abbreviation FROM airlines WHERE airlines.airline = 'JetBlue Airways'	flight_2
SELECT airlines.abbreviation FROM airlines WHERE airlines.airline = 'Jetblue Airways'	flight_2
SELECT airlines.airline , airlines.abbreviation FROM airlines WHERE airlines.country = 'USA'	flight_2
SELECT airlines.airline , airlines.abbreviation FROM airlines WHERE airlines.country = 'USA'	flight_2
SELECT airports.airportcode , airports.airportname FROM airports WHERE airports.city = 'Anthony'	flight_2
SELECT airports.airportcode , airports.airportname FROM airports WHERE airports.city LIKE '%Anthony%'	flight_2
SELECT COUNT( * ) FROM airlines	flight_2
SELECT COUNT( * ) FROM airlines	flight_2
SELECT COUNT( * ) FROM airports	flight_2
SELECT COUNT( * ) FROM airports	flight_2
SELECT COUNT( * ) FROM flights	flight_2
SELECT COUNT( * ) FROM flights	flight_2
SELECT airlines.airline FROM airlines WHERE airlines.abbreviation = 'UAL'	flight_2
SELECT airlines.airline FROM airlines WHERE airlines.abbreviation = 'UAL'	flight_2
SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'USA'	flight_2
SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'USA'	flight_2
SELECT airports.city , airports.country FROM airports WHERE airports.airportname = 'Alton'	flight_2
SELECT airports.city , airports.country FROM airports WHERE airports.airportname = 'Alton'	flight_2
SELECT airports.airportname FROM airports WHERE airports.airportname = 'AKO'	flight_2
SELECT airports.airportname FROM airports WHERE airports.airportcode = 'AKO'	flight_2
SELECT airports.airportname FROM airports WHERE airports.city = 'Aberdeen'	flight_2
SELECT airports.airportname FROM airports WHERE airports.city = 'Aberdeen'	flight_2
SELECT COUNT( * ) FROM flights WHERE flights.sourceairport = 'APG'	flight_2
SELECT COUNT( * ) FROM flights WHERE flights.sourceairport = 'APG'	flight_2
SELECT COUNT( * ) FROM flights WHERE flights.destairport = 'ATO'	flight_2
SELECT COUNT( * ) FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportname = 'ATO'	flight_2
SELECT flights.flightno FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportname = 'APG'	flight_2
SELECT flights.flightno FROM flights WHERE flights.sourceairport = 'APG'	flight_2
SELECT flights.flightno FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportname = 'APG'	flight_2
SELECT flights.flightno FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportname = 'APG'	flight_2
SELECT COUNT( * ) FROM employee	employee_hire_evaluation
SELECT COUNT( * ) FROM employee	employee_hire_evaluation
SELECT employee.name FROM employee ORDER BY employee.age ASC	employee_hire_evaluation
SELECT employee.name FROM employee ORDER BY employee.age ASC	employee_hire_evaluation
SELECT employee.city , COUNT( * ) FROM employee GROUP BY employee.city	employee_hire_evaluation
SELECT employee.city , COUNT( * ) FROM employee GROUP BY employee.city	employee_hire_evaluation
SELECT employee.city FROM employee WHERE employee.age<30 GROUP BY employee.city HAVING COUNT( * ) > 1	employee_hire_evaluation
SELECT employee.city FROM employee WHERE employee.age<30 GROUP BY employee.city HAVING COUNT( * ) > 1	employee_hire_evaluation
SELECT COUNT( * ) , shop.location FROM shop GROUP BY shop.location	employee_hire_evaluation
SELECT COUNT( * ) , shop.location FROM shop GROUP BY shop.location	employee_hire_evaluation
SELECT shop.manager_name , shop.district FROM shop ORDER BY shop.number_products DESC LIMIT 1	employee_hire_evaluation
SELECT shop.manager_name , shop.district FROM shop ORDER BY shop.number_products DESC LIMIT 1	employee_hire_evaluation
SELECT MIN( shop.number_products ) , MAX( shop.number_products ) FROM shop	employee_hire_evaluation
SELECT MIN( shop.number_products ) , MAX( shop.number_products ) FROM shop	employee_hire_evaluation
SELECT shop.name , shop.location , shop.district FROM shop ORDER BY shop.number_products DESC	employee_hire_evaluation
SELECT shop.name , shop.location , shop.district FROM shop ORDER BY shop.number_products DESC	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.number_products > (SELECT AVG( shop.number_products ) FROM shop)	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.number_products > (SELECT AVG( shop.number_products ) FROM shop)	employee_hire_evaluation
SELECT SUM( evaluation.bonus ) FROM evaluation	employee_hire_evaluation
SELECT SUM( evaluation.bonus ) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT shop.district FROM shop WHERE shop.number_products<3000 INTERSECT SELECT shop.district FROM shop WHERE shop.number_products > 10000	employee_hire_evaluation
SELECT shop.district FROM shop WHERE shop.number_products<3000 INTERSECT SELECT shop.district FROM shop WHERE shop.number_products > 10000	employee_hire_evaluation
SELECT COUNT( DISTINCT shop.location ) FROM shop	employee_hire_evaluation
SELECT COUNT( DISTINCT shop.location ) FROM shop	employee_hire_evaluation
SELECT COUNT( * ) FROM documents	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM documents	cre_Doc_Template_Mgt
SELECT documents.document_id , documents.document_name , documents.document_description FROM documents	cre_Doc_Template_Mgt
SELECT documents.document_id , documents.document_name , documents.document_description FROM documents	cre_Doc_Template_Mgt
SELECT documents.document_name , documents.template_id FROM documents WHERE documents.document_description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT documents.document_name , documents.template_id FROM documents WHERE documents.document_description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT documents.document_id , documents.template_id , documents.document_description FROM documents WHERE documents.document_name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT documents.document_id , documents.template_id , documents.document_description FROM documents WHERE documents.document_name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT COUNT( DISTINCT documents.template_id ) FROM documents	cre_Doc_Template_Mgt
SELECT COUNT( DISTINCT documents.template_id ) FROM documents	cre_Doc_Template_Mgt
SELECT documents.template_id , COUNT( * ) FROM documents GROUP BY documents.template_id	cre_Doc_Template_Mgt
SELECT documents.template_id , COUNT( * ) FROM documents GROUP BY documents.template_id	cre_Doc_Template_Mgt
SELECT documents.template_id FROM documents GROUP BY documents.template_id HAVING COUNT( * ) > 1	cre_Doc_Template_Mgt
SELECT documents.template_id FROM documents GROUP BY documents.template_id HAVING COUNT( * ) > 1	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates	cre_Doc_Template_Mgt
SELECT templates.template_id , templates.version_number , templates.template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT templates.template_id , templates.version_number , templates.template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT DISTINCT templates.template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT DISTINCT templates.template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates WHERE templates.template_type_code = 'PP' OR templates.template_type_code = 'PPT'	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates WHERE templates.template_type_code = 'PP' OR templates.template_type_code = 'PPT'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates WHERE templates.template_type_code = 'CV'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM templates WHERE templates.template_type_code = 'CV'	cre_Doc_Template_Mgt
SELECT templates.version_number , templates.template_type_code FROM templates WHERE templates.version_number > 5	cre_Doc_Template_Mgt
SELECT templates.version_number , templates.template_type_code FROM templates WHERE templates.version_number > 5	cre_Doc_Template_Mgt
SELECT templates.template_type_code , COUNT( * ) FROM templates GROUP BY templates.template_type_code	cre_Doc_Template_Mgt
SELECT templates.template_type_code , COUNT( * ) FROM templates GROUP BY templates.template_type_code	cre_Doc_Template_Mgt
SELECT templates.template_type_code FROM templates GROUP BY templates.template_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT templates.template_type_code FROM templates GROUP BY templates.template_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT templates.template_type_code FROM templates GROUP BY templates.template_type_code HAVING COUNT( * )<3	cre_Doc_Template_Mgt
SELECT templates.template_type_code FROM templates GROUP BY templates.template_type_code HAVING COUNT( * )<3	cre_Doc_Template_Mgt
SELECT MIN( templates.version_number ) , templates.template_type_code FROM templates	cre_Doc_Template_Mgt
SELECT templates.version_number , templates.template_type_code FROM templates ORDER BY templates.version_number ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code , ref_template_types.template_type_description FROM ref_template_types	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code , ref_template_types.template_type_description FROM ref_template_types	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_description FROM ref_template_types WHERE ref_template_types.template_type_code = 'AD'	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_description FROM ref_template_types WHERE ref_template_types.template_type_code = 'AD'	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types WHERE ref_template_types.template_type_description = 'Book'	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types WHERE ref_template_types.template_type_description = 'Book'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM paragraphs	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM paragraphs	cre_Doc_Template_Mgt
SELECT paragraphs.other_details FROM paragraphs WHERE paragraphs.paragraph_text = 'Korea'	cre_Doc_Template_Mgt
SELECT paragraphs.other_details FROM paragraphs WHERE paragraphs.paragraph_text LIKE '%Korea%'	cre_Doc_Template_Mgt
SELECT paragraphs.document_id , COUNT( * ) FROM paragraphs GROUP BY paragraphs.document_id	cre_Doc_Template_Mgt
SELECT paragraphs.document_id , COUNT( * ) FROM paragraphs GROUP BY paragraphs.document_id ORDER BY paragraphs.document_id ASC	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs GROUP BY paragraphs.document_id HAVING COUNT( * ) >= 2	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs GROUP BY paragraphs.document_id HAVING COUNT( * ) >= 2	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs GROUP BY paragraphs.document_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs GROUP BY paragraphs.document_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs GROUP BY paragraphs.document_id HAVING COUNT( * ) BETWEEN 1 and 2	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY paragraphs.document_id HAVING COUNT( * ) BETWEEN 1 and 2	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs WHERE paragraphs.paragraph_text = 'Brazil' INTERSECT SELECT paragraphs.document_id FROM paragraphs WHERE paragraphs.paragraph_text = 'Ireland'	cre_Doc_Template_Mgt
SELECT paragraphs.document_id FROM paragraphs WHERE paragraphs.paragraph_text LIKE '%Brazil%' INTERSECT SELECT paragraphs.document_id FROM paragraphs WHERE paragraphs.paragraph_text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT COUNT( * ) FROM teacher	course_teach
SELECT COUNT( * ) FROM teacher	course_teach
SELECT teacher.name FROM teacher ORDER BY teacher.age ASC	course_teach
SELECT teacher.name FROM teacher ORDER BY teacher.age ASC	course_teach
SELECT teacher.age , teacher.hometown FROM teacher	course_teach
SELECT teacher.age , teacher.hometown FROM teacher	course_teach
SELECT teacher.name FROM teacher WHERE teacher.hometown != 'Little Lever Urban District'	course_teach
SELECT teacher.name FROM teacher WHERE teacher.hometown != 'Little Lever Urban District'	course_teach
SELECT teacher.name FROM teacher WHERE teacher.age = 32 OR teacher.age = 33	course_teach
SELECT teacher.name FROM teacher WHERE teacher.age = 32 OR teacher.age = 33	course_teach
SELECT teacher.hometown FROM teacher ORDER BY teacher.age ASC LIMIT 1	course_teach
SELECT teacher.hometown FROM teacher ORDER BY teacher.age ASC LIMIT 1	course_teach
SELECT teacher.hometown , COUNT( * ) FROM teacher GROUP BY teacher.hometown	course_teach
SELECT teacher.hometown , COUNT( * ) FROM teacher GROUP BY teacher.hometown	course_teach
SELECT teacher.hometown FROM teacher GROUP BY teacher.hometown ORDER BY COUNT( * ) DESC LIMIT 1	course_teach
SELECT teacher.hometown FROM teacher GROUP BY teacher.hometown ORDER BY COUNT( * ) DESC LIMIT 1	course_teach
SELECT teacher.hometown FROM teacher GROUP BY teacher.hometown HAVING COUNT( * ) >= 2	course_teach
SELECT teacher.hometown FROM teacher GROUP BY teacher.hometown HAVING COUNT( * ) >= 2	course_teach
SELECT COUNT( * ) FROM visitor WHERE visitor.age<30	museum_visit
SELECT visitor.name FROM visitor WHERE visitor.level_of_membership > 4 ORDER BY visitor.level_of_membership DESC	museum_visit
SELECT AVG( visitor.age ) FROM visitor WHERE visitor.level_of_membership <= 4	museum_visit
SELECT visitor.name , visitor.level_of_membership FROM visitor WHERE visitor.level_of_membership > 4 ORDER BY visitor.age DESC	museum_visit
SELECT museum.museum_id , museum.name FROM museum ORDER BY museum.num_of_staff DESC LIMIT 1	museum_visit
SELECT AVG( museum.num_of_staff ) FROM museum WHERE museum.open_year<2009	museum_visit
SELECT museum.open_year , museum.num_of_staff FROM museum WHERE museum.name = 'Plaza Museum'	museum_visit
SELECT museum.name FROM museum WHERE museum.num_of_staff<(SELECT MIN( museum.num_of_staff ) FROM museum WHERE museum.open_year > 2010)	museum_visit
SELECT AVG( visit.num_of_ticket ) , MAX( visit.num_of_ticket ) FROM visit	museum_visit
SELECT COUNT( * ) FROM museum WHERE museum.open_year > 2013 OR museum.open_year<2008	museum_visit
SELECT COUNT( * ) FROM players	wta_1
SELECT COUNT( * ) FROM players	wta_1
SELECT COUNT( * ) FROM matches	wta_1
SELECT COUNT( * ) FROM matches	wta_1
SELECT players.first_name , players.birth_date FROM players WHERE players.country_code = 'USA'	wta_1
SELECT players.first_name , players.birth_date FROM players WHERE players.country_code = 'USA'	wta_1
SELECT AVG( matches.loser_age ) , AVG( matches.winner_age ) FROM matches	wta_1
SELECT AVG( matches.loser_age ) , AVG( matches.winner_age ) FROM matches	wta_1
SELECT AVG( matches.winner_rank ) FROM matches	wta_1
SELECT AVG( matches.winner_rank ) FROM matches	wta_1
SELECT MIN( matches.loser_rank ) FROM matches	wta_1
SELECT MIN( matches.loser_rank ) FROM matches	wta_1
SELECT COUNT( DISTINCT players.country_code ) FROM players	wta_1
SELECT COUNT( DISTINCT players.country_code ) FROM players	wta_1
SELECT COUNT( DISTINCT matches.loser_name ) FROM matches	wta_1
SELECT COUNT( DISTINCT matches.loser_name ) FROM matches	wta_1
SELECT matches.tourney_name FROM matches GROUP BY matches.tourney_name HAVING COUNT( * ) > 10	wta_1
SELECT matches.tourney_name FROM matches GROUP BY matches.tourney_name HAVING COUNT( * ) > 10	wta_1
SELECT matches.winner_name FROM matches WHERE matches.year = 2016 INTERSECT SELECT matches.winner_name FROM matches WHERE matches.year = 2013	wta_1
SELECT players.first_name , players.last_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.year = 2013 INTERSECT SELECT players.first_name , players.last_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.year = 2016
SELECT COUNT( * ) FROM matches WHERE matches.year = 2013 OR matches.year = 2016	wta_1
SELECT COUNT( * ) FROM matches WHERE matches.year = 2013 OR matches.year = 2016	wta_1
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date ASC LIMIT 1	wta_1
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date ASC LIMIT 1	wta_1
SELECT players.first_name , players.last_name FROM players ORDER BY players.birth_date ASC	wta_1
SELECT players.first_name , players.last_name FROM players ORDER BY players.birth_date ASC	wta_1
SELECT players.first_name , players.last_name FROM players WHERE players.hand = 'L' ORDER BY players.birth_date ASC	wta_1
SELECT players.first_name , players.last_name FROM players WHERE players.hand = 'left' ORDER BY players.birth_date ASC	wta_1
SELECT matches.year FROM matches GROUP BY matches.year ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT matches.year FROM matches GROUP BY matches.year ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT matches.winner_name , matches.winner_rank_points FROM matches JOIN rankings ON matches.winner_id = rankings.player_id GROUP BY matches.winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT matches.winner_name , COUNT( * ) , matches.winner_rank_points FROM matches GROUP BY matches.winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT matches.winner_name FROM matches WHERE matches.tourney_name = 'Australian Open' ORDER BY matches.winner_rank_points DESC LIMIT 1	wta_1
SELECT matches.winner_name FROM matches WHERE matches.tourney_name = 'Australian Open' ORDER BY matches.winner_rank_points DESC LIMIT 1	wta_1
SELECT matches.loser_name , matches.winner_name FROM matches ORDER BY matches.minutes DESC LIMIT 1	wta_1
SELECT matches.winner_name , matches.loser_name FROM matches ORDER BY matches.minutes DESC LIMIT 1	wta_1
SELECT players.country_code , COUNT( * ) FROM players GROUP BY players.country_code	wta_1
SELECT players.country_code , COUNT( * ) FROM players GROUP BY players.country_code	wta_1
SELECT players.country_code FROM players GROUP BY players.country_code ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT players.country_code FROM players GROUP BY players.country_code ORDER BY COUNT( * ) DESC LIMIT 1	wta_1
SELECT players.country_code FROM players GROUP BY players.country_code HAVING COUNT( * ) > 50	wta_1
SELECT players.country_code FROM players GROUP BY players.country_code HAVING COUNT( * ) > 50	wta_1
SELECT rankings.ranking_date , SUM( rankings.tours ) FROM rankings GROUP BY rankings.ranking_date	wta_1
SELECT rankings.ranking_date , SUM( rankings.tours ) FROM rankings GROUP BY rankings.ranking_date	wta_1
SELECT matches.year , COUNT( * ) FROM matches GROUP BY matches.year	wta_1
SELECT matches.year , COUNT( * ) FROM matches GROUP BY matches.year	wta_1
SELECT matches.winner_name , matches.winner_rank FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY players.birth_date ASC LIMIT 3	wta_1
SELECT matches.winner_name , matches.winner_rank FROM players JOIN matches ON players.player_id = matches.winner_id ORDER BY players.birth_date ASC LIMIT 3	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT COUNT( * ) FROM players JOIN matches ON players.player_id = matches.winner_id WHERE players.hand = 'left' AND matches.tourney_name = 'WTA Championships'	wta_1
SELECT players.hand , COUNT( * ) FROM players GROUP BY players.hand	wta_1
SELECT players.hand , COUNT( * ) FROM players GROUP BY players.hand	wta_1
SELECT COUNT( * ) FROM battle JOIN ship ON battle.id = ship.lost_in_battle WHERE battle.result = 'Captured'	battle_death
SELECT ship.name , ship.tonnage FROM ship ORDER BY ship.name DESC	battle_death
SELECT battle.name , battle.date , battle.result FROM battle	battle_death
SELECT MAX( death.killed ) , MIN( death.killed ) FROM death	battle_death
SELECT AVG( death.injured ) FROM death	battle_death
SELECT battle.name , battle.result FROM battle WHERE battle.bulgarian_commander != 'Boril'	battle_death
SELECT DISTINCT battle.name FROM battle WHERE battle.bulgarian_commander = 'Kaloyan' AND battle.latin_commander = 'Baldwin I'	battle_death
SELECT COUNT( DISTINCT battle.result ) FROM battle	battle_death
SELECT death.note FROM death JOIN ship ON death.caused_by_ship_id = ship.id WHERE ship.location LIKE '%East%'	battle_death
SELECT addresses.line_1 FROM addresses INTERSECT SELECT addresses.line_2 FROM addresses	student_transcripts_tracking
SELECT addresses.line_1 , addresses.line_2 FROM addresses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT courses.course_description FROM courses WHERE courses.course_name = 'math'	student_transcripts_tracking
SELECT courses.course_description FROM courses WHERE courses.course_name = 'math'	student_transcripts_tracking
SELECT addresses.zip_postcode FROM addresses WHERE addresses.city = 'Port Chelsea'	student_transcripts_tracking
SELECT addresses.zip_postcode FROM addresses WHERE addresses.city = 'Port Chelsea'	student_transcripts_tracking
SELECT COUNT( DISTINCT degree_programs.department_id ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( DISTINCT degree_programs.department_id ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( DISTINCT degree_programs.degree_summary_name ) FROM degree_programs	student_transcripts_tracking
SELECT COUNT( * ) FROM degree_programs	student_transcripts_tracking
SELECT sections.section_name , sections.section_description FROM sections	student_transcripts_tracking
SELECT sections.section_name , sections.section_description FROM sections	student_transcripts_tracking
SELECT sections.section_name FROM sections ORDER BY sections.section_name ASC	student_transcripts_tracking
SELECT sections.section_name FROM sections ORDER BY sections.section_name ASC	student_transcripts_tracking
SELECT departments.department_description FROM departments WHERE departments.department_name LIKE '%the computer%'	student_transcripts_tracking
SELECT departments.department_description FROM departments WHERE departments.department_name LIKE '%computer%'	student_transcripts_tracking
SELECT students.ssn FROM students WHERE students.first_name = 'Timmothy' AND students.last_name = 'Ward'	student_transcripts_tracking
SELECT students.cell_mobile_number FROM students WHERE students.first_name = 'Timmothy' AND students.last_name = 'Ward'	student_transcripts_tracking
SELECT students.first_name , students.middle_name , students.last_name FROM students ORDER BY students.date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT students.first_name , students.middle_name , students.last_name FROM students ORDER BY students.date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT students.first_name , students.middle_name , students.last_name FROM degree_programs JOIN student_enrolment ON degree_programs.degree_program_id = student_enrolment.degree_program_id JOIN students ON student_enrolment.student_id = students.student_id ORDER BY students.date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT students.first_name , students.middle_name , students.last_name FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id ORDER BY students.date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT students.first_name , students.permanent_address_id FROM students WHERE students.permanent_address_id IN (SELECT MAX( students.ssn ) FROM students)	student_transcripts_tracking
SELECT students.first_name FROM students WHERE students.permanent_address_id<(SELECT MAX( students.ssn ) FROM students)	student_transcripts_tracking
SELECT AVG( transcripts.other_details ) FROM transcripts	student_transcripts_tracking
SELECT AVG( transcripts.transcript_date ) FROM transcripts	student_transcripts_tracking
SELECT transcripts.transcript_date FROM transcripts ORDER BY transcripts.transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT transcripts.transcript_date FROM transcripts ORDER BY transcripts.transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT COUNT( * ) FROM courses	student_transcripts_tracking
SELECT transcripts.transcript_date FROM transcripts ORDER BY transcripts.transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT transcripts.transcript_date FROM transcripts ORDER BY transcripts.transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT student_enrolment_courses.course_id , COUNT( * ) FROM student_enrolment_courses GROUP BY student_enrolment_courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking
SELECT student_enrolment_courses.student_course_id , COUNT( * ) FROM courses JOIN transcript_contents ON courses.course_id = transcript_contents.student_course_id GROUP BY student_enrolment_courses.course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking
SELECT COUNT( DISTINCT students.current_address_id ) FROM students	student_transcripts_tracking
SELECT DISTINCT students.current_address_id FROM students	student_transcripts_tracking
SELECT students.ssn FROM students ORDER BY students.other_student_details ASC	student_transcripts_tracking
SELECT student_enrolment.other_details FROM student_enrolment JOIN students ON student_enrolment.student_id = students.student_id ORDER BY student_enrolment.other_details ASC	student_transcripts_tracking
SELECT sections.section_name FROM sections WHERE sections.section_name = 'h'	student_transcripts_tracking
SELECT sections.section_description FROM sections WHERE sections.section_name = 'h'	student_transcripts_tracking
SELECT cartoon.title FROM cartoon ORDER BY cartoon.title ASC	tvshow
SELECT cartoon.title FROM cartoon ORDER BY cartoon.title ASC	tvshow
SELECT cartoon.directed_by FROM cartoon WHERE cartoon.directed_by = 'Ben Jones'	tvshow
SELECT cartoon.title FROM cartoon WHERE cartoon.directed_by = 'Ben Jones'	tvshow
SELECT COUNT( * ) FROM cartoon WHERE cartoon.written_by = 'Joseph Kuhr'	tvshow
SELECT COUNT( * ) FROM cartoon WHERE cartoon.written_by = 'Joseph Kuhr'	tvshow
SELECT cartoon.title , cartoon.directed_by FROM cartoon ORDER BY cartoon.original_air_date ASC	tvshow
SELECT cartoon.title , cartoon.directed_by FROM cartoon ORDER BY cartoon.original_air_date ASC	tvshow
SELECT cartoon.title FROM cartoon WHERE cartoon.directed_by = 'Ben Jones' OR cartoon.directed_by = 'Brandon Vietti'	tvshow
SELECT cartoon.title FROM cartoon WHERE cartoon.directed_by = 'Ben Jones' OR cartoon.directed_by = 'Brandon Vietti'	tvshow
SELECT tv_channel.country , COUNT( * ) FROM tv_channel GROUP BY tv_channel.country ORDER BY COUNT( * ) DESC LIMIT 1	tvshow
SELECT tv_channel.country , COUNT( * ) FROM tv_channel GROUP BY tv_channel.country ORDER BY COUNT( * ) DESC LIMIT 1	tvshow
SELECT COUNT( DISTINCT tv_channel.series_name ) , tv_channel.content FROM tv_channel	tvshow
SELECT COUNT( DISTINCT tv_channel.series_name ) , tv_channel.content FROM tv_channel	tvshow
SELECT tv_channel.content FROM tv_channel WHERE tv_channel.series_name = 'Sky Radio'	tvshow
SELECT tv_channel.content FROM tv_channel WHERE tv_channel.series_name = 'Sky Radio'	tvshow
SELECT tv_channel.package_option FROM tv_channel WHERE tv_channel.series_name = 'Sky Radio'	tvshow
SELECT tv_channel.package_option FROM tv_channel WHERE tv_channel.series_name = 'Sky Radio'	tvshow
SELECT COUNT( * ) FROM tv_channel WHERE tv_channel.language = 'English'	tvshow
SELECT COUNT( * ) FROM tv_channel WHERE tv_channel.language = 'English'	tvshow
SELECT tv_channel.language , COUNT( * ) FROM tv_channel GROUP BY tv_channel.language ORDER BY COUNT( tv_channel.language ) ASC LIMIT 1	tvshow
SELECT tv_channel.language , COUNT( * ) FROM tv_channel GROUP BY tv_channel.language ORDER BY COUNT( * ) ASC LIMIT 1	tvshow
SELECT tv_channel.language , COUNT( * ) FROM tv_channel GROUP BY tv_channel.language	tvshow
SELECT tv_channel.language , COUNT( * ) FROM tv_channel GROUP BY tv_channel.language	tvshow
SELECT tv_series.episode FROM tv_series ORDER BY tv_series.rating ASC	tvshow
SELECT tv_series.episode FROM tv_series ORDER BY tv_series.rating ASC	tvshow
SELECT tv_series.episode , tv_series.rating FROM tv_series ORDER BY tv_series.rating DESC LIMIT 3	tvshow
SELECT tv_series.episode , tv_series.rating FROM tv_series ORDER BY tv_series.rating DESC LIMIT 3	tvshow
SELECT MIN( tv_series.share ) , MAX( tv_series.share ) FROM tv_series	tvshow
SELECT MAX( tv_series.share ) , MIN( tv_series.share ) FROM tv_series	tvshow
SELECT tv_series.air_date FROM tv_series WHERE tv_series.episode = 'A Love of a Lifetime'	tvshow
SELECT tv_series.air_date FROM tv_series WHERE tv_series.episode = 'A Love of a Lifetime'	tvshow
SELECT tv_series.weekly_rank FROM tv_series WHERE tv_series.episode = 'A Love of a Lifetime'	tvshow
SELECT tv_series.weekly_rank FROM tv_series WHERE tv_series.episode = 'A Love of a Lifetime'	tvshow
SELECT COUNT( * ) , cartoon.directed_by FROM cartoon GROUP BY cartoon.directed_by	tvshow
SELECT cartoon.directed_by , COUNT( * ) FROM cartoon GROUP BY cartoon.directed_by	tvshow
SELECT cartoon.production_code , cartoon.channel FROM cartoon ORDER BY cartoon.original_air_date DESC LIMIT 1	tvshow
SELECT cartoon.production_code , cartoon.channel FROM cartoon ORDER BY cartoon.original_air_date DESC LIMIT 1	tvshow
SELECT tv_channel.package_option , tv_channel.series_name FROM tv_channel WHERE tv_channel.hight_definition_tv = 'TV'	tvshow
SELECT tv_channel.series_name , tv_channel.package_option FROM tv_channel WHERE tv_channel.hight_definition_tv = 'yes'	tvshow
SELECT tv_channel.pixel_aspect_ratio_par , tv_channel.country FROM tv_channel WHERE tv_channel.language != 'English'	tvshow
SELECT tv_channel.country , tv_channel.pixel_aspect_ratio_par FROM tv_channel WHERE tv_channel.language != 'English'	tvshow
SELECT tv_channel.id FROM tv_channel GROUP BY tv_channel.id HAVING COUNT( * ) > 2	tvshow
SELECT tv_channel.id FROM tv_channel GROUP BY tv_channel.id HAVING COUNT( * ) > 2	tvshow
SELECT COUNT( * ) FROM poker_player	poker_player
SELECT COUNT( * ) FROM poker_player	poker_player
SELECT poker_player.earnings FROM poker_player ORDER BY poker_player.earnings DESC	poker_player
SELECT poker_player.earnings FROM poker_player ORDER BY poker_player.earnings DESC	poker_player
SELECT poker_player.final_table_made , poker_player.best_finish FROM poker_player	poker_player
SELECT poker_player.final_table_made , poker_player.best_finish FROM poker_player	poker_player
SELECT AVG( poker_player.earnings ) FROM poker_player	poker_player
SELECT AVG( poker_player.earnings ) FROM poker_player	poker_player
SELECT poker_player.money_rank FROM poker_player ORDER BY poker_player.earnings DESC LIMIT 1	poker_player
SELECT poker_player.money_rank FROM poker_player ORDER BY poker_player.earnings DESC LIMIT 1	poker_player
SELECT MAX( poker_player.final_table_made ) FROM poker_player WHERE poker_player.earnings<200000	poker_player
SELECT MAX( poker_player.final_table_made ) FROM poker_player WHERE poker_player.earnings<200000	poker_player
SELECT people.nationality , COUNT( * ) FROM people GROUP BY people.nationality	poker_player
SELECT people.nationality , COUNT( * ) FROM people GROUP BY people.nationality	poker_player
SELECT people.nationality FROM people GROUP BY people.nationality ORDER BY COUNT( * ) DESC LIMIT 1	poker_player
SELECT people.nationality FROM people GROUP BY people.nationality ORDER BY COUNT( * ) DESC LIMIT 1	poker_player
SELECT people.nationality FROM people GROUP BY people.nationality HAVING COUNT( * ) >= 2	poker_player
SELECT people.nationality FROM people GROUP BY people.nationality HAVING COUNT( * ) >= 2	poker_player
SELECT people.name , people.birth_date FROM people ORDER BY people.name ASC	poker_player
SELECT people.name , people.birth_date FROM people ORDER BY people.name ASC	poker_player
SELECT people.name FROM people WHERE people.nationality != 'Russia'	poker_player
SELECT people.name FROM people WHERE people.nationality != 'Russia'	poker_player
SELECT COUNT( DISTINCT people.nationality ) FROM people	poker_player
SELECT COUNT( DISTINCT people.nationality ) FROM people	poker_player
SELECT COUNT( * ) FROM area_code_state	voter_1
SELECT contestants.contestant_number , contestants.contestant_name FROM contestants ORDER BY contestants.contestant_name DESC	voter_1
SELECT votes.vote_id , votes.phone_number , votes.state FROM votes	voter_1
SELECT MAX( area_code_state.area_code ) , MIN( area_code_state.area_code ) FROM area_code_state	voter_1
SELECT MAX( votes.created ) FROM votes WHERE votes.state = 'CA'	voter_1
SELECT contestants.contestant_name FROM contestants WHERE contestants.contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT votes.state , votes.created FROM votes	voter_1
SELECT COUNT( * ) FROM votes WHERE votes.state = 'NY' OR votes.state = 'CA'	voter_1
SELECT contestants.contestant_name FROM contestants WHERE contestants.contestant_name LIKE '%Al%'	voter_1
SELECT country.name FROM country WHERE country.indepyear > 1950	world_1
SELECT country.name FROM country WHERE country.indepyear > 1950	world_1
SELECT COUNT( * ) FROM country WHERE country.governmentform = 'republic'	world_1
SELECT COUNT( * ) FROM country WHERE country.governmentform = 'republic'	world_1
SELECT SUM( country.surfacearea ) FROM country WHERE country.region = 'Caribbean'	world_1
SELECT SUM( country.surfacearea ) FROM country WHERE country.region = 'Carribean'	world_1
SELECT country.continent FROM country WHERE country.name = 'Anguilla'	world_1
SELECT country.continent FROM country WHERE country.name = 'Anguilla'	world_1
SELECT country.population , country.lifeexpectancy FROM country WHERE country.name = 'Brazil'	world_1
SELECT country.population , country.lifeexpectancy FROM country WHERE country.name = 'Brazil'	world_1
SELECT country.region , country.population FROM country WHERE country.name = 'Angola'	world_1
SELECT country.region , country.population FROM country WHERE country.name = 'Angola'	world_1
SELECT AVG( country.lifeexpectancy ) FROM country WHERE country.region = 'Central Africa'	world_1
SELECT AVG( country.lifeexpectancy ) FROM country WHERE country.region = 'Central Africa'	world_1
SELECT country.name FROM country WHERE country.region = 'Asia' ORDER BY country.lifeexpectancy ASC LIMIT 1	world_1
SELECT country.name FROM country WHERE country.region = 'Asia' ORDER BY country.lifeexpectancy ASC LIMIT 1	world_1
SELECT SUM( country.population ) , MAX( country.gnp ) FROM country WHERE country.region = 'Asia'	world_1
SELECT country.gnp FROM country WHERE country.region = 'Asia' ORDER BY country.gnp DESC LIMIT 1	world_1
SELECT AVG( country.lifeexpectancy ) FROM country WHERE country.region = 'African' AND country.governmentform = 'republic'	world_1
SELECT AVG( country.lifeexpectancy ) FROM country WHERE country.continent = 'Africa' AND country.governmentform = 'Africa'	world_1
SELECT SUM( country.surfacearea ) FROM country WHERE country.continent = 'Asia' OR country.region = 'Europe'	world_1
SELECT SUM( country.surfacearea ) FROM country WHERE country.region = 'Asia' OR country.region = 'Europe'	world_1
SELECT SUM( city.population ) FROM city WHERE city.district = 'Gelderland'	world_1
SELECT SUM( city.population ) FROM city WHERE city.district = 'Gelderland'	world_1
SELECT AVG( country.gnp ) , SUM( country.population ) FROM country WHERE country.governmentform = 'US territory'	world_1
SELECT AVG( country.gnp ) , SUM( country.population ) FROM country WHERE country.region = 'US territory'	world_1
SELECT COUNT( DISTINCT countrylanguage.language ) FROM countrylanguage	world_1
SELECT COUNT( DISTINCT countrylanguage.language ) FROM countrylanguage	world_1
SELECT COUNT( DISTINCT country.governmentform ) FROM country WHERE country.region = 'Africa'	world_1
SELECT COUNT( DISTINCT country.governmentform ) FROM country WHERE country.region = 'Africa'	world_1
SELECT country.name , country.population , country.lifeexpectancy FROM country WHERE country.region = 'asian' ORDER BY country.surfacearea DESC LIMIT 1	world_1
SELECT country.name , country.population , country.lifeexpectancy FROM country WHERE country.region = 'Asian' ORDER BY country.surfacearea DESC LIMIT 1	world_1
SELECT country.name FROM country WHERE country.surfacearea > (SELECT MAX( country.surfacearea ) FROM country WHERE country.region = 'Europe')	world_1
SELECT country.name FROM country WHERE country.surfacearea > (SELECT MAX( country.surfacearea ) FROM country WHERE country.region = 'Europe')	world_1
SELECT country.name FROM country WHERE country.population<(SELECT MAX( country.population ) FROM country WHERE country.region = 'Asia')	world_1
SELECT country.name FROM country WHERE country.population<(SELECT MIN( country.population ) FROM country WHERE country.continent = 'African' AND country.region = 'Asia')	world_1
SELECT country.name FROM country WHERE country.population > (SELECT MAX( country.population ) FROM country WHERE country.region = 'Africa')	world_1
SELECT country.name FROM country WHERE country.population > (SELECT MAX( country.population ) FROM country WHERE country.region = 'Africa')	world_1
SELECT country.code FROM country EXCEPT SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language = 'English'	world_1
SELECT country.code FROM country EXCEPT SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language = 'English'	world_1
SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language != 'English'	world_1
SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language != 'English'	world_1
SELECT country.name , country.indepyear , country.surfacearea FROM country ORDER BY country.population ASC LIMIT 1	world_1
SELECT country.name , country.indepyear , country.surfacearea FROM country ORDER BY country.population ASC LIMIT 1	world_1
SELECT country.population , country.name , country.headofstate FROM country ORDER BY country.surfacearea DESC LIMIT 1	world_1
SELECT country.name , country.population , country.headofstate FROM country ORDER BY country.surfacearea DESC LIMIT 1	world_1
SELECT COUNT( * ) , city.district FROM city WHERE city.population > (SELECT AVG( city.population ) FROM city) GROUP BY city.district	world_1
SELECT COUNT( * ) , city.district FROM city WHERE city.population > (SELECT AVG( city.population ) FROM city) GROUP BY city.district	world_1
SELECT country.governmentform , SUM( country.population ) FROM country GROUP BY country.governmentform HAVING AVG( country.lifeexpectancy ) > 72	world_1
SELECT SUM( country.population ) , country.governmentform FROM country GROUP BY country.governmentform HAVING AVG( country.lifeexpectancy ) > 72	world_1
SELECT country.continent , SUM( country.population ) FROM country WHERE country.lifeexpectancy<72 GROUP BY country.continent	world_1
SELECT country.continent , SUM( country.population ) FROM country WHERE country.lifeexpectancy<72 GROUP BY country.continent	world_1
SELECT country.name , country.surfacearea FROM country ORDER BY country.surfacearea DESC LIMIT 5	world_1
SELECT country.name , country.surfacearea FROM country ORDER BY country.surfacearea DESC LIMIT 5	world_1
SELECT country.name FROM country ORDER BY country.population DESC LIMIT 3	world_1
SELECT country.name FROM country ORDER BY country.population DESC LIMIT 3	world_1
SELECT country.name FROM country ORDER BY country.population ASC LIMIT 3	world_1
SELECT country.name FROM country ORDER BY country.population ASC LIMIT 3	world_1
SELECT COUNT( * ) FROM country WHERE country.region = 'Asia'	world_1
SELECT COUNT( * ) FROM country WHERE country.region = 'Asia'	world_1
SELECT country.name FROM country WHERE country.continent = 'Europe' AND country.population = 80000	world_1
SELECT country.name FROM country WHERE country.region = 'Europe' AND country.population = 80000	world_1
SELECT SUM( country.population ) , AVG( country.surfacearea ) FROM country WHERE country.continent = 'North America' HAVING AVG( country.surfacearea ) > 3000	world_1
SELECT SUM( country.population ) , AVG( country.surfacearea ) FROM country WHERE country.region = 'North America' AND country.surfacearea > 3000	world_1
SELECT city.name FROM city WHERE city.population BETWEEN 160000 and 900000	world_1
SELECT city.name FROM city WHERE city.population BETWEEN 160000 and 900000	world_1
SELECT countrylanguage.language FROM countrylanguage GROUP BY countrylanguage.language ORDER BY COUNT( * ) DESC LIMIT 1	world_1
SELECT countrylanguage.language FROM countrylanguage GROUP BY countrylanguage.language ORDER BY COUNT( * ) DESC LIMIT 1	world_1
SELECT countrylanguage.language FROM countrylanguage ORDER BY countrylanguage.percentage DESC LIMIT 1	world_1
SELECT countrylanguage.countrycode , MAX( countrylanguage.percentage ) FROM countrylanguage GROUP BY countrylanguage.countrycode	world_1
SELECT COUNT( * ) FROM countrylanguage WHERE countrylanguage.language = 'Spanish' ORDER BY countrylanguage.percentage DESC LIMIT 1	world_1
SELECT COUNT( * ) FROM countrylanguage WHERE countrylanguage.language = 'Spanish'	world_1
SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language = 'Spanish' ORDER BY countrylanguage.percentage DESC LIMIT 1	world_1
SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.percentage > (SELECT AVG( countrylanguage.percentage ) FROM countrylanguage WHERE countrylanguage.language = 'Spanish')	world_1
SELECT COUNT( * ) FROM conductor	orchestra
SELECT COUNT( * ) FROM conductor	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.age ASC	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.age ASC	orchestra
SELECT conductor.name FROM conductor WHERE conductor.nationality != 'USA'	orchestra
SELECT conductor.name FROM conductor WHERE conductor.nationality != 'USA'	orchestra
SELECT orchestra.record_company FROM orchestra ORDER BY orchestra.year_of_founded DESC	orchestra
SELECT orchestra.record_company FROM orchestra ORDER BY orchestra.year_of_founded DESC	orchestra
SELECT AVG( show.attendance ) FROM show	orchestra
SELECT AVG( show.attendance ) FROM show	orchestra
SELECT MAX( performance.share ) , MIN( performance.share ) FROM performance WHERE performance.type != 'Live final'	orchestra
SELECT MAX( performance.share ) , MIN( performance.share ) FROM performance WHERE performance.type != 'Live final'	orchestra
SELECT COUNT( DISTINCT conductor.nationality ) FROM conductor	orchestra
SELECT COUNT( DISTINCT conductor.nationality ) FROM conductor	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC LIMIT 1	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC LIMIT 1	orchestra
SELECT orchestra.record_company , COUNT( * ) FROM orchestra GROUP BY orchestra.record_company	orchestra
SELECT orchestra.record_company , COUNT( * ) FROM orchestra GROUP BY orchestra.record_company	orchestra
SELECT orchestra.major_record_format FROM orchestra GROUP BY orchestra.major_record_format ORDER BY COUNT( * ) ASC	orchestra
SELECT orchestra.major_record_format FROM orchestra GROUP BY orchestra.major_record_format ORDER BY COUNT( * ) ASC	orchestra
SELECT orchestra.record_company FROM orchestra GROUP BY orchestra.record_company ORDER BY COUNT( * ) DESC LIMIT 1	orchestra
SELECT orchestra.record_company FROM orchestra GROUP BY orchestra.record_company ORDER BY COUNT( * ) DESC LIMIT 1	orchestra
SELECT orchestra.record_company FROM orchestra WHERE orchestra.year_of_founded<2003 INTERSECT SELECT orchestra.record_company FROM orchestra WHERE orchestra.year_of_founded > 2003	orchestra
SELECT orchestra.record_company FROM orchestra WHERE orchestra.year_of_founded<2003 INTERSECT SELECT orchestra.record_company FROM orchestra WHERE orchestra.year_of_founded > 2003	orchestra
SELECT COUNT( * ) FROM orchestra WHERE orchestra.major_record_format = 'CD' OR orchestra.major_record_format = 'DVD'	orchestra
SELECT COUNT( * ) FROM orchestra WHERE orchestra.major_record_format = 'CD' OR orchestra.major_record_format = 'DVD'	orchestra
SELECT COUNT( * ) FROM highschooler	network_1
SELECT COUNT( * ) FROM highschooler	network_1
SELECT highschooler.name , highschooler.grade FROM highschooler	network_1
SELECT highschooler.name , highschooler.grade FROM highschooler	network_1
SELECT DISTINCT highschooler.grade FROM highschooler	network_1
SELECT highschooler.grade FROM highschooler	network_1
SELECT highschooler.grade FROM highschooler WHERE highschooler.name = 'Kyle'	network_1
SELECT highschooler.grade FROM highschooler WHERE highschooler.name = 'Kyle'	network_1
SELECT highschooler.name FROM highschooler WHERE highschooler.grade = 10	network_1
SELECT highschooler.name FROM highschooler WHERE highschooler.grade = 10	network_1
SELECT highschooler.id FROM highschooler WHERE highschooler.name = 'Kyle'	network_1
SELECT highschooler.id FROM highschooler WHERE highschooler.name = 'Kyle'	network_1
SELECT COUNT( * ) FROM highschooler WHERE highschooler.grade = 9 OR highschooler.grade = 10	network_1
SELECT COUNT( * ) FROM highschooler WHERE highschooler.grade = 9 OR highschooler.grade = 10	network_1
SELECT highschooler.grade , COUNT( * ) FROM highschooler GROUP BY highschooler.grade	network_1
SELECT COUNT( * ) , highschooler.grade FROM highschooler GROUP BY highschooler.grade	network_1
SELECT highschooler.grade FROM highschooler GROUP BY highschooler.grade ORDER BY COUNT( * ) DESC LIMIT 1	network_1
SELECT highschooler.grade FROM highschooler GROUP BY highschooler.grade ORDER BY COUNT( * ) DESC LIMIT 1	network_1
SELECT highschooler.grade FROM highschooler GROUP BY highschooler.grade HAVING COUNT( * ) >= 4	network_1
SELECT highschooler.grade FROM highschooler GROUP BY highschooler.grade HAVING COUNT( * ) >= 4	network_1
SELECT friend.student_id , COUNT( * ) FROM friend GROUP BY friend.student_id	network_1
SELECT friend.student_id , COUNT( * ) FROM friend GROUP BY friend.student_id	network_1
SELECT COUNT( * ) , likes.student_id FROM likes GROUP BY likes.student_id	network_1
SELECT likes.student_id , COUNT( * ) FROM likes GROUP BY likes.student_id	network_1
SELECT professionals.email_address FROM professionals WHERE professionals.state = 'Hawaii' OR professionals.state = 'Wisconsin'	dog_kennels
SELECT professionals.email_address FROM professionals WHERE professionals.state = 'Hawaii' OR professionals.state = 'Wisconsin'	dog_kennels
SELECT dogs.date_arrived , dogs.date_departed FROM dogs	dog_kennels
SELECT dogs.date_arrived , dogs.date_departed FROM dogs	dog_kennels
SELECT COUNT( DISTINCT treatments.dog_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT treatments.dog_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT treatments.professional_id ) FROM treatments	dog_kennels
SELECT COUNT( DISTINCT treatments.professional_id ) FROM treatments	dog_kennels
SELECT professionals.role_code , professionals.city , professionals.street , professionals.state FROM professionals WHERE professionals.city LIKE '%West%'	dog_kennels
SELECT professionals.role_code , professionals.street , professionals.city , professionals.state FROM professionals WHERE professionals.city LIKE '%West%'	dog_kennels
SELECT owners.first_name , owners.last_name , owners.email_address FROM owners WHERE owners.state LIKE '%North%'	dog_kennels
SELECT owners.first_name , owners.last_name , owners.email_address FROM owners WHERE owners.state LIKE '%North%'	dog_kennels
SELECT COUNT( * ) FROM dogs WHERE dogs.age<(SELECT AVG( dogs.age ) FROM dogs)	dog_kennels
SELECT COUNT( * ) FROM dogs WHERE dogs.age<(SELECT AVG( dogs.age ) FROM dogs)	dog_kennels
SELECT treatments.cost_of_treatment FROM treatments ORDER BY treatments.cost_of_treatment DESC LIMIT 1	dog_kennels
SELECT treatments.cost_of_treatment FROM treatments ORDER BY treatments.date_of_treatment DESC LIMIT 1	dog_kennels
SELECT dogs.name , dogs.age , dogs.weight FROM dogs WHERE dogs.abandoned_yn = 'yes' OR dogs.abandoned_yn = 'no'	dog_kennels
SELECT dogs.name , dogs.age , dogs.weight FROM dogs WHERE dogs.abandoned_yn = 'yes' OR dogs.abandoned_yn = 'no'	dog_kennels
SELECT AVG( dogs.age ) FROM dogs	dog_kennels
SELECT AVG( dogs.age ) FROM dogs	dog_kennels
SELECT dogs.age FROM dogs ORDER BY dogs.age DESC LIMIT 1	dog_kennels
SELECT dogs.age FROM dogs ORDER BY dogs.age DESC LIMIT 1	dog_kennels
SELECT charges.charge_type , charges.charge_amount FROM charges	dog_kennels
SELECT charges.charge_type , charges.charge_amount FROM charges	dog_kennels
SELECT SUM( charges.charge_amount ) FROM charges ORDER BY charges.charge_type DESC LIMIT 1	dog_kennels
SELECT charges.charge_amount FROM charges ORDER BY charges.charge_type DESC LIMIT 1	dog_kennels
SELECT professionals.email_address , professionals.cell_number , professionals.home_phone FROM professionals	dog_kennels
SELECT professionals.email_address , professionals.cell_number , professionals.home_phone FROM professionals	dog_kennels
SELECT DISTINCT breeds.breed_name , sizes.size_description FROM breeds JOIN dogs ON breeds.breed_code = dogs.breed_code JOIN sizes ON dogs.size_code = sizes.size_code	dog_kennels
SELECT DISTINCT dogs.breed_code , dogs.size_code FROM dogs	dog_kennels
SELECT COUNT( * ) FROM singer	singer
SELECT COUNT( * ) FROM singer	singer
SELECT singer.name FROM singer ORDER BY singer.net_worth_millions ASC	singer
SELECT singer.name FROM singer ORDER BY singer.net_worth_millions ASC	singer
SELECT singer.birth_year , singer.citizenship FROM singer	singer
SELECT singer.birth_year , singer.citizenship FROM singer	singer
SELECT singer.name FROM singer WHERE singer.citizenship != 'France'	singer
SELECT singer.name FROM singer WHERE singer.citizenship != 'French'	singer
SELECT singer.name FROM singer WHERE singer.birth_year = 1948 OR singer.birth_year = 1949	singer
SELECT singer.name FROM singer WHERE singer.birth_year = 1948 OR singer.birth_year = 1949	singer
SELECT singer.name FROM singer ORDER BY singer.net_worth_millions DESC LIMIT 1	singer
SELECT singer.name FROM singer ORDER BY singer.net_worth_millions DESC LIMIT 1	singer
SELECT singer.citizenship , COUNT( * ) FROM singer GROUP BY singer.citizenship	singer
SELECT singer.citizenship , COUNT( * ) FROM singer GROUP BY singer.citizenship	singer
SELECT singer.citizenship FROM singer GROUP BY singer.citizenship ORDER BY COUNT( * ) DESC LIMIT 1	singer
SELECT singer.citizenship FROM singer GROUP BY singer.citizenship ORDER BY COUNT( * ) DESC LIMIT 1	singer
SELECT singer.citizenship , MAX( singer.net_worth_millions ) FROM singer GROUP BY singer.citizenship	singer
SELECT MAX( singer.net_worth_millions ) , singer.citizenship FROM singer GROUP BY singer.citizenship	singer
SELECT singer.citizenship FROM singer WHERE singer.birth_year<1945 INTERSECT SELECT singer.citizenship FROM singer WHERE singer.birth_year > 1955	singer
SELECT singer.citizenship FROM singer WHERE singer.birth_year<1945 INTERSECT SELECT singer.citizenship FROM singer WHERE singer.birth_year > 1955	singer
SELECT COUNT( * ) FROM other_available_features	real_estate_properties
SELECT properties.property_name FROM properties WHERE properties.room_count > 1	real_estate_properties
