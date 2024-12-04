Line 3: (wrong sorting direction)
question: Show name, country, age for all singers ordered by age from the oldest to the youngest.
golden truth: SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
prediction: SELECT name , country , age FROM singer ORDER BY age ASC	concert_singer


Line 6: (wrong key value error):
question: What is the average, minimum, and maximum age for all French singers?
golden truth: SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'	concert_singer
prediction: SELECT AVG( age ) , MIN( age ) , MAX( age ) FROM singer WHERE country = 'French'	concert_singer


Line 16: (wrong column in SELECT):
question: What are the locations and names of all stations with capacity between 5000 and 10000?
golden truth: SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	concert_singer
prediction: SELECT location , capacity FROM stadium WHERE capacity BETWEEN 5000 and 10000	concert_singer


Line 17: (wrong column in SELECT):
question: What is the maximum capacity and the average of all stadiums ?
golden truth: select max(capacity), average from stadium	concert_singer
prediction: SELECT MAX( capacity ) , AVG( average ) FROM stadium	concert_singer


Line 18: (wrong column in SELECT):
question: What is the average and maximum capacities for all stadiums ?
golden truth: select avg(capacity) ,  max(capacity) from stadium	concert_singer
prediction: SELECT AVG( average ) , MAX( capacity ) FROM stadium	concert_singer


Line 33 (duplicant column selection):
question: Find the maximum weight for each type of pet. List the maximum weight and pet type.
golden truth: SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
prediction: SELECT pettype , MAX( weight ) , MAX( weight ) FROM pets GROUP BY pettype	pets_1


Line 40 (wrong column in SELECT + Unnecessary Table Joins):
question: Find the average and maximum age for each type of pet.
golden truth: SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
prediction: SELECT pettype , AVG( age ) , MAX( age ) FROM student JOIN has_pet ON stuid = stuid JOIN pets ON petid = petid GROUP BY pettype	pets_1


Line 41 (wrong column in SELECT + Unnecessary Table Joins):
question: What is the average and maximum age for each pet type?
golden truth: SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
prediction: SELECT pettype , AVG( age ) , MAX( age ) FROM student JOIN has_pet ON stuid = stuid JOIN pets ON petid = petid GROUP BY pettype	pets_1


Line 51: (wrong table in SELECT):
question: What are all the makers and models?
golden truth: SELECT Maker ,  Model FROM MODEL_LIST;	car_1
prediction: SELECT maker , model FROM car_makers JOIN model_list ON id = maker	car_1

 
Line 52: (wrong table in SELECT):
question: What are all the makers and models?
golden truth: SELECT Maker ,  Model FROM MODEL_LIST;	car_1
prediction: SELECT maker , model FROM car_makers JOIN model_list ON id = maker	car_1


Line 67: (Miss a DISTINCT keyword):
question: In which years cars were produced weighing no less than 3000 and no more than 4000 ? 
golden truth: select distinct year from cars_data where weight between 3000 and 4000;	car_1
prediction: SELECT year FROM cars_data WHERE weight BETWEEN 3000 and 4000	car_1


Line 71: (wrong aggregation functions)
question: How many cars have a larger accelerate than the car with the largest horsepower?
golden truth: SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
prediction: SELECT COUNT( * ) FROM cars_data WHERE accelerate > (SELECT MAX( accelerate ) FROM cars_data) AND horsepower = (SELECT MAX( horsepower ) FROM cars_data)	car_1


Line 72: (wrong aggregation functions)
question: What is the number of cars with a greater accelerate than the one with the most horsepower?
golden truth: SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
prediction: SELECT COUNT( * ) FROM cars_data WHERE horsepower = (SELECT MAX( horsepower ) FROM cars_data)	car_1


Line 75: (wrong operators):
question: What is the maximum miles per gallon of the car with 8 cylinders or produced before 1980 ?
question answered correctly: What is the maximum mpg of the cars that had 8 cylinders or that were produced before 1980 ?
golden truth: select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
prediction: SELECT MAX( mpg ) FROM cars_data WHERE cylinders = '8' AND year<1980	car_1


