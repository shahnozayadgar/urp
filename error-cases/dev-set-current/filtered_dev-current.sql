SELECT count(*) FROM singer	concert_singer
SELECT count(*) FROM singer	concert_singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'	concert_singer
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT DISTINCT country FROM singer WHERE age  >  20	concert_singer
SELECT DISTINCT country FROM singer WHERE age  >  20	concert_singer
SELECT country ,  count(*) FROM singer GROUP BY country	concert_singer
SELECT country ,  count(*) FROM singer GROUP BY country	concert_singer
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)	concert_singer
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)	concert_singer
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	concert_singer
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	concert_singer
select max(capacity), average from stadium	concert_singer
select avg(capacity) ,  max(capacity) from stadium	concert_singer
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015	concert_singer
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015	concert_singer
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30	concert_singer
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT count(*) FROM pets WHERE weight  >  10	pets_1
SELECT count(*) FROM pets WHERE weight  >  10	pets_1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
SELECT count(DISTINCT pettype) FROM pets	pets_1
SELECT count(DISTINCT pettype) FROM pets	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;	car_1
select min(weight) from cars_data where cylinders  =  8 and year  =  1974	car_1
select min(weight) from cars_data where cylinders  =  8 and year  =  1974	car_1
SELECT Maker ,  Model FROM MODEL_LIST;	car_1
SELECT Maker ,  Model FROM MODEL_LIST;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <  1980;	car_1
select avg(horsepower) from cars_data where year  <  1980;	car_1
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;	car_1
select distinct year from cars_data where weight between 3000 and 4000;	car_1
select distinct year from cars_data where weight between 3000 and 4000;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;	car_1
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
SELECT count(*) FROM AIRLINES	flight_2
SELECT count(*) FROM AIRLINES	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"	flight_2
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT name FROM employee ORDER BY age	employee_hire_evaluation
SELECT name FROM employee ORDER BY age	employee_hire_evaluation
SELECT count(*) ,  city FROM employee GROUP BY city	employee_hire_evaluation
SELECT count(*) ,  city FROM employee GROUP BY city	employee_hire_evaluation
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1	employee_hire_evaluation
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1	employee_hire_evaluation
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION	employee_hire_evaluation
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION	employee_hire_evaluation
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT min(Number_products) ,  max(Number_products) FROM shop	employee_hire_evaluation
SELECT min(Number_products) ,  max(Number_products) FROM shop	employee_hire_evaluation
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)	employee_hire_evaluation
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)	employee_hire_evaluation
SELECT sum(bonus) FROM evaluation	employee_hire_evaluation
SELECT sum(bonus) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT district FROM shop WHERE Number_products  <  3000 INTERSECT SELECT district FROM shop WHERE Number_products  >  10000	employee_hire_evaluation
SELECT district FROM shop WHERE Number_products  <  3000 INTERSECT SELECT district FROM shop WHERE Number_products  >  10000	employee_hire_evaluation
SELECT count(DISTINCT LOCATION) FROM shop	employee_hire_evaluation
SELECT count(DISTINCT LOCATION) FROM shop	employee_hire_evaluation
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT document_id ,  document_name ,  document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_id ,  document_name ,  document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"	cre_Doc_Template_Mgt
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT template_id ,  version_number ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT template_id ,  version_number ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT template_type_code ,  template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_code ,  template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs	cre_Doc_Template_Mgt
select other_details from paragraphs where paragraph_text like 'korea'	cre_Doc_Template_Mgt
select other_details from paragraphs where paragraph_text like 'korea'	cre_Doc_Template_Mgt
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
SELECT count(*) FROM teacher	course_teach
SELECT count(*) FROM teacher	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Age ,  Hometown FROM teacher	course_teach
SELECT Age ,  Hometown FROM teacher	course_teach
select name from teacher where hometown != "little lever urban district"	course_teach
select name from teacher where hometown != "little lever urban district"	course_teach
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33	course_teach
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2	course_teach
SELECT count(*) FROM visitor WHERE age  <  30	museum_visit
SELECT name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC	museum_visit
SELECT avg(age) FROM visitor WHERE Level_of_membership  <=  4	museum_visit
SELECT name ,  Level_of_membership FROM visitor WHERE Level_of_membership  >  4 ORDER BY age DESC	museum_visit
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1	museum_visit
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009	museum_visit
SELECT Num_of_Staff ,  Open_Year FROM museum WHERE name  =  'Plaza Museum'	museum_visit
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)	museum_visit
SELECT avg(num_of_ticket) ,  max(num_of_ticket) FROM visit	museum_visit
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008	museum_visit
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM matches	wta_1
SELECT count(*) FROM matches	wta_1
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT avg(loser_age) ,  avg(winner_age) FROM matches	wta_1
SELECT avg(loser_age) ,  avg(winner_age) FROM matches	wta_1
SELECT avg(winner_rank) FROM matches	wta_1
SELECT avg(winner_rank) FROM matches	wta_1
SELECT min(loser_rank) FROM matches	wta_1
SELECT min(loser_rank) FROM matches	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10	wta_1
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016	wta_1
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016	wta_1
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016	wta_1
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT count(*) ,  country_code FROM players GROUP BY country_code	wta_1
SELECT count(*) ,  country_code FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT count(*) ,  hand FROM players GROUP BY hand	wta_1
SELECT count(*) ,  hand FROM players GROUP BY hand	wta_1
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'	battle_death
SELECT name ,  tonnage FROM ship ORDER BY name DESC	battle_death
SELECT name ,  date FROM battle	battle_death
SELECT max(killed) ,  min(killed) FROM death	battle_death
SELECT avg(injured) FROM death	battle_death
SELECT name ,  RESULT FROM battle WHERE bulgarian_commander != 'Boril'	battle_death
SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'	battle_death
SELECT count(DISTINCT RESULT) FROM battle	battle_death
SELECT note FROM death WHERE note LIKE '%East%'	battle_death
SELECT line_1 ,  line_2 FROM addresses	student_transcripts_tracking
SELECT line_1 ,  line_2 FROM addresses	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name  =  'math'	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name  =  'math'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT section_name ,  section_description FROM Sections	student_transcripts_tracking
SELECT section_name ,  section_description FROM Sections	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name  =  'Timmothy' AND last_name  =  'Ward'	student_transcripts_tracking
select cell_mobile_number from students where first_name  =  'timmothy' and last_name  =  'ward'	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT count(*) FROM Transcripts	student_transcripts_tracking
SELECT count(*) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT count(*) ,  student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT count(*) ,  student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT count(DISTINCT current_address_id) FROM Students	student_transcripts_tracking
SELECT count(DISTINCT current_address_id) FROM Students	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name  =  'h'	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name  =  'h'	student_transcripts_tracking
SELECT Title FROM Cartoon ORDER BY title	tvshow
SELECT Title FROM Cartoon ORDER BY title	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";	tvshow
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";	tvshow
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;	tvshow
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;	tvshow
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";	tvshow
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE	tvshow
SELECT Episode FROM TV_series ORDER BY rating	tvshow
SELECT Episode FROM TV_series ORDER BY rating	tvshow
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;	tvshow
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;	tvshow
SELECT max(SHARE) , min(SHARE) FROM TV_series;	tvshow
SELECT max(SHARE) , min(SHARE) FROM TV_series;	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by	tvshow
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by	tvshow
select production_code ,  channel from cartoon order by original_air_date desc limit 1	tvshow
select production_code ,  channel from cartoon order by original_air_date desc limit 1	tvshow
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"	tvshow
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"	tvshow
SELECT Pixel_aspect_ratio_PAR ,  country FROM tv_channel WHERE LANGUAGE != 'English'	tvshow
SELECT Pixel_aspect_ratio_PAR ,  country FROM tv_channel WHERE LANGUAGE != 'English'	tvshow
SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
SELECT count(*) FROM poker_player	poker_player
SELECT count(*) FROM poker_player	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player	poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000	poker_player
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality	poker_player
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name FROM people WHERE Nationality != "Russia"	poker_player
SELECT Name FROM people WHERE Nationality != "Russia"	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(*) FROM area_code_state	voter_1
SELECT contestant_number ,  contestant_name FROM contestants ORDER BY contestant_name DESC	voter_1
SELECT vote_id ,  phone_number ,  state FROM votes	voter_1
SELECT max(area_code) ,  min(area_code) FROM area_code_state	voter_1
SELECT max(created) FROM votes WHERE state  =  'CA'	voter_1
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT state ,  created FROM votes	voter_1
SELECT count(*) FROM votes WHERE state  =  'NY' OR state  =  'CA'	voter_1
select contestant_name from contestants where contestant_name like "%al%"	voter_1
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"	world_1
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region  =  "Caribbean"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region  =  "Caribbean"	world_1
SELECT Continent FROM country WHERE Name  =  "Anguilla"	world_1
SELECT Continent FROM country WHERE Name  =  "Anguilla"	world_1
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"	world_1
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"	world_1
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"	world_1
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"	world_1
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"	world_1
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"	world_1
SELECT avg(GNP) ,  sum(population) FROM country WHERE GovernmentForm  =  "US Territory"	world_1
SELECT avg(GNP) ,  sum(population) FROM country WHERE GovernmentForm  =  "US Territory"	world_1
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage	world_1
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT max(population) FROM country WHERE Continent  =  "Asia")	world_1
SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT min(population) FROM country WHERE Continent  =  "Asia")	world_1
SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT max(population) FROM country WHERE Continent  =  "Africa")	world_1
SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT min(population) FROM country WHERE Continent  =  "Africa")	world_1
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE LANGUAGE  =  "English"	world_1
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE LANGUAGE  =  "English"	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name ,  population ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name ,  population ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT sum(Population) ,  GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy)  >  72	world_1
SELECT sum(Population) ,  GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy)  >  72	world_1
SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
SELECT Name FROM country WHERE continent  =  "Europe" AND Population  =  "80000"	world_1
SELECT Name FROM country WHERE continent  =  "Europe" AND Population  =  "80000"	world_1
select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
SELECT name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
select name from city where population between 160000 and 900000	world_1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1	world_1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1	world_1
SELECT LANGUAGE ,  CountryCode ,  max(Percentage) FROM countrylanguage GROUP BY CountryCode	world_1
SELECT LANGUAGE ,  CountryCode ,  max(Percentage) FROM countrylanguage GROUP BY CountryCode	world_1
SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT count(*) FROM conductor	orchestra
SELECT count(*) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT avg(Attendance) FROM SHOW	orchestra
SELECT avg(Attendance) FROM SHOW	orchestra
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"	orchestra
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC	orchestra
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC	orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003	orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003	orchestra
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"	orchestra
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"	orchestra
SELECT count(*) FROM Highschooler	network_1
SELECT count(*) FROM Highschooler	network_1
SELECT name ,  grade FROM Highschooler	network_1
SELECT name ,  grade FROM Highschooler	network_1
SELECT grade FROM Highschooler	network_1
SELECT grade FROM Highschooler	network_1
SELECT grade FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT grade FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT name FROM Highschooler WHERE grade  =  10	network_1
SELECT name FROM Highschooler WHERE grade  =  10	network_1
SELECT ID FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT ID FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10	network_1
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10	network_1
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4	network_1
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id	network_1
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id	network_1
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id	network_1
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id	network_1
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'	dog_kennels
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT charge_type ,  charge_amount FROM Charges	dog_kennels
SELECT charge_type ,  charge_amount FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT email_address ,  cell_number ,  home_phone FROM professionals	dog_kennels
SELECT email_address ,  cell_number ,  home_phone FROM professionals	dog_kennels
SELECT DISTINCT breed_code ,  size_code FROM dogs	dog_kennels
SELECT DISTINCT breed_code ,  size_code FROM dogs	dog_kennels
SELECT count(*) FROM singer	singer
SELECT count(*) FROM singer	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Citizenship != "France"	singer
SELECT Name FROM singer WHERE Citizenship != "France"	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
select citizenship from singer group by citizenship order by count(*) desc limit 1	singer
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955	singer
SELECT count(*) FROM Other_Available_Features	real_estate_properties
SELECT property_name FROM Properties WHERE property_type_code  =  "House" UNION SELECT property_name FROM Properties WHERE property_type_code  =  "Apartment" AND room_count  >  1	real_estate_properties
