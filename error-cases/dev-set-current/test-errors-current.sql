Line 3: (wrong sorting direction)
question: Show name, country, age for all singers ordered by age from the oldest to the youngest.
golden truth: SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
prediction: SELECT name , country , age FROM singer ORDER BY age ASC	concert_singer

Line 67: (Miss a DISTINCT keyword):
question: In which years cars were produced weighing no less than 3000 and no more than 4000 ? 
golden truth: select distinct year from cars_data where weight between 3000 and 4000;	car_1
prediction: SELECT year FROM cars_data WHERE weight BETWEEN 3000 and 4000	car_1

Line 71: (wrong aggregation functions)
question: How many cars have a larger accelerate than the car with the largest horsepower?
golden truth: SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
prediction: SELECT COUNT( * ) FROM cars_data WHERE accelerate > (SELECT MAX( accelerate ) FROM cars_data) AND horsepower = (SELECT MAX( horsepower ) FROM cars_data)	car_1

Line 75: (wrong operators):
question: What is the maximum miles per gallon of the car with 8 cylinders or produced before 1980 ?
question answered correctly: What is the maximum mpg of the cars that had 8 cylinders or that were produced before 1980 ?
golden truth: select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
prediction: SELECT MAX( mpg ) FROM cars_data WHERE cylinders = '8' AND year<1980	car_1

Line 248: (Redundant operation in SELECT):
question: What is the name of the winner who has won the most matches, and how many rank points does this player have?
golden truth: SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
prediction: SELECT winner_name , COUNT( * ) , winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT( * ) DESC LIMIT 1	wta_1

Line 263: (Redundant operation in JOIN + wrong column in ORDER BY + Miss a DISTINCT keyword ):
question: Find the name and rank of the 3 youngest winners across all matches.
golden truth: SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
prediction: SELECT winner_name , winner_rank FROM matches JOIN players ON winner_id = player_id ORDER BY birth_date ASC LIMIT 3	wta_1

Line 266: (Redundant operation in JOIN + miss a DISTINCT keyword):
question: Find the number of left handed winners who participated in the WTA Championships.
question asnwered correctly: How many different winners both participated in the WTA Championships and were left handed?
golden truth: SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
prediction: SELECT COUNT( * ) FROM players JOIN matches ON player_id = winner_id WHERE hand = 'left' AND tourney_name = 'WTA Championships'	wta_1

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

Line 303: (wrong column in WHERE + wrong operators + redundant aggregation function
question: Whose permanent address is different from his or her current address? List his or her first name.
golden truth: SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
prediction: SELECT first_name FROM students WHERE permanent_address_id<(SELECT MAX( ssn ) FROM students)	student_transcripts_tracking

Line 306: (column missing):
question: When is the first transcript released? List the date and details.
golden truth: SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
prediction: SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking

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

Line 429: (wrong column in WHERE + wrong aggregation function)
question: What are the countries that have greater surface area than any country in Europe?
golden truth: SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
prediction: SELECT name FROM country WHERE surfacearea > (SELECT MAX( surfacearea ) FROM country WHERE region = 'Europe')	world_1

Line 431: (missing condition in AND operator)
question: What are the African countries that have a  population less than any country in Asia?
golden truth: SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT max(population) FROM country WHERE Continent  =  "Asia")	world_1
prediction: SELECT name FROM country WHERE population<(SELECT MAX( population ) FROM country WHERE region = 'Asia')	world_1

Line 433: (missing condition in AND operator)
question: Which Asian countries have a population that is larger than any country in Africa?
golden truth: SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT max(population) FROM country WHERE Continent  =  "Africa")	world_1
prediction: SELECT name FROM country WHERE population > (SELECT MAX( population ) FROM country WHERE region = 'Africa')	world_1

Line 437: (missing DISTINCT keyword)
question: What are the country codes of countries where people use languages other than English?
golden truth: SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"	world_1
prediction: SELECT countrycode FROM countrylanguage WHERE language != 'English'	world_1

Line 447: (miss aggregation function + ):
question: Find the average life expectancy and total population for each continent where the average life expectancy is shorter than 72?
golden truth: SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
prediction: SELECT continent , SUM( population ) FROM country WHERE lifeexpectancy<72 GROUP BY continent	world_1

Line 459:  (difference in filter logic):
question: What is the total population and average area of countries in the continent of North America whose area is bigger than 3000 ?
golden truth: select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
prediction: SELECT SUM( population ) , AVG( surfacearea ) FROM country WHERE continent = 'North America' HAVING AVG( surfacearea ) > 3000	world_1

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