Line 84: (uneccesary LIKE clause):
question: Give the airport code and airport name corresonding to the city Anthony.
golden truth: SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
prediction: SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'	flight_2


Line 97: (wrong column in WHERE)
question: What is the airport name for airport 'AKO'?
golden truth: SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"	flight_2
prediction: SELECT airportname FROM airports WHERE airportname = 'AKO'	flight_2


Line 104: (wrong column in WHERE + Unnecessary Table Joins):
question: Count the number of flights into ATO.
golden truth: SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"	flight_2
prediction: SELECT COUNT( * ) FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'ATO'	flight_2


Line 105: (wrong column in WHERE + Unnecessary Table Joins):
question: What are flight numbers of flights departing from Airport \"APG\"?
golden truth: SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
prediction: SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2


Line 107: (wrong column in WHERE + Unnecessary Table Joins):
question: What are flight numbers of flights arriving at Airport \"APG\"?
golden truth: SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
prediction: SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2


Line 108: (wrong column in WHERE + Unnecessary Table Joins):
question: Give the flight numbers of flights landing at APG.
golden truth: SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
prediction: SELECT flightno FROM flights JOIN airports ON sourceairport = airportcode WHERE airportname = 'APG'	flight_2


Line 168: (missing aggregation function + redundant ORDER BY clause):
question: Return the lowest version number, along with its corresponding template type code.
question answered correctly: What the smallest version number and its template type code?
golden truth: SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
prediction: SELECT version_number , template_type_code FROM templates ORDER BY version_number ASC LIMIT 1	cre_Doc_Template_Mgt


Line 177: (missing LIKE clause)
question: What are the details for the paragraph that includes the text 'Korea '
golden truth: select other_details from paragraphs where paragraph_text like 'korea'	cre_Doc_Template_Mgt
prediction: SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'	cre_Doc_Template_Mgt


Line 179: (missing ORDER BY operation):
question: Show all document ids and the number of paragraphs in each document. Order by document id.
question answered correctly: Return the different document ids along with the number of paragraphs corresponding to each, ordered by id.
golden truth: SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
prediction: SELECT document_id , COUNT( * ) FROM paragraphs GROUP BY document_id	cre_Doc_Template_Mgt


Line 186: (wrong table in SELECT + Unnecessary Table Joins ):
question: Give the ids of documents that have between one and two paragraphs.
question answered correctly: What is the document id with 1 to 2 paragraphs?
golden truth: SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
prediction: SELECT document_id FROM documents JOIN paragraphs ON document_id = document_id GROUP BY document_id HAVING COUNT( * ) BETWEEN 1 and 2	cre_Doc_Template_Mgt


Line 188: (redundant LIKE clause)
question: Show the document id with paragraph text 'Brazil' and 'Ireland'.
golden truth: SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
prediction: SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'	cre_Doc_Template_Mgt


Line 214: (wrong comparison operators)
question: find the names of museums which have more staff than the minimum staff number of all museums opened after 2010.
golden truth: SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)	museum_visit
prediction: SELECT name FROM museum WHERE num_of_staff<(SELECT MIN( num_of_staff ) FROM museum WHERE open_year > 2010)	museum_visit


Line 236: (unnecessary table joining)
question: What are the names of players who won in both 2013 and 2016?
golden truth: SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016	wta_1
prediction: SELECT first_name , last_name FROM players JOIN matches ON player_id = winner_id WHERE year = 2013 INTERSECT SELECT first_name , last_name FROM players JOIN matches ON player_id = winner_id WHERE year = 2016


Line 247: (Unnecessary Table Joins + Redundant JOIN operation):
question: Find the name and rank points of the winner who won the most times.
golden truth: SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
prediction: SELECT winner_name , winner_rank_points FROM matches JOIN rankings ON winner_id = player_id GROUP BY winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1


Line 248: (Redundant operation in SELECT):
question: What is the name of the winner who has won the most matches, and how many rank points does this player have?
golden truth: SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
prediction: SELECT winner_name , COUNT( * ) , winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1


Line 263: (Redundant operation in JOIN + wrong column in ORDER BY + Miss a DISTINCT keyword ):
question: Find the name and rank of the 3 youngest winners across all matches.
golden truth: SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
prediction: SELECT winner_name , winner_rank FROM matches JOIN players ON winner_id = player_id ORDER BY birth_date ASC LIMIT 3	wta_1


Line 264: (Redundant operation in JOIN + wrong column in ORDER BY + Miss a DISTINCT keyword):
question: What are the names and ranks of the three youngest winners across all matches?
golden truth: SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
prediction: SELECT winner_name , winner_rank FROM players JOIN matches ON player_id = winner_id ORDER BY birth_date ASC LIMIT 3	wta_1


Line 266: (Redundant operation in JOIN + miss a DISTINCT keyword):
question: Find the number of left handed winners who participated in the WTA Championships.
question asnwered correctly: How many different winners both participated in the WTA Championships and were left handed?
golden truth: SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
prediction: SELECT COUNT( * ) FROM players JOIN matches ON player_id = winner_id WHERE hand = 'left' AND tourney_name = 'WTA Championships'	wta_1


Line 269: (wrong column in WHERE + select wrong table):
question: How many ships ended up being 'Captured'
golden truth: SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'	battle_death
prediction: SELECT COUNT( * ) FROM battle JOIN ship ON id = lost_in_battle WHERE result = 'Captured'	battle_death


Line 271: (redundant column)
question: List the name, date and result of each battle.
golden truth: SELECT name ,  date FROM battle	battle_death
prediction: SELECT name , date , result FROM battle	battle_death


Line 275: (missing DISTINCT keyword)
question:  What are the distinct battle names which are between bulgarian commander 'Kaloyan' and latin commander 'Baldwin I'?
golden truth: SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'	battle_death
prediction: SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death


Line 277: (unnecessary table joining + wrong column in WHERE ):
question: What are the notes of the death events which has substring 'East'
golden truth: SELECT note FROM death WHERE note LIKE '%East%'	battle_death
prediction: SELECT note FROM death JOIN ship ON caused_by_ship_id = id WHERE location LIKE '%East%'	battle_death


Line 278: (missing column + redundant INTERSECT operation)
question: What is the first and second line for all addresses?
golden truth: SELECT line_1 ,  line_2 FROM addresses	student_transcripts_tracking
prediction: SELECT line_1 FROM addresses INTERSECT SELECT line_2 FROM addresses	student_transcripts_tracking


Line 289: (Miss a DISTINCT keyword):
question: How many different degrees are offered?
question answered correctly: How many different degree names are offered?
golden truth: SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
prediction: SELECT COUNT( * ) FROM degree_programs	student_transcripts_tracking


Line 292: (wrong sorting direction)
question: List the section_name in reversed lexicographical order.
golden truth: SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
prediction: SELECT section_name FROM sections ORDER BY section_name ASC	student_transcripts_tracking


Line 293: (wrong sorting direction)
question: What are the names of the sections in reverse alphabetical order?
golden truth: SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
prediction: SELECT section_name FROM sections ORDER BY section_name ASC	student_transcripts_tracking


Line 294: (wrong key value error)
question: What is the description of the department whose name has the substring the computer?
golden truth: SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
prediction: SELECT department_description FROM departments WHERE department_name LIKE '%the computer%'	student_transcripts_tracking


Line 296: (wrong column in SELECT):
question: What is the phone number of the man with the first name Timmothy and the last name Ward?
question answered correctly: What is the mobile phone number of the student named Timmothy Ward ?
golden truth: SELECT cell_mobile_number FROM Students WHERE first_name  =  'Timmothy' AND last_name  =  'Ward'	student_transcripts_tracking
prediction: SELECT ssn FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'	student_transcripts_tracking


Line 300: (wrong table in SELECT + wrong column in ORDER BY):
question: Who is the earliest graduate of the school? List the first name, middle name and last name.
golden truth: SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
prediction: SELECT first_name , middle_name , last_name FROM degree_programs JOIN student_enrolment ON degree_program_id = degree_program_id JOIN students ON student_id = student_id ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking


Line 301: (wrong table in SELECT + wrong column in ORDER BY):
question: What is the first, middle, and last name of the earliest school graduate?
golden truth: SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
prediction: SELECT first_name , middle_name , last_name FROM students JOIN student_enrolment ON student_id = student_id ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking


Line 302: (Redundant column in SELECT + wrong column in WHERE):
question: Whose permanent address is different from his or her current address? List his or her first name.
question answered correctly: What is the first name of the student whose permanent address is different from his or her current one?
golden truth: SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
prediction: SELECT first_name , permanent_address_id FROM students WHERE permanent_address_id IN (SELECT MAX( ssn ) FROM students)	student_transcripts_tracking


Line 303: (wrong column in WHERE + wrong operators + redundant aggregation function
question: Whose permanent address is different from his or her current address? List his or her first name.
golden truth: SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
prediction: SELECT first_name FROM students WHERE permanent_address_id<(SELECT MAX( ssn ) FROM students)	student_transcripts_tracking


Line 304: wrong column in aggregation function
question: What is the average transcript date?
golden truth: SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
prediction: SELECT AVG( other_details ) FROM transcripts	student_transcripts_tracking


Line 306: (column missing):
question: When is the first transcript released? List the date and details.
golden truth: SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
prediction: SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking


Line 307: (column missing):
question: What is the earliest date of a transcript release, and what details can you tell me?
golden truth: SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
prediction: SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking


Line 308: (wrong table in SELECT):
question: How many transcripts are released?
golden truth: SELECT count(*) FROM Transcripts	student_transcripts_tracking
prediction: SELECT COUNT( * ) FROM courses	student_transcripts_tracking


Line 309: (wrong table in SELECT):
question: How many transcripts are listed?
golden truth: SELECT count(*) FROM Transcripts	student_transcripts_tracking
prediction: SELECT COUNT( * ) FROM courses	student_transcripts_tracking


Line 312:  (wrong table in SELECT):
question: How many times at most can a course enrollment result show in different transcripts? Also show the course enrollment id.
golden truth: SELECT count(*) ,  student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
prediction: SELECT course_id , COUNT( * ) FROM student_enrolment_courses GROUP BY course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking


Line 313: (wrong table in SELECT):
question: What is the maximum number of times that a course shows up in different transcripts and what is that courses enrollment id?
golden truth: SELECT count(*) ,  student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
prediction: SELECT student_course_id , COUNT( * ) FROM courses JOIN transcript_contents ON course_id = student_course_id GROUP BY course_id ORDER BY COUNT( * ) DESC LIMIT 1	student_transcripts_tracking


Line 315: (miss aggregation function):
question: What are the different addresses that have students living there?
question answered correctly: How many different addresses do the students currently live?
golden truth: SELECT count(DISTINCT current_address_id) FROM Students	student_transcripts_tracking
prediction: SELECT DISTINCT current_address_id FROM students	student_transcripts_tracking


Line 316: (wrong column in SELECT + wrong sorting direction):
question: List all the student details in reversed lexicographical order.
golden truth: SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
prediction: SELECT ssn FROM students ORDER BY other_student_details ASC	student_transcripts_tracking


Line 317: (wrong table in SELECT + wrong sorting direction):
question: What other details can you tell me about students in reverse alphabetical order?
golden truth: SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
prediction: SELECT other_details FROM student_enrolment JOIN students ON student_id = student_id ORDER BY other_details ASC	student_transcripts_tracking


Line 318: (wrong column in SELECT):
question: Describe the section h.
question answered correctly: What is the description for the section named h?
golden truth: SELECT section_description FROM Sections WHERE section_name  =  'h'	student_transcripts_tracking
prediction: SELECT section_name FROM sections WHERE section_name = 'h'	student_transcripts_tracking


Line 322: (wrong column in SELECT)
question: What are the names of all cartoons directed by Ben Jones?
golden truth: SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";	tvshow
prediction: SELECT directed_by FROM cartoon WHERE directed_by = 'Ben Jones'	tvshow


Line 332: (miss aggregation function + miss a DISTINCT keyword):
question: List the number of different series names and contents in the TV Channel table.
golden truth: SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
prediction: SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow


Line 333: (miss aggregation function + miss a DISTINCT keyword):
question: How many different series and contents are listed in the TV Channel table?
golden truth: SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
prediction: SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow


Line 358: (wrong key value error)
question: What are the package options and the name of the series for the TV Channel that supports high definition TV?
golden truth: SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"	tvshow
prediction: SELECT package_option , series_name FROM tv_channel WHERE hight_definition_tv = 'TV'	tvshow


Line 362: (wrong GROUP BY condition)
question: Find id of the tv channels that from the countries where have more than two tv channels.
golden truth: SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
prediction: SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow


Line 363: (wrong GROUP BY condition)
question: What are the ids of all tv channels that have more than 2 TV channels?
golden truth: SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
prediction: SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow


Line 411: (wrong column in WHERE)
question: What is the name of country that has the shortest life expectancy in Asia?
golden truth: SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
prediction: SELECT name FROM country WHERE region = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1	world_1


Line 412: (wrong column in WHERE)
question: Give the name of the country in Asia with the lowest life expectancy.
golden truth: SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
prediction: SELECT name FROM country WHERE region = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1	world_1


Line 413: (wrong column in WHERE)
question: What is the total population and maximum GNP in Asia?
golden truth: SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
prediction: SELECT SUM( population ) , MAX( gnp ) FROM country WHERE region = 'Asia'	world_1


Line 414: (wrong column)
question: How many people live in Asia, and what is the largest GNP among them?
golden truth: SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
prediction: SELECT gnp FROM country WHERE region = 'Asia' ORDER BY gnp DESC LIMIT 1	world_1


Line 415: (wrong column in WHERE):
question: What is the average life expectancy in African countries that are republics?
golden truth: SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
prediction: SELECT AVG( lifeexpectancy ) FROM country WHERE region = 'African' AND governmentform = 'republic'	world_1


Line 416: (wrong key value error):
question: Give the average life expectancy for countries in Africa which are republics?
golden truth: SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
prediction: SELECT AVG( lifeexpectancy ) FROM country WHERE continent = 'Africa' AND governmentform = 'Africa'	world_1


Line 417: (wrong column in WHERE):
question: What is the total surface area of the continents Asia and Europe?
golden truth: SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
prediction: SELECT SUM( surfacearea ) FROM country WHERE continent = 'Asia' OR region = 'Europe'	world_1


Line 418: (wrong column in WHERE):
question: Give the total surface area covered by countries in Asia or Europe.
golden truth: SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
prediction: SELECT SUM( surfacearea ) FROM country WHERE region = 'Asia' OR region = 'Europe'	world_1


Line 422: (wrong column in WHERE):
question: Give the mean GNP and total population of nations which are considered US territory.
golden truth: SELECT avg(GNP) ,  sum(population) FROM country WHERE GovernmentForm  =  "US Territory"	world_1
prediction: SELECT AVG( gnp ) , SUM( population ) FROM country WHERE region = 'US territory'	world_1


Line 425: (wrong column in WHERE):
question: How many type of governments are in Africa?
golden truth: SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
prediction: SELECT COUNT( DISTINCT governmentform ) FROM country WHERE region = 'Africa'	world_1


Line 426: (wrong column in WHERE):
question: How many different forms of governments are there in Africa?
golden truth: SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
prediction: SELECT COUNT( DISTINCT governmentform ) FROM country WHERE region = 'Africa'	world_1


Line 427: (wrong column in WHERE)
question: Find the name, population and expected life length of asian country with the largest area?
golden truth: SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
prediction: SELECT name , population , lifeexpectancy FROM country WHERE region = 'asian' ORDER BY surfacearea DESC LIMIT 1	world_1


Line 428: (wrong column in WHERE)
question: What are the name, population, and life expectancy of the largest Asian country by land?
golden truth: SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
prediction: SELECT name , population , lifeexpectancy FROM country WHERE region = 'Asian' ORDER BY surfacearea DESC LIMIT 1	world_1


Line 429: (wrong column in WHERE + wrong aggregation function)
question: What are the countries that have greater surface area than any country in Europe?
golden truth: SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
prediction: SELECT name FROM country WHERE surfacearea > (SELECT MAX( surfacearea ) FROM country WHERE region = 'Europe')	world_1


Line 430: (wrong column in WHERE + wrong aggregation function)
question: Which countries have greater area than that of any country in Europe?
golden truth: SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
prediction: SELECT name FROM country WHERE surfacearea > (SELECT MAX( surfacearea ) FROM country WHERE region = 'Europe')	world_1


Line 431: (missing condition in AND operator)
question: What are the African countries that have a  population less than any country in Asia?
golden truth: SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT max(population) FROM country WHERE Continent  =  "Asia")	world_1
prediction: SELECT name FROM country WHERE population<(SELECT MAX( population ) FROM country WHERE region = 'Asia')	world_1


Line 432: (missing condition in AND operator)
question: Which African countries have a smaller population than that of any country in Asia?
golden truth: SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT min(population) FROM country WHERE Continent  =  "Asia")	world_1
prediction: SELECT name FROM country WHERE population<(SELECT MIN( population ) FROM country WHERE continent = 'African' AND region = 'Asia')	world_1


Line 433: (missing condition in AND operator)
question: Which Asian countries have a population that is larger than any country in Africa?
golden truth: SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT max(population) FROM country WHERE Continent  =  "Africa")	world_1
prediction: SELECT name FROM country WHERE population > (SELECT MAX( population ) FROM country WHERE region = 'Africa')	world_1


Line 434: (missing condition in AND operator)
question: What are the Asian countries which have a population larger than that of any country in Africa?
golden truth: SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT min(population) FROM country WHERE Continent  =  "Africa")	world_1
prediction: SELECT name FROM country WHERE population > (SELECT MAX( population ) FROM country WHERE region = 'Africa')	world_1


Line 437: (missing DISTINCT keyword)
question: What are the country codes of countries where people use languages other than English?
golden truth: SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"	world_1
prediction: SELECT countrycode FROM countrylanguage WHERE language != 'English'	world_1


Line 438: (missing DISTINCT keyword)
question: Give the country codes for countries in which people speak langauges that are not English.
golden truth: SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"	world_1
prediction: SELECT countrycode FROM countrylanguage WHERE language != 'English'	world_1


Line 447: (miss aggregation function + ):
question: Find the average life expectancy and total population for each continent where the average life expectancy is shorter than 72?
golden truth: SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
prediction: SELECT continent , SUM( population ) FROM country WHERE lifeexpectancy<72 GROUP BY continent	world_1


Line 448: (miss aggregation function + ):
question: What are the different continents and the total popuation and average life expectancy corresponding to each, for continents that have an average life expectancy less than 72?
golden truth: SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
prediction: SELECT continent , SUM( population ) FROM country WHERE lifeexpectancy<72 GROUP BY continent	world_1


Line 455: (wrong column in WHERE)
golden truth: SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
prediction: SELECT COUNT( * ) FROM country WHERE region = 'Asia'	world_1


Line 456: (wrong column in WHERE)
golden truth: SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
prediction: SELECT COUNT( * ) FROM country WHERE region = 'Asia'	world_1


Line 459:  (difference in filter logic):
question: What is the total population and average area of countries in the continent of North America whose area is bigger than 3000 ?
golden truth: select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
prediction: SELECT SUM( population ) , AVG( surfacearea ) FROM country WHERE continent = 'North America' HAVING AVG( surfacearea ) > 3000	world_1


Line 460: (Redundant aggregation function):
question: Give the total population and average surface area corresponding to countries in North America that have a surface area greater than 3000 .
golden truth: select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
prediction: SELECT SUM( population ) , AVG( surfacearea ) FROM country WHERE region = 'North America' AND surfacearea > 3000	world_1


Line 465: (miss a column in SELECT + miss aggregation function + wrong column in ORDER BY):
question: What is the language spoken by the largest percentage of people in each country?
golden truth: SELECT LANGUAGE ,  CountryCode ,  max(Percentage) FROM countrylanguage GROUP BY CountryCode	world_1
prediction: SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1	world_1


Line 466: (miss a column in SELECT):
question: What are the country codes of the different countries, and what are the languages spoken by the greatest percentage of people for each?
golden truth: SELECT LANGUAGE ,  CountryCode ,  max(Percentage) FROM countrylanguage GROUP BY CountryCode	world_1
prediction: SELECT countrycode , MAX( percentage ) FROM countrylanguage GROUP BY countrycode	world_1


Line 467: (Miss aggregation function):
question: What is the total number of countries where Spanish is spoken by the largest percentage of people?
golden truth: SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
prediction: SELECT COUNT( * ) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1	world_1


Line 468: (Miss aggregation function + miss clause GROUP BY ):
question: Count the number of countries for which Spanish is the predominantly spoken language.
golden truth: SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
prediction: SELECT COUNT( * ) FROM countrylanguage WHERE language = 'Spanish'	world_1


Line 469: (Miss aggregation function)
question: What are the codes of countries where Spanish is spoken by the largest percentage of people?
golden truth: SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
prediction: SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1	world_1


Line 470:
question: Return the codes of countries for which Spanish is the predominantly spoken language.
golden truth: SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
prediction: SELECT countrycode FROM countrylanguage WHERE percentage > (SELECT AVG( percentage ) FROM countrylanguage WHERE language = 'Spanish')	world_1


Line 503: (missing DISTINCT keyword)
golden truth: SELECT grade FROM Highschooler	network_1
prediction: SELECT DISTINCT grade FROM highschooler	network_1


Line 537: (wrong column to sort)
question: How much does the most recent treatment cost?
golden truth: SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
prediction: SELECT cost_of_treatment FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1	dog_kennels


Line 539: (redundant operator + wrong key value error)
question: List the dog name, age and weight of the dogs who have been abandoned? 1 stands for yes, and 0 stands for no.
golden truth: SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
prediction: SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels


Line 540: (redundant operator + wrong key value error)
question: What are the dog name, age and weight of the dogs that were abandoned? Note that 1 stands for yes, and 0 stands for no in the tables.
golden truth: SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
prediction: SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels


Line 547: (wrong aggregation function
question: How much does the most expensive charge type costs?
golden truth: SELECT max(charge_amount) FROM Charges	dog_kennels
prediction: SELECT SUM( charge_amount ) FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels


Line 548: (wrong aggregation function)
question: What is the charge amount of the most expensive charge type?
golden truth: SELECT max(charge_amount) FROM Charges	dog_kennels
prediction: SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels


Line 551: (wrong column in SELECT):
question: What are all the possible breed type and size type combinations?
question answered correctly: Find the distinct breed type and size type combinations for dogs."
golden truth: SELECT DISTINCT breed_code ,  size_code FROM dogs	dog_kennels
prediction: SELECT DISTINCT breed_name , size_description FROM breeds JOIN dogs ON breed_code = breed_code JOIN sizes ON size_code = size_code	dog_kennels


Line 560:
golden truth: SELECT Name FROM singer WHERE Citizenship != "France"	singer
prediction: SELECT name FROM singer WHERE citizenship != 'French'	singer


Line 574:
golden truth: SELECT property_name FROM Properties WHERE property_type_code  =  "House" UNION SELECT property_name FROM Properties WHERE property_type_code  =  "Apartment" AND room_count  >  1	real_estate_properties
prediction: SELECT property_name FROM properties WHERE room_count > 1	real_estate_properties


--111 errors 