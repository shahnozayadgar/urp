SELECT COUNT( * ) FROM head WHERE age > 56	department_management
SELECT name , born_state , age FROM head ORDER BY age ASC	department_management
SELECT creation , name , budget_in_billions FROM department	department_management
SELECT MAX( budget_in_billions ) , MIN( budget_in_billions ) FROM department	department_management
SELECT AVG( num_employees ) FROM department WHERE ranking BETWEEN 10 and 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING COUNT( * ) >= 3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY COUNT( * ) DESC LIMIT 1	department_management
SELECT COUNT( DISTINCT temporary_acting ) FROM management	department_management
SELECT head_id , name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT COUNT( * ) FROM farm	farm
SELECT COUNT( * ) FROM farm	farm
SELECT total_horses FROM farm ORDER BY total_horses ASC	farm
SELECT total_horses FROM farm ORDER BY total_horses ASC	farm
SELECT AVG( working_horses ) FROM farm WHERE total_horses > 5000	farm
SELECT AVG( working_horses ) FROM farm WHERE total_horses > 5000	farm
SELECT MAX( cows ) , MIN( cows ) FROM farm	farm
SELECT MAX( cows ) , MIN( cows ) FROM farm	farm
SELECT COUNT( DISTINCT status ) FROM city	farm
SELECT COUNT( DISTINCT status ) FROM city	farm
SELECT official_name FROM city ORDER BY population DESC	farm
SELECT official_name FROM city ORDER BY population DESC	farm
SELECT official_name , status FROM city ORDER BY population DESC LIMIT 1	farm
SELECT official_name , status FROM city ORDER BY population DESC LIMIT 1	farm
SELECT status , AVG( population ) FROM city GROUP BY status	farm
SELECT status , AVG( population ) FROM city GROUP BY status	farm
SELECT status FROM city GROUP BY status ORDER BY COUNT( * ) ASC	farm
SELECT status FROM city GROUP BY status ORDER BY COUNT( * ) ASC	farm
SELECT status FROM city GROUP BY status ORDER BY COUNT( * ) DESC LIMIT 1	farm
SELECT status FROM city GROUP BY status ORDER BY COUNT( * ) DESC LIMIT 1	farm
SELECT status FROM city WHERE population > 1500 INTERSECT SELECT status FROM city WHERE population<500	farm
SELECT status FROM city WHERE population > 1500 INTERSECT SELECT status FROM city WHERE population<500	farm
SELECT official_name FROM city WHERE population > 1500 OR population<500	farm
SELECT official_name FROM city WHERE population > 1500 OR population<500	farm
SELECT census_ranking FROM city WHERE status != 'Village'	farm
SELECT census_ranking FROM city WHERE status != 'Village'	farm
SELECT course_name FROM courses ORDER BY course_name ASC	student_assessment
SELECT course_name FROM courses ORDER BY course_name ASC	student_assessment
SELECT first_name FROM people ORDER BY first_name ASC	student_assessment
SELECT first_name FROM people ORDER BY first_name ASC	student_assessment
SELECT date FROM weather WHERE max_temperature_f > 85	bike_1
SELECT date FROM weather WHERE max_temperature_f > 85	bike_1
SELECT name FROM station WHERE lat<5	bike_1
SELECT name FROM station WHERE lat<5	bike_1
SELECT city , MAX( lat ) FROM station GROUP BY city	bike_1
SELECT city , MAX( lat ) FROM station GROUP BY city	bike_1
SELECT start_station_name , end_station_name FROM trip ORDER BY id ASC LIMIT 3	bike_1
SELECT start_station_name , end_station_name FROM trip ORDER BY id ASC LIMIT 3	bike_1
SELECT AVG( lat ) , AVG( long ) FROM station WHERE city = 'San Jose'	bike_1
SELECT AVG( lat ) , AVG( long ) FROM station WHERE city = 'San Jose'	bike_1
SELECT id FROM trip ORDER BY duration ASC LIMIT 1	bike_1
SELECT id FROM trip ORDER BY duration ASC LIMIT 1	bike_1
SELECT SUM( duration ) , MAX( duration ) FROM trip WHERE bike_id = 636	bike_1
SELECT SUM( duration ) , MAX( duration ) FROM trip WHERE bike_id = 636	bike_1
SELECT zip_code , AVG( mean_temperature_f ) FROM weather WHERE date = 'y' GROUP BY zip_code	bike_1
SELECT zip_code , AVG( mean_temperature_f ) FROM weather WHERE date LIKE '%8%' GROUP BY zip_code	bike_1
SELECT COUNT( DISTINCT bike_id ) FROM trip	bike_1
SELECT COUNT( DISTINCT bike_id ) FROM trip	bike_1
SELECT COUNT( DISTINCT city ) FROM station	bike_1
SELECT COUNT( DISTINCT city ) FROM station	bike_1
SELECT COUNT( * ) FROM station WHERE city = 'Mountain View'	bike_1
SELECT COUNT( * ) FROM station WHERE city = 'Mountain View'	bike_1
station , trip	bike_1
SELECT start_station_name , start_station_id FROM trip WHERE start_date = (SELECT start_date FROM trip ORDER BY start_date ASC LIMIT 1) GROUP BY start_station_name ORDER BY COUNT( * ) DESC	bike_1
SELECT bike_id FROM trip WHERE zip_code = 94002 GROUP BY bike_id ORDER BY COUNT( * ) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code = 94002 GROUP BY bike_id ORDER BY COUNT( * ) DESC LIMIT 1	bike_1
SELECT COUNT( * ) FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8	bike_1
SELECT COUNT( * ) FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8	bike_1
SELECT cloud_cover FROM weather WHERE zip_code = 94107 GROUP BY cloud_cover ORDER BY COUNT( * ) DESC LIMIT 3	bike_1
SELECT cloud_cover FROM weather WHERE zip_code = 94107 GROUP BY cloud_cover ORDER BY COUNT( * ) DESC LIMIT 3	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY AVG( mean_sea_level_pressure_inches ) ASC LIMIT 1	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY AVG( mean_sea_level_pressure_inches ) ASC LIMIT 1	bike_1
SELECT date , zip_code FROM weather WHERE max_temperature_f >= 80	bike_1
SELECT date , zip_code FROM weather WHERE max_temperature_f >= 80	bike_1
SELECT zip_code , COUNT( * ) FROM weather WHERE max_wind_speed_mph >= 25 GROUP BY zip_code	bike_1
SELECT zip_code , COUNT( * ) FROM weather WHERE max_wind_speed_mph >= 25 GROUP BY zip_code	bike_1
SELECT date , zip_code FROM weather WHERE min_dew_point_f<(SELECT MIN( min_dew_point_f ) FROM weather WHERE zip_code = 94107)	bike_1
SELECT date , zip_code FROM weather WHERE min_dew_point_f<(SELECT MIN( min_dew_point_f ) FROM weather WHERE zip_code = 94107)	bike_1
SELECT date FROM weather WHERE zip_code = 94107 AND zip_code = 94107 AND events != 'fog'	bike_1
SELECT name FROM station WHERE city = 'San Jose' EXCEPT SELECT name FROM station WHERE city = 'San Jose'	bike_1
SELECT name , lat , city FROM station ORDER BY lat ASC LIMIT 1	bike_1
SELECT name , lat , city FROM station ORDER BY lat ASC LIMIT 1	bike_1
SELECT date , mean_temperature_f , mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT date , mean_temperature_f , mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT city , COUNT( * ) FROM station GROUP BY city HAVING COUNT( * ) >= 15	bike_1
SELECT city , COUNT( * ) FROM station GROUP BY city HAVING COUNT( * ) >= 15	bike_1
SELECT start_station_id , start_station_name FROM trip GROUP BY start_station_name HAVING COUNT( * ) >= 200	bike_1
SELECT start_station_id , start_station_name FROM trip GROUP BY start_station_name HAVING COUNT( * ) >= 200	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING AVG( mean_visibility_miles )<10	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING AVG( mean_visibility_miles )<10	bike_1
SELECT city FROM station GROUP BY city ORDER BY MAX( lat ) DESC	bike_1
SELECT city FROM station GROUP BY city ORDER BY MAX( lat ) DESC	bike_1
SELECT date , cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT date , cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration<100	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration<100	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f >= 70	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f >= 70	bike_1
SELECT id FROM trip WHERE duration >= (SELECT AVG( duration ) FROM trip WHERE zip_code = 94103)	bike_1
SELECT id FROM trip WHERE duration >= (SELECT AVG( duration ) FROM trip WHERE zip_code = 94103)	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches >= 3 AND mean_sea_level_pressure_inches <= 31	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches >= 3 AND mean_sea_level_pressure_inches <= 31	bike_1
SELECT date , min_temperature_f FROM weather ORDER BY min_temperature_f ASC LIMIT 1	bike_1
SELECT date , mean_temperature_f FROM weather ORDER BY mean_temperature_f ASC LIMIT 3	bike_1
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
SELECT COUNT( * ) FROM actor	musical
SELECT COUNT( * ) FROM actor	musical
SELECT name FROM actor ORDER BY name ASC	musical
SELECT name FROM actor ORDER BY name ASC	musical
SELECT character , duration FROM actor	musical
SELECT character , duration FROM actor	musical
SELECT name FROM actor WHERE age != 20	musical
SELECT name FROM actor WHERE age != 20	musical
SELECT character FROM actor ORDER BY age DESC	musical
SELECT character FROM actor ORDER BY age DESC	musical
SELECT duration FROM actor ORDER BY age DESC LIMIT 1	musical
SELECT duration FROM actor ORDER BY age DESC LIMIT 1	musical
SELECT name FROM musical WHERE nominee = 'Bob Fosse'	musical
SELECT name FROM musical WHERE nominee = 'Bob Fosse'	musical
SELECT DISTINCT nominee FROM musical WHERE award != 'Tony Award'	musical
SELECT DISTINCT nominee FROM musical WHERE award != 'Tony Award'	musical
SELECT nominee , COUNT( * ) FROM musical GROUP BY nominee	musical
SELECT nominee , COUNT( * ) FROM musical GROUP BY nominee	musical
SELECT nominee FROM musical GROUP BY nominee ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT nominee FROM musical GROUP BY nominee ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT result FROM musical GROUP BY result ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT result FROM musical GROUP BY result ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT nominee FROM musical GROUP BY nominee HAVING COUNT( * ) > 2	musical
SELECT nominee FROM musical GROUP BY nominee HAVING COUNT( * ) > 2	musical
SELECT nominee FROM musical WHERE award = 'Tony Award' INTERSECT SELECT nominee FROM musical WHERE award = 'Drama Desk Award'	musical
SELECT nominee FROM musical WHERE award = 'Tony Award' INTERSECT SELECT nominee FROM musical WHERE award = 'Drama Desk Award'	musical
SELECT nominee FROM musical WHERE award = 'Bob Fosse' OR award = 'Cleavant Derricks'	musical
SELECT nominee FROM musical WHERE award NOT IN (SELECT AVG( award ) FROM musical)	musical
SELECT COUNT( * ) FROM follows	twitter_1
SELECT COUNT( * ) FROM follows	twitter_1
SELECT COUNT( * ) FROM tweets	twitter_1
SELECT COUNT( DISTINCT uid ) FROM tweets	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT text FROM tweets ORDER BY createdate ASC	twitter_1
SELECT DISTINCT catalog_publisher FROM catalogs WHERE catalog_publisher LIKE '%Murray%'	product_catalog
SELECT DISTINCT catalog_publisher FROM catalogs WHERE catalog_publisher LIKE '%Murray%'	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY COUNT( * ) DESC LIMIT 1	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY COUNT( * ) DESC LIMIT 1	product_catalog
SELECT date_of_latest_revision FROM catalogs GROUP BY date_of_latest_revision HAVING COUNT( * ) > 1	product_catalog
SELECT date_of_latest_revision FROM catalogs GROUP BY date_of_latest_revision HAVING COUNT( * ) > 1	product_catalog
SELECT billing_country , COUNT( * ) FROM invoices GROUP BY billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT billing_country , COUNT( * ) FROM invoices GROUP BY billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT billing_country , SUM( total ) FROM invoices GROUP BY billing_country ORDER BY SUM( total ) DESC LIMIT 8	store_1
SELECT billing_country , SUM( total ) FROM invoices GROUP BY billing_country ORDER BY SUM( total ) DESC LIMIT 8	store_1
SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country ORDER BY AVG( total ) DESC LIMIT 10	store_1
SELECT billing_country , AVG( total ) FROM invoices GROUP BY billing_country ORDER BY AVG( total ) DESC	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums	store_1
SELECT title FROM albums ORDER BY title ASC	store_1
SELECT title FROM albums ORDER BY title ASC	store_1
SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1
SELECT title FROM albums WHERE title LIKE '%A%' ORDER BY title ASC	store_1
SELECT SUM( total ) FROM invoices WHERE billing_city = 'Chicago' AND billing_state = 'IL'	store_1
SELECT SUM( total ) FROM invoices WHERE billing_city = 'Chicago' AND billing_state = 'Chicago,'	store_1
SELECT COUNT( * ) FROM invoices WHERE billing_city = 'Chicago,' AND billing_state = 'IL'	store_1
SELECT COUNT( * ) FROM invoices WHERE billing_city = 'Chicago' AND billing_state = 'IL'	store_1
SELECT billing_state , COUNT( * ) FROM invoices WHERE billing_country = 'yes' GROUP BY billing_state	store_1
SELECT billing_state , COUNT( * ) FROM invoices GROUP BY billing_state	store_1
SELECT billing_state FROM invoices WHERE billing_country = 'billing_state' GROUP BY billing_state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT billing_state , COUNT( * ) FROM invoices GROUP BY billing_state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT billing_state , COUNT( * ) , SUM( total ) FROM invoices GROUP BY billing_state	store_1
SELECT billing_state , COUNT( * ) , SUM( total ) FROM invoices WHERE billing_state = 'CA'	store_1
SELECT company FROM customers WHERE first_name = 'Eduardo' AND last_name = 'Martins'	store_1
SELECT company FROM customers WHERE first_name = 'Eduardo' AND last_name = 'Martins'	store_1
SELECT email , phone FROM customers WHERE first_name = 'Astrid' AND last_name = 'Gruber'	store_1
SELECT email , phone FROM customers WHERE first_name = 'Astrid' AND last_name = 'Gruber'	store_1
SELECT COUNT( * ) FROM customers WHERE city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE state = 'CA'	store_1
SELECT COUNT( * ) FROM customers WHERE state = 'California'	store_1
SELECT country FROM customers WHERE first_name = 'Roberto' AND last_name = 'Almeida'	store_1
SELECT country FROM customers WHERE first_name = 'Roberto' AND last_name = 'Almeida'	store_1
SELECT title , phone , hire_date FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT title , phone , hire_date FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT first_name , last_name FROM employees JOIN employees ON id = reports_to WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT first_name , last_name FROM employees JOIN employees ON id = reports_to WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT address FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT address FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT COUNT( * ) FROM employees WHERE country = 'Canada'	store_1
SELECT COUNT( * ) FROM employees WHERE country = 'Canada'	store_1
SELECT phone FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT phone FROM employees WHERE first_name = 'Nancy' AND last_name = 'Edwards'	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10	store_1
SELECT COUNT( * ) , city FROM employees WHERE title = 'IT Staff' GROUP BY city	store_1
SELECT COUNT( * ) , city FROM employees WHERE title = 'IT staff' GROUP BY city	store_1
SELECT first_name , last_name , COUNT( reports_to ) FROM employees JOIN employees ON reports_to = id GROUP BY reports_to ORDER BY COUNT( reports_to ) DESC LIMIT 1	store_1
SELECT first_name , last_name , COUNT( reports_to ) FROM employees JOIN employees ON reports_to = id GROUP BY reports_to ORDER BY COUNT( reports_to ) DESC LIMIT 1	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT DISTINCT name FROM genres	store_1
SELECT name FROM playlists	store_1
SELECT name FROM playlists	store_1
SELECT composer FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT composer FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT bytes FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT milliseconds FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT bytes FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT unit_price FROM tracks WHERE name = 'Fast As a Shark'	store_1
SELECT COUNT( * ) FROM editor	journal_committee
SELECT name FROM editor ORDER BY age ASC	journal_committee
SELECT name , age FROM editor	journal_committee
SELECT name FROM editor WHERE age > 25	journal_committee
SELECT name FROM editor WHERE age = 24 OR age = 25	journal_committee
SELECT name FROM editor ORDER BY age ASC LIMIT 1	journal_committee
SELECT age , COUNT( * ) FROM editor GROUP BY age	journal_committee
SELECT age FROM editor GROUP BY age ORDER BY COUNT( * ) DESC LIMIT 1	journal_committee
SELECT DISTINCT theme FROM journal	journal_committee
SELECT COUNT( * ) FROM track	race_track
SELECT COUNT( * ) FROM track	race_track
SELECT name , location FROM track	race_track
SELECT name , location FROM track	race_track
SELECT name , seating FROM track WHERE year_opened > 2000 ORDER BY seating ASC	race_track
SELECT name , seating FROM track WHERE year_opened > 2000 ORDER BY seating ASC	race_track
SELECT name , location , seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT name , location , seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT MIN( seating ) , MAX( seating ) , AVG( seating ) FROM track	race_track
SELECT MIN( seating ) , MAX( seating ) , AVG( seating ) FROM track	race_track
SELECT name , location , year_opened FROM track WHERE seating > (SELECT AVG( seating ) FROM track)	race_track
SELECT name , location , year_opened FROM track WHERE seating > (SELECT AVG( seating ) FROM track)	race_track
SELECT DISTINCT location FROM track	race_track
SELECT DISTINCT location FROM track	race_track
SELECT COUNT( * ) FROM race	race_track
SELECT COUNT( * ) FROM race	race_track
SELECT DISTINCT class FROM race	race_track
SELECT DISTINCT class FROM race	race_track
SELECT name , class , date FROM race	race_track
SELECT name , class , date FROM race	race_track
SELECT class , COUNT( * ) FROM race GROUP BY class	race_track
SELECT class , COUNT( * ) FROM race GROUP BY class	race_track
SELECT class FROM race GROUP BY class ORDER BY COUNT( * ) DESC LIMIT 1	race_track
SELECT class FROM race GROUP BY class ORDER BY COUNT( * ) DESC LIMIT 1	race_track
SELECT class FROM race GROUP BY class HAVING COUNT( * ) >= 2	race_track
SELECT class FROM race GROUP BY class HAVING COUNT( * ) >= 2	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 and 5000	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 and 5000	race_track
SELECT location FROM track WHERE seating > 90000 INTERSECT SELECT location FROM track WHERE seating<70000	race_track
SELECT location FROM track WHERE seating > 90000 INTERSECT SELECT location FROM track WHERE seating<70000	race_track
SELECT COUNT( * ) FROM member WHERE membership_card = 'black'	coffee_shop
SELECT COUNT( * ) , address FROM member GROUP BY address	coffee_shop
SELECT name FROM member WHERE address = 'Harford' OR address = 'Waterbury'	coffee_shop
SELECT name , member_id FROM member WHERE membership_card = 'black' OR age<30	coffee_shop
SELECT time_of_purchase , age , address FROM member ORDER BY time_of_purchase ASC	coffee_shop
SELECT membership_card FROM member GROUP BY membership_card HAVING COUNT( * ) > 5	coffee_shop
SELECT address FROM member WHERE age<30 INTERSECT SELECT address FROM member WHERE age > 40	coffee_shop
SELECT membership_card FROM member WHERE address = 'Hartford' INTERSECT SELECT membership_card FROM member WHERE address = 'Waterbury'	coffee_shop
SELECT COUNT( * ) FROM member WHERE address != 'Hartford'	coffee_shop
SELECT address FROM member EXCEPT SELECT address FROM member WHERE membership_card = 'black'	coffee_shop
SELECT address FROM shop ORDER BY open_year ASC	coffee_shop
SELECT AVG( num_of_staff ) , AVG( score ) FROM shop	coffee_shop
SELECT shop_id , address FROM shop WHERE score<(SELECT AVG( score ) FROM shop)	coffee_shop
SELECT SUM( settlement_amount ) , AVG( settlement_amount ) FROM settlements	insurance_fnol
SELECT SUM( settlement_amount ) , AVG( settlement_amount ) FROM settlements	insurance_fnol
SELECT service_name FROM services ORDER BY service_name ASC	insurance_fnol
SELECT service_name FROM services ORDER BY service_name ASC	insurance_fnol
SELECT COUNT( * ) FROM services	insurance_fnol
SELECT COUNT( * ) FROM services	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE '%Diana%'	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE '%Diana%'	insurance_fnol
SELECT MAX( settlement_amount ) , MIN( settlement_amount ) FROM settlements	insurance_fnol
SELECT MAX( settlement_amount ) , MIN( settlement_amount ) FROM settlements	insurance_fnol
SELECT customer_id , customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT customer_id , customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name , location FROM enzyme	medicine_enzyme_interaction
SELECT name , location FROM enzyme	medicine_enzyme_interaction
SELECT MAX( omim ) FROM enzyme	medicine_enzyme_interaction
SELECT MAX( omim ) FROM enzyme	medicine_enzyme_interaction
SELECT product , chromosome , porphyria FROM enzyme WHERE location = 'Cytosol'	medicine_enzyme_interaction
SELECT product , chromosome , porphyria FROM enzyme WHERE location = 'Cytosol'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name , trade_name FROM medicine WHERE fda_approved = 'yes'	medicine_enzyme_interaction
SELECT name , trade_name FROM medicine WHERE fda_approved = 'yes'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE fda_approved = 'no'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE fda_approved = 'no'	medicine_enzyme_interaction
SELECT COUNT( DISTINCT fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT COUNT( DISTINCT fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT trade_name , COUNT( * ) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name , COUNT( * ) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT school , nickname FROM university ORDER BY founded ASC	university_basketball
SELECT school , nickname FROM university ORDER BY founded ASC	university_basketball
SELECT school , location FROM university WHERE affiliation = 'public'	university_basketball
SELECT school , location FROM university WHERE affiliation = 'public'	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT AVG( enrollment ) FROM university WHERE founded<1850	university_basketball
SELECT AVG( enrollment ) FROM university WHERE founded<1850	university_basketball
SELECT enrollment , primary_conference FROM university ORDER BY founded ASC LIMIT 1	university_basketball
SELECT enrollment , primary_conference FROM university ORDER BY founded ASC LIMIT 1	university_basketball
SELECT SUM( enrollment ) , MIN( enrollment ) FROM university	university_basketball
SELECT SUM( enrollment ) , MIN( enrollment ) FROM university	university_basketball
SELECT SUM( enrollment ) , affiliation FROM university GROUP BY affiliation	university_basketball
SELECT SUM( enrollment ) , affiliation FROM university GROUP BY affiliation	university_basketball
SELECT school FROM university WHERE founded > 1850 OR affiliation = 'public'	university_basketball
SELECT school FROM university WHERE founded > 1850 OR affiliation = 'public'	university_basketball
SELECT COUNT( DISTINCT affiliation ) FROM university	university_basketball
SELECT COUNT( DISTINCT affiliation ) FROM university	university_basketball
SELECT COUNT( * ) FROM university WHERE location LIKE '%NY%'	university_basketball
SELECT COUNT( * ) FROM university WHERE location LIKE '%NY%'	university_basketball
SELECT COUNT( * ) , affiliation FROM university WHERE enrollment > 20000 GROUP BY affiliation	university_basketball
SELECT COUNT( * ) , affiliation FROM university WHERE enrollment > 20000 GROUP BY affiliation	university_basketball
SELECT SUM( enrollment ) , affiliation FROM university WHERE founded > 1850 GROUP BY affiliation	university_basketball
SELECT SUM( enrollment ) , affiliation FROM university WHERE founded > 1850 GROUP BY affiliation	university_basketball
SELECT MAX( enrollment ) FROM university	university_basketball
SELECT MAX( enrollment ) FROM university	university_basketball
SELECT chip_model , screen_mode FROM phone WHERE hardware_model_name = 'LG-P760'	phone_1
SELECT COUNT( * ) FROM phone WHERE company_name = 'Nokia Corporation'	phone_1
SELECT hardware_model_name , company_name FROM phone WHERE accreditation_type LIKE '%Full%'	phone_1
SELECT company_name , COUNT( * ) FROM phone GROUP BY company_name ORDER BY COUNT( * ) ASC LIMIT 1	phone_1
SELECT company_name FROM phone GROUP BY company_name HAVING COUNT( * ) > 1	phone_1
SELECT accreditation_type , COUNT( * ) FROM phone GROUP BY accreditation_type	phone_1
SELECT accreditation_type , COUNT( * ) FROM phone GROUP BY accreditation_type	phone_1
SELECT accreditation_level FROM phone GROUP BY accreditation_level HAVING COUNT( * ) > 3	phone_1
SELECT COUNT( * ) FROM country	match_season
SELECT COUNT( * ) FROM country	match_season
SELECT country_name , capital FROM country	match_season
SELECT country_name , capital FROM country	match_season
SELECT official_native_language FROM country WHERE official_native_language LIKE '%English%'	match_season
SELECT official_native_language FROM country WHERE official_native_language LIKE '%English%'	match_season
SELECT player , years_played FROM player	match_season
SELECT player , years_played FROM player	match_season
SELECT COUNT( * ) FROM climber	climbing
SELECT COUNT( * ) FROM climber	climbing
SELECT name FROM climber ORDER BY points DESC	climbing
SELECT name FROM climber ORDER BY points DESC	climbing
SELECT name FROM climber WHERE country != 'Switzerland'	climbing
SELECT name FROM climber WHERE country != 'Switzerland'	climbing
SELECT MAX( points ) FROM climber WHERE country = 'United Kingdom'	climbing
SELECT MAX( points ) FROM climber WHERE country = 'United Kingdom'	climbing
SELECT COUNT( DISTINCT country ) FROM climber	climbing
SELECT COUNT( DISTINCT country ) FROM climber	climbing
SELECT name FROM mountain ORDER BY name ASC	climbing
SELECT name FROM mountain ORDER BY name ASC	climbing
SELECT country FROM mountain WHERE height > 5000	climbing
SELECT country FROM mountain WHERE height > 5000	climbing
SELECT name FROM mountain ORDER BY height DESC LIMIT 1	climbing
SELECT name FROM mountain ORDER BY height DESC LIMIT 1	climbing
SELECT DISTINCT range FROM mountain ORDER BY prominence DESC LIMIT 3	climbing
SELECT DISTINCT range FROM mountain ORDER BY prominence DESC LIMIT 3	climbing
SELECT country , COUNT( * ) FROM climber GROUP BY country	climbing
SELECT country , COUNT( * ) FROM climber GROUP BY country	climbing
SELECT country FROM mountain GROUP BY country HAVING COUNT( * ) > 1	climbing
SELECT country FROM mountain GROUP BY country HAVING COUNT( * ) > 1	climbing
SELECT country FROM mountain WHERE height > 5600 INTERSECT SELECT country FROM mountain WHERE height<5200	climbing
SELECT country FROM mountain WHERE height > 5600 INTERSECT SELECT country FROM mountain WHERE height<5200	climbing
SELECT range FROM mountain GROUP BY range ORDER BY COUNT( * ) DESC LIMIT 1	climbing
SELECT range FROM mountain GROUP BY range ORDER BY COUNT( * ) DESC LIMIT 1	climbing
SELECT name FROM mountain WHERE height > 5000 OR prominence > 1000	climbing
SELECT name FROM mountain WHERE height > 5000 OR prominence > 1000	climbing
SELECT birth_date FROM people ORDER BY height ASC	body_builder
SELECT birth_place FROM people GROUP BY birth_place ORDER BY COUNT( * ) DESC LIMIT 1	body_builder
SELECT birth_place FROM people GROUP BY birth_place HAVING COUNT( * ) >= 2	body_builder
SELECT height , weight FROM people ORDER BY height DESC	body_builder
SELECT COUNT( DISTINCT birth_place ) FROM people	body_builderSELECT COUNT( * ) FROM aircraft	flight_1
SELECT COUNT( * ) FROM election	election_representative
SELECT votes FROM election ORDER BY votes DESC	election_representative
SELECT date , vote_percent FROM election	election_representative
SELECT MIN( vote_percent ) , MAX( vote_percent ) FROM election	election_representative
SELECT name , party FROM representative	election_representative
SELECT lifespan FROM representative WHERE state = 'New York' OR state = 'Indiana'	election_representative
SELECT party , COUNT( * ) FROM representative GROUP BY party	election_representative
SELECT party , COUNT( * ) FROM representative GROUP BY party ORDER BY COUNT( * ) DESC LIMIT 1	election_representative
SELECT party FROM representative GROUP BY party HAVING COUNT( * ) >= 3	election_representative
SELECT state FROM representative GROUP BY state HAVING COUNT( * ) >= 2	election_representative
SELECT party FROM representative WHERE state = 'New York' INTERSECT SELECT party FROM representative WHERE state = 'Pennsylvania'	election_representative
SELECT COUNT( DISTINCT party ) FROM representative	election_representative
SELECT COUNT( * ) FROM game WHERE season > 2007	game_injury
SELECT date FROM game ORDER BY home_team DESC	game_injury
SELECT season , home_team , away_team FROM game	game_injury
SELECT MAX( home_games ) , MIN( home_games ) , AVG( home_games ) FROM stadium	game_injury
SELECT average_attendance FROM stadium WHERE capacity_percentage > 100	game_injury
SELECT name FROM stadium WHERE name LIKE '%Bank%'	game_injury
SELECT COUNT( * ) FROM performance	performance_attendance
SELECT host FROM performance ORDER BY attendance ASC	performance_attendance
SELECT date , location FROM performance	performance_attendance
SELECT attendance FROM performance WHERE location = 'TD Garden' OR location = 'Bell Centre'	performance_attendance
SELECT AVG( attendance ) FROM performance	performance_attendance
SELECT date FROM performance ORDER BY attendance DESC LIMIT 1	performance_attendance
SELECT location , COUNT( * ) FROM performance GROUP BY location	performance_attendance
SELECT location FROM performance GROUP BY location ORDER BY COUNT( * ) DESC LIMIT 1	performance_attendance
SELECT location FROM performance GROUP BY location HAVING COUNT( * ) >= 2	performance_attendance
SELECT location FROM performance WHERE attendance > 2000 INTERSECT SELECT location FROM performance WHERE attendance<1000	performance_attendance
SELECT DISTINCT building FROM classroom WHERE capacity > 50	college_2
SELECT DISTINCT building FROM classroom WHERE capacity > 50	college_2
SELECT COUNT( * ) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT COUNT( * ) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT dept_name , building FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT dept_name , building FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT building , room_number FROM classroom WHERE capacity BETWEEN 50 and 100	college_2
SELECT building , room_number FROM classroom WHERE capacity BETWEEN 50 and 100	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT COUNT( * ) FROM classroom WHERE building = 'Lamberton'	college_2
SELECT COUNT( * ) FROM classroom WHERE building = 'Lamberton'	college_2
SELECT COUNT( DISTINCT s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT course_id ) FROM course WHERE dept_name = 'Physics'	college_2
SELECT COUNT( DISTINCT course_id ) FROM course WHERE dept_name = 'Physics'	college_2
SELECT COUNT( DISTINCT id ) FROM teaches	college_2
SELECT COUNT( DISTINCT id ) FROM teaches	college_2
SELECT SUM( budget ) FROM department WHERE dept_name = 'Marketing' OR dept_name = 'Finance'	college_2
SELECT SUM( budget ) FROM department WHERE dept_name = 'Marketing' OR dept_name = 'Finance'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT COUNT( * ) FROM classroom WHERE building = 'Lamberton' AND capacity<50	college_2
SELECT COUNT( * ) FROM classroom WHERE building = 'Lamberton' AND capacity<50	college_2
SELECT dept_name , budget FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT dept_name , budget FROM department WHERE budget > (SELECT AVG( budget ) FROM department)	college_2
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary ASC LIMIT 1	college_2
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary ASC LIMIT 1	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'	college_2
SELECT id FROM teaches WHERE semester = 'Fall' AND year = 2009 EXCEPT SELECT id FROM teaches WHERE semester = 'Spring' AND year = 2010	college_2
SELECT id FROM teaches WHERE semester = 'Fall' AND year = 2009 EXCEPT SELECT id FROM teaches WHERE semester = 'Spring' AND year = 2010	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY SUM( credits ) DESC LIMIT 1	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY SUM( credits ) DESC LIMIT 1	college_2
SELECT title FROM course ORDER BY title , credits ASC	college_2
SELECT title FROM course ORDER BY title , credits ASC	college_2
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
SELECT COUNT( * ) , building FROM classroom WHERE capacity > 50 GROUP BY building	college_2
SELECT MAX( capacity ) , AVG( capacity ) , building FROM classroom GROUP BY building	college_2
SELECT MAX( capacity ) , AVG( capacity ) , building FROM classroom GROUP BY building	college_2
SELECT title FROM course GROUP BY title HAVING COUNT( * ) > 1	college_2
SELECT title FROM course GROUP BY title HAVING COUNT( * ) > 1	college_2
SELECT SUM( credits ) , dept_name FROM course GROUP BY dept_name	college_2
SELECT SUM( credits ) , dept_name FROM course GROUP BY dept_name	college_2
SELECT MIN( salary ) , dept_name FROM instructor WHERE salary<(SELECT AVG( salary ) FROM instructor) UNION SELECT MIN( salary ) , dept_name FROM instructor WHERE salary<(SELECT AVG( salary ) FROM instructor)	college_2
SELECT MIN( salary ) , dept_name FROM instructor GROUP BY dept_name HAVING AVG( salary ) > (SELECT dept_name FROM instructor)	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , dept_name FROM student GROUP BY dept_name	college_2
SELECT COUNT( * ) , dept_name FROM student GROUP BY dept_name	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY AVG( salary ) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY AVG( salary ) DESC LIMIT 1	college_2
SELECT name , salary FROM instructor WHERE salary<(SELECT AVG( salary ) FROM instructor WHERE dept_name = 'Physics')	college_2
SELECT name , salary FROM instructor WHERE salary<(SELECT AVG( salary ) FROM instructor WHERE dept_name = 'Physics')	college_2
SELECT name FROM instructor WHERE dept_name = 'computer science'	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.' AND salary > 80000	college_2
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.' AND salary > 80000	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2
SELECT DISTINCT name FROM instructor ORDER BY name ASC	college_2
SELECT DISTINCT salary FROM instructor WHERE salary<(SELECT MAX( salary ) FROM instructor)	college_2
SELECT DISTINCT salary FROM instructor WHERE salary<(SELECT MAX( salary ) FROM instructor)	college_2
SELECT COUNT( DISTINCT id ) FROM teaches WHERE semester = 'Spring' AND year = 2010	college_2
SELECT COUNT( DISTINCT id ) FROM teaches WHERE semester = 'Spring' AND year = 2010	college_2
SELECT dept_name , AVG( salary ) FROM instructor GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2
SELECT dept_name , AVG( salary ) FROM instructor GROUP BY dept_name HAVING AVG( salary ) > 42000	college_2
SELECT name FROM instructor WHERE salary > (SELECT MIN( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT MIN( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT MAX( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT name FROM instructor WHERE salary > (SELECT MAX( salary ) FROM instructor WHERE dept_name = 'Biology')	college_2
SELECT COUNT( * ) FROM debate	debate
SELECT venue FROM debate ORDER BY num_of_audience ASC	debate
SELECT date , venue FROM debate	debate
SELECT date FROM debate WHERE num_of_audience > 150	debate
SELECT name FROM people WHERE age = 35 OR age = 36	debate
SELECT party FROM people ORDER BY age ASC LIMIT 1	debate
SELECT party , COUNT( * ) FROM people GROUP BY party	debate
SELECT party FROM people GROUP BY party ORDER BY COUNT( * ) DESC LIMIT 1	debate
SELECT DISTINCT venue FROM debate	debate
SELECT customer_details FROM customers ORDER BY customer_details ASC	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details ASC	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT policy_type_code , COUNT( * ) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code , COUNT( * ) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT COUNT( * ) FROM church WHERE open_date<1850	wedding
SELECT open_date FROM church GROUP BY open_date HAVING COUNT( * ) >= 2	wedding
SELECT organized_by , name FROM church WHERE open_date BETWEEN 1830 and 1840	wedding
SELECT open_date , COUNT( * ) FROM church GROUP BY open_date	wedding
SELECT name , open_date FROM church ORDER BY open_date DESC LIMIT 3	wedding
SELECT COUNT( * ) FROM people WHERE is_male = 'f' AND age > 30	wedding
SELECT country FROM people WHERE age<25 INTERSECT SELECT country FROM people WHERE age > 30	wedding
SELECT MIN( age ) , MAX( age ) , AVG( age ) FROM people	wedding
SELECT name , country FROM people WHERE age<(SELECT AVG( age ) FROM people)	wedding
SELECT COUNT( * ) FROM wedding WHERE year = 2016	wedding
SELECT country , COUNT( * ) FROM people GROUP BY country	wedding
SELECT COUNT( DISTINCT church_id ) FROM wedding WHERE year = 2016	wedding
SELECT COUNT( * ) FROM artist	theme_gallery
SELECT COUNT( * ) FROM artist	theme_gallery
SELECT name , age , country FROM artist ORDER BY year_join ASC	theme_gallery
SELECT name , age , country FROM artist ORDER BY year_join ASC	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT name , year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT name , year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT COUNT( * ) FROM artist WHERE age > 46 AND year_join > 1990	theme_gallery
SELECT COUNT( * ) FROM artist WHERE age > 46 AND year_join > 1990	theme_gallery
SELECT AVG( age ) , MIN( age ) FROM artist WHERE country = 'United States'	theme_gallery
SELECT AVG( age ) , MIN( age ) FROM artist WHERE country = 'United States'	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT COUNT( * ) FROM exhibition WHERE year >= 2005	theme_gallery
SELECT COUNT( * ) FROM exhibition WHERE year >= 2005	theme_gallery
SELECT theme , year FROM exhibition WHERE ticket_price<15	theme_gallery
SELECT theme , year FROM exhibition WHERE ticket_price<15	theme_gallery
SELECT AVG( ticket_price ) , MIN( ticket_price ) , MAX( ticket_price ) FROM exhibition WHERE year<2009	theme_gallery
SELECT AVG( ticket_price ) , MIN( ticket_price ) , MAX( ticket_price ) FROM exhibition WHERE year<2009	theme_gallery
SELECT theme , year FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT theme , year FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT i_id FROM item WHERE title = 'orange'	epinions_1
SELECT * FROM item	epinions_1
SELECT COUNT( * ) FROM review	epinions_1
SELECT COUNT( * ) FROM useracct	epinions_1
SELECT AVG( rating ) , MAX( rating ) FROM review	epinions_1
SELECT MIN( rank ) FROM review	epinions_1
SELECT COUNT( DISTINCT u_id ) FROM review	epinions_1
SELECT COUNT( DISTINCT i_id ) FROM review	epinions_1
SELECT title FROM item ORDER BY title ASC	epinions_1
SELECT COUNT( * ) FROM player	riding_club
SELECT player_name FROM player ORDER BY votes ASC	riding_club
SELECT gender , occupation FROM player	riding_club
SELECT player_name , residence FROM player WHERE occupation != 'Researcher'	riding_club
SELECT sponsor_name FROM player WHERE residence = 'Brandon' OR residence = 'Birtle'	riding_club
SELECT player_name FROM player ORDER BY votes DESC LIMIT 1	riding_club
SELECT occupation , COUNT( * ) FROM player GROUP BY occupation	riding_club
SELECT occupation FROM player GROUP BY occupation ORDER BY COUNT( * ) DESC LIMIT 1	riding_club
SELECT residence FROM player GROUP BY residence HAVING COUNT( * ) >= 2	riding_club
SELECT residence FROM player WHERE gender = 'M' INTERSECT SELECT residence FROM player WHERE gender = 'f'	riding_club
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
SELECT COUNT( * ) FROM accounts	small_bank_1
SELECT COUNT( * ) FROM accounts	small_bank_1
SELECT SUM( balance ) FROM checking	small_bank_1
SELECT SUM( balance ) FROM checking	small_bank_1
SELECT AVG( balance ) FROM checking	small_bank_1
SELECT AVG( balance ) FROM checking	small_bank_1
SELECT COUNT( * ) FROM savings WHERE balance > (SELECT AVG( balance ) FROM savings)	small_bank_1
SELECT COUNT( * ) FROM savings WHERE balance > (SELECT AVG( balance ) FROM savings)	small_bank_1
SELECT name FROM accounts ORDER BY name ASC	small_bank_1
SELECT name FROM accounts ORDER BY name ASC	small_bank_1
SELECT COUNT( * ) FROM browser WHERE market_share >= 5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id , name , market_share FROM browser	browser_web
SELECT MAX( market_share ) , MIN( market_share ) , AVG( market_share ) FROM browser	browser_web
SELECT id , market_share FROM browser WHERE name = 'Safari'	browser_web
SELECT COUNT( * ) FROM wrestler	wrestler
SELECT COUNT( * ) FROM wrestler	wrestler
SELECT name FROM wrestler ORDER BY days_held DESC	wrestler
SELECT name FROM wrestler ORDER BY days_held DESC	wrestler
SELECT name FROM wrestler ORDER BY days_held ASC LIMIT 1	wrestler
SELECT name FROM wrestler ORDER BY days_held ASC LIMIT 1	wrestler
SELECT DISTINCT reign FROM wrestler WHERE location != 'Tokyo,Japan'	wrestler
SELECT DISTINCT reign FROM wrestler WHERE location != 'Tokyo, Japan'	wrestler
SELECT name , location FROM wrestler	wrestler
SELECT name , location FROM wrestler	wrestler
SELECT elimination.team , COUNT( * ) FROM elimination GROUP BY elimination.team	wrestler
SELECT elimination.team , COUNT( * ) FROM elimination GROUP BY elimination.team	wrestler
SELECT team FROM elimination GROUP BY team HAVING COUNT( * ) > 3	wrestler
SELECT team FROM elimination GROUP BY team HAVING COUNT( * ) > 3	wrestler
SELECT reign , days_held FROM wrestler	wrestler
SELECT reign , days_held FROM wrestler	wrestler
SELECT name FROM wrestler WHERE days_held<100	wrestler
SELECT name FROM wrestler WHERE days_held<100	wrestler
SELECT reign FROM wrestler GROUP BY reign ORDER BY COUNT( * ) DESC LIMIT 1	wrestler
SELECT reign FROM wrestler GROUP BY reign ORDER BY COUNT( * ) DESC LIMIT 1	wrestler
SELECT location FROM wrestler GROUP BY location HAVING COUNT( * ) > 2	wrestler
SELECT location FROM wrestler GROUP BY location HAVING COUNT( * ) > 2	wrestler
SELECT COUNT( DISTINCT team ) FROM elimination	wrestler
SELECT COUNT( DISTINCT team ) FROM elimination	wrestler
SELECT time FROM elimination WHERE eliminated_by = 'Punk' OR eliminated_by = 'Orton'	wrestler
SELECT time FROM elimination WHERE eliminated_by = 'Punk' OR eliminated_by = 'Orton'	wrestler
SELECT COUNT( * ) FROM school	school_finance
SELECT COUNT( * ) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name ASC	school_finance
SELECT school_name , location , mascot FROM school	school_finance
SELECT SUM( enrollment ) , AVG( enrollment ) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment > (SELECT AVG( enrollment ) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment ASC LIMIT 1	school_finance
SELECT AVG( enrollment ) , MAX( enrollment ) , MIN( enrollment ) FROM school	school_finance
SELECT county , COUNT( * ) , SUM( enrollment ) FROM school GROUP BY county	school_finance
SELECT donator_name , SUM( amount ) FROM endowment GROUP BY donator_name ORDER BY SUM( amount ) DESC	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount<9	school_finance
SELECT amount , donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT COUNT( * ) FROM budget WHERE budgeted > 3000 AND year <= 2001	school_finance
SELECT COUNT( * ) FROM budget WHERE budgeted > 3000 AND year <= 2001	school_finance
SELECT DISTINCT donator_name FROM endowment	school_finance
SELECT COUNT( * ) FROM budget WHERE budgeted<invested	school_finance
SELECT * FROM endowment WHERE amount > 5 GROUP BY school_id HAVING COUNT( * ) > 1	school_finance
SELECT COUNT( * ) FROM building	protein_institute
SELECT name , street_address , floors FROM building ORDER BY floors ASC	protein_institute
SELECT name FROM building ORDER BY height_feet DESC LIMIT 1	protein_institute
SELECT AVG( floors ) , MAX( floors ) , MIN( floors ) FROM building	protein_institute
SELECT COUNT( * ) FROM building WHERE height_feet > (SELECT AVG( height_feet ) FROM building) OR floors > (SELECT AVG( floors ) FROM building)	protein_institute
SELECT name FROM building WHERE height_feet >= 200 AND floors >= 20	protein_institute
SELECT institution , location FROM institution WHERE founded > 1990 AND type = 'Private'	protein_institute
SELECT type , COUNT( * ) , SUM( enrollment ) FROM institution GROUP BY type	protein_institute
SELECT type FROM institution GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	protein_institute
SELECT type FROM institution WHERE founded > 1990 AND enrollment >= 1000	protein_institute
SELECT DISTINCT type FROM institution	protein_institute
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
SELECT location FROM cinema WHERE capacity > 300 GROUP BY location HAVING COUNT( * ) > 1	cinema
SELECT location FROM cinema WHERE capacity > 300 GROUP BY location HAVING COUNT( * ) > 1	cinema
SELECT COUNT( * ) FROM film WHERE title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM film WHERE title LIKE '%Dummy%'	cinema
SELECT first_name , last_name , gender_mf FROM customers WHERE good_or_bad_customer = 'good' ORDER BY last_name ASC	products_for_hire
SELECT AVG( amount_due ) FROM payments	products_for_hire
SELECT DISTINCT payment_type_code FROM payments	products_for_hire
SELECT payment_date FROM payments WHERE amount_paid > 300 OR payment_type_code = 'Check'	products_for_hire
SELECT COUNT( * ) FROM company	gas_company
SELECT COUNT( * ) FROM company	gas_company
SELECT company , rank FROM company ORDER BY sales_billion DESC	gas_company
SELECT company , rank FROM company ORDER BY sales_billion DESC	gas_company
SELECT company , main_industry FROM company WHERE headquarters != 'USA'	gas_company
SELECT company , main_industry FROM company WHERE headquarters != 'United States'	gas_company
SELECT company , headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT company , headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT MIN( market_value ) , MAX( market_value ) , AVG( market_value ) FROM company	gas_company
SELECT MIN( market_value ) , MAX( market_value ) , AVG( market_value ) FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT headquarters , COUNT( * ) FROM company GROUP BY headquarters	gas_company
SELECT headquarters , COUNT( * ) FROM company GROUP BY headquarters	gas_company
SELECT main_industry , SUM( market_value ) FROM company GROUP BY main_industry	gas_company
SELECT main_industry , SUM( market_value ) FROM company GROUP BY main_industry	gas_company
SELECT main_industry , COUNT( * ) FROM company GROUP BY main_industry ORDER BY SUM( market_value ) DESC LIMIT 1	gas_company
SELECT main_industry , COUNT( * ) FROM company GROUP BY main_industry ORDER BY SUM( market_value ) DESC LIMIT 1	gas_company
SELECT headquarters FROM company WHERE main_industry = 'banking' GROUP BY headquarters HAVING COUNT( * ) >= 2	gas_company
SELECT headquarters FROM company WHERE main_industry = 'banking' GROUP BY headquarters HAVING COUNT( * ) >= 2	gas_company
SELECT headquarters FROM company WHERE main_industry = 'banking' INTERSECT SELECT headquarters FROM company WHERE main_industry = 'Oil and gas'	gas_company
SELECT headquarters FROM company WHERE main_industry = 'banking' INTERSECT SELECT headquarters FROM company WHERE main_industry = 'oil and gas'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry = 'banking'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry = 'banking'	gas_company
SELECT rank , company , market_value FROM company WHERE main_industry = 'banking' ORDER BY sales_billion , profits_billion ASC	gas_company
SELECT rank , company , market_value FROM company WHERE main_industry = 'banking' ORDER BY sales_billion , profits_billion ASC	gas_company
SELECT COUNT( * ) FROM region	party_people
SELECT COUNT( * ) FROM region	party_people
SELECT DISTINCT region_name FROM region ORDER BY label ASC	party_people
SELECT DISTINCT region_name FROM region ORDER BY label ASC	party_people
SELECT COUNT( DISTINCT party_name ) FROM party	party_people
SELECT COUNT( DISTINCT party_name ) FROM party	party_people
SELECT minister , took_office , left_office FROM party ORDER BY left_office ASC	party_people
SELECT minister , took_office , left_office FROM party ORDER BY left_office ASC	party_people
SELECT minister FROM party WHERE took_office > 1961 OR took_office<1959	party_people
SELECT minister FROM party WHERE took_office > 1961 OR took_office<1959	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister , party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister , party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT member_name FROM member WHERE party_id = 3 INTERSECT SELECT member_name FROM member WHERE party_id = 1	party_people
SELECT member_name FROM member WHERE party_id = 3 INTERSECT SELECT member_name FROM member WHERE party_id = 1	party_people
SELECT COUNT( * ) FROM pilot	pilot_record
SELECT pilot_name FROM pilot ORDER BY rank ASC	pilot_record
SELECT position , team FROM pilot	pilot_record
SELECT DISTINCT position FROM pilot WHERE age > 30	pilot_record
SELECT pilot_name FROM pilot WHERE team = 'Bradley' OR team = 'Fordham'	pilot_record
SELECT join_year FROM pilot ORDER BY rank ASC LIMIT 1	pilot_record
SELECT nationality , COUNT( * ) FROM pilot GROUP BY nationality	pilot_record
SELECT nationality FROM pilot GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	pilot_record
SELECT position FROM pilot WHERE join_year<2000 INTERSECT SELECT position FROM pilot WHERE join_year > 2005	pilot_record
SELECT dname FROM department ORDER BY mgr_start_date ASC	company_1
SELECT dependent_name FROM dependent WHERE relationship = 'spouse'	company_1
SELECT COUNT( * ) FROM dependent WHERE sex = 'f'	company_1
SELECT fname , lname FROM employee WHERE salary > 30000	company_1
SELECT COUNT( * ) , sex FROM employee WHERE salary<50000 GROUP BY sex	company_1
SELECT fname , lname , address FROM employee ORDER BY bdate ASC	company_1
SELECT COUNT( * ) FROM participants WHERE participant_type_code = 'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code ASC	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name , date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name , date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT date FROM races WHERE round = 2017	formula_1
SELECT date FROM races WHERE year = 2017	formula_1
SELECT DISTINCT date FROM races WHERE round BETWEEN 2014 and 2017	formula_1
SELECT DISTINCT date FROM races WHERE round BETWEEN 2014 and 2017	formula_1
SELECT forename , surname FROM drivers WHERE nationality = 'German'	formula_1
SELECT forename , surname FROM drivers WHERE nationality = 'German'	formula_1
SELECT COUNT( * ) , nationality FROM constructors GROUP BY nationality	formula_1
SELECT COUNT( * ) , nationality FROM constructors GROUP BY nationality	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT date FROM races ORDER BY date DESC	formula_1
SELECT DISTINCT date FROM races ORDER BY date DESC	formula_1
SELECT date FROM races WHERE round BETWEEN 2009 and 2011	formula_1
SELECT date FROM races WHERE round BETWEEN 2009 and 2011	formula_1
SELECT date FROM races WHERE date > '12:00:00' OR date<'09:00:00'	formula_1
SELECT date FROM races WHERE date > '12:00:00' OR date<'09:00:00'	formula_1
SELECT name FROM circuits WHERE country = 'UK' OR country = 'Malaysia'	formula_1
SELECT name FROM circuits WHERE country = 'UK' OR country = 'Malaysia'	formula_1
SELECT circuitid , location FROM circuits WHERE country = 'France' OR country = 'Belgium'	formula_1
SELECT circuitid , location FROM circuits WHERE country = 'France' OR country = 'Belgium'	formula_1
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
SELECT starting_year FROM technician WHERE team = 'CLE' INTERSECT SELECT starting_year FROM technician WHERE team = 'CWS'	machine_repair
SELECT COUNT( * ) FROM entrepreneur	entrepreneur
SELECT COUNT( * ) FROM entrepreneur	entrepreneur
SELECT company FROM entrepreneur ORDER BY money_requested DESC	entrepreneur
SELECT company FROM entrepreneur ORDER BY money_requested DESC	entrepreneur
SELECT company , investor FROM entrepreneur	entrepreneur
SELECT company , investor FROM entrepreneur	entrepreneur
SELECT AVG( money_requested ) FROM entrepreneur	entrepreneur
SELECT AVG( money_requested ) FROM entrepreneur	entrepreneur
SELECT weight FROM people ORDER BY height ASC LIMIT 1	entrepreneur
SELECT weight FROM people ORDER BY height ASC LIMIT 1	entrepreneur
SELECT investor , COUNT( * ) FROM entrepreneur GROUP BY investor	entrepreneur
SELECT investor , COUNT( * ) FROM entrepreneur GROUP BY investor	entrepreneur
SELECT investor FROM entrepreneur GROUP BY investor ORDER BY COUNT( * ) DESC LIMIT 1	entrepreneur
SELECT investor FROM entrepreneur GROUP BY investor ORDER BY COUNT( * ) DESC LIMIT 1	entrepreneur
SELECT investor FROM entrepreneur GROUP BY investor HAVING COUNT( * ) >= 2	entrepreneur
SELECT investor FROM entrepreneur GROUP BY investor HAVING COUNT( * ) >= 2	entrepreneur
SELECT investor FROM entrepreneur WHERE money_requested > 140000 INTERSECT SELECT investor FROM entrepreneur WHERE money_requested<120000	entrepreneur
SELECT investor FROM entrepreneur WHERE money_requested > 140000 INTERSECT SELECT investor FROM entrepreneur WHERE money_requested<120000	entrepreneur
SELECT COUNT( DISTINCT company ) FROM entrepreneur	entrepreneur
SELECT COUNT( DISTINCT company ) FROM entrepreneur	entrepreneur
SELECT COUNT( * ) FROM perpetrator	perpetrator
SELECT date FROM perpetrator ORDER BY killed DESC	perpetrator
SELECT injured FROM perpetrator ORDER BY injured ASC	perpetrator
SELECT AVG( injured ) FROM perpetrator	perpetrator
SELECT location FROM perpetrator ORDER BY killed DESC LIMIT 1	perpetrator
SELECT country , COUNT( * ) FROM perpetrator GROUP BY country	perpetrator
SELECT country , COUNT( * ) FROM perpetrator GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT country , COUNT( * ) FROM perpetrator GROUP BY country HAVING COUNT( * ) >= 2	perpetrator
SELECT country FROM perpetrator WHERE injured > 50 INTERSECT SELECT country FROM perpetrator WHERE injured<20	perpetrator
SELECT COUNT( DISTINCT location ) FROM perpetrator	perpetrator
SELECT MAX( year ) FROM perpetrator	perpetrator
SELECT campus FROM campuses WHERE county = 'Los Angeles'	csu_1
SELECT campus FROM campuses WHERE county = 'Los Angeles'	csu_1
SELECT campus FROM campuses WHERE location = 'Chico'	csu_1
SELECT campus FROM campuses WHERE location = 'Chico'	csu_1
SELECT campus FROM campuses WHERE year = 1958	csu_1
SELECT campus FROM campuses WHERE year = 1958	csu_1
SELECT campus FROM campuses WHERE year<1800	csu_1
SELECT campus FROM campuses WHERE year<1800	csu_1
SELECT campus FROM campuses WHERE year BETWEEN 1935 and 1939	csu_1
SELECT campus FROM campuses WHERE year BETWEEN 1935 and 1939	csu_1
SELECT campus FROM campuses WHERE location = 'Northridge' AND county = 'Los Angeles' UNION SELECT campus FROM campuses WHERE location = 'San Francisco' AND county = ', San Francisco'	csu_1
SELECT campus FROM campuses WHERE location = 'Northridge,' AND county = 'Los Angeles' UNION SELECT campus FROM campuses WHERE location = 'San Francisco, San Francisco' AND county = ', San Francisco'	csu_1
SELECT campus FROM campuses WHERE county = 'Los Angeles' AND year > 1950	csu_1
SELECT campus FROM campuses WHERE county = 'Los Angeles' AND year > 1950	csu_1
SELECT year FROM degrees GROUP BY year ORDER BY SUM( degrees ) DESC LIMIT 1	csu_1
SELECT year FROM degrees GROUP BY year ORDER BY SUM( degrees ) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY SUM( degrees ) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY SUM( degrees ) DESC LIMIT 1	csu_1
SELECT COUNT( * ) FROM campuses WHERE county = 'Los Angeles'	csu_1
SELECT COUNT( * ) FROM campuses WHERE county = 'LA'	csu_1
SELECT campus FROM campuses WHERE county = 'Los Angeles'	csu_1
SELECT campus FROM campuses WHERE county = 'Los Angeles'	csu_1
SELECT SUM( faculty ) FROM faculty WHERE year = 2002	csu_1
SELECT SUM( faculty ) FROM faculty WHERE year = 2002	csu_1
SELECT COUNT( * ) FROM campuses	csu_1
SELECT COUNT( * ) FROM campuses	csu_1
SELECT COUNT( * ) FROM candidate	candidate_poll
SELECT COUNT( * ) FROM candidate	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY COUNT( * ) DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY COUNT( * ) DESC LIMIT 1	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT candidate_id FROM candidate ORDER BY oppose_rate ASC LIMIT 1	candidate_poll
SELECT candidate_id FROM candidate ORDER BY oppose_rate ASC LIMIT 1	candidate_poll
SELECT support_rate , consider_rate , oppose_rate FROM candidate ORDER BY unsure_rate ASC	candidate_poll
SELECT support_rate , consider_rate , oppose_rate FROM candidate ORDER BY unsure_rate ASC	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT name FROM people ORDER BY date_of_birth ASC	candidate_poll
SELECT name FROM people ORDER BY date_of_birth ASC	candidate_poll
SELECT AVG( height ) , AVG( weight ) FROM people WHERE sex = 'M'	candidate_poll
SELECT AVG( height ) , AVG( weight ) FROM people WHERE sex = 'm'	candidate_poll
SELECT name FROM people WHERE height > 200 OR height<190	candidate_poll
SELECT name FROM people WHERE height > 200 OR height<190	candidate_poll
SELECT AVG( weight ) , MIN( weight ) , sex FROM people GROUP BY sex	candidate_poll
SELECT AVG( weight ) , MIN( weight ) , sex FROM people GROUP BY sex	candidate_poll
SELECT COUNT( * ) , sex FROM people WHERE weight > 85 GROUP BY sex	candidate_poll
SELECT COUNT( * ) , sex FROM people WHERE weight > 85 GROUP BY sex	candidate_poll
SELECT MAX( support_rate ) , MIN( consider_rate ) , MIN( oppose_rate ) FROM candidate	candidate_poll
SELECT MAX( support_rate ) , MIN( consider_rate ) , MIN( oppose_rate ) FROM candidate	candidate_poll
SELECT name FROM people WHERE height<(SELECT AVG( height ) FROM people)	candidate_poll
SELECT name FROM people WHERE height<(SELECT AVG( height ) FROM people)	candidate_poll
SELECT * FROM people	candidate_poll
SELECT * FROM people	candidate_poll
SELECT name FROM city ORDER BY name ASC	county_public_safety
SELECT name FROM city ORDER BY name ASC	county_public_safety
SELECT hispanic FROM city WHERE black > 10	county_public_safety
SELECT hispanic FROM city WHERE black > 10	county_public_safety
SELECT name FROM city ORDER BY white DESC LIMIT 5	county_public_safety
SELECT name FROM city ORDER BY white DESC LIMIT 5	county_public_safety
SELECT roomname FROM rooms WHERE baseprice<160 AND beds = 2 AND decor = 'modern'	inn_1
SELECT roomname FROM rooms WHERE baseprice<160 AND beds = 2 AND decor = 'modern'	inn_1
SELECT roomname , roomid FROM rooms WHERE baseprice > 160 AND maxoccupancy > 2	inn_1
SELECT roomname , roomid FROM rooms WHERE baseprice > 160 AND maxoccupancy > 2	inn_1
SELECT kids FROM reservations WHERE firstname = 'ROY' AND lastname = 'SWEAZY'	inn_1
SELECT kids FROM reservations WHERE firstname = 'ROY' AND lastname = 'SWEAZ'	inn_1
SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY' AND lastname = 'SWEAZY'	inn_1
SELECT COUNT( * ) FROM reservations WHERE firstname = 'ROY' AND lastname = 'SWEAZY'	inn_1
SELECT adults FROM reservations WHERE firstname = 'CONRAD' AND lastname = 'SELBIG' AND lastname = 'SELBIG'	inn_1
SELECT adults FROM reservations WHERE firstname = 'CONRAD' AND lastname = 'SELBIG' AND lastname = 'SELBIG'	inn_1
SELECT kids FROM reservations WHERE firstname = 'DAMIEN' AND lastname = 'TRACHSEL' AND lastname = 'TRACHSEL'	inn_1
SELECT kids FROM reservations WHERE firstname = 'DAMIEN' AND lastname = 'TRACHSEL' AND lastname = 'TRACHSEL'	inn_1
SELECT SUM( beds ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT SUM( beds ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT roomname , decor FROM rooms WHERE bedtype = 'king' ORDER BY baseprice ASC	inn_1
SELECT roomname , decor FROM rooms WHERE bedtype = 'king' ORDER BY baseprice ASC	inn_1
SELECT roomname , baseprice FROM rooms ORDER BY baseprice ASC LIMIT 1	inn_1
SELECT roomname , baseprice FROM rooms ORDER BY baseprice ASC LIMIT 1	inn_1
SELECT decor FROM rooms WHERE roomname = 'Recluse and defiance'	inn_1
SELECT decor FROM rooms WHERE roomname = 'Recluse and defiance'	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT SUM( maxoccupancy ) FROM rooms WHERE decor = 'modern'	inn_1
SELECT SUM( maxoccupancy ) FROM rooms WHERE decor = 'modern'	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT COUNT( * ) FROM rooms WHERE bedtype = 'king'	inn_1
SELECT bedtype , COUNT( * ) FROM rooms GROUP BY bedtype	inn_1
SELECT bedtype , COUNT( * ) FROM rooms GROUP BY bedtype	inn_1
SELECT roomname FROM rooms ORDER BY maxoccupancy DESC LIMIT 1	inn_1
SELECT roomname FROM rooms ORDER BY maxoccupancy DESC LIMIT 1	inn_1
SELECT roomid , roomname FROM rooms ORDER BY baseprice DESC LIMIT 1	inn_1
SELECT roomid , roomname FROM rooms ORDER BY baseprice DESC LIMIT 1	inn_1
SELECT roomname , bedtype FROM rooms WHERE decor = 'traditional'	inn_1
SELECT roomname , bedtype FROM rooms WHERE decor = 'traditional'	inn_1
SELECT decor , COUNT( * ) FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1
SELECT decor , COUNT( * ) FROM rooms WHERE bedtype = 'king' GROUP BY decor	inn_1
SELECT decor , AVG( baseprice ) , MIN( baseprice ) FROM rooms GROUP BY decor	inn_1
SELECT decor , AVG( baseprice ) , MIN( baseprice ) FROM rooms GROUP BY decor	inn_1
SELECT roomname FROM rooms ORDER BY baseprice ASC	inn_1
SELECT roomname FROM rooms ORDER BY baseprice ASC	inn_1
SELECT decor , COUNT( * ) FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1
SELECT decor , COUNT( * ) FROM rooms WHERE baseprice > 120 GROUP BY decor	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT bedtype , AVG( baseprice ) FROM rooms GROUP BY bedtype	inn_1
SELECT roomname FROM rooms WHERE bedtype = 'king' OR bedtype = 'queen'	inn_1
SELECT roomname FROM rooms WHERE bedtype = 'king' OR bedtype = 'queen'	inn_1
SELECT COUNT( DISTINCT bedtype ) FROM rooms	inn_1
SELECT COUNT( DISTINCT bedtype ) FROM rooms	inn_1
SELECT roomid , roomname FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1
SELECT roomid , roomname FROM rooms ORDER BY baseprice DESC LIMIT 3	inn_1
SELECT roomname FROM rooms WHERE baseprice > (SELECT AVG( baseprice ) FROM rooms)	inn_1
SELECT roomname FROM rooms WHERE baseprice > (SELECT AVG( baseprice ) FROM rooms)	inn_1
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
SELECT COUNT( * ) FROM region	storm_record
SELECT COUNT( * ) FROM region	storm_record
SELECT region_code , region_name FROM region ORDER BY region_code ASC	storm_record
SELECT region_code , region_name FROM region ORDER BY region_code ASC	storm_record
SELECT region_name FROM region ORDER BY region_name ASC	storm_record
SELECT region_name FROM region ORDER BY region_name ASC	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT COUNT( * ) FROM storm WHERE number_deaths = 1	storm_record
SELECT COUNT( * ) FROM storm WHERE number_deaths > 1	storm_record
SELECT name , dates_active , number_deaths FROM storm WHERE number_deaths >= 1	storm_record
SELECT name , dates_active , number_deaths FROM storm WHERE number_deaths >= 1	storm_record
SELECT AVG( damage_millions_usd ) , MAX( damage_millions_usd ) FROM storm WHERE max_speed > 1000	storm_record
SELECT AVG( damage_millions_usd ) , MAX( damage_millions_usd ) FROM storm WHERE max_speed > 1000	storm_record
SELECT SUM( number_deaths ) , SUM( damage_millions_usd ) FROM storm WHERE max_speed > (SELECT AVG( max_speed ) FROM storm)	storm_record
SELECT SUM( number_deaths ) , SUM( damage_millions_usd ) FROM storm WHERE max_speed > (SELECT AVG( max_speed ) FROM storm)	storm_record
SELECT name , damage_millions_usd FROM storm ORDER BY max_speed DESC	storm_record
SELECT name , damage_millions_usd FROM storm ORDER BY max_speed DESC	storm_record
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
SELECT party FROM party GROUP BY party HAVING COUNT( * ) >= 2	election
SELECT party FROM party GROUP BY party HAVING COUNT( * ) >= 2	election
SELECT governor FROM party GROUP BY governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT governor FROM party GROUP BY governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT comptroller , COUNT( * ) FROM party GROUP BY comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT comptroller , COUNT( * ) FROM party GROUP BY comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
-- SELECT COUNT( * ) FROM aircraft	flight_1
-- SELECT name , distance FROM aircraft	flight_1
-- SELECT name , distance FROM aircraft	flight_1
-- SELECT aid FROM aircraft WHERE distance > 1000	flight_1
-- SELECT aid FROM aircraft WHERE distance > 1000	flight_1
-- SELECT COUNT( * ) FROM aircraft WHERE distance BETWEEN 1000 and 5000	flight_1
-- SELECT COUNT( * ) FROM aircraft WHERE distance BETWEEN 1000 and 5000	flight_1
-- SELECT name , distance FROM aircraft WHERE aid = 12	flight_1
-- SELECT name , distance FROM aircraft WHERE aid = 12	flight_1
-- SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft	flight_1
-- SELECT MIN( distance ) , AVG( distance ) , MAX( distance ) FROM aircraft	flight_1
-- SELECT aid , name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
-- SELECT aid , name FROM aircraft ORDER BY distance DESC LIMIT 1	flight_1
-- SELECT name FROM aircraft ORDER BY distance ASC LIMIT 3	flight_1
-- SELECT name FROM aircraft ORDER BY distance ASC LIMIT 3	flight_1
-- SELECT name FROM aircraft WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1
-- SELECT name FROM aircraft WHERE distance > (SELECT AVG( distance ) FROM aircraft)	flight_1
-- SELECT COUNT( * ) FROM employee	flight_1
-- SELECT COUNT( * ) FROM employee	flight_1
-- SELECT name , salary FROM employee ORDER BY salary ASC	flight_1
-- SELECT name , salary FROM employee ORDER BY salary ASC	flight_1
-- SELECT eid FROM employee WHERE salary > 100000	flight_1
-- SELECT eid FROM employee WHERE salary > 100000	flight_1
-- SELECT COUNT( * ) FROM employee WHERE salary BETWEEN 100000 and 200000	flight_1
-- SELECT COUNT( * ) FROM employee WHERE salary BETWEEN 100000 and 200000	flight_1
-- SELECT name , salary FROM employee WHERE eid = 242518965	flight_1
-- SELECT name , salary FROM employee WHERE eid = 242518965	flight_1
-- SELECT AVG( salary ) , MAX( salary ) FROM employee	flight_1
-- SELECT AVG( salary ) , MAX( salary ) FROM employee	flight_1
-- SELECT eid , name FROM employee ORDER BY salary DESC LIMIT 1	flight_1
-- SELECT eid , name FROM employee ORDER BY salary DESC LIMIT 1	flight_1
-- SELECT name FROM employee ORDER BY salary ASC LIMIT 3	flight_1
-- SELECT name FROM employee ORDER BY salary ASC LIMIT 3	flight_1
-- SELECT name FROM employee WHERE salary > (SELECT AVG( salary ) FROM employee)	flight_1
-- SELECT name FROM employee WHERE salary > (SELECT AVG( salary ) FROM employee)	flight_1
-- SELECT eid , salary FROM employee WHERE name = 'Mark Young'	flight_1
-- SELECT eid , salary FROM employee WHERE name = 'Mark Young'	flight_1
-- SELECT COUNT( * ) FROM flight	flight_1
-- SELECT COUNT( * ) FROM flight	flight_1
-- SELECT flno , origin , destination FROM flight ORDER BY origin ASC	flight_1
-- SELECT flno , origin , destination FROM flight ORDER BY origin ASC	flight_1
-- SELECT flno FROM flight WHERE origin = 'Los Angeles'	flight_1
-- SELECT flno FROM flight WHERE origin = 'Los Angeles'	flight_1
-- SELECT origin FROM flight WHERE destination = 'Honolulu'	flight_1
-- SELECT origin FROM flight WHERE destination = 'Honolulu'	flight_1
-- SELECT departure_date , arrival_date FROM flight WHERE origin = 'Los Angeles' AND destination = 'Honolulu'	flight_1
-- SELECT departure_date , arrival_date FROM flight WHERE origin = 't' AND destination = 'Honolulu'	flight_1
-- SELECT flno FROM flight WHERE distance > 2000	flight_1
-- SELECT flno FROM flight WHERE distance > 2000	flight_1
-- SELECT AVG( price ) FROM flight WHERE origin = 'Los Angeles' AND destination = 'Honolulu'	flight_1
-- SELECT AVG( price ) FROM flight WHERE origin = 't' AND destination = 'Honolulu'	flight_1
-- SELECT origin , destination FROM flight WHERE price > 300	flight_1
-- SELECT origin , destination FROM flight WHERE price > 300	flight_1
-- SELECT flno , distance FROM flight ORDER BY price DESC LIMIT 1	flight_1
-- SELECT flno , distance FROM flight ORDER BY price DESC LIMIT 1	flight_1
-- SELECT flno FROM flight ORDER BY distance ASC LIMIT 3	flight_1
-- SELECT flno FROM flight ORDER BY distance ASC LIMIT 3	flight_1
-- SELECT AVG( distance ) , AVG( price ) FROM flight WHERE origin = 'Los Angeles'	flight_1
-- SELECT AVG( distance ) , AVG( price ) FROM flight WHERE origin = 'yes'	flight_1
-- SELECT origin , COUNT( * ) FROM flight GROUP BY origin	flight_1
-- SELECT origin , COUNT( * ) FROM flight GROUP BY origin	flight_1
-- SELECT destination , COUNT( * ) FROM flight GROUP BY destination	flight_1
-- SELECT destination , COUNT( * ) FROM flight GROUP BY destination	flight_1
-- SELECT origin FROM flight GROUP BY origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
-- SELECT origin FROM flight GROUP BY origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
-- SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
-- SELECT destination FROM flight GROUP BY destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
-- SELECT COUNT( DISTINCT eid ) FROM certificate	flight_1
-- SELECT COUNT( DISTINCT eid ) FROM certificate	flight_1
-- SELECT COUNT( * ) FROM student	allergy_1
-- SELECT COUNT( * ) FROM student	allergy_1
-- SELECT fname , lname FROM student	allergy_1
-- SELECT fname , lname FROM student	allergy_1
-- SELECT COUNT( DISTINCT advisor ) FROM student	allergy_1
-- SELECT COUNT( DISTINCT advisor ) FROM student	allergy_1
-- SELECT DISTINCT major FROM student	allergy_1
-- SELECT DISTINCT major FROM student	allergy_1
-- SELECT DISTINCT city_code FROM student	allergy_1
-- SELECT DISTINCT city_code FROM student	allergy_1
-- SELECT fname , lname , age FROM student WHERE sex = 'F'	allergy_1
-- SELECT fname , lname , age FROM student WHERE sex = 'F'	allergy_1
-- SELECT stuid FROM student WHERE sex = 'm'	allergy_1
-- SELECT stuid FROM student WHERE sex = 'm'	allergy_1
-- SELECT COUNT( * ) FROM student WHERE age = 18	allergy_1
-- SELECT COUNT( * ) FROM student WHERE age = 18	allergy_1
-- SELECT stuid FROM student WHERE age > 20	allergy_1
-- SELECT stuid FROM student WHERE age > 20	allergy_1
-- SELECT city_code FROM student WHERE lname = 'Kim'	allergy_1
-- SELECT city_code FROM student WHERE lname = 'Kim'	allergy_1
-- SELECT advisor FROM student WHERE stuid = 1004	allergy_1
-- SELECT advisor FROM student WHERE stuid = 1004	allergy_1
-- SELECT COUNT( * ) FROM student WHERE city_code = 'HKG' OR city_code = 'CHI'	allergy_1
-- SELECT COUNT( * ) FROM student WHERE city_code = 'HKG' OR city_code = 'CHI'	allergy_1
-- SELECT MIN( age ) , AVG( age ) , MAX( age ) FROM student	allergy_1
-- SELECT MIN( age ) , AVG( age ) , MAX( age ) FROM student	allergy_1
-- SELECT lname FROM student WHERE age = (SELECT MIN( age ) FROM student)	allergy_1
-- SELECT lname FROM student WHERE age = (SELECT MIN( age ) FROM student)	allergy_1
-- SELECT stuid FROM student WHERE age = (SELECT MAX( age ) FROM student)	allergy_1
-- SELECT stuid FROM student WHERE age = (SELECT MAX( age ) FROM student)	allergy_1
-- SELECT major , COUNT( * ) FROM student GROUP BY major	allergy_1
-- SELECT major , COUNT( * ) FROM student GROUP BY major	allergy_1
-- SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT age , COUNT( * ) FROM student GROUP BY age	allergy_1
-- SELECT age , COUNT( * ) FROM student GROUP BY age	allergy_1
-- SELECT AVG( age ) , sex FROM student GROUP BY sex	allergy_1
-- SELECT AVG( age ) , sex FROM student GROUP BY sex	allergy_1
-- SELECT city_code , COUNT( * ) FROM student GROUP BY city_code	allergy_1
-- SELECT city_code , COUNT( * ) FROM student GROUP BY city_code	allergy_1
-- SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	allergy_1
-- SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	allergy_1
-- SELECT advisor FROM student GROUP BY advisor ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT advisor FROM student GROUP BY advisor ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT COUNT( * ) FROM accounts	customers_card_transactions
-- SELECT COUNT( * ) FROM accounts	customers_card_transactions
-- SELECT account_id , customer_id , account_name FROM accounts	customers_card_transactions
-- SELECT account_id , customer_id , account_name FROM accounts	customers_card_transactions
-- SELECT other_account_details FROM accounts WHERE account_name = '338'	customers_card_transactions
-- SELECT other_account_details FROM accounts WHERE account_name = '338'	customers_card_transactions
-- SELECT customer_id , COUNT( * ) FROM accounts GROUP BY customer_id	customers_card_transactions
-- SELECT customer_id , COUNT( * ) FROM accounts GROUP BY customer_id	customers_card_transactions
-- SELECT customer_id , COUNT( * ) FROM accounts GROUP BY customer_id ORDER BY COUNT( * ) DESC LIMIT 1	customers_card_transactions
-- SELECT customer_id , COUNT( * ) FROM accounts GROUP BY customer_id ORDER BY COUNT( * ) DESC LIMIT 1	customers_card_transactions
-- SELECT COUNT( DISTINCT customer_id ) FROM accounts	customers_card_transactions
-- SELECT COUNT( DISTINCT customer_id ) FROM accounts	customers_card_transactions
-- SELECT COUNT( * ) FROM customers	customers_card_transactions
-- SELECT COUNT( * ) FROM customers	customers_card_transactions
-- SELECT customer_id , customer_first_name , customer_last_name , customer_phone FROM customers	customers_card_transactions
-- SELECT customer_id , customer_first_name , customer_last_name , customer_phone FROM customers	customers_card_transactions
-- SELECT customer_phone , customer_email FROM customers WHERE customer_first_name = 'Aniyah' AND customer_last_name = 'Feest'	customers_card_transactions
-- SELECT customer_phone , customer_email FROM customers WHERE customer_first_name = 'Aniyah' AND customer_last_name = 'Feest'	customers_card_transactions
-- SELECT COUNT( * ) FROM album	chinook_1
-- SELECT COUNT( * ) FROM album	chinook_1
-- SELECT name FROM genre	chinook_1
-- SELECT name FROM genre	chinook_1
-- SELECT * FROM customer WHERE state = 'NY'	chinook_1
-- SELECT * FROM customer WHERE state = 'NY'	chinook_1
-- SELECT firstname , lastname FROM employee WHERE city = 'Calgary'	chinook_1
-- SELECT firstname , lastname FROM employee WHERE city = 'Calgary'	chinook_1
-- SELECT DISTINCT billingcountry FROM invoice	chinook_1
-- SELECT DISTINCT billingcountry FROM invoice	chinook_1
-- SELECT name FROM artist WHERE name LIKE '%a%'	chinook_1
-- SELECT name FROM artist WHERE name LIKE '%a%'	chinook_1
-- SELECT name FROM track WHERE name LIKE '%you%'	chinook_1
-- SELECT name FROM track WHERE name LIKE '%you%'	chinook_1
-- SELECT AVG( unitprice ) FROM track	chinook_1
-- SELECT AVG( unitprice ) FROM track	chinook_1
-- SELECT MAX( milliseconds ) , MIN( milliseconds ) FROM track	chinook_1
-- SELECT MAX( milliseconds ) , MIN( milliseconds ) FROM track	chinook_1
-- SELECT firstname , lastname FROM customer WHERE email = 'luisg@br'	chinook_1
-- SELECT firstname , lastname FROM customer WHERE email = 'luisg@br'	chinook_1
-- SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1
-- SELECT COUNT( * ) FROM customer WHERE email LIKE '%com%'	chinook_1
-- SELECT COUNT( DISTINCT city ) FROM employee	chinook_1
-- SELECT COUNT( DISTINCT city ) FROM employee	chinook_1
-- SELECT phone FROM employee	chinook_1
-- SELECT phone FROM employee	chinook_1
-- SELECT title FROM album ORDER BY title ASC	chinook_1
-- SELECT title FROM album ORDER BY title ASC	chinook_1
-- SELECT birthdate FROM employee WHERE city = 'Edmonton'	chinook_1
-- SELECT birthdate FROM employee WHERE city = 'Edmonton'	chinook_1
-- SELECT DISTINCT unitprice FROM track	chinook_1
-- SELECT DISTINCT unitprice FROM track	chinook_1
-- SELECT MIN( bathroom_count ) , MAX( bathroom_count ) FROM apartments	apartment_rentals
-- SELECT MIN( bathroom_count ) , MAX( bathroom_count ) FROM apartments	apartment_rentals
-- SELECT AVG( bedroom_count ) FROM apartments	apartment_rentals
-- SELECT AVG( bedroom_count ) FROM apartments	apartment_rentals
-- SELECT apt_number , room_count FROM apartments	apartment_rentals
-- SELECT apt_number , room_count FROM apartments	apartment_rentals
-- SELECT AVG( room_count ) FROM apartments WHERE apt_type_code = 'Studio'	apartment_rentals
-- SELECT AVG( room_count ) FROM apartments WHERE apt_type_code = 'Studio'	apartment_rentals
-- SELECT apt_number FROM apartments WHERE apt_type_code = 'Flat'	apartment_rentals
-- SELECT apt_number FROM apartments WHERE apt_type_code = 'Flat'	apartment_rentals
-- SELECT guest_first_name , guest_last_name FROM guests	apartment_rentals
-- SELECT guest_first_name , guest_last_name FROM guests	apartment_rentals
-- SELECT date_of_birth FROM guests WHERE gender_code = 'Male'	apartment_rentals
-- SELECT date_of_birth FROM guests WHERE gender_code = 'Male'	apartment_rentals
-- SELECT apt_number FROM apartments ORDER BY room_count ASC	apartment_rentals
-- SELECT apt_number FROM apartments ORDER BY room_count ASC	apartment_rentals
-- SELECT apt_number FROM apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
-- SELECT apt_number FROM apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code , COUNT( * ) FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
-- SELECT apt_type_code , COUNT( * ) FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
-- SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY AVG( room_count ) DESC LIMIT 3	apartment_rentals
-- SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY AVG( room_count ) DESC LIMIT 3	apartment_rentals
-- SELECT apt_type_code , bathroom_count , bedroom_count FROM apartments GROUP BY apt_type_code ORDER BY SUM( room_count ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code , bathroom_count , bedroom_count FROM apartments GROUP BY apt_type_code ORDER BY SUM( room_count ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code FROM apartments GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code FROM apartments WHERE bathroom_count > 1 GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code FROM apartments WHERE bathroom_count > 1 GROUP BY apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apt_type_code , MAX( room_count ) , MIN( room_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
-- SELECT apt_type_code , MAX( room_count ) , MIN( room_count ) FROM apartments GROUP BY apt_type_code	apartment_rentals
-- SELECT gender_code , COUNT( * ) FROM guests GROUP BY gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
-- SELECT gender_code , COUNT( * ) FROM guests GROUP BY gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
-- SELECT AVG( weight ) FROM player	soccer_1
-- SELECT MAX( weight ) , MIN( weight ) FROM player	soccer_1
-- SELECT COUNT( * ) FROM accounts	customers_and_invoices
-- SELECT COUNT( * ) FROM accounts	customers_and_invoices
-- SELECT COUNT( DISTINCT customer_id ) FROM accounts	customers_and_invoices
-- SELECT COUNT( DISTINCT customer_id ) FROM accounts	customers_and_invoices
-- SELECT account_id , date_account_opened , account_name , other_account_details FROM accounts	customers_and_invoices
-- SELECT account_id , date_account_opened , account_name , other_account_details FROM accounts	customers_and_invoices
-- SELECT COUNT( * ) , customer_id FROM accounts GROUP BY customer_id	customers_and_invoices
-- SELECT COUNT( * ) , customer_id FROM accounts GROUP BY customer_id	customers_and_invoices
-- SELECT COUNT( * ) FROM customers	customers_and_invoices
-- SELECT COUNT( * ) FROM customers	customers_and_invoices
-- SELECT gender , COUNT( * ) FROM customers GROUP BY gender	customers_and_invoices
-- SELECT gender , COUNT( * ) FROM customers GROUP BY gender	customers_and_invoices
-- SELECT DISTINCT product_color FROM products	customers_and_invoices
-- SELECT DISTINCT product_color FROM products	customers_and_invoices
-- SELECT DISTINCT product_color FROM products	customers_and_invoices
-- SELECT DISTINCT product_color FROM products	customers_and_invoices
-- SELECT COUNT( * ) FROM invoices	customers_and_invoices
-- SELECT COUNT( * ) FROM invoices	customers_and_invoices
-- SELECT order_id , COUNT( * ) FROM invoices GROUP BY order_id	customers_and_invoices
-- SELECT order_id , COUNT( * ) FROM invoices GROUP BY order_id	customers_and_invoices
-- SELECT role_code FROM roles	cre_Doc_Control_Systems
-- SELECT role_description FROM roles WHERE role_code = 'ED'	cre_Doc_Control_Systems
-- SELECT COUNT( * ) FROM employees	cre_Doc_Control_Systems
-- SELECT document_id , receipt_date FROM documents	cre_Doc_Control_Systems
-- SELECT COUNT( * ) FROM documents WHERE document_status_code = 'done'	cre_Doc_Control_Systems
-- SELECT document_type_code FROM documents WHERE document_id = 2	cre_Doc_Control_Systems
-- SELECT document_id FROM documents WHERE document_status_code = 'done' AND document_type_code = 'paper'	cre_Doc_Control_Systems
-- SELECT receipt_date FROM documents WHERE document_id = 3	cre_Doc_Control_Systems
-- SELECT title FROM movie WHERE director = 'steven spielberg'	movie_1
-- SELECT title FROM movie WHERE director = 'Steven Spielberg'	movie_1
-- SELECT title FROM movie WHERE director = 'James Cameron' AND year > 2000	movie_1
-- SELECT title FROM movie WHERE director = 'James Cameron' AND year > 2000	movie_1
-- SELECT COUNT( * ) FROM movie WHERE year<2000	movie_1
-- SELECT COUNT( * ) FROM movie WHERE year<2000	movie_1
-- SELECT director FROM movie WHERE title = 'Avatar'	movie_1
-- SELECT director FROM movie WHERE title = 'Avatar'	movie_1
-- SELECT COUNT( * ) FROM reviewer	movie_1
-- SELECT COUNT( * ) FROM reviewer	movie_1
-- SELECT rid FROM reviewer WHERE name LIKE '%Mike%'	movie_1
-- SELECT rid FROM reviewer WHERE name LIKE '%Mike%'	movie_1
-- SELECT rid FROM reviewer WHERE name = 'Daniel Lewis'	movie_1
-- SELECT rid FROM reviewer WHERE name = 'Daniel Lewis'	movie_1
-- SELECT COUNT( * ) FROM rating WHERE stars > 3	movie_1
-- SELECT COUNT( * ) FROM rating WHERE stars > 3	movie_1
-- SELECT MAX( stars ) , MIN( stars ) FROM rating	movie_1
-- SELECT MAX( stars ) , MIN( stars ) FROM rating	movie_1
-- SELECT title FROM movie WHERE year = (SELECT MAX( year ) FROM movie)	movie_1
-- SELECT title FROM movie WHERE year = (SELECT MAX( year ) FROM movie)	movie_1
-- SELECT title FROM movie WHERE year > (SELECT MAX( year ) FROM movie WHERE director = 'Steven Spielberg')	movie_1
-- SELECT title FROM movie WHERE year > (SELECT MAX( year ) FROM movie WHERE director = 'Steven Spielberg')	movie_1
-- SELECT title , director FROM movie JOIN movie ON director = director WHERE title != title ORDER BY director , title ASC	movie_1
-- SELECT title , director FROM movie JOIN movie ON director = director WHERE title != title ORDER BY director , title ASC	movie_1
-- SELECT title , year FROM movie JOIN movie ON director = director WHERE title != title	movie_1
-- SELECT title , year FROM movie JOIN movie ON director = director WHERE title != title	movie_1
-- SELECT director FROM movie GROUP BY director HAVING COUNT( * ) = 1	movie_1
-- SELECT director FROM movie GROUP BY director HAVING COUNT( * ) = 1	movie_1
-- SELECT director FROM movie WHERE director != 'NULL' GROUP BY director HAVING COUNT( * ) = 1	movie_1
-- SELECT director FROM movie WHERE director != 'NULL' GROUP BY director HAVING COUNT( * ) = 1	movie_1
-- SELECT mid , AVG( stars ) FROM rating GROUP BY mid HAVING COUNT( * ) >= 2	movie_1
-- SELECT mid , AVG( stars ) FROM rating GROUP BY mid HAVING COUNT( * ) >= 2	movie_1
-- SELECT rid FROM rating EXCEPT SELECT rid FROM rating WHERE stars = 4	movie_1
-- SELECT rid FROM rating EXCEPT SELECT rid FROM rating WHERE stars = 4	movie_1
-- SELECT rid FROM rating WHERE stars != 4	movie_1
-- SELECT rid FROM rating WHERE stars != 4	movie_1
-- SELECT title FROM movie WHERE director = 'James Cameron' OR year<1980	movie_1
-- SELECT title FROM movie WHERE director = 'James Cameron' OR year<1980	movie_1
-- SELECT COUNT( * ) FROM journalist	news_report
-- SELECT name FROM journalist ORDER BY years_working ASC	news_report
-- SELECT nationality , age FROM journalist	news_report
-- SELECT name FROM journalist WHERE nationality = 'England' OR nationality = 'Wales'	news_report
-- SELECT AVG( years_working ) FROM journalist	news_report
-- SELECT nationality FROM journalist ORDER BY years_working DESC LIMIT 1	news_report
-- SELECT nationality , COUNT( * ) FROM journalist GROUP BY nationality	news_report
-- SELECT nationality FROM journalist GROUP BY nationality ORDER BY COUNT( * ) DESC LIMIT 1	news_report
-- SELECT nationality FROM journalist WHERE years_working > 10 INTERSECT SELECT nationality FROM journalist WHERE years_working<3	news_report
-- SELECT date , name , venue FROM event ORDER BY event_attendance DESC	news_report
-- SELECT AVG( event_attendance ) , MAX( event_attendance ) FROM event	news_report
-- SELECT venue , name FROM event ORDER BY event_attendance DESC LIMIT 2	news_report
-- SELECT resname FROM restaurant	restaurant_1
-- SELECT address FROM restaurant WHERE resname = 'Subway'	restaurant_1
-- SELECT rating FROM restaurant WHERE resname = 'Subway'	restaurant_1
-- SELECT resname , rating FROM restaurant ORDER BY rating DESC LIMIT 1	restaurant_1
-- SELECT age FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
-- SELECT sex FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
-- SELECT fname , lname FROM student WHERE major = 600	restaurant_1
-- SELECT city_code FROM student WHERE fname = 'Linda' AND lname = 'Smith'	restaurant_1
-- SELECT COUNT( * ) FROM student WHERE advisor = 1121	restaurant_1
-- SELECT advisor , COUNT( * ) FROM student GROUP BY advisor ORDER BY COUNT( advisor ) DESC LIMIT 1	restaurant_1
-- SELECT major , COUNT( * ) FROM student GROUP BY major ORDER BY COUNT( major ) ASC LIMIT 1	restaurant_1
-- SELECT major , COUNT( * ) FROM student GROUP BY major HAVING COUNT( major ) BETWEEN 2 and 30	restaurant_1
-- SELECT fname , lname FROM student WHERE age > 18 AND major = 600	restaurant_1
-- SELECT fname , lname FROM student WHERE age > 18 AND major != 600 AND sex = 'f'	restaurant_1
-- SELECT COUNT( * ) FROM customers	customer_deliveries
-- SELECT COUNT( DISTINCT payment_method ) FROM customers	customer_deliveries
-- SELECT truck_details FROM trucks ORDER BY truck_details ASC	customer_deliveries
-- SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1	customer_deliveries
-- SELECT customer_email , customer_name FROM customers WHERE payment_method = 'Visa'	customer_deliveries
-- SELECT customer_name , customer_phone , customer_email FROM customers ORDER BY date_became_customer ASC	customer_deliveries
-- SELECT customer_name FROM customers ORDER BY date_became_customer ASC LIMIT 5	customer_deliveries
-- SELECT payment_method FROM customers GROUP BY payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customer_deliveries
-- SELECT COUNT( * ) FROM authors	icfp_1
-- SELECT COUNT( * ) FROM authors	icfp_1
-- SELECT COUNT( * ) FROM papers	icfp_1
-- SELECT COUNT( * ) FROM papers	icfp_1
-- SELECT title FROM papers WHERE title LIKE '%ML%'	icfp_1
-- SELECT title FROM papers WHERE title LIKE '%ML%'	icfp_1
-- SELECT title FROM papers WHERE title LIKE '%Database%'	icfp_1
-- SELECT title FROM papers WHERE title LIKE '%Database%'	icfp_1
-- SELECT fname FROM authors WHERE lname = 'Ueno'	icfp_1
-- SELECT fname FROM authors WHERE lname = 'Ueno'	icfp_1
-- SELECT lname FROM authors WHERE fname = 'Amal'	icfp_1
-- SELECT lname FROM authors WHERE fname = 'Amal'	icfp_1
-- SELECT fname FROM authors ORDER BY fname ASC	icfp_1
-- SELECT fname FROM authors ORDER BY fname ASC	icfp_1
-- SELECT lname FROM authors ORDER BY lname ASC	icfp_1
-- SELECT lname FROM authors ORDER BY lname ASC	icfp_1
-- SELECT fname , lname FROM authors ORDER BY lname ASC	icfp_1
-- SELECT fname , lname FROM authors ORDER BY lname ASC	icfp_1
-- SELECT COUNT( DISTINCT last_name ) FROM actor	sakila_1
-- SELECT COUNT( DISTINCT last_name ) FROM actor	sakila_1
-- SELECT first_name FROM actor GROUP BY first_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT first_name FROM actor GROUP BY first_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT first_name , last_name FROM actor GROUP BY first_name , last_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT first_name , last_name FROM actor GROUP BY first_name , last_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT district FROM address GROUP BY district HAVING COUNT( * ) >= 2	sakila_1
-- SELECT district FROM address GROUP BY district HAVING COUNT( * ) >= 2	sakila_1
-- SELECT phone , postal_code FROM address WHERE address = '1031 Daugavpils Parkway'	sakila_1
-- SELECT phone , postal_code FROM address WHERE address = '1031 Daugavpils Parkway'	sakila_1
-- SELECT COUNT( * ) FROM address WHERE district = 'California'	sakila_1
-- SELECT COUNT( * ) FROM address WHERE district = 'California'	sakila_1
-- SELECT COUNT( * ) FROM customer WHERE active = '1'	sakila_1
-- SELECT COUNT( * ) FROM customer WHERE active = '1'	sakila_1
-- SELECT title , rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
-- SELECT title , rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
-- SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT SUM( amount ) FROM payment	sakila_1
-- SELECT SUM( amount ) FROM payment	sakila_1
-- SELECT COUNT( DISTINCT language_id ) FROM film	sakila_1
-- SELECT COUNT( DISTINCT language_id ) FROM film	sakila_1
-- SELECT title FROM film WHERE rating = 'R'	sakila_1
-- SELECT title FROM film WHERE rating = 'R'	sakila_1
-- SELECT COUNT( * ) FROM store	sakila_1
-- SELECT COUNT( * ) FROM store	sakila_1
-- SELECT COUNT( DISTINCT rating ) FROM film	sakila_1
-- SELECT COUNT( DISTINCT rating ) FROM film	sakila_1
-- SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT COUNT( * ) FROM inventory WHERE store_id = 1	sakila_1
-- SELECT COUNT( * ) FROM inventory WHERE store_id = 1	sakila_1
-- SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
-- SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
-- SELECT title FROM film WHERE length > 100 OR rating = 'PG,' EXCEPT SELECT title FROM film WHERE replacement_cost > 200	sakila_1
-- SELECT title FROM film WHERE length > 100 OR rating = 'PG' EXCEPT SELECT title FROM film WHERE replacement_cost > 200	sakila_1
-- SELECT store_id FROM customer GROUP BY store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT store_id FROM customer GROUP BY store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
-- SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
-- SELECT COUNT( * ) FROM bank	loan_1
-- SELECT COUNT( * ) FROM bank	loan_1
-- SELECT SUM( no_of_customers ) FROM bank	loan_1
-- SELECT SUM( no_of_customers ) FROM bank	loan_1
-- SELECT SUM( no_of_customers ) FROM bank WHERE city = 'New York City'	loan_1
-- SELECT SUM( no_of_customers ) FROM bank WHERE city = 'New York City'	loan_1
-- SELECT AVG( no_of_customers ) FROM bank WHERE state = 'Utah'	loan_1
-- SELECT AVG( no_of_customers ) FROM bank WHERE state = 'Utah'	loan_1
-- SELECT AVG( no_of_customers ) FROM bank	loan_1
-- SELECT AVG( no_of_customers ) FROM bank	loan_1
-- SELECT city , state FROM bank WHERE bname = 'morningside'	loan_1
-- SELECT city , state FROM bank WHERE bname = 'morningside'	loan_1
-- SELECT bname FROM bank WHERE state = 'New York'	loan_1
-- SELECT bname FROM bank WHERE state = 'New York'	loan_1
-- SELECT cust_name FROM customer ORDER BY acc_bal ASC	loan_1
-- SELECT cust_name FROM customer ORDER BY acc_bal ASC	loan_1
-- SELECT state , acc_type , credit_score FROM customer WHERE no_of_loans = 0	loan_1
-- SELECT state , acc_type , credit_score FROM customer WHERE no_of_loans = 0	loan_1
-- SELECT COUNT( DISTINCT city ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT city ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT state ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT state ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT acc_type ) FROM customer	loan_1
-- SELECT COUNT( DISTINCT acc_type ) FROM customer	loan_1
-- SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
-- SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
-- SELECT SUM( acc_bal ) FROM customer WHERE state = 'Utah' OR state = 'Texas'	loan_1
-- SELECT SUM( acc_bal ) FROM customer WHERE state = 'Utah' OR state = 'Texas'	loan_1
-- SELECT cust_name FROM customer WHERE acc_type = 'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'	loan_1
-- SELECT cust_name FROM customer WHERE acc_type = 'savings' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'	loan_1
-- SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type = 'saving'	loan_1
-- SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type = 'saving'	loan_1
-- SELECT cust_name FROM customer WHERE credit_score<(SELECT AVG( credit_score ) FROM customer)	loan_1
-- SELECT cust_name FROM customer WHERE credit_score<(SELECT AVG( credit_score ) FROM customer)	loan_1
-- SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
-- SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
-- SELECT cust_name FROM customer ORDER BY credit_score ASC LIMIT 1	loan_1
-- SELECT cust_name FROM customer ORDER BY credit_score ASC LIMIT 1	loan_1
-- SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
-- SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
-- SELECT state FROM bank GROUP BY state ORDER BY SUM( no_of_customers ) DESC LIMIT 1	loan_1
-- SELECT state FROM bank GROUP BY state ORDER BY SUM( no_of_customers ) DESC LIMIT 1	loan_1
-- SELECT AVG( acc_bal ) , acc_type FROM customer WHERE credit_score<50 GROUP BY acc_type	loan_1
-- SELECT AVG( acc_bal ) , acc_type FROM customer WHERE credit_score<50 GROUP BY acc_type	loan_1
-- SELECT SUM( acc_bal ) , state FROM customer WHERE credit_score > 100 GROUP BY state	loan_1
-- SELECT SUM( acc_bal ) , state FROM customer WHERE credit_score > 100 GROUP BY state	loan_1
-- SELECT COUNT( * ) FROM addresses WHERE zip_postcode = '197'	behavior_monitoring
-- SELECT DISTINCT detention_type_code FROM detention	behavior_monitoring
-- SELECT detention_summary FROM detention	behavior_monitoring
-- SELECT cell_mobile_number , email_address FROM students	behavior_monitoring
-- SELECT email_address FROM students WHERE first_name = 'Emma' AND last_name = 'Rohan'	behavior_monitoring
-- SELECT gender FROM teachers WHERE last_name = 'Medhurst'	behavior_monitoring
-- SELECT first_name FROM teachers WHERE email_address LIKE '%man%'	behavior_monitoring
-- SELECT city FROM addresses ORDER BY city ASC	behavior_monitoring
-- SELECT first_name , last_name FROM teachers ORDER BY last_name ASC	behavior_monitoring
-- SELECT asset_id , asset_details , asset_make , asset_model FROM assets	assets_maintenance
-- SELECT asset_acquired_date FROM assets ORDER BY asset_acquired_date ASC LIMIT 1	assets_maintenance
-- SELECT DISTINCT asset_model FROM assets	assets_maintenance
-- SELECT asset_make , asset_model , asset_details FROM assets ORDER BY asset_disposed_date ASC	assets_maintenance
-- SELECT part_id , part_name FROM parts ORDER BY chargeable_amount ASC LIMIT 1	assets_maintenance
-- SELECT gender FROM staff GROUP BY gender ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
-- SELECT local_authority , services FROM station	station_weather
-- SELECT train_number , name FROM train ORDER BY time ASC	station_weather
-- SELECT time , train_number FROM train WHERE destination = 'Chennai' ORDER BY time ASC	station_weather
-- SELECT COUNT( * ) FROM train WHERE name LIKE '%Express%'	station_weather
-- SELECT train_number , time FROM train WHERE origin = 'Chennai' AND destination = 'Guruvayur'	station_weather
-- SELECT origin , COUNT( * ) FROM train GROUP BY origin	station_weather
-- SELECT COUNT( DISTINCT services ) FROM station	station_weather
-- SELECT origin FROM train GROUP BY origin HAVING COUNT( * ) > 1	station_weather
-- SELECT COUNT( DISTINCT prof_num ) FROM class WHERE crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( DISTINCT prof_num ) FROM class WHERE crs_code = 'ACCT-211'	college_1
-- SELECT school_code FROM department WHERE dept_name = 'accounting'	college_1
-- SELECT school_code FROM department WHERE dept_name = 'accounting'	college_1
-- SELECT crs_credit , crs_description FROM course WHERE crs_code = 'CIS-220'	college_1
-- SELECT crs_credit , crs_description FROM course WHERE crs_code = 'CIS-220'	college_1
-- SELECT dept_address FROM department WHERE dept_name = 'history'	college_1
-- SELECT dept_address FROM department WHERE dept_name = 'history'	college_1
-- SELECT COUNT( DISTINCT dept_address ) FROM department WHERE school_code = 'BUS'	college_1
-- SELECT COUNT( DISTINCT dept_address ) FROM department WHERE school_code = 'BUS'	college_1
-- SELECT COUNT( DISTINCT dept_address ) , school_code FROM department GROUP BY school_code	college_1
-- SELECT COUNT( DISTINCT dept_address ) , school_code FROM department GROUP BY school_code	college_1
-- SELECT crs_credit , crs_description FROM course WHERE crs_code = 'QM-261'	college_1
-- SELECT crs_credit , crs_description FROM course WHERE crs_code = 'QM-261'	college_1
-- SELECT COUNT( DISTINCT dept_name ) , school_code FROM department GROUP BY school_code	college_1
-- SELECT COUNT( DISTINCT dept_name ) , school_code FROM department GROUP BY school_code	college_1
-- SELECT COUNT( DISTINCT dept_name ) , school_code FROM department GROUP BY school_code HAVING COUNT( DISTINCT dept_name )<5	college_1
-- SELECT COUNT( DISTINCT dept_name ) , school_code FROM department GROUP BY school_code HAVING COUNT( DISTINCT dept_name )<5	college_1
-- SELECT COUNT( * ) , crs_code FROM class GROUP BY crs_code	college_1
-- SELECT COUNT( * ) , crs_code FROM class GROUP BY crs_code	college_1
-- SELECT SUM( crs_credit ) , dept_code FROM course GROUP BY dept_code	college_1
-- SELECT SUM( crs_credit ) , dept_code FROM course GROUP BY dept_code	college_1
-- SELECT COUNT( * ) , class_room FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1
-- SELECT COUNT( * ) , class_room FROM class GROUP BY class_room HAVING COUNT( * ) >= 2	college_1
-- SELECT emp_jobcode , COUNT( * ) FROM employee GROUP BY emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
-- SELECT emp_jobcode , COUNT( * ) FROM employee GROUP BY emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
-- SELECT COUNT( * ) , dept_code FROM professor WHERE prof_high_degree = 'D.' GROUP BY dept_code	college_1
-- SELECT COUNT( * ) , dept_code FROM professor WHERE prof_high_degree = 'D.' GROUP BY dept_code	college_1
-- SELECT COUNT( * ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT COUNT( * ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT SUM( stu_hrs ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT SUM( stu_hrs ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT MAX( stu_gpa ) , AVG( stu_gpa ) , MIN( stu_gpa ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT MAX( stu_gpa ) , AVG( stu_gpa ) , MIN( stu_gpa ) , dept_code FROM student GROUP BY dept_code	college_1
-- SELECT COUNT( DISTINCT school_code ) FROM department	college_1
-- SELECT COUNT( DISTINCT school_code ) FROM department	college_1
-- SELECT COUNT( DISTINCT class_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT class_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT crs_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT crs_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT dept_name ) FROM department	college_1
-- SELECT COUNT( DISTINCT dept_name ) FROM department	college_1
-- SELECT COUNT( DISTINCT class_section ) FROM class WHERE crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( DISTINCT class_section ) FROM class WHERE crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( * ) FROM employee	college_1
-- SELECT COUNT( * ) FROM employee	college_1
-- SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D.'	college_1
-- SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D.'	college_1
-- SELECT dept_name FROM department ORDER BY dept_name ASC	college_1
-- SELECT dept_name FROM department ORDER BY dept_name ASC	college_1
-- SELECT class_code FROM class WHERE class_room = 'KLR209'	college_1
-- SELECT class_code FROM class WHERE class_room = 'KLR209'	college_1
-- SELECT emp_fname FROM employee WHERE emp_jobcode = 'PROF' ORDER BY emp_dob ASC	college_1
-- SELECT emp_fname FROM employee WHERE emp_jobcode = (SELECT emp_jobcode FROM employee ORDER BY emp_jobcode ASC LIMIT emp_dob) ORDER BY emp_dob ASC	college_1
-- SELECT emp_fname , emp_lname FROM employee ORDER BY emp_dob ASC LIMIT 1	college_1
-- SELECT emp_fname , emp_lname FROM employee ORDER BY emp_dob ASC LIMIT 1	college_1
-- SELECT stu_fname , stu_lname , stu_gpa FROM student WHERE stu_gpa > 3 ORDER BY stu_dob DESC LIMIT 1	college_1
-- SELECT stu_fname , stu_lname , stu_gpa FROM student WHERE stu_gpa > 3 ORDER BY stu_dob DESC LIMIT 1	college_1
-- SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'D.' OR prof_high_degree = 'MA'	college_1
-- SELECT COUNT( * ) FROM professor WHERE prof_high_degree = 'yes' OR prof_high_degree = 'D.'	college_1
-- SELECT stu_gpa , stu_phone , stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
-- SELECT stu_gpa , stu_phone , stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
-- SELECT stu_fname , stu_gpa FROM student WHERE stu_gpa<(SELECT AVG( stu_gpa ) FROM student)	college_1
-- SELECT stu_fname , stu_gpa FROM student WHERE stu_gpa<(SELECT AVG( stu_gpa ) FROM student)	college_1
-- SELECT COUNT( * ) FROM club	sports_competition
-- SELECT COUNT( * ) FROM club	sports_competition
-- SELECT DISTINCT region FROM club ORDER BY region ASC	sports_competition
-- SELECT DISTINCT region FROM club ORDER BY region ASC	sports_competition
-- SELECT competition_type , country FROM competition	sports_competition
-- SELECT competition_type , country FROM competition	sports_competition
-- SELECT DISTINCT year FROM competition WHERE competition_type != 'Tournament'	sports_competition
-- SELECT DISTINCT year FROM competition WHERE competition_type != 'tournament'	sports_competition
-- SELECT name FROM club ORDER BY start_year ASC	sports_competition
-- SELECT name FROM club ORDER BY start_year ASC	sports_competition
-- SELECT name FROM club ORDER BY name DESC	sports_competition
-- SELECT name FROM club ORDER BY name DESC	sports_competition
-- SELECT position , AVG( points ) FROM player GROUP BY position	sports_competition
-- SELECT position , AVG( points ) FROM player GROUP BY position	sports_competition
-- SELECT position FROM player GROUP BY name HAVING AVG( points ) >= 20	sports_competition
-- SELECT position FROM player GROUP BY name HAVING AVG( points ) >= 20	sports_competition
-- SELECT competition_type , COUNT( * ) FROM competition GROUP BY competition_type	sports_competition
-- SELECT competition_type , COUNT( * ) FROM competition GROUP BY competition_type	sports_competition
-- SELECT competition_type FROM competition GROUP BY competition_type ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition_type FROM competition GROUP BY competition_type ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition_type FROM competition GROUP BY competition_type HAVING COUNT( * ) <= 5	sports_competition
-- SELECT competition_type FROM competition GROUP BY competition_type HAVING COUNT( * ) <= 5	sports_competition
-- SELECT position FROM player WHERE points > 20 INTERSECT SELECT position FROM player WHERE points<10	sports_competition
-- SELECT position FROM player WHERE points > 20 INTERSECT SELECT position FROM player WHERE points<10	sports_competition
-- SELECT SUM( points ) FROM player	sports_competition
-- SELECT SUM( points ) FROM player	sports_competition
-- SELECT COUNT( DISTINCT position ) FROM player	sports_competition
-- SELECT COUNT( DISTINCT position ) FROM player	sports_competition
-- SELECT name FROM player WHERE points > (SELECT AVG( points ) FROM player)	sports_competition
-- SELECT name FROM player WHERE points > (SELECT AVG( points ) FROM player)	sports_competition
-- SELECT COUNT( * ) , position FROM player WHERE points<30 GROUP BY position	sports_competition
-- SELECT COUNT( * ) , position FROM player WHERE points<30 GROUP BY position	sports_competition
-- SELECT country FROM competition WHERE competition_type = 'Tournament' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT country FROM competition WHERE competition_type = 'tournament' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT country FROM competition WHERE competition_type = 'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type = 'Tournament'	sports_competition
-- SELECT country FROM competition WHERE competition_type = 'friendly' INTERSECT SELECT country FROM competition WHERE competition_type = 'tournament'	sports_competition
-- SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type = 'Friendly'	sports_competition
-- SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type = 'friendly'	sports_competition
-- SELECT SUM( num_of_component ) FROM furniture	manufacturer
-- SELECT name , furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
-- SELECT SUM( market_rate ) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
-- SELECT num_of_component , name FROM furniture WHERE num_of_component > 10	manufacturer
-- SELECT name , num_of_component FROM furniture ORDER BY market_rate ASC LIMIT 1	manufacturer
-- SELECT open_year , name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
-- SELECT AVG( num_of_factories ) FROM manufacturer WHERE num_of_shops > 20	manufacturer
-- SELECT name , manufacturer_id FROM manufacturer ORDER BY open_year ASC	manufacturer
-- SELECT name , open_year FROM manufacturer WHERE num_of_shops > 10 OR num_of_factories<10	manufacturer
-- SELECT MAX( num_of_shops ) , AVG( num_of_factories ) FROM manufacturer WHERE open_year<1990	manufacturer
-- SELECT first_name , last_name , salary FROM employees WHERE salary<6000	hr_1
-- SELECT first_name , last_name , salary FROM employees WHERE salary<6000	hr_1
-- SELECT first_name , department_id FROM employees WHERE last_name = 'McEwen'	hr_1
-- SELECT first_name , department_id FROM employees WHERE last_name = 'McEwen'	hr_1
-- SELECT * FROM employees WHERE department_id = 'null'	hr_1
-- SELECT * FROM employees WHERE department_id = 'null'	hr_1
-- SELECT * FROM departments WHERE department_name = 'Marketing'	hr_1
-- SELECT * FROM departments WHERE department_name = 'Marketing'	hr_1
-- SELECT phone_number FROM employees WHERE salary BETWEEN 8000 and 12000	hr_1
-- SELECT phone_number FROM employees WHERE salary BETWEEN 8000 and 12000	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN 8000 and 12000 AND commission_pct != 'null' OR department_id != 40	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN 8000 and 12000 AND commission_pct != 'null' OR department_id != 40	hr_1
-- SELECT first_name , last_name , salary FROM employees WHERE commission_pct = 'null'	hr_1
-- SELECT first_name , last_name , salary FROM employees WHERE commission_pct = 'null'	hr_1
-- SELECT first_name , last_name , salary FROM employees WHERE first_name LIKE '%m%'	hr_1
-- SELECT first_name , last_name , salary FROM employees WHERE first_name LIKE '%m%'	hr_1
-- SELECT job_id , hire_date FROM employees WHERE hire_date >= 'November 5th, 2007' AND hire_date <= '2009'	hr_1
-- SELECT job_id , hire_date FROM employees WHERE hire_date<(SELECT MAX( hire_date ) FROM employees)	hr_1
-- SELECT first_name , last_name FROM employees WHERE department_id = 70 OR department_id = 90	hr_1
-- SELECT first_name , last_name FROM employees WHERE department_id = 70 OR department_id = 90	hr_1
-- SELECT salary , manager_id FROM employees WHERE manager_id != 'null'	hr_1
-- SELECT salary , manager_id FROM employees WHERE manager_id != 'null'	hr_1
-- SELECT * FROM employees WHERE hire_date<'2002-06-21'	hr_1
-- SELECT * FROM employees WHERE hire_date<'2002'	hr_1
-- SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
-- SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
-- SELECT * FROM employees WHERE hire_date > (SELECT AVG( hire_date ) FROM employees)	hr_1
-- SELECT * FROM employees WHERE hire_date > (SELECT AVG( * ) FROM employees INTERSECT SELECT AVG( hire_date ) FROM employees)	hr_1
-- SELECT job_title FROM jobs WHERE min_salary > 9000	hr_1
-- SELECT job_title FROM jobs WHERE min_salary > 9000	hr_1
-- SELECT job_title , max_salary FROM jobs WHERE max_salary BETWEEN 12000 and 18000	hr_1
-- SELECT job_title , min_salary FROM jobs WHERE max_salary BETWEEN 12000 and 18000	hr_1
-- SELECT email FROM employees WHERE commission_pct = 'null' AND salary BETWEEN 7000 and 12000 AND department_id = 50	hr_1
-- SELECT email FROM employees WHERE commission_pct = 'null' AND salary BETWEEN 7000 and 12000 AND department_id = 50	hr_1
-- SELECT department_id FROM employees WHERE commission_pct != 'null' GROUP BY department_id	hr_1
-- SELECT department_id FROM employees GROUP BY department_id HAVING COUNT( commission_pct ) > 10	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT( employee_id ) >= 4	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT( employee_id ) >= 4	hr_1
-- SELECT department_id , AVG( salary ) FROM employees WHERE commission_pct != 'null' GROUP BY department_id	hr_1
-- SELECT department_id , AVG( salary ) FROM employees WHERE commission_pct != 'null' GROUP BY department_id	hr_1
-- SELECT country_id , COUNT( * ) FROM locations GROUP BY country_id	hr_1
-- SELECT country_id , COUNT( * ) FROM locations GROUP BY country_id	hr_1
-- SELECT first_name , last_name FROM employees WHERE salary > (SELECT salary FROM employees WHERE employee_id = 163)	hr_1
-- SELECT first_name , last_name FROM employees WHERE salary > (SELECT salary FROM employees WHERE employee_id = 163)	hr_1
-- SELECT MIN( salary ) , department_id FROM employees GROUP BY department_id	hr_1
-- SELECT MIN( salary ) , department_id FROM employees GROUP BY department_id	hr_1
-- SELECT first_name , last_name , department_id FROM employees WHERE salary IN (SELECT MIN( salary ) FROM employees GROUP BY department_id)	hr_1
-- SELECT first_name , last_name , department_id FROM employees WHERE salary IN (SELECT MIN( salary ) FROM employees GROUP BY department_id)	hr_1
-- SELECT employee_id FROM employees WHERE salary > (SELECT AVG( salary ) FROM employees)	hr_1
-- SELECT employee_id FROM employees WHERE salary > (SELECT AVG( salary ) FROM employees)	hr_1
-- SELECT employee_id , salary FROM employees WHERE manager_id = (SELECT employee_id FROM employees WHERE first_name = 'Payam')	hr_1
-- SELECT employee_id , salary FROM employees WHERE manager_id = (SELECT employee_id FROM employees WHERE first_name = 'Payam')	hr_1
-- SELECT * FROM departments WHERE department_name = 'Marketing'	hr_1
-- SELECT * FROM departments WHERE department_name = 'Marketing'	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT( employee_id ) >= 4	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT( employee_id ) >= 4	hr_1
-- SELECT job_id FROM employees GROUP BY job_id HAVING AVG( salary ) > 8000	hr_1
-- SELECT job_id FROM employees GROUP BY job_id HAVING AVG( salary ) > 8000	hr_1
-- SELECT * FROM employees WHERE salary >= (SELECT MIN( salary ) FROM employees) AND salary <= 2500	hr_1
-- SELECT * FROM employees WHERE salary >= (SELECT MIN( salary ) FROM employees) AND salary <= 2500	hr_1
-- SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = 'Clara')	hr_1
-- SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = 'Clara')	hr_1
-- SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = 'Clara') AND first_name != 'Clara'	hr_1
-- SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = 'Clara') AND first_name != 'Clara'	hr_1
-- SELECT employee_id , first_name , last_name FROM employees WHERE department_id IN (SELECT department_id FROM employees WHERE first_name LIKE '%t%')	hr_1
-- SELECT employee_id , first_name , last_name FROM employees WHERE department_id IN (SELECT department_id FROM employees WHERE first_name LIKE '%t%')	hr_1
-- SELECT department_id FROM employees	hr_1
-- SELECT department_id FROM employees	hr_1
-- SELECT employee_id , job_id FROM employees WHERE salary<(SELECT MIN( salary ) FROM employees WHERE job_id = 'MK_MAN')	hr_1
-- SELECT employee_id , job_id FROM employees WHERE salary<(SELECT MIN( salary ) FROM employees WHERE job_id = 'MK_MAN')	hr_1
-- SELECT employee_id , first_name , last_name , job_id FROM employees WHERE salary > (SELECT MAX( salary ) FROM employees WHERE job_id = 'PU_MAN')	hr_1
-- SELECT employee_id , first_name , last_name , job_id FROM employees WHERE salary > (SELECT MAX( salary ) FROM employees WHERE job_id = 'PU_MAN')	hr_1
-- SELECT department_id , SUM( salary ) FROM employees GROUP BY department_id HAVING COUNT( * ) >= 2	hr_1
-- SELECT department_id , SUM( salary ) FROM employees GROUP BY department_id HAVING COUNT( * ) >= 2	hr_1
-- SELECT first_name , last_name , salary , department_id , MAX( salary ) FROM employees GROUP BY department_id	hr_1
-- SELECT first_name , last_name , salary , department_id , MAX( salary ) FROM employees GROUP BY department_id	hr_1
-- SELECT song_name , releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
-- SELECT song_name , releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
-- SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
-- SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
-- SELECT song_name FROM song WHERE languages = 'English'	music_1
-- SELECT song_name FROM song WHERE languages = 'English'	music_1
-- SELECT f_id FROM files WHERE formats = 'mp3'	music_1
-- SELECT f_id FROM files WHERE formats = 'mp3'	music_1
-- SELECT COUNT( * ) FROM files WHERE duration = 'How many songs have 4'	music_1
-- SELECT COUNT( * ) FROM artist WHERE country = 'Bangladesh'	music_1
-- SELECT COUNT( * ) FROM artist WHERE country = 't'	music_1
-- SELECT formats FROM files GROUP BY formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT formats FROM files GROUP BY formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT COUNT( * ) , gender FROM artist GROUP BY gender	music_1
-- SELECT COUNT( * ) , gender FROM artist GROUP BY gender	music_1
-- SELECT AVG( rating ) , languages FROM song GROUP BY languages	music_1
-- SELECT AVG( rating ) , languages FROM song GROUP BY languages	music_1
-- SELECT COUNT( * ) , formats FROM files GROUP BY formats	music_1
-- SELECT COUNT( * ) , formats FROM files GROUP BY formats	music_1
-- SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT MIN( resolution ) FROM song WHERE languages = 'English')	music_1
-- SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT MIN( resolution ) FROM song WHERE languages = 'English')	music_1
-- SELECT song_name FROM song WHERE rating<(SELECT MAX( rating ) FROM song WHERE genre_is = 'blues')	music_1
-- SELECT song_name FROM song WHERE rating<(SELECT MAX( rating ) FROM song WHERE genre_is = 'blues')	music_1
-- SELECT g_name , rating FROM genre ORDER BY g_name ASC	music_1
-- SELECT g_name , rating FROM genre ORDER BY g_name ASC	music_1
-- SELECT song_name FROM song ORDER BY resolution ASC	music_1
-- SELECT song_name FROM song ORDER BY resolution ASC	music_1
-- SELECT languages FROM song GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT languages FROM song GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT artist_name FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT artist_name FROM song WHERE resolution > 500 GROUP BY languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT artist_name FROM artist WHERE country = 'UK' AND gender = 'Male'	music_1
-- SELECT artist_name FROM artist WHERE country = 't' AND gender = 'male'	music_1
-- SELECT song_name FROM song WHERE genre_is = 'modern' OR languages = 'English'	music_1
-- SELECT song_name FROM song WHERE genre_is = 'modern' OR languages = 'English'	music_1
-- SELECT AVG( rating ) , AVG( resolution ) FROM song WHERE languages = 'Bangla'	music_1
-- SELECT AVG( rating ) , AVG( resolution ) FROM song WHERE languages = 'bangla'	music_1
-- SELECT song_name FROM song WHERE rating<(SELECT MIN( rating ) FROM song WHERE languages = 'English')	music_1
-- SELECT song_name FROM song WHERE rating<(SELECT MIN( rating ) FROM song WHERE languages = 'English')	music_1
-- SELECT f_id FROM song WHERE resolution > (SELECT MAX( resolution ) FROM song WHERE rating<8)	music_1
-- SELECT f_id FROM song WHERE resolution > (SELECT MAX( resolution ) FROM song WHERE rating<8)	music_1
-- SELECT f_id FROM song WHERE resolution > (SELECT AVG( resolution ) FROM song WHERE genre_is = 'modern')	music_1
-- SELECT f_id FROM song WHERE resolution > (SELECT AVG( resolution ) FROM song WHERE genre_is = 'modern')	music_1
-- SELECT f_id , genre_is , artist_name FROM song WHERE languages = 'English' ORDER BY rating ASC	music_1
-- SELECT f_id , genre_is , artist_name FROM song WHERE languages = 'English' ORDER BY rating ASC	music_1
-- SELECT DISTINCT artist_name FROM song WHERE languages = 'English' EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 8	music_1
-- SELECT DISTINCT artist_name FROM song WHERE languages = 'English' EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 8	music_1
-- SELECT COUNT( * ) FROM park WHERE state = 'NY'	baseball_1
-- SELECT COUNT( * ) FROM park WHERE state = 'NY'	baseball_1
-- SELECT bats FROM player GROUP BY bats ORDER BY COUNT( * ) ASC LIMIT 3	baseball_1
-- SELECT bats FROM player GROUP BY bats ORDER BY COUNT( * ) ASC LIMIT 3	baseball_1
-- SELECT name_first , name_first FROM player WHERE death_city = 'empty'	baseball_1
-- SELECT COUNT( * ) FROM player WHERE birth_country = 'USA' AND bats = 'R'	baseball_1
-- SELECT COUNT( * ) FROM player WHERE birth_country = 'USA' AND bats = 'R'	baseball_1
-- SELECT name_first , name_first FROM player, manager_award WHERE year = 1961 INTERSECT SELECT name_first , name_first FROM player, player_award WHERE year = 1961	baseball_1
-- SELECT name_first , name_first FROM player WHERE weight > 220 OR height<75	baseball_1
-- SELECT name_first , name_first FROM player WHERE weight > 220 OR height<75	baseball_1
-- SELECT COUNT( * ) FROM postseason WHERE losses = 1885 AND ties = 1	baseball_1
-- SELECT COUNT( * ) FROM postseason WHERE losses = 1885 AND ties = 1	baseball_1
-- SELECT COUNT( * ) FROM team JOIN team ON park = park WHERE name_last = 'Boston Red Stockings'	baseball_1
-- SELECT points_max FROM salary WHERE salary = 2001 ORDER BY notes DESC LIMIT 3	baseball_1
-- SELECT salary FROM salary WHERE year = 2001 ORDER BY salary DESC LIMIT 3	baseball_1
-- SELECT salary FROM salary WHERE year = 2010 UNION SELECT salary FROM salary WHERE year = 2001	baseball_1
-- SELECT salary FROM salary WHERE year = 2010 UNION SELECT salary FROM salary WHERE year = 2001	baseball_1
-- SELECT COUNT( * ) FROM park WHERE city = 'Atlanta'	baseball_1
-- SELECT COUNT( * ) FROM park WHERE city = 'Atlanta'	baseball_1
-- SELECT city FROM park GROUP BY park_alias HAVING COUNT( * ) > 2	baseball_1
-- SELECT city FROM park GROUP BY city HAVING COUNT( * ) > 2	baseball_1
-- SELECT city FROM park HAVING COUNT( * ) BETWEEN 2 and 4	baseball_1
-- SELECT city FROM park HAVING COUNT( * ) BETWEEN 2 and 4	baseball_1
-- SELECT id , color , name FROM photos	mountain_photos
-- SELECT MAX( height ) , AVG( height ) FROM mountain	mountain_photos
-- SELECT AVG( prominence ) FROM mountain WHERE country = 'Morocco'	mountain_photos
-- SELECT name , height , prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
-- SELECT name FROM channel WHERE owner != 'CCTV'	program_share
-- SELECT name FROM channel WHERE owner != 'CCTV'	program_share
-- SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
-- SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
-- SELECT owner FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
-- SELECT owner FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
-- SELECT COUNT( * ) FROM program	program_share
-- SELECT COUNT( * ) FROM program	program_share
-- SELECT name FROM program ORDER BY launch ASC	program_share
-- SELECT name FROM program ORDER BY launch ASC	program_share
-- SELECT name , origin , owner FROM program	program_share
-- SELECT name , origin , owner FROM program	program_share
-- SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
-- SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
-- SELECT SUM( share_in_percent ) FROM channel WHERE owner = 'CCTV'	program_share
-- SELECT SUM( share_in_percent ) FROM channel WHERE owner = 'CCTV'	program_share
-- SELECT COUNT( * ) , time_of_day FROM broadcast GROUP BY time_of_day	program_share
-- SELECT COUNT( * ) , time_of_day FROM broadcast GROUP BY time_of_day	program_share
-- SELECT COUNT( DISTINCT program_id ) FROM broadcast WHERE time_of_day = 'night'	program_share
-- SELECT COUNT( DISTINCT program_id ) FROM broadcast WHERE time_of_day = 'Night'	program_share
-- SELECT origin FROM program ORDER BY origin ASC	program_share
-- SELECT origin FROM program ORDER BY origin ASC	program_share
-- SELECT COUNT( DISTINCT owner ) FROM channel	program_share
-- SELECT COUNT( DISTINCT owner ) FROM channel	program_share
-- SELECT name FROM program WHERE origin != 'Beijing'	program_share
-- SELECT name FROM program WHERE origin != 'Beijing'	program_share
-- SELECT name FROM channel WHERE owner = 'CCTV' OR owner = 'HBS'	program_share
-- SELECT name FROM channel WHERE owner = 'CCTV' OR owner = 'HBS'	program_share
-- SELECT SUM( rating_in_percent ) , owner FROM channel GROUP BY owner	program_share
-- SELECT SUM( rating_in_percent ) , owner FROM channel GROUP BY owner	program_share
-- SELECT COUNT( * ) FROM courses	e_learning
-- SELECT COUNT( * ) FROM courses	e_learning
-- SELECT course_description FROM courses WHERE course_name = 'database'	e_learning
-- SELECT course_description FROM courses WHERE course_name = 'database'	e_learning
-- SELECT login_name FROM students WHERE family_name = 'Ward'	e_learning
-- SELECT login_name FROM students WHERE family_name = 'Ward'	e_learning
-- SELECT date_of_latest_logon FROM students WHERE family_name = 'Jaskolski' OR family_name = 'Langosh'	e_learning
-- SELECT date_of_latest_logon FROM students WHERE family_name = 'Jaskolski' OR family_name = 'Langosh'	e_learning
-- SELECT COUNT( * ) FROM students WHERE personal_name LIKE '%son%'	e_learning
-- SELECT COUNT( * ) FROM students WHERE personal_name LIKE '%son%'	e_learning
-- SELECT subject_name FROM subjects	e_learning
-- SELECT subject_name FROM subjects	e_learning
-- SELECT personal_name , family_name FROM students ORDER BY family_name ASC	e_learning
-- SELECT personal_name , family_name FROM students ORDER BY family_name ASC	e_learning
-- SELECT payment_method_code , date_payment_made , amount_payment FROM payments ORDER BY date_payment_made ASC	insurance_policies
-- SELECT payment_method_code , date_payment_made , amount_payment FROM payments ORDER BY date_payment_made ASC	insurance_policies
-- SELECT amount_settled , amount_claimed FROM claims ORDER BY amount_claimed DESC LIMIT 1	insurance_policies
-- SELECT amount_settled , amount_claimed FROM claims ORDER BY amount_claimed DESC LIMIT 1	insurance_policies
-- SELECT amount_settled , amount_claimed FROM claims ORDER BY amount_settled ASC LIMIT 1	insurance_policies
-- SELECT amount_settled , amount_claimed FROM claims ORDER BY amount_settled ASC LIMIT 1	insurance_policies
-- SELECT date_claim_made , date_claim_settled FROM claims WHERE amount_claimed > (SELECT AVG( amount_claimed ) FROM claims)	insurance_policies
-- SELECT date_claim_made , date_claim_settled FROM claims WHERE amount_claimed > (SELECT AVG( amount_claimed ) FROM claims)	insurance_policies
-- SELECT date_claim_made FROM claims WHERE amount_settled <= (SELECT AVG( amount_settled ) FROM claims)	insurance_policies
-- SELECT date_claim_made FROM claims WHERE amount_settled <= (SELECT AVG( amount_settled ) FROM claims)	insurance_policies
-- SELECT date_claim_made FROM claims ORDER BY date_claim_made ASC LIMIT 1	insurance_policies
-- SELECT date_claim_made FROM claims ORDER BY date_claim_made ASC LIMIT 1	insurance_policies
-- SELECT SUM( amount_settled ) FROM settlements	insurance_policies
-- SELECT SUM( amount_settled ) FROM settlements	insurance_policies
-- SELECT date_claim_made , date_claim_settled FROM settlements	insurance_policies
-- SELECT date_claim_made , date_claim_settled FROM settlements	insurance_policies
-- SELECT payment_method_code FROM payments GROUP BY payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_policies
-- SELECT payment_method_code FROM payments GROUP BY payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_policies
-- SELECT payment_method_code FROM payments GROUP BY payment_method_code ORDER BY COUNT( * ) ASC LIMIT 1	insurance_policies
-- SELECT payment_method_code FROM payments GROUP BY payment_method_code ORDER BY COUNT( * ) ASC LIMIT 1	insurance_policies
-- SELECT SUM( amount_payment ) FROM payments	insurance_policies
-- SELECT SUM( amount_payment ) FROM payments	insurance_policies
-- SELECT DISTINCT customer_details FROM customers	insurance_policies
-- SELECT DISTINCT customer_details FROM customers	insurance_policies
-- SELECT COUNT( * ) FROM settlements	insurance_policies
-- SELECT COUNT( * ) FROM settlements	insurance_policies
-- SELECT payment_id , date_payment_made , amount_payment FROM payments WHERE payment_method_code = 'Visa'	insurance_policies
-- SELECT payment_id , date_payment_made , amount_payment FROM payments WHERE payment_method_code = 'Visa'	insurance_policies
-- SELECT SUM( amount_claimed ) FROM claims	insurance_policies
-- SELECT SUM( amount_claimed ) FROM claims	insurance_policies
-- SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( departmentid ) DESC LIMIT 1	hospital_1
-- SELECT name FROM department GROUP BY departmentid ORDER BY COUNT( departmentid ) DESC LIMIT 1	hospital_1
-- SELECT head FROM department GROUP BY departmentid ORDER BY COUNT( departmentid ) ASC LIMIT 1	hospital_1
-- SELECT head FROM department GROUP BY departmentid ORDER BY COUNT( departmentid ) ASC LIMIT 1	hospital_1
-- SELECT appointmentid FROM appointment ORDER BY start DESC LIMIT 1	hospital_1
-- SELECT appointmentid FROM appointment ORDER BY start DESC LIMIT 1	hospital_1
-- SELECT COUNT( patient ) FROM stay WHERE room = 112	hospital_1
-- SELECT COUNT( patient ) FROM stay WHERE room = 112	hospital_1
-- SELECT patient FROM stay WHERE room = 111 ORDER BY staystart DESC LIMIT 1	hospital_1
-- SELECT patient FROM stay WHERE room = 111 ORDER BY staystart DESC LIMIT 1	hospital_1
-- SELECT DISTINCT blockcode FROM room WHERE unavailable = (SELECT MAX( unavailable ) FROM room)	hospital_1
-- SELECT DISTINCT blockcode FROM room WHERE unavailable = (SELECT MAX( unavailable ) FROM room)	hospital_1
-- SELECT COUNT( DISTINCT roomtype ) FROM room	hospital_1
-- SELECT COUNT( DISTINCT roomtype ) FROM room	hospital_1
-- SELECT name FROM physician WHERE position LIKE '%senior%'	hospital_1
-- SELECT name FROM physician WHERE position LIKE '%senior%'	hospital_1
-- SELECT patient FROM undergoes ORDER BY dateundergoes ASC LIMIT 1	hospital_1
-- SELECT patient FROM undergoes ORDER BY dateundergoes ASC LIMIT 1	hospital_1
-- SELECT DISTINCT name FROM nurse ORDER BY name ASC	hospital_1
-- SELECT DISTINCT name FROM nurse ORDER BY name ASC	hospital_1
-- SELECT DISTINCT name FROM medication ORDER BY name ASC	hospital_1
-- SELECT DISTINCT name FROM medication ORDER BY name ASC	hospital_1
-- SELECT MAX( cost ) , MIN( cost ) , AVG( cost ) FROM procedures	hospital_1
-- SELECT MAX( cost ) , MIN( cost ) , AVG( cost ) FROM procedures	hospital_1
-- SELECT name , cost FROM procedures ORDER BY cost DESC	hospital_1
-- SELECT name , cost FROM procedures ORDER BY cost DESC	hospital_1
-- SELECT name FROM procedures ORDER BY cost ASC LIMIT 3	hospital_1
-- SELECT name FROM procedures ORDER BY cost ASC LIMIT 3	hospital_1
-- SELECT COUNT( * ) FROM appointment	hospital_1
-- SELECT COUNT( * ) FROM appointment	hospital_1
-- SELECT COUNT( * ) FROM ship	ship_mission
-- SELECT COUNT( * ) FROM ship	ship_mission
-- SELECT name FROM ship ORDER BY tonnage ASC	ship_mission
-- SELECT name FROM ship ORDER BY tonnage ASC	ship_mission
-- SELECT type , nationality FROM ship	ship_mission
-- SELECT type , nationality FROM ship	ship_mission
-- SELECT name FROM ship WHERE nationality != 'United States'	ship_mission
-- SELECT name FROM ship WHERE nationality != 'United States'	ship_mission
-- SELECT name FROM ship WHERE nationality = 'United States' OR nationality = 'United Kingdom'	ship_mission
-- SELECT name FROM ship WHERE nationality = 't' AND nationality NOT IN (SELECT AVG( nationality ) FROM ship)	ship_mission
-- SELECT name FROM ship ORDER BY tonnage DESC LIMIT 1	ship_mission
-- SELECT name FROM ship ORDER BY tonnage DESC LIMIT 1	ship_mission
-- SELECT type , COUNT( * ) FROM ship GROUP BY type	ship_mission
-- SELECT type , COUNT( * ) FROM ship GROUP BY type	ship_mission
-- SELECT type FROM ship GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	ship_mission
-- SELECT type FROM ship GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	ship_mission
-- SELECT nationality FROM ship GROUP BY nationality HAVING COUNT( * ) > 2	ship_mission
-- SELECT nationality FROM ship GROUP BY nationality HAVING COUNT( * ) > 2	ship_mission
-- SELECT type , AVG( tonnage ) FROM ship GROUP BY type	ship_mission
-- SELECT type , AVG( tonnage ) FROM ship GROUP BY type	ship_mission
-- SELECT type FROM ship WHERE tonnage > 6000 INTERSECT SELECT type FROM ship WHERE tonnage<4000	ship_mission
-- SELECT type FROM ship WHERE tonnage > 6000 INTERSECT SELECT type FROM ship WHERE tonnage<4000	ship_mission
-- SELECT COUNT( * ) FROM list	student_1
-- SELECT COUNT( * ) FROM list	student_1
-- SELECT lastname FROM list WHERE classroom = 111	student_1
-- SELECT lastname FROM list WHERE classroom = 111	student_1
-- SELECT firstname FROM list WHERE classroom = 108	student_1
-- SELECT firstname FROM list WHERE classroom = 108	student_1
-- SELECT DISTINCT firstname FROM list WHERE classroom = 107	student_1
-- SELECT DISTINCT firstname FROM list WHERE classroom = 107	student_1
-- SELECT DISTINCT classroom , grade FROM list	student_1
-- SELECT DISTINCT classroom , grade FROM list	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom = 103	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom = 103	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom = 105	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom = 105	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade = 4	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade = 4	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade = 5	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade = 5	student_1
-- SELECT firstname FROM teachers WHERE classroom = 110	student_1
-- SELECT firstname FROM teachers WHERE classroom = 110	student_1
-- SELECT lastname FROM teachers WHERE classroom = 109	student_1
-- SELECT lastname FROM teachers WHERE classroom = 109	student_1
-- SELECT DISTINCT firstname , lastname FROM teachers	student_1
-- SELECT DISTINCT firstname , lastname FROM teachers	student_1
-- SELECT DISTINCT firstname , lastname FROM list	student_1
-- SELECT DISTINCT firstname , lastname FROM list	student_1
-- SELECT grade , COUNT( DISTINCT classroom ) , COUNT( * ) FROM list GROUP BY grade	student_1
-- SELECT grade , COUNT( DISTINCT classroom ) , COUNT( * ) FROM list GROUP BY grade	student_1
-- SELECT classroom , COUNT( DISTINCT grade ) FROM list GROUP BY classroom	student_1
-- SELECT classroom , COUNT( DISTINCT grade ) FROM list GROUP BY classroom	student_1
-- SELECT classroom FROM list GROUP BY classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
-- SELECT classroom FROM list GROUP BY classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
-- SELECT classroom , COUNT( * ) FROM list GROUP BY classroom	student_1
-- SELECT classroom , COUNT( * ) FROM list GROUP BY classroom	student_1
-- SELECT classroom , COUNT( * ) FROM list WHERE grade = '0' GROUP BY classroom	student_1
-- SELECT classroom , COUNT( * ) FROM list WHERE grade = '0' GROUP BY classroom	student_1
-- SELECT classroom , COUNT( * ) FROM list WHERE grade = '4' GROUP BY classroom	student_1
-- SELECT classroom , COUNT( * ) FROM list WHERE grade = '4' GROUP BY classroom	student_1
-- SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1
-- SELECT COUNT( * ) , classroom FROM list GROUP BY classroom	student_1
-- SELECT COUNT( * ) FROM company WHERE headquarters = 't'	company_employee
-- SELECT name FROM company ORDER BY sales_in_billion ASC	company_employee
-- SELECT headquarters , industry FROM company	company_employee
-- SELECT name FROM company WHERE industry = 'banking' OR industry = 'retailing'	company_employee
-- SELECT MAX( market_value_in_billion ) , MIN( market_value_in_billion ) FROM company	company_employee
-- SELECT headquarters FROM company ORDER BY sales_in_billion DESC LIMIT 1	company_employee
-- SELECT headquarters , COUNT( * ) FROM company GROUP BY headquarters	company_employee
-- SELECT headquarters FROM company GROUP BY headquarters ORDER BY COUNT( * ) DESC LIMIT 1	company_employee
-- SELECT headquarters FROM company GROUP BY headquarters HAVING COUNT( * ) >= 2	company_employee
-- SELECT headquarters FROM company WHERE industry = 'banking' INTERSECT SELECT headquarters FROM company WHERE industry = 'oil and gas'	company_employee
-- SELECT name FROM company WHERE sales_in_billion > 200 ORDER BY sales_in_billion , profits_in_billion ASC	company_employee
-- SELECT COUNT( * ) FROM film	film_rank
-- SELECT COUNT( * ) FROM film	film_rank
-- SELECT DISTINCT director FROM film	film_rank
-- SELECT DISTINCT director FROM film	film_rank
-- SELECT AVG( gross_in_dollar ) FROM film	film_rank
-- SELECT AVG( gross_in_dollar ) FROM film	film_rank
-- SELECT MAX( number_cities ) , MIN( number_cities ) FROM market	film_rank
-- SELECT MAX( number_cities ) , MIN( number_cities ) FROM market	film_rank
-- SELECT COUNT( * ) FROM market WHERE number_cities<300	film_rank
-- SELECT COUNT( * ) FROM market WHERE number_cities<300	film_rank
-- SELECT country FROM market ORDER BY country ASC	film_rank
-- SELECT country FROM market ORDER BY country ASC	film_rank
-- SELECT country FROM market ORDER BY number_cities DESC	film_rank
-- SELECT country FROM market ORDER BY number_cities DESC	film_rank
-- SELECT studio , COUNT( * ) FROM film GROUP BY studio	film_rank
-- SELECT studio , COUNT( * ) FROM film GROUP BY studio	film_rank
-- SELECT studio FROM film GROUP BY studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
-- SELECT studio FROM film GROUP BY studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
-- SELECT studio FROM film GROUP BY studio HAVING COUNT( * ) >= 2	film_rank
-- SELECT studio FROM film GROUP BY studio HAVING COUNT( * ) >= 2	film_rank
-- SELECT studio FROM film WHERE director = 'Nicholas Meyer' INTERSECT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
-- SELECT studio FROM film WHERE director = 'Nicholas Meyer' INTERSECT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
-- SELECT title , studio FROM film WHERE studio LIKE '%Universal%'	film_rank
-- SELECT title , studio FROM film WHERE studio LIKE '%Universal%'	film_rank
-- SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
-- SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE director = 'Walter Hill'	film_rank
-- SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) >= 4500000	film_rank
-- SELECT studio FROM film GROUP BY studio HAVING AVG( gross_in_dollar ) >= 4500000	film_rank
-- SELECT COUNT( * ) FROM roles	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM roles	cre_Doc_Tracking_DB
-- SELECT role_code , role_name , role_description FROM roles	cre_Doc_Tracking_DB
-- SELECT role_code , role_name , role_description FROM roles	cre_Doc_Tracking_DB
-- SELECT role_name , role_description FROM roles WHERE role_code = 'MG'	cre_Doc_Tracking_DB
-- SELECT role_name , role_description FROM roles WHERE role_code = 'MG'	cre_Doc_Tracking_DB
-- SELECT role_description FROM roles WHERE role_name = 'Proof Reader'	cre_Doc_Tracking_DB
-- SELECT role_description FROM roles WHERE role_name = 'Proof Reader'	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM employees	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM employees	cre_Doc_Tracking_DB
-- SELECT employee_name , role_code , date_of_birth FROM employees WHERE employee_name = 'Armani'	cre_Doc_Tracking_DB
-- SELECT employee_name , role_code , date_of_birth FROM employees WHERE employee_name = 'Armani'	cre_Doc_Tracking_DB
-- SELECT employee_id FROM employees WHERE employee_name = 'Ebba'	cre_Doc_Tracking_DB
-- SELECT employee_id FROM employees WHERE employee_name = 'Ebba'	cre_Doc_Tracking_DB
-- SELECT employee_name FROM employees WHERE role_code = 'HR'	cre_Doc_Tracking_DB
-- SELECT employee_name FROM employees WHERE role_code = 'HR'	cre_Doc_Tracking_DB
-- SELECT role_code , COUNT( * ) FROM employees GROUP BY role_code	cre_Doc_Tracking_DB
-- SELECT role_code , COUNT( * ) FROM employees GROUP BY role_code	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code HAVING COUNT( * ) >= 3	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code HAVING COUNT( * ) >= 3	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT role_code FROM employees GROUP BY role_code ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM club	club_1
-- SELECT COUNT( * ) FROM club	club_1
-- SELECT clubname FROM club	club_1
-- SELECT clubname FROM club	club_1
-- SELECT COUNT( * ) FROM student	club_1
-- SELECT COUNT( * ) FROM student	club_1
-- SELECT DISTINCT fname FROM student	club_1
-- SELECT DISTINCT fname FROM student	club_1
-- SELECT clubdesc FROM club WHERE clubname = 'Tennis Club'	club_1
-- SELECT clubdesc FROM club WHERE clubname = 'Tennis Club'	club_1
-- SELECT clubdesc FROM club WHERE clubname = 'Pen and Paper Gaming'	club_1
-- SELECT clubdesc FROM club WHERE clubname = 'Pen and Paper Gaming'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Tennis Club'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Tennis Club'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Pen and Paper Gaming'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Pen and Paper Gaming'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Hopkins Student Enterprises'	club_1
-- SELECT clublocation FROM club WHERE clubname = 'Hopkins Student Enterprises'	club_1
-- SELECT clubname FROM club WHERE clublocation = 'AKW'	club_1
-- SELECT clubname FROM club WHERE clublocation = 'AKW'	club_1
-- SELECT COUNT( * ) FROM club WHERE clublocation = 'HHH'	club_1
-- SELECT COUNT( * ) FROM club WHERE clublocation = 'HHH'	club_1
-- SELECT SUM( grant_amount ) , organisation_id FROM grants GROUP BY organisation_id	tracking_grants_for_research
-- SELECT SUM( grant_amount ) , organisation_id FROM grants GROUP BY organisation_id	tracking_grants_for_research
-- SELECT grant_id , COUNT( * ) FROM documents GROUP BY grant_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_grants_for_research
-- SELECT grant_id , COUNT( * ) FROM documents GROUP BY grant_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_grants_for_research
-- SELECT project_details FROM projects WHERE organisation_id IN (SELECT organisation_id FROM projects GROUP BY organisation_id ORDER BY COUNT( * ) DESC LIMIT 1)	tracking_grants_for_research
-- SELECT project_details FROM projects WHERE organisation_id IN (SELECT organisation_id FROM projects GROUP BY organisation_id ORDER BY COUNT( * ) DESC LIMIT 1)	tracking_grants_for_research
-- SELECT COUNT( * ) FROM tasks	tracking_grants_for_research
-- SELECT COUNT( * ) FROM tasks	tracking_grants_for_research
-- SELECT COUNT( * ) FROM person WHERE gender = 'females'	network_2
-- SELECT COUNT( * ) FROM person WHERE gender = 'females'	network_2
-- SELECT AVG( age ) FROM person	network_2
-- SELECT AVG( age ) FROM person	network_2
-- SELECT COUNT( DISTINCT city ) FROM person	network_2
-- SELECT COUNT( DISTINCT city ) FROM person	network_2
-- SELECT COUNT( DISTINCT job ) FROM person	network_2
-- SELECT COUNT( DISTINCT job ) FROM person	network_2
-- SELECT name FROM person WHERE age = (SELECT MAX( age ) FROM person)	network_2
-- SELECT name FROM person WHERE age = (SELECT MAX( age ) FROM person)	network_2
-- SELECT name FROM person WHERE job = 'student' AND age = (SELECT MAX( age ) FROM person WHERE job = 'student')	network_2
-- SELECT name FROM person WHERE job = 'student' AND age = (SELECT MAX( age ) FROM person WHERE job = 'student')	network_2
-- SELECT name FROM person WHERE gender = 'male' AND age = (SELECT MIN( age ) FROM person WHERE gender = 'male')	network_2
-- SELECT name FROM person WHERE gender = 'male' AND age = (SELECT MIN( age ) FROM person WHERE gender = 'male')	network_2
-- SELECT age FROM person WHERE job = 'doctor' AND name = 'Zach'	network_2
-- SELECT age FROM person WHERE job = 'doctor' AND name = 'Zach'	network_2
-- SELECT name FROM person WHERE age<30	network_2
-- SELECT name FROM person WHERE age<30	network_2
-- SELECT COUNT( * ) FROM person WHERE age > 30 AND job = 'engineer'	network_2
-- SELECT COUNT( * ) FROM person WHERE age > 30 AND job = 'engineers'	network_2
-- SELECT AVG( age ) , gender FROM person GROUP BY gender	network_2
-- SELECT AVG( age ) , gender FROM person GROUP BY gender	network_2
-- SELECT AVG( age ) , job FROM person GROUP BY job	network_2
-- SELECT AVG( age ) , job FROM person GROUP BY job	network_2
-- SELECT AVG( age ) , job FROM person WHERE gender = 'male' GROUP BY job	network_2
-- SELECT AVG( age ) , job FROM person WHERE gender = 'male' GROUP BY job	network_2
-- SELECT MIN( age ) , job FROM person GROUP BY job	network_2
-- SELECT MIN( age ) , job FROM person GROUP BY job	network_2
-- SELECT COUNT( * ) , gender FROM person WHERE age<40 GROUP BY gender	network_2
-- SELECT COUNT( * ) , gender FROM person WHERE age<40 GROUP BY gender	network_2
-- SELECT name FROM person WHERE age > (SELECT MIN( age ) FROM person WHERE job = 'engineer') ORDER BY age ASC	network_2
-- SELECT name FROM person WHERE age > (SELECT MIN( age ) FROM person WHERE job = 'engineer') ORDER BY age ASC	network_2
-- SELECT COUNT( * ) FROM person WHERE age > (SELECT MAX( age ) FROM person WHERE job = 'engineers')	network_2
-- SELECT COUNT( * ) FROM person WHERE age > (SELECT MAX( age ) FROM person WHERE job = 'engineer')	network_2
-- SELECT name , job FROM person ORDER BY name ASC	network_2
-- SELECT name , job FROM person ORDER BY name ASC	network_2
-- SELECT name FROM person ORDER BY age DESC	network_2
-- SELECT name FROM person ORDER BY age DESC	network_2
-- SELECT name FROM person WHERE gender = 'males' ORDER BY age ASC	network_2
-- SELECT name FROM person WHERE gender = 'male' ORDER BY age ASC	network_2
-- SELECT name FROM person WHERE age<30	network_2
-- SELECT name FROM person WHERE age<30	network_2
-- SELECT name FROM person WHERE age<30	network_2
-- SELECT COUNT( * ) FROM member	decoration_competition
-- SELECT name FROM member ORDER BY name ASC	decoration_competition
-- SELECT name , country FROM member	decoration_competition
-- SELECT name FROM member WHERE country = 'United States' OR country = 'Canada'	decoration_competition
-- SELECT country , COUNT( * ) FROM member GROUP BY country	decoration_competition
-- SELECT country FROM member GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	decoration_competition
-- SELECT country FROM member GROUP BY country HAVING COUNT( * ) > 2	decoration_competition
-- SELECT leader_name , college_location FROM college	decoration_competition
-- SELECT document_name , access_count FROM documents ORDER BY document_name ASC	document_management
-- SELECT document_name , access_count FROM documents ORDER BY document_name ASC	document_management
-- SELECT document_name , access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
-- SELECT document_name , access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * ) > 4	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * ) > 4	document_management
-- SELECT SUM( access_count ) FROM documents GROUP BY document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT SUM( access_count ) FROM documents GROUP BY document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT AVG( access_count ) FROM documents	document_management
-- SELECT AVG( access_count ) FROM documents	document_management
-- SELECT document_type_code FROM documents WHERE document_name = 'David CV'	document_management
-- SELECT document_type_code FROM documents WHERE document_name = 'David CV'	document_management
-- SELECT document_name FROM documents WHERE document_type_code = (SELECT document_structure_code FROM documents GROUP BY document_structure_code ORDER BY COUNT( * ) DESC LIMIT 3)	document_management
-- SELECT document_name FROM documents GROUP BY document_type_code ORDER BY COUNT( * ) DESC LIMIT 3	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING SUM( access_count ) > 10000	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING SUM( access_count ) > 10000	document_management
-- SELECT user_name , password FROM users GROUP BY role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT user_name , password FROM users GROUP BY role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT document_name FROM documents WHERE document_name LIKE '%CV%'	document_management
-- SELECT document_name FROM documents WHERE document_name LIKE '%CV%'	document_management
-- SELECT COUNT( * ) FROM users WHERE user_login = 1	document_management
-- SELECT COUNT( * ) FROM users WHERE user_login = 1	document_management
-- SELECT role_code FROM users WHERE user_login = 1 GROUP BY role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT AVG( access_count ) FROM documents GROUP BY document_structure_code ORDER BY COUNT( * ) ASC LIMIT 1	document_management
-- SELECT AVG( access_count ) FROM documents GROUP BY document_structure_code ORDER BY COUNT( * ) ASC LIMIT 1	document_management
-- SELECT image_name , image_url FROM images ORDER BY image_name ASC	document_management
-- SELECT image_name , image_url FROM images ORDER BY image_name ASC	document_management
-- SELECT COUNT( * ) , role_code FROM users GROUP BY role_code	document_management
-- SELECT COUNT( * ) , role_code FROM users GROUP BY role_code	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * ) > 2	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * ) > 2	document_management
-- SELECT COUNT( * ) FROM companies	company_office
-- SELECT COUNT( * ) FROM companies	company_office
-- SELECT name FROM companies ORDER BY market_value_billion DESC	company_office
-- SELECT name FROM companies ORDER BY market_value_billion DESC	company_office
-- SELECT name FROM companies WHERE headquarters != 'USA'	company_office
-- SELECT name FROM companies WHERE headquarters != 'USA'	company_office
-- SELECT name , assets_billion FROM companies ORDER BY name ASC	company_office
-- SELECT name , assets_billion FROM companies ORDER BY name ASC	company_office
-- SELECT AVG( profits_billion ) FROM companies	company_office
-- SELECT AVG( profits_billion ) FROM companies	company_office
-- SELECT MAX( sales_billion ) , MIN( sales_billion ) FROM companies WHERE industry != 'Banking'	company_office
-- SELECT MAX( sales_billion ) , MIN( sales_billion ) FROM companies WHERE industry != 'Banking'	company_office
-- SELECT COUNT( DISTINCT industry ) FROM companies	company_office
-- SELECT COUNT( DISTINCT industry ) FROM companies	company_office
-- SELECT name FROM buildings ORDER BY height DESC	company_office
-- SELECT name FROM buildings ORDER BY height DESC	company_office
-- SELECT stories FROM buildings ORDER BY height DESC LIMIT 1	company_office
-- SELECT stories FROM buildings ORDER BY height DESC LIMIT 1	company_office
-- SELECT name FROM buildings WHERE status = 'on-hold' ORDER BY stories ASC	company_office
-- SELECT name FROM buildings WHERE status = 'on-hold' ORDER BY stories ASC	company_office
-- SELECT industry , COUNT( * ) FROM companies GROUP BY industry	company_office
-- SELECT industry , COUNT( * ) FROM companies GROUP BY industry	company_office
-- SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office
-- SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC	company_office
-- SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
-- SELECT industry FROM companies GROUP BY industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
-- SELECT industry FROM companies WHERE headquarters = 'USA' INTERSECT SELECT industry FROM companies WHERE headquarters = 'China'	company_office
-- SELECT industry FROM companies WHERE headquarters = 'USA' INTERSECT SELECT industry FROM companies WHERE headquarters = 'China'	company_office
-- SELECT COUNT( * ) FROM companies WHERE industry = 'Banking' OR industry = 'Conglomerate'	company_office
-- SELECT COUNT( * ) FROM companies WHERE industry = 'Banking' OR industry = 'Conglomerate'	company_office
-- SELECT headquarters FROM companies GROUP BY headquarters HAVING COUNT( * ) > 2	company_office
-- SELECT headquarters FROM companies GROUP BY headquarters HAVING COUNT( * ) > 2	company_office
-- SELECT COUNT( * ) FROM products	solvency_ii
-- SELECT product_name FROM products ORDER BY product_price ASC	solvency_ii
-- SELECT product_name , product_type_code FROM products	solvency_ii
-- SELECT product_price FROM products WHERE product_name = 'Dining' OR product_name = 'Trading Policy'	solvency_ii
-- SELECT AVG( product_price ) FROM products	solvency_ii
-- SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1	solvency_ii
-- SELECT product_type_code , COUNT( * ) FROM products GROUP BY product_type_code	solvency_ii
-- SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY COUNT( * ) DESC LIMIT 1	solvency_ii
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING COUNT( * ) >= 2	solvency_ii
-- SELECT product_type_code FROM products WHERE product_price > 4500 INTERSECT SELECT product_type_code FROM products WHERE product_price<3000	solvency_ii
-- SELECT COUNT( * ) FROM artwork	entertainment_awards
-- SELECT name FROM artwork ORDER BY name ASC	entertainment_awards
-- SELECT name FROM artwork WHERE type != 'Program Talent Show'	entertainment_awards
-- SELECT type , COUNT( * ) FROM artwork GROUP BY type	entertainment_awards
-- SELECT type FROM artwork GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	entertainment_awards
-- SELECT COUNT( * ) FROM premises	customers_campaigns_ecommerce
-- SELECT DISTINCT premises_type FROM premises	customers_campaigns_ecommerce
-- SELECT premises_type , premise_details FROM premises ORDER BY premises_type ASC	customers_campaigns_ecommerce
-- SELECT premises_type , COUNT( * ) FROM premises GROUP BY premises_type	customers_campaigns_ecommerce
-- SELECT COUNT( * ) FROM course	college_3
-- SELECT COUNT( * ) FROM course	college_3
-- SELECT COUNT( * ) FROM course WHERE credits > 2	college_3
-- SELECT COUNT( * ) FROM course WHERE credits > 2	college_3
-- SELECT cname FROM course WHERE credits = 1	college_3
-- SELECT cname FROM course WHERE credits = 1	college_3
-- SELECT cname FROM course WHERE days = 'MTW'	college_3
-- SELECT cname FROM course WHERE days = 'MTW'	college_3
-- SELECT COUNT( * ) FROM department WHERE division = 'AS'	college_3
-- SELECT COUNT( * ) FROM department WHERE division = 'AS'	college_3
-- SELECT dphone FROM department WHERE room = 268	college_3
-- SELECT dphone FROM department WHERE room = 268	college_3
-- SELECT DISTINCT fname FROM student WHERE fname LIKE '%a%'	college_3
-- SELECT DISTINCT fname FROM student WHERE fname LIKE '%a%'	college_3
-- SELECT fname , lname FROM faculty WHERE sex = 'm' AND building = 'NEB'	college_3
-- SELECT fname , lname FROM faculty WHERE sex = 'm' AND building = 'NEB'	college_3
-- SELECT room FROM faculty WHERE rank = 'professor' AND building = 'NEB'	college_3
-- SELECT room FROM faculty WHERE rank = 'professors' AND building = 'NEB'	college_3
-- SELECT dname FROM department WHERE building = 'Mergenthaler'	college_3
-- SELECT dname FROM department WHERE building = 'Mergenthaler'	college_3
-- SELECT * FROM course ORDER BY credits ASC	college_3
-- SELECT * FROM course ORDER BY credits ASC	college_3
-- SELECT cname FROM course ORDER BY credits ASC	college_3
-- SELECT cname FROM course ORDER BY credits ASC	college_3
-- SELECT fname FROM student ORDER BY age DESC	college_3
-- SELECT fname FROM student ORDER BY age DESC	college_3
-- SELECT lname FROM student WHERE sex = 'f' ORDER BY age DESC	college_3
-- SELECT lname FROM student WHERE sex = 'f' ORDER BY age DESC	college_3
-- SELECT lname FROM faculty WHERE building = 'Barton' ORDER BY lname ASC	college_3
-- SELECT lname FROM faculty WHERE building = 'Barton' ORDER BY lname ASC	college_3
-- SELECT fname FROM faculty WHERE rank = 'Professor' ORDER BY fname ASC	college_3
-- SELECT fname FROM faculty WHERE rank = 'professors,' ORDER BY fname ASC	college_3
-- SELECT rank FROM faculty GROUP BY rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
-- SELECT rank FROM faculty GROUP BY rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
-- SELECT cname FROM course WHERE credits = 3 UNION SELECT cname FROM course WHERE credits = 1 AND hours = 4	college_3
-- SELECT cname FROM course WHERE credits = 3 UNION SELECT cname FROM course WHERE credits = 1 AND hours = 4	college_3
-- SELECT dname FROM department WHERE division = 'AS' UNION SELECT dname FROM department WHERE division = 'EN' AND building = 'NEB'	college_3
-- SELECT dname FROM department WHERE division = 'AS,' UNION SELECT dname FROM department WHERE division = 'EN' AND building = 'NEB'	college_3
-- SELECT product_id , product_type_code FROM products ORDER BY product_price ASC LIMIT 1	department_store
-- SELECT product_id , product_type_code FROM products ORDER BY product_price ASC LIMIT 1	department_store
-- SELECT COUNT( DISTINCT product_type_code ) FROM products	department_store
-- SELECT COUNT( DISTINCT product_type_code ) FROM products	department_store
-- SELECT payment_method_code , COUNT( * ) FROM customers GROUP BY payment_method_code	department_store
-- SELECT payment_method_code , COUNT( * ) FROM customers GROUP BY payment_method_code	department_store
-- SELECT product_type_code , AVG( product_price ) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code , AVG( product_price ) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code , MAX( product_price ) , MIN( product_price ) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code , MAX( product_price ) , MIN( product_price ) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING AVG( product_price ) > (SELECT AVG( product_price ) FROM products)	department_store
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING AVG( product_price ) > (SELECT AVG( product_price ) FROM products)	department_store
-- SELECT product_name , product_id FROM products WHERE product_price BETWEEN 600 and 700	department_store
-- SELECT product_name , product_id FROM products WHERE product_price BETWEEN 600 and 700	department_store
-- SELECT customer_name , customer_id FROM customers WHERE customer_address LIKE '%TN%'	department_store
-- SELECT customer_name , customer_id FROM customers WHERE customer_address LIKE '%TN%'	department_store
-- SELECT supplier_name , supplier_name FROM suppliers ORDER BY supplier_name ASC	department_store
-- SELECT product_id , product_name FROM products WHERE product_price<600 OR product_price > 900	department_store
-- SELECT product_id , product_name FROM products WHERE product_price<600 OR product_price > 900	department_store
-- SELECT MAX( customer_code ) , MIN( customer_code ) FROM customers	department_store
-- SELECT MAX( customer_code ) , MIN( customer_code ) FROM customers	department_store
-- SELECT MAX( product_price ) , MIN( product_price ) , product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code ASC	department_store
-- SELECT MAX( product_price ) , MIN( product_price ) , product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code ASC	department_store
-- SELECT customer_id , customer_name FROM customers WHERE customer_address LIKE '%WY%' AND payment_method_code != 'credit card'	department_store
-- SELECT customer_id , customer_name FROM customers WHERE customer_address LIKE '%WY%' AND payment_method_code != 'credit card'	department_store
-- SELECT AVG( product_price ) FROM products WHERE product_type_code = 'clothes'	department_store
-- SELECT AVG( product_price ) FROM products WHERE product_type_code = 'clothes'	department_store
-- SELECT product_name FROM products WHERE product_type_code = 'hardware' ORDER BY product_price DESC LIMIT 1	department_store
-- SELECT product_name FROM products WHERE product_type_code = 'hardware' ORDER BY product_price DESC LIMIT 1	department_store
-- SELECT COUNT( * ) FROM aircraft	aircraft
-- SELECT COUNT( * ) FROM aircraft	aircraft
-- SELECT description FROM aircraft	aircraft
-- SELECT description FROM aircraft	aircraft
-- SELECT AVG( international_passengers ) FROM airport	aircraft
-- SELECT AVG( international_passengers ) FROM airport	aircraft
-- SELECT international_passengers , domestic_passengers FROM airport WHERE airport_name = 'Heathrow'	aircraft
-- SELECT international_passengers , domestic_passengers FROM airport WHERE airport_name = 'London Heathrow'	aircraft
-- SELECT SUM( domestic_passengers ) FROM airport WHERE airport_name LIKE '%London%'	aircraft
-- SELECT SUM( domestic_passengers ) FROM airport WHERE airport_name LIKE '%London%'	aircraft
-- SELECT MAX( transit_passengers ) , MIN( transit_passengers ) FROM airport	aircraft
-- SELECT MAX( transit_passengers ) , MIN( transit_passengers ) FROM airport	aircraft
-- SELECT name FROM pilot WHERE age >= 25	aircraft
-- SELECT name FROM pilot WHERE age >= 25	aircraft
-- SELECT name FROM pilot ORDER BY name ASC	aircraft
-- SELECT name FROM pilot ORDER BY name ASC	aircraft
-- SELECT name FROM pilot WHERE age <= 30 ORDER BY name DESC	aircraft
-- SELECT name FROM pilot WHERE age <= 30 ORDER BY name DESC	aircraft
-- SELECT name FROM pilot ORDER BY age DESC	aircraft
-- SELECT name FROM pilot ORDER BY age DESC	aircraft
-- SELECT * FROM airport ORDER BY international_passengers DESC LIMIT 1	aircraft
-- SELECT * FROM airport ORDER BY international_passengers DESC LIMIT 1	aircraft
-- SELECT organization_id FROM organizations EXCEPT SELECT parent_organization_id FROM organizations	local_govt_and_lot
-- SELECT MAX( date_moved_in ) FROM residents	local_govt_and_lot
-- SELECT other_details FROM residents WHERE other_details LIKE '%Miss%'	local_govt_and_lot
-- SELECT DISTINCT date_moved_in FROM residents	local_govt_and_lot
-- SELECT COUNT( * ) FROM school	school_player
-- SELECT COUNT( * ) FROM school	school_player
-- SELECT location FROM school ORDER BY enrollment ASC	school_player
-- SELECT location FROM school ORDER BY enrollment ASC	school_player
-- SELECT location FROM school ORDER BY founded DESC	school_player
-- SELECT location FROM school ORDER BY founded DESC	school_player
-- SELECT enrollment FROM school WHERE denomination != 'Catholic'	school_player
-- SELECT enrollment FROM school WHERE denomination != 'Catholic'	school_player
-- SELECT AVG( enrollment ) FROM school	school_player
-- SELECT AVG( enrollment ) FROM school	school_player
-- SELECT team FROM player ORDER BY team ASC	school_player
-- SELECT team FROM player ORDER BY team ASC	school_player
-- SELECT COUNT( DISTINCT position ) FROM player	school_player
-- SELECT COUNT( DISTINCT position ) FROM player	school_player
-- SELECT team FROM player ORDER BY age DESC LIMIT 1	school_player
-- SELECT team FROM player ORDER BY age DESC LIMIT 1	school_player
-- SELECT team FROM player ORDER BY age DESC LIMIT 5	school_player
-- SELECT team FROM player ORDER BY age DESC LIMIT 5	school_player
-- SELECT denomination , COUNT( * ) FROM school GROUP BY denomination	school_player
-- SELECT denomination , COUNT( * ) FROM school GROUP BY denomination	school_player
-- SELECT denomination , COUNT( * ) FROM school GROUP BY denomination ORDER BY COUNT( * ) DESC	school_player
-- SELECT denomination , COUNT( * ) FROM school GROUP BY denomination ORDER BY COUNT( * ) DESC	school_player
-- SELECT school_colors FROM school ORDER BY enrollment DESC LIMIT 1	school_player
-- SELECT school_colors FROM school ORDER BY enrollment DESC LIMIT 1	school_player
-- SELECT denomination FROM school WHERE founded<1890 INTERSECT SELECT denomination FROM school WHERE founded > 1900	school_player
-- SELECT denomination FROM school WHERE founded<1890 INTERSECT SELECT denomination FROM school WHERE founded > 1900	school_player
-- SELECT denomination FROM school GROUP BY denomination HAVING COUNT( * ) > 1	school_player
-- SELECT denomination FROM school GROUP BY denomination HAVING COUNT( * ) > 1	school_player
-- SELECT DISTINCT district_name FROM district ORDER BY city_area DESC	store_product
-- SELECT DISTINCT district_name FROM district ORDER BY city_area DESC	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size HAVING COUNT( * ) > 3	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size HAVING COUNT( * ) > 3	store_product
-- SELECT district_name , city_population FROM district WHERE city_population BETWEEN 200000 and 2000000	store_product
-- SELECT district_name , city_population FROM district WHERE city_population >= 200,000 AND city_population <= 2,000,000	store_product
-- SELECT district_name FROM district WHERE city_area > 10 OR city_population > 100000	store_product
-- SELECT district_name FROM district WHERE city_area > 10 OR city_population > 100000	store_product
-- SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
-- SELECT SUM( city_population ) FROM district ORDER BY city_area DESC LIMIT 3	store_product
-- SELECT SUM( city_population ) FROM district ORDER BY city_area DESC LIMIT 3	store_product
-- SELECT type , COUNT( * ) FROM store GROUP BY type	store_product
-- SELECT type , COUNT( * ) FROM store GROUP BY type	store_product
-- SELECT AVG( pages_per_minute_color ) FROM product	store_product
-- SELECT AVG( pages_per_minute_color ) FROM product	store_product
-- SELECT product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color<5	store_product
-- SELECT product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color<5	store_product
-- SELECT product FROM product WHERE max_page_size = 'A4' OR pages_per_minute_color<5	store_product
-- SELECT product FROM product WHERE max_page_size = 'A4' OR pages_per_minute_color<5	store_product
-- SELECT product FROM product WHERE product LIKE '%Scanner%'	store_product
-- SELECT product FROM product WHERE product LIKE '%Scanner%'	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY COUNT( * ) DESC LIMIT 1	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY COUNT( * ) DESC LIMIT 1	store_product
-- SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY COUNT( * ) DESC LIMIT 1)	store_product
-- SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY COUNT( * ) DESC LIMIT 1)	store_product
-- SELECT SUM( city_population ) FROM district WHERE city_area > (SELECT AVG( city_area ) FROM district)	store_product
-- SELECT SUM( city_population ) FROM district WHERE city_area > (SELECT AVG( city_area ) FROM district)	store_product
-- SELECT SUM( enr ) FROM college	soccer_2
-- SELECT SUM( enr ) FROM college	soccer_2
-- SELECT AVG( enr ) FROM college	soccer_2
-- SELECT AVG( enr ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM player WHERE hs > 1000	soccer_2
-- SELECT COUNT( * ) FROM player WHERE hs > 1000	soccer_2
-- SELECT COUNT( * ) FROM college WHERE enr > 15000	soccer_2
-- SELECT COUNT( * ) FROM college WHERE enr > 15000	soccer_2
-- SELECT AVG( hs ) FROM player	soccer_2
-- SELECT AVG( hs ) FROM player	soccer_2
-- SELECT pname , hs FROM player WHERE hs<1500	soccer_2
-- SELECT pname , hs FROM player WHERE hs<1500	soccer_2
-- SELECT COUNT( DISTINCT cname ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT cname ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT ppos ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT ppos ) FROM tryout	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE decision = 'yes'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE decision = 'yes'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE ppos = 'goalie'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE ppos = 'goalie'	soccer_2
-- SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2
-- SELECT AVG( hs ) , MAX( hs ) , MIN( hs ) FROM player	soccer_2
-- SELECT AVG( enr ) FROM college WHERE state = 'FL'	soccer_2
-- SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2
-- SELECT pname FROM player WHERE hs BETWEEN 500 and 1500	soccer_2
-- SELECT DISTINCT pname FROM player WHERE pname LIKE '%a%'	soccer_2
-- SELECT DISTINCT pname FROM player WHERE pname LIKE '%a%'	soccer_2
-- SELECT cname , enr FROM college WHERE enr > 10000 AND state = 'LA'	soccer_2
-- SELECT cname , enr FROM college WHERE state = 't' AND enr > 10000	soccer_2
-- SELECT * FROM college ORDER BY enr ASC	soccer_2
-- SELECT * FROM college ORDER BY enr ASC	soccer_2
-- SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2
-- SELECT cname FROM college WHERE enr > 18000 ORDER BY cname ASC	soccer_2
-- SELECT pname FROM player WHERE ycard = 'yes' ORDER BY hs DESC	soccer_2
-- SELECT pname FROM player WHERE ycard = 'yes' ORDER BY hs DESC	soccer_2
-- SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2
-- SELECT DISTINCT cname FROM tryout ORDER BY cname ASC	soccer_2
-- SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
-- SELECT ppos FROM tryout GROUP BY ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
-- SELECT COUNT( * ) , cname FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2
-- SELECT COUNT( * ) , cname FROM tryout GROUP BY cname ORDER BY COUNT( * ) DESC	soccer_2
-- SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2
-- SELECT cname FROM college ORDER BY enr DESC LIMIT 3	soccer_2
-- SELECT cname , state , MIN( enr ) FROM college GROUP BY state	soccer_2
-- SELECT cname , state , MIN( enr ) FROM college GROUP BY state	soccer_2
-- SELECT cname FROM tryout WHERE decision = 'yes' AND ppos = 'goalie'	soccer_2
-- SELECT cname FROM tryout WHERE decision = 'yes' AND ppos = 'goalie'	soccer_2
-- SELECT cname FROM college WHERE enr > 15000 AND state = 'LA' UNION SELECT cname FROM college WHERE enr<13000 AND state = 'AZ'	soccer_2
-- SELECT cname FROM college WHERE enr<13,000 AND state = 'AZ' UNION SELECT cname FROM college WHERE enr > 15,000 AND state = 'LA'	soccer_2
-- SELECT cname FROM tryout WHERE ppos = 'goalie' INTERSECT SELECT cname FROM tryout WHERE ppos = 'mid'	soccer_2
-- SELECT cname FROM tryout WHERE ppos = 'goal' INTERSECT SELECT cname FROM tryout WHERE ppos = 'mid'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE ppos = 'yes' AND ppos = 'mid'	soccer_2
-- SELECT cname FROM tryout WHERE ppos = 'mid' EXCEPT SELECT cname FROM tryout WHERE ppos = 'goalie'	soccer_2
-- SELECT cname FROM tryout WHERE ppos = 'mid' EXCEPT SELECT cname FROM tryout WHERE ppos = 'goalies'	soccer_2
-- SELECT DISTINCT state FROM college WHERE enr<(SELECT MAX( enr ) FROM college)	soccer_2
-- SELECT DISTINCT state FROM college WHERE enr<(SELECT MAX( enr ) FROM college)	soccer_2
-- SELECT DISTINCT cname FROM college WHERE enr > (SELECT MIN( enr ) FROM college WHERE state = 'FL')	soccer_2
-- SELECT cname FROM college WHERE enr > (SELECT MAX( enr ) FROM college WHERE state = 'FL')	soccer_2
-- SELECT cname FROM college WHERE enr > (SELECT MAX( enr ) FROM college WHERE state = 't')	soccer_2
-- SELECT COUNT( DISTINCT state ) FROM college WHERE enr > (SELECT AVG( enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT state ) FROM college WHERE enr > (SELECT AVG( enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT state ) FROM college WHERE enr<(SELECT AVG( enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT state ) FROM college WHERE enr<(SELECT AVG( enr ) FROM college)	soccer_2
-- SELECT COUNT( * ) FROM device	device
-- SELECT COUNT( * ) FROM device	device
-- SELECT carrier FROM device ORDER BY carrier ASC	device
-- SELECT carrier FROM device ORDER BY carrier ASC	device
-- SELECT carrier FROM device WHERE software_platform != 'Android'	device
-- SELECT carrier FROM device WHERE software_platform != 'Android'	device
-- SELECT shop_name FROM shop ORDER BY open_year ASC	device
-- SELECT shop_name FROM shop ORDER BY open_year ASC	device
-- SELECT AVG( quantity ) FROM stock	device
-- SELECT AVG( quantity ) FROM stock	device
-- SELECT shop_name , location FROM shop ORDER BY shop_name ASC	device
-- SELECT shop_name , location FROM shop ORDER BY shop_name ASC	device
-- SELECT COUNT( DISTINCT software_platform ) FROM device	device
-- SELECT COUNT( DISTINCT software_platform ) FROM device	device
-- SELECT open_date , open_year FROM shop WHERE shop_name = 'Apple'	device
-- SELECT open_date , open_year FROM shop WHERE shop_name = 'Apple'	device
-- SELECT shop_name FROM shop ORDER BY open_year DESC LIMIT 1	device
-- SELECT shop_name FROM shop ORDER BY open_year DESC LIMIT 1	device
-- SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform	device
-- SELECT software_platform , COUNT( * ) FROM device GROUP BY software_platform	device
-- SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device
-- SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC	device
-- SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
-- SELECT software_platform FROM device GROUP BY software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
-- SELECT location FROM shop WHERE open_year > 2012 INTERSECT SELECT location FROM shop WHERE open_year<2008	device
-- SELECT location FROM shop WHERE open_year > 2012 INTERSECT SELECT location FROM shop WHERE open_year<2008	device
-- SELECT COUNT( * ) FROM bookings	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM bookings	cre_Drama_Workshop_Groups
-- SELECT order_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT order_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT planned_delivery_date , actual_delivery_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT planned_delivery_date , actual_delivery_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM customers	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM customers	cre_Drama_Workshop_Groups
-- SELECT customer_phone , customer_email_address FROM customers WHERE customer_name = 'Harold'	cre_Drama_Workshop_Groups
-- SELECT customer_phone , customer_email_address FROM customers WHERE customer_name = 'Harold'	cre_Drama_Workshop_Groups
-- SELECT MIN( order_quantity ) , AVG( order_quantity ) , MAX( order_quantity ) FROM invoices	cre_Drama_Workshop_Groups
-- SELECT MIN( order_item_id ) , AVG( order_item_id ) , MAX( order_item_id ) FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT payment_method_code FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT payment_method_code FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT product_description FROM products WHERE product_description > (SELECT AVG( product_description ) FROM products)	cre_Drama_Workshop_Groups
-- SELECT DISTINCT other_product_service_details FROM products WHERE other_product_service_details > (SELECT AVG( other_product_service_details ) FROM products)	cre_Drama_Workshop_Groups
-- SELECT product_description FROM products ORDER BY product_description DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT product_description FROM products ORDER BY product_description DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT product_description FROM products ORDER BY product_description ASC	cre_Drama_Workshop_Groups
-- SELECT other_product_service_details FROM products ORDER BY other_product_service_details ASC	cre_Drama_Workshop_Groups
-- SELECT customer_email_address FROM performers WHERE customer_name = 'Ashley'	cre_Drama_Workshop_Groups
-- SELECT customer_email_address FROM performers WHERE customer_email_address = 'Ashley'	cre_Drama_Workshop_Groups
-- SELECT payment_method_code , COUNT( * ) FROM invoices GROUP BY payment_method_code	cre_Drama_Workshop_Groups
-- SELECT payment_method_code , COUNT( * ) FROM invoices GROUP BY payment_method_code	cre_Drama_Workshop_Groups
-- SELECT payment_method_code FROM invoices GROUP BY payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT payment_method_code FROM invoices GROUP BY payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT product_description , AVG( product_price ) FROM products GROUP BY product_description	cre_Drama_Workshop_Groups
-- SELECT product_name , AVG( product_price ) FROM products GROUP BY product_name	cre_Drama_Workshop_Groups
-- SELECT product_description FROM products GROUP BY product_description HAVING AVG( product_price )<1000000	cre_Drama_Workshop_Groups
-- SELECT product_description FROM products GROUP BY product_description HAVING AVG( product_price )<1000000	cre_Drama_Workshop_Groups
-- SELECT status_code FROM bookings GROUP BY status_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT status_code FROM bookings GROUP BY status_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT AVG( order_item_id ) FROM invoices WHERE payment_method_code = 'MasterCard'	cre_Drama_Workshop_Groups
-- SELECT AVG( order_item_id ) FROM invoices WHERE payment_method_code = 'MasterCard'	cre_Drama_Workshop_Groups
-- SELECT product_id FROM invoices GROUP BY product_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT product_id FROM invoices GROUP BY product_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM band	music_2
-- SELECT COUNT( * ) FROM band	music_2
-- SELECT DISTINCT label FROM albums	music_2
-- SELECT DISTINCT label FROM albums	music_2
-- SELECT * FROM albums WHERE year = 2012	music_2
-- SELECT * FROM albums WHERE year = 2012	music_2
-- SELECT COUNT( * ) FROM songs	music_2
-- SELECT COUNT( * ) FROM songs	music_2
-- SELECT COUNT( DISTINCT label ) FROM albums	music_2
-- SELECT COUNT( DISTINCT label ) FROM albums	music_2
-- SELECT label FROM albums GROUP BY label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT label FROM albums GROUP BY label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT title FROM songs WHERE title LIKE '%the%'	music_2
-- SELECT title FROM songs WHERE title LIKE '%the%'	music_2
-- SELECT DISTINCT instrument FROM instruments	music_2
-- SELECT DISTINCT instrument FROM instruments	music_2
-- SELECT instrument FROM instruments GROUP BY instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT instrument FROM instruments GROUP BY instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT COUNT( * ) FROM instruments WHERE instrument = 'drums'	music_2
-- SELECT COUNT( * ) FROM instruments WHERE instrument = 'drums'	music_2
-- SELECT type FROM vocals GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT type FROM vocals GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT DISTINCT type FROM vocals	music_2
-- SELECT DISTINCT type FROM vocals	music_2
-- SELECT * FROM albums WHERE year = 2010	music_2
-- SELECT * FROM albums WHERE year = 2010	music_2
-- SELECT founder FROM manufacturers WHERE name = 'Sony'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name = 'Sony'	manufactory_1
-- SELECT headquarter FROM manufacturers WHERE founder = 'James'	manufactory_1
-- SELECT headquarter FROM manufacturers WHERE founder = 'James'	manufactory_1
-- SELECT name , headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name , headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT AVG( revenue ) , MAX( revenue ) , SUM( revenue ) FROM manufacturers	manufactory_1
-- SELECT AVG( revenue ) , MAX( revenue ) , SUM( revenue ) FROM manufacturers	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE founder = 'Andy'	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE founder = 'Andy'	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE headquarter = 'Austin'	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE headquarter = 'Austin'	manufactory_1
-- SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
-- SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Beijing'	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Beijing'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name LIKE '%S%'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name LIKE '%S%'	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue BETWEEN 100 and 150	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue BETWEEN 100 and 150	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Taiwan'	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Taiwan'	manufactory_1
-- SELECT name , headquarter , founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
-- SELECT name , headquarter , founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
-- SELECT name , headquarter , revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name , headquarter , revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue > (SELECT AVG( revenue ) FROM manufacturers)	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue > (SELECT AVG( revenue ) FROM manufacturers)	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue<(SELECT MIN( revenue ) FROM manufacturers WHERE headquarter = 'Austin')	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue<(SELECT MIN( revenue ) FROM manufacturers WHERE headquarter = 'Austin')	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE revenue > (SELECT MIN( revenue ) FROM manufacturers WHERE headquarter = 'Austin')	manufactory_1
-- SELECT SUM( revenue ) FROM manufacturers WHERE revenue > (SELECT MIN( revenue ) FROM manufacturers WHERE headquarter = 'Austin')	manufactory_1
-- SELECT SUM( revenue ) , founder FROM manufacturers GROUP BY founder	manufactory_1
-- SELECT SUM( revenue ) , founder FROM manufacturers GROUP BY founder	manufactory_1
-- SELECT name , MAX( revenue ) , headquarter FROM manufacturers GROUP BY headquarter	manufactory_1
-- SELECT name , MAX( revenue ) , headquarter FROM manufacturers GROUP BY headquarter	manufactory_1
-- SELECT SUM( revenue ) , name FROM manufacturers GROUP BY name	manufactory_1
-- SELECT SUM( revenue ) , name FROM manufacturers GROUP BY name	manufactory_1
-- SELECT name FROM products	manufactory_1
-- SELECT name FROM products	manufactory_1
-- SELECT name , price FROM products	manufactory_1
-- SELECT name , price FROM products	manufactory_1
-- SELECT name FROM products WHERE price <= 200	manufactory_1
-- SELECT name FROM products WHERE price <= 200	manufactory_1
-- SELECT * FROM products WHERE price BETWEEN 60 and 120	manufactory_1
-- SELECT * FROM products WHERE price BETWEEN 60 and 120	manufactory_1
-- SELECT AVG( price ) FROM products	manufactory_1
-- SELECT AVG( price ) FROM products	manufactory_1
-- SELECT AVG( price ) FROM products WHERE manufacturer = 2	manufactory_1
-- SELECT AVG( price ) FROM products WHERE manufacturer = 2	manufactory_1
-- SELECT COUNT( * ) FROM products WHERE price >= 180	manufactory_1
-- SELECT COUNT( * ) FROM products WHERE price >= 180	manufactory_1
-- SELECT name , price FROM products WHERE price >= 180 ORDER BY price , name ASC	manufactory_1
-- SELECT name , price FROM products WHERE price >= 180 ORDER BY price , name ASC	manufactory_1
-- SELECT AVG( price ) , manufacturer FROM products GROUP BY manufacturer	manufactory_1
-- SELECT AVG( price ) , manufacturer FROM products GROUP BY manufacturer	manufactory_1
-- SELECT name , price FROM products ORDER BY price ASC LIMIT 1	manufactory_1
-- SELECT name , price FROM products ORDER BY price ASC LIMIT 1	manufactory_1
-- SELECT code , name , MIN( price ) FROM products GROUP BY name	manufactory_1
-- SELECT code , name , MIN( price ) FROM products GROUP BY name	manufactory_1
-- SELECT problem_id FROM problems WHERE date_problem_reported > '1978-06-26'	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported > '1978-06-26'	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported<'1978-06-26'	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported<'1978-06-26'	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_name ASC	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_name ASC	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_id ASC	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_id ASC	tracking_software_problems
-- SELECT COUNT( * ) FROM branch WHERE membership_amount > (SELECT AVG( membership_amount ) FROM branch)	shop_membership
-- SELECT COUNT( * ) FROM branch WHERE membership_amount > (SELECT AVG( membership_amount ) FROM branch)	shop_membership
-- SELECT name , address_road , city FROM branch ORDER BY open_year ASC	shop_membership
-- SELECT name , address_road , city FROM branch ORDER BY open_year ASC	shop_membership
-- SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
-- SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
-- SELECT DISTINCT city FROM branch WHERE membership_amount >= 100	shop_membership
-- SELECT DISTINCT city FROM branch WHERE membership_amount >= 100	shop_membership
-- SELECT open_year FROM branch GROUP BY open_year HAVING COUNT( * ) >= 2	shop_membership
-- SELECT open_year FROM branch GROUP BY open_year HAVING COUNT( * ) >= 2	shop_membership
-- SELECT MIN( membership_amount ) , MAX( membership_amount ) FROM branch WHERE open_year = 2011 OR city = 'London'	shop_membership
-- SELECT MIN( membership_amount ) , MAX( membership_amount ) FROM branch WHERE open_year = 2011 OR city = 'London'	shop_membership
-- SELECT city , COUNT( * ) FROM branch WHERE open_year<2010 GROUP BY city	shop_membership
-- SELECT city , COUNT( * ) FROM branch WHERE open_year<2010 GROUP BY city	shop_membership
-- SELECT COUNT( DISTINCT level ) FROM member	shop_membership
-- SELECT COUNT( DISTINCT level ) FROM member	shop_membership
-- SELECT card_number , name , hometown FROM member ORDER BY level DESC	shop_membership
-- SELECT card_number , name , hometown FROM member ORDER BY level DESC	shop_membership
-- SELECT level FROM member GROUP BY level ORDER BY COUNT( * ) DESC LIMIT 1	shop_membership
-- SELECT level FROM member GROUP BY level ORDER BY COUNT( * ) DESC LIMIT 1	shop_membership
-- SELECT city FROM branch WHERE open_year = 2001 AND membership_amount > 100	shop_membership
-- SELECT city FROM branch WHERE open_year = 2001 AND membership_amount > 100	shop_membership
-- SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount > 100	shop_membership
-- SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount > 100	shop_membership
-- SELECT card_number FROM member WHERE hometown LIKE '%Kentucky%'	shop_membership
-- SELECT card_number FROM member WHERE hometown LIKE '%Kentucky%'	shop_membership
-- SELECT COUNT( * ) FROM student	voter_2
-- SELECT COUNT( * ) FROM student	voter_2
-- SELECT MAX( age ) FROM student	voter_2
-- SELECT MAX( age ) FROM student	voter_2
-- SELECT lname FROM student WHERE major = 50	voter_2
-- SELECT lname FROM student WHERE major = 50	voter_2
-- SELECT fname FROM student WHERE age > 22	voter_2
-- SELECT fname FROM student WHERE age > 22	voter_2
-- SELECT major FROM student WHERE sex = 'm'	voter_2
-- SELECT major FROM student WHERE sex = 'm'	voter_2
-- SELECT AVG( age ) FROM student WHERE sex = 'F'	voter_2
-- SELECT AVG( age ) FROM student WHERE sex = 'f'	voter_2
-- SELECT MAX( age ) , MIN( age ) FROM student WHERE major = 600	voter_2
-- SELECT MAX( age ) , MIN( age ) FROM student WHERE major = 600	voter_2
-- SELECT advisor FROM student WHERE city_code = 'BAL'	voter_2
-- SELECT advisor FROM student WHERE city_code = 'BAL'	voter_2
-- SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	voter_2
-- SELECT advisor , COUNT( * ) FROM student GROUP BY advisor	voter_2
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT major FROM student GROUP BY major HAVING COUNT( * )<3	voter_2
-- SELECT major FROM student GROUP BY major HAVING COUNT( * )<3	voter_2
-- SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT major FROM student WHERE sex = 'f' GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT major FROM student WHERE sex = 'f' GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT COUNT( * ) FROM products	products_gen_characteristics
-- SELECT COUNT( * ) FROM products	products_gen_characteristics
-- SELECT COUNT( * ) FROM characteristics	products_gen_characteristics
-- SELECT COUNT( * ) FROM characteristics	products_gen_characteristics
-- SELECT product_name , typical_buying_price FROM products	products_gen_characteristics
-- SELECT product_name , typical_buying_price FROM products	products_gen_characteristics
-- SELECT DISTINCT characteristic_name FROM characteristics	products_gen_characteristics
-- SELECT DISTINCT characteristic_name FROM characteristics	products_gen_characteristics
-- SELECT product_name FROM products WHERE product_category_code = 'Spices'	products_gen_characteristics
-- SELECT product_name FROM products WHERE product_category_code = 'Spices'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE product_category_code = 'Seeds'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE product_category_code = 'Seeds'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE product_category_code = 'Spices' AND typical_buying_price > 1000	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE product_category_code = 'Spices' AND typical_buying_price > 1000	products_gen_characteristics
-- SELECT product_category_code , typical_buying_price FROM products WHERE product_name = 'cumin'	products_gen_characteristics
-- SELECT product_category_code , typical_buying_price FROM products WHERE product_name = 'cumin'	products_gen_characteristics
-- SELECT product_category_code FROM products WHERE product_name = 'flax'	products_gen_characteristics
-- SELECT product_category_code FROM products WHERE product_name = 'flax'	products_gen_characteristics
-- SELECT COUNT( * ) FROM event	swimming
-- SELECT name FROM event ORDER BY year DESC	swimming
-- SELECT name FROM event ORDER BY year DESC LIMIT 1	swimming
-- SELECT COUNT( * ) FROM stadium	swimming
-- SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
-- SELECT name FROM stadium WHERE capacity<(SELECT AVG( capacity ) FROM stadium)	swimming
-- SELECT country FROM stadium GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	swimming
-- SELECT country FROM stadium GROUP BY country HAVING COUNT( * ) <= 3	swimming
-- SELECT country FROM stadium WHERE capacity > 60000 INTERSECT SELECT country FROM stadium WHERE capacity<50000	swimming
-- SELECT COUNT( DISTINCT city ) FROM stadium WHERE opening_year<2006	swimming
-- SELECT country , COUNT( * ) FROM stadium GROUP BY country	swimming
-- SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year > 2006	swimming
-- SELECT COUNT( * ) FROM stadium WHERE country != 'Russia'	swimming
-- SELECT name FROM swimmer ORDER BY meter_100 ASC	swimming
-- SELECT COUNT( DISTINCT nationality ) FROM swimmer	swimming
-- SELECT nationality , COUNT( * ) FROM swimmer GROUP BY nationality HAVING COUNT( * ) > 1	swimming
-- SELECT meter_200 , meter_300 FROM swimmer WHERE nationality = 'Australia'	swimming
-- SELECT * FROM swimmer	swimming
-- SELECT AVG( capacity ) FROM stadium WHERE opening_year = 2005	swimming
-- SELECT COUNT( * ) FROM railway	railway
-- SELECT builder FROM railway ORDER BY builder ASC	railway
-- SELECT wheels , location FROM railway	railway
-- SELECT MAX( level ) FROM manager WHERE country != 'Australia'	railway
-- SELECT AVG( age ) FROM manager	railway
-- SELECT name FROM manager ORDER BY level ASC	railway
-- SELECT name , arrival FROM train	railway
-- SELECT name FROM manager ORDER BY age DESC LIMIT 1	railway
-- SELECT builder , COUNT( * ) FROM railway GROUP BY builder	railway
-- SELECT builder FROM railway GROUP BY builder ORDER BY COUNT( * ) DESC LIMIT 1	railway
-- SELECT location , COUNT( * ) FROM railway GROUP BY location	railway
-- SELECT location FROM railway GROUP BY location HAVING COUNT( * ) > 1	railway
-- SELECT country FROM manager WHERE age > 50 INTERSECT SELECT country FROM manager WHERE age<46	railway
-- SELECT DISTINCT country FROM manager	railway
-- SELECT working_year_starts FROM manager ORDER BY level DESC	railway
-- SELECT country FROM manager WHERE age > 50 OR age<46	railway
-- SELECT COUNT( * ) FROM addresses WHERE country = 'USA'	customers_and_products_contacts
-- SELECT DISTINCT city FROM addresses	customers_and_products_contacts
-- SELECT state_province_county , COUNT( * ) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING COUNT( * ) >= 2	customers_and_products_contacts
-- SELECT customer_name , customer_phone , payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
-- SELECT MIN( product_price ) , MAX( product_price ) , AVG( product_price ) FROM products	customers_and_products_contacts
-- SELECT COUNT( * ) FROM products WHERE product_price > (SELECT AVG( product_price ) FROM products)	customers_and_products_contacts
-- SELECT product_type_code , product_name FROM products WHERE product_price > 1000 OR product_price<500	customers_and_products_contacts
-- SELECT dorm_name FROM dorm WHERE gender = 'f'	dorm_1
-- SELECT dorm_name FROM dorm WHERE gender = 'f'	dorm_1
-- SELECT dorm_name FROM dorm WHERE student_capacity > 300	dorm_1
-- SELECT dorm_name FROM dorm WHERE student_capacity > 300	dorm_1
-- SELECT COUNT( * ) FROM student WHERE sex = 'f' AND age<25	dorm_1
-- SELECT COUNT( * ) FROM student WHERE sex = 'f' AND age<25	dorm_1
-- SELECT fname FROM student WHERE age > 20	dorm_1
-- SELECT fname FROM student WHERE age > 20	dorm_1
-- SELECT fname FROM student WHERE city_code = 'PHL' AND age BETWEEN 20 and 25	dorm_1
-- SELECT fname FROM student WHERE city_code = 'PHL' AND age BETWEEN 20 and 25	dorm_1
-- SELECT COUNT( * ) FROM dorm	dorm_1
-- SELECT COUNT( * ) FROM dorm	dorm_1
-- SELECT SUM( student_capacity ) FROM dorm	dorm_1
-- SELECT SUM( student_capacity ) FROM dorm	dorm_1
-- SELECT COUNT( * ) FROM student	dorm_1
-- SELECT COUNT( * ) FROM student	dorm_1
-- SELECT AVG( age ) , city_code FROM student GROUP BY city_code	dorm_1
-- SELECT AVG( age ) , city_code FROM student GROUP BY city_code	dorm_1
-- SELECT AVG( student_capacity ) , SUM( student_capacity ) FROM dorm WHERE gender = 'X'	dorm_1
-- SELECT AVG( student_capacity ) , SUM( student_capacity ) FROM dorm WHERE gender = 'X'	dorm_1
-- SELECT COUNT( DISTINCT gender ) FROM dorm	dorm_1
-- SELECT COUNT( DISTINCT gender ) FROM dorm	dorm_1
-- SELECT student_capacity , gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
-- SELECT student_capacity , gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
-- SELECT dorm_name , gender FROM dorm WHERE student_capacity > 300 OR student_capacity<100	dorm_1
-- SELECT dorm_name , gender FROM dorm WHERE student_capacity > 300 OR student_capacity<100	dorm_1
-- SELECT COUNT( DISTINCT major ) , COUNT( DISTINCT city_code ) FROM student	dorm_1
-- SELECT COUNT( DISTINCT major ) , COUNT( DISTINCT city_code ) FROM student	dorm_1
-- SELECT lname FROM student WHERE sex = 'F' AND city_code = 'BAL' UNION SELECT lname FROM student WHERE sex = 'm' AND age<20	dorm_1
-- SELECT lname FROM student WHERE sex = 'f' AND city_code = 'BAL' UNION SELECT lname FROM student WHERE sex = 'm' AND age<20	dorm_1
-- SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
-- SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
-- SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	dorm_1
-- SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT( * ) DESC LIMIT 1	dorm_1
-- SELECT fname , lname FROM student WHERE age<(SELECT AVG( age ) FROM student)	dorm_1
-- SELECT fname , lname FROM student WHERE age<(SELECT AVG( age ) FROM student)	dorm_1
-- SELECT fname , lname FROM student WHERE city_code != 'HKG' ORDER BY age ASC	dorm_1
-- SELECT fname , lname FROM student WHERE city_code != 'HKG' ORDER BY age ASC	dorm_1
-- SELECT COUNT( * ) , SUM( student_capacity ) , gender FROM dorm GROUP BY gender	dorm_1
-- SELECT COUNT( * ) , SUM( student_capacity ) , gender FROM dorm GROUP BY gender	dorm_1
-- SELECT AVG( age ) , MAX( age ) , sex FROM student GROUP BY sex	dorm_1
-- SELECT AVG( age ) , MAX( age ) , sex FROM student GROUP BY sex	dorm_1
-- SELECT COUNT( * ) , major FROM student GROUP BY major	dorm_1
-- SELECT COUNT( * ) , major FROM student GROUP BY major	dorm_1
-- SELECT COUNT( * ) , AVG( age ) , city_code FROM student GROUP BY city_code	dorm_1
-- SELECT COUNT( * ) , AVG( age ) , city_code FROM student GROUP BY city_code	dorm_1
-- SELECT COUNT( * ) , AVG( age ) , city_code FROM student WHERE sex = 'm' GROUP BY city_code	dorm_1
-- SELECT COUNT( * ) , AVG( age ) , city_code FROM student WHERE sex = 'm' GROUP BY city_code	dorm_1
-- SELECT COUNT( * ) , city_code FROM student GROUP BY city_code HAVING COUNT( * ) > 1	dorm_1
-- SELECT COUNT( * ) , city_code FROM student GROUP BY city_code HAVING COUNT( * ) > 1	dorm_1
-- SELECT fname , lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1)	dorm_1
-- SELECT fname , lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY COUNT( * ) DESC LIMIT 1)	dorm_1
-- SELECT COUNT( * ) , sex FROM student WHERE age > (SELECT AVG( age ) FROM student) GROUP BY sex	dorm_1
-- SELECT COUNT( * ) , sex FROM student WHERE age > (SELECT AVG( age ) FROM student) GROUP BY sex	dorm_1
-- SELECT COUNT( * ) FROM customers	customer_complaints
-- SELECT COUNT( * ) FROM customers	customer_complaints
-- SELECT email_address , phone_number FROM customers ORDER BY email_address , phone_number ASC	customer_complaints
-- SELECT email_address , phone_number FROM customers ORDER BY email_address , phone_number ASC	customer_complaints
-- SELECT town_city FROM customers WHERE customer_type_code = 'Good Credit Rating' GROUP BY town_city ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT town_city FROM customers WHERE customer_type_code = 'Good Credit Rating' GROUP BY town_city ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT product_description FROM products WHERE product_name = 'Chocolate'	customer_complaints
-- SELECT product_description FROM products WHERE product_name = 'Chocolate'	customer_complaints
-- SELECT product_name , product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
-- SELECT product_name , product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
-- SELECT AVG( product_price ) , product_category_code FROM products GROUP BY product_category_code	customer_complaints
-- SELECT AVG( product_price ) , product_category_code FROM products GROUP BY product_category_code	customer_complaints
-- SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING COUNT( * ) > 3	customer_complaints
-- SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING COUNT( * ) > 3	customer_complaints
-- SELECT last_name FROM staff WHERE email_address LIKE '%wrau%'	customer_complaints
-- SELECT last_name FROM staff WHERE email_address LIKE '%wrau%'	customer_complaints
-- SELECT COUNT( * ) FROM customers GROUP BY customer_type_code ORDER BY COUNT( * ) DESC LIMIT 1	customer_complaints
-- SELECT COUNT( * ) FROM customers GROUP BY customer_type_code ORDER BY COUNT( * ) DESC LIMIT 1	customer_complaints
-- SELECT COUNT( DISTINCT complaint_type_code ) FROM complaints	customer_complaints
-- SELECT COUNT( DISTINCT complaint_type_code ) FROM complaints	customer_complaints
-- SELECT address_line_1 , address_line_2 FROM customers WHERE email_address = 'vbogisich@org'	customer_complaints
-- SELECT address_line_1 , address_line_2 FROM customers WHERE email_address = 'vbogisich@org'	customer_complaints
-- SELECT complaint_status_code , COUNT( * ) FROM complaints WHERE complaint_type_code = 'Product Failure' GROUP BY complaint_status_code	customer_complaints
-- SELECT complaint_status_code , COUNT( * ) FROM complaints WHERE complaint_type_code = 'Product Failure' GROUP BY complaint_status_code	customer_complaints
-- SELECT state FROM customers GROUP BY state ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT state FROM customers GROUP BY state ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT COUNT( * ) FROM submission	workshop_paper
-- SELECT COUNT( * ) FROM submission	workshop_paper
-- SELECT author FROM submission ORDER BY scores ASC	workshop_paper
-- SELECT author FROM submission ORDER BY scores ASC	workshop_paper
-- SELECT author , college FROM submission	workshop_paper
-- SELECT author , college FROM submission	workshop_paper
-- SELECT author FROM submission WHERE college = 'Florida' OR college = 'Temple'	workshop_paper
-- SELECT author FROM submission WHERE college = 'Florida' OR college = 'Temple'	workshop_paper
-- SELECT AVG( scores ) FROM submission	workshop_paper
-- SELECT AVG( scores ) FROM submission	workshop_paper
-- SELECT author FROM submission ORDER BY scores DESC LIMIT 1	workshop_paper
-- SELECT author FROM submission ORDER BY scores DESC LIMIT 1	workshop_paper
-- SELECT college , COUNT( * ) FROM submission GROUP BY college	workshop_paper
-- SELECT college , COUNT( * ) FROM submission GROUP BY college	workshop_paper
-- SELECT college FROM submission GROUP BY college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
-- SELECT college FROM submission GROUP BY college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
-- SELECT college FROM submission WHERE scores > 90 INTERSECT SELECT college FROM submission WHERE scores<80	workshop_paper
-- SELECT college FROM submission WHERE scores > 90 INTERSECT SELECT college FROM submission WHERE scores<80	workshop_paper
-- SELECT date , venue FROM workshop ORDER BY venue ASC	workshop_paper
-- SELECT date , venue FROM workshop ORDER BY venue ASC	workshop_paper
-- SELECT COUNT( * ) FROM investors	tracking_share_transactions
-- SELECT investor_details FROM investors	tracking_share_transactions
-- SELECT DISTINCT lot_details FROM lots	tracking_share_transactions
-- SELECT MAX( amount_of_transaction ) FROM transactions	tracking_share_transactions
-- SELECT date_of_transaction , share_count FROM transactions	tracking_share_transactions
-- SELECT SUM( share_count ) FROM transactions	tracking_share_transactions
-- SELECT transaction_id FROM transactions WHERE transaction_type_code = 'PUR'	tracking_share_transactions
-- SELECT date_of_transaction FROM transactions WHERE transaction_type_code = 'SALE'	tracking_share_transactions
-- SELECT AVG( amount_of_transaction ) FROM transactions WHERE transaction_type_code = 'SALE'	tracking_share_transactions
-- SELECT MIN( amount_of_transaction ) FROM transactions WHERE transaction_type_code = 'PUR' AND share_count > 50	tracking_share_transactions
-- SELECT MAX( share_count ) FROM transactions WHERE amount_of_transaction<10000	tracking_share_transactions
-- SELECT date_of_transaction FROM transactions WHERE share_count > 100 OR amount_of_transaction > 1000	tracking_share_transactions
-- SELECT COUNT( DISTINCT transaction_type_code ) FROM transactions	tracking_share_transactions
-- SELECT lot_details , investor_id FROM lots	tracking_share_transactions
-- SELECT transaction_type_code , AVG( amount_of_transaction ) FROM transactions GROUP BY transaction_type_code	tracking_share_transactions
-- SELECT transaction_type_code , MAX( share_count ) , MIN( share_count ) FROM transactions GROUP BY transaction_type_code	tracking_share_transactions
-- SELECT investor_id , AVG( share_count ) FROM transactions GROUP BY investor_id	tracking_share_transactions
-- SELECT investor_id , AVG( share_count ) FROM transactions GROUP BY investor_id ORDER BY AVG( share_count ) ASC	tracking_share_transactions
-- SELECT investor_id , AVG( amount_of_transaction ) FROM transactions GROUP BY investor_id	tracking_share_transactions
-- SELECT investor_id , COUNT( * ) FROM transactions WHERE transaction_type_code = 'SALE' GROUP BY investor_id	tracking_share_transactions
-- SELECT investor_id , COUNT( * ) FROM transactions GROUP BY investor_id	tracking_share_transactions
-- SELECT transaction_type_code FROM transactions GROUP BY transaction_type_code ORDER BY COUNT( * ) ASC LIMIT 1	tracking_share_transactions
-- SELECT transaction_type_code FROM transactions GROUP BY transaction_type_code ORDER BY COUNT( * ) DESC LIMIT 1	tracking_share_transactions
-- SELECT date_of_transaction FROM transactions WHERE share_count >= 100 OR amount_of_transaction >= 100	tracking_share_transactions
-- SELECT COUNT( * ) FROM hotels	cre_Theme_park
-- SELECT COUNT( * ) FROM hotels	cre_Theme_park
-- SELECT price_range FROM hotels	cre_Theme_park
-- SELECT price_range FROM hotels	cre_Theme_park
-- SELECT DISTINCT location_name FROM locations	cre_Theme_park
-- SELECT DISTINCT location_name FROM locations	cre_Theme_park
-- SELECT name , other_details FROM staff	cre_Theme_park
-- SELECT name , other_details FROM staff	cre_Theme_park
-- SELECT tourist_details FROM visitors	cre_Theme_park
-- SELECT tourist_details FROM visitors	cre_Theme_park
-- SELECT price_range FROM hotels WHERE star_rating_code = '5'	cre_Theme_park
-- SELECT price_range FROM hotels WHERE star_rating_code = '5'	cre_Theme_park
-- SELECT AVG( price_range ) FROM hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 1	cre_Theme_park
-- SELECT AVG( price_range ) FROM hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 1	cre_Theme_park
-- SELECT address FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
-- SELECT address FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
-- SELECT other_details FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
-- SELECT other_details FROM locations WHERE location_name = 'UK Gallery'	cre_Theme_park
-- SELECT location_name FROM locations WHERE location_name LIKE '%film%'	cre_Theme_park
-- SELECT location_name FROM locations WHERE location_name LIKE '%film%'	cre_Theme_park
-- SELECT COUNT( DISTINCT name ) FROM photos	cre_Theme_park
-- SELECT COUNT( DISTINCT name ) FROM photos	cre_Theme_park
-- SELECT DISTINCT visit_date FROM visits	cre_Theme_park
-- SELECT DISTINCT visit_date FROM visits	cre_Theme_park
-- SELECT star_rating_code , AVG( price_range ) FROM hotels GROUP BY star_rating_code	cre_Theme_park
-- SELECT star_rating_code , AVG( price_range ) FROM hotels GROUP BY star_rating_code	cre_Theme_park
-- SELECT pets_allowed_yn , AVG( price_range ) FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park
-- SELECT pets_allowed_yn , AVG( price_range ) FROM hotels GROUP BY pets_allowed_yn	cre_Theme_park
-- SELECT hotel_id , star_rating_code FROM hotels ORDER BY price_range ASC	cre_Theme_park
-- SELECT hotel_id , star_rating_code FROM hotels ORDER BY price_range ASC	cre_Theme_park
-- SELECT other_hotel_details FROM hotels ORDER BY price_range DESC LIMIT 3	cre_Theme_park
-- SELECT other_hotel_details FROM hotels ORDER BY price_range DESC LIMIT 3	cre_Theme_park
-- SELECT other_hotel_details , star_rating_code FROM hotels ORDER BY price_range ASC LIMIT 3	cre_Theme_park
-- SELECT other_hotel_details , star_rating_code FROM hotels ORDER BY price_range ASC LIMIT 3	cre_Theme_park
-- SELECT stuid FROM student WHERE city_code = 'CHI'	game_1
-- SELECT stuid FROM student WHERE city_code = 'CHI'	game_1
-- SELECT stuid FROM student WHERE advisor = 1121	game_1
-- SELECT stuid FROM student WHERE advisor = 1121	game_1
-- SELECT fname FROM student WHERE major = 600	game_1
-- SELECT fname FROM student WHERE major = 600	game_1
-- SELECT major , AVG( age ) , MIN( age ) , MAX( age ) FROM student GROUP BY major	game_1
-- SELECT AVG( age ) , MIN( age ) , MAX( age ) FROM student GROUP BY major	game_1
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) >= 2	game_1
-- SELECT advisor FROM student GROUP BY advisor HAVING COUNT( * ) >= 2	game_1
-- SELECT customer_name FROM customers	customers_and_addresses
-- SELECT customer_name FROM customers	customers_and_addresses
-- SELECT COUNT( * ) FROM customers	customers_and_addresses
-- SELECT COUNT( * ) FROM customers	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method = 'Cash'	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method = 'Cash'	customers_and_addresses
-- SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 and 20	customers_and_addresses
-- SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 and 20	customers_and_addresses
-- SELECT payment_method FROM customers GROUP BY payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customers_and_addresses
-- SELECT payment_method FROM customers GROUP BY payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method = (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY COUNT( * ) DESC LIMIT 1)	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method = (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY COUNT( * ) DESC LIMIT 1)	customers_and_addresses
-- SELECT DISTINCT payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT product_details FROM products	customers_and_addresses
-- SELECT DISTINCT product_details FROM products	customers_and_addresses
-- SELECT customer_name FROM customers WHERE customer_name LIKE '%Alex%'	customers_and_addresses
-- SELECT customer_name FROM customers WHERE customer_name LIKE '%Alex%'	customers_and_addresses
-- SELECT product_details FROM products WHERE product_details LIKE '%Latte%' OR product_details LIKE '%Americano%'	customers_and_addresses
-- SELECT product_details FROM products WHERE product_details LIKE '%Latte%' OR product_details LIKE '%Americano%'	customers_and_addresses
-- SELECT DISTINCT city FROM addresses	customers_and_addresses
-- SELECT DISTINCT city FROM addresses	customers_and_addresses
-- SELECT city FROM addresses WHERE zip_postcode = 255	customers_and_addresses
-- SELECT city FROM addresses WHERE zip_postcode = 255	customers_and_addresses
-- SELECT state_province_county , country FROM addresses WHERE zip_postcode LIKE '%4%'	customers_and_addresses
-- SELECT state_province_county , country FROM addresses WHERE zip_postcode LIKE '%4%'	customers_and_addresses
-- SELECT country FROM addresses GROUP BY country HAVING COUNT( address_id ) > 4	customers_and_addresses
-- SELECT country FROM addresses GROUP BY country HAVING COUNT( address_id ) > 4	customers_and_addresses
-- SELECT address_content FROM addresses WHERE city = 'East Julianaside,' AND state_province_county = 'East Julianaside,' UNION SELECT address_content FROM addresses WHERE city = 'Gleasonmouth,' AND state_province_county = 'Arizona'	customers_and_addresses
-- SELECT address_content FROM addresses WHERE city = 'East Julianaside,' AND state_province_county = 'East Julianaside,' UNION SELECT address_content FROM addresses WHERE city = 'Gleasonmouth,' AND state_province_county = 'Arizona'	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
-- SELECT COUNT( * ) FROM artist	music_4
-- SELECT COUNT( * ) FROM artist	music_4
-- SELECT age FROM artist	music_4
-- SELECT age FROM artist	music_4
-- SELECT AVG( age ) FROM artist	music_4
-- SELECT AVG( age ) FROM artist	music_4
-- SELECT famous_title FROM artist WHERE artist = 'Triumfall'	music_4
-- SELECT famous_title FROM artist WHERE artist = 'Triumfall'	music_4
-- SELECT DISTINCT famous_release_date FROM artist	music_4
-- SELECT DISTINCT famous_release_date FROM artist	music_4
-- SELECT MAX( weeks_on_top ) , MIN( weeks_on_top ) FROM volume	music_4
-- SELECT MAX( weeks_on_top ) , MIN( weeks_on_top ) FROM volume	music_4
-- SELECT song FROM volume WHERE weeks_on_top > 1	music_4
-- SELECT song FROM volume WHERE weeks_on_top > 1	music_4
-- SELECT song FROM volume ORDER BY song ASC	music_4
-- SELECT song FROM volume ORDER BY song ASC	music_4
-- SELECT COUNT( DISTINCT artist_id ) FROM volume	music_4
-- SELECT COUNT( DISTINCT artist_id ) FROM volume	music_4
-- SELECT famous_title , age FROM artist ORDER BY age DESC	music_4
-- SELECT famous_title , age FROM artist ORDER BY age DESC	music_4
-- SELECT famous_release_date FROM artist ORDER BY age DESC LIMIT 1	music_4
-- SELECT famous_release_date FROM artist ORDER BY age DESC LIMIT 1	music_4
-- SELECT song FROM volume ORDER BY weeks_on_top DESC LIMIT 1	music_4
-- SELECT song FROM volume ORDER BY weeks_on_top DESC LIMIT 1	music_4
-- SELECT issue_date FROM volume ORDER BY weeks_on_top ASC LIMIT 1	music_4
-- SELECT issue_date FROM volume ORDER BY weeks_on_top ASC LIMIT 1	music_4
-- SELECT COUNT( DISTINCT artist_id ) FROM volume	music_4
-- SELECT COUNT( DISTINCT artist_id ) FROM volume	music_4
-- SELECT name FROM country WHERE languages != 'German'	roller_coaster
-- SELECT COUNT( DISTINCT rank ) FROM captain	ship_1
-- SELECT COUNT( DISTINCT rank ) FROM captain	ship_1
-- SELECT COUNT( * ) , rank FROM captain GROUP BY rank	ship_1
-- SELECT COUNT( * ) , rank FROM captain GROUP BY rank	ship_1
-- SELECT COUNT( * ) , rank FROM captain WHERE age<50 GROUP BY rank	ship_1
-- SELECT COUNT( * ) , rank FROM captain WHERE age<50 GROUP BY rank	ship_1
-- SELECT name FROM captain ORDER BY age DESC	ship_1
-- SELECT name FROM captain ORDER BY age DESC	ship_1
-- SELECT name , class , rank FROM captain	ship_1
-- SELECT name , class , rank FROM captain	ship_1
-- SELECT rank FROM captain GROUP BY rank ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT rank FROM captain GROUP BY rank ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT class FROM captain GROUP BY class HAVING COUNT( * ) > 2	ship_1
-- SELECT class FROM captain GROUP BY class HAVING COUNT( * ) > 2	ship_1
-- SELECT name FROM captain WHERE rank = 'Midshipman' OR rank = 'Lieutenant'	ship_1
-- SELECT name FROM captain WHERE rank = 'Midshipman' OR rank = 'Lieutenant'	ship_1
-- SELECT AVG( age ) , MIN( age ) , class FROM captain GROUP BY class	ship_1
-- SELECT AVG( age ) , MIN( age ) , class FROM captain GROUP BY class	ship_1
-- SELECT rank FROM captain WHERE class = 'Cutter' INTERSECT SELECT rank FROM captain WHERE class = 'Armed schooner'	ship_1
-- SELECT rank FROM captain WHERE class = 'Cutter' INTERSECT SELECT rank FROM captain WHERE class = 'Armed schooner'	ship_1
-- SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE class = 'Third-rate ship of the line'	ship_1
-- SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE class = 'Third-rate ship of the line'	ship_1
-- SELECT name FROM captain ORDER BY age ASC LIMIT 1	ship_1
-- SELECT name FROM captain ORDER BY age ASC LIMIT 1	ship_1
-- SELECT COUNT( * ) FROM ship	ship_1
-- SELECT COUNT( * ) FROM ship	ship_1
-- SELECT name , type , flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
-- SELECT name , type , flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
-- SELECT COUNT( * ) , flag FROM ship GROUP BY flag	ship_1
-- SELECT COUNT( * ) , flag FROM ship GROUP BY flag	ship_1
-- SELECT flag FROM ship GROUP BY flag ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT flag FROM ship GROUP BY flag ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT name FROM ship ORDER BY built_year , class ASC	ship_1
-- SELECT name FROM ship ORDER BY built_year , class ASC	ship_1
-- SELECT type FROM ship WHERE flag = 'Panama' INTERSECT SELECT type FROM ship WHERE flag = 'Malta'	ship_1
-- SELECT type FROM ship WHERE flag = 'Panama' INTERSECT SELECT type FROM ship WHERE flag = 'Malta'	ship_1
-- SELECT built_year FROM ship GROUP BY built_year ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT built_year FROM ship GROUP BY built_year ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT match_id FROM match WHERE competition = '1994 FIFA World Cup qualification'	city_record
-- SELECT match_id FROM match WHERE competition = '1994 FIFA World Cup qualification'	city_record
-- SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
-- SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
-- SELECT city , gdp FROM city ORDER BY gdp ASC LIMIT 1	city_record
-- SELECT city , gdp FROM city ORDER BY gdp ASC LIMIT 1	city_record
-- SELECT city FROM city WHERE regional_population > 10000000	city_record
-- SELECT city FROM city WHERE regional_population > 10000000	city_record
-- SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record
-- SELECT city FROM city WHERE regional_population > 8000000 OR regional_population<5000000	city_record
-- SELECT COUNT( * ) , competition FROM match GROUP BY competition	city_record
-- SELECT COUNT( * ) , competition FROM match GROUP BY competition	city_record
-- SELECT venue FROM match ORDER BY date DESC	city_record
-- SELECT venue FROM match ORDER BY date DESC	city_record
-- SELECT gdp FROM city ORDER BY regional_population DESC LIMIT 1	city_record
-- SELECT gdp FROM city ORDER BY regional_population DESC LIMIT 1	city_record
-- SELECT individual_first_name , individual_middle_name , individual_last_name FROM individuals ORDER BY individual_last_name ASC	e_government
-- SELECT individual_first_name , individual_middle_name , individual_last_name FROM individuals ORDER BY individual_last_name ASC	e_government
-- SELECT DISTINCT form_type_code FROM forms	e_government
-- SELECT DISTINCT form_type_code FROM forms	e_government
-- SELECT payment_method_code , party_phone FROM parties WHERE party_email = 'enrico09@com'	e_government
-- SELECT payment_method_code , party_phone FROM parties WHERE party_email = 'enrico09@com'	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
-- SELECT COUNT( * ) FROM services	e_government
-- SELECT COUNT( * ) FROM services	e_government
-- SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
-- SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
-- SELECT COUNT( * ) FROM addresses WHERE state_province_county = 'Colorado'	e_government
-- SELECT COUNT( * ) FROM addresses WHERE state_province_county = 'Colorado'	e_government
-- SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING COUNT( * ) > 3	e_government
-- SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING COUNT( * ) > 3	e_government
-- SELECT organization_name FROM organizations WHERE organization_name LIKE '%Party%'	e_government
-- SELECT organization_name FROM organizations WHERE organization_name LIKE '%Party%'	e_government
-- SELECT COUNT( DISTINCT payment_method_code ) FROM parties	e_government
-- SELECT COUNT( DISTINCT payment_method_code ) FROM parties	e_government
-- SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE '%6862 Kaitlyn Knolls%'	e_government
-- SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE '%6862 Kaitlyn Knolls%'	e_government
-- SELECT COUNT( * ) FROM driver	school_bus
-- SELECT name , home_city , age FROM driver	school_bus
-- SELECT party , COUNT( * ) FROM driver GROUP BY party	school_bus
-- SELECT name FROM driver ORDER BY age DESC	school_bus
-- SELECT DISTINCT home_city FROM driver	school_bus
-- SELECT home_city FROM driver GROUP BY home_city ORDER BY COUNT( * ) DESC LIMIT 1	school_bus
-- SELECT party FROM driver WHERE home_city = 'Hartford' AND age > 40	school_bus
-- SELECT home_city FROM driver WHERE age > 40 GROUP BY home_city HAVING COUNT( * ) >= 2	school_bus
-- SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age > 40	school_bus
-- SELECT type FROM school GROUP BY type HAVING COUNT( * ) = 2	school_bus
-- SELECT COUNT( * ) FROM driver WHERE home_city = 'Hartford' OR age<40	school_bus
-- SELECT name FROM driver WHERE home_city = 'Hartford' AND age<40	school_bus
-- SELECT COUNT( * ) FROM flight WHERE velocity > 200	flight_company
-- SELECT vehicle_flight_number , date , pilot FROM flight ORDER BY altitude ASC	flight_company
-- SELECT id , country , city , name FROM airport ORDER BY name ASC	flight_company
-- SELECT AVG( velocity ) FROM flight WHERE pilot = 'Thompson'	flight_company
-- SELECT name FROM airport WHERE country != 'Iceland'	flight_company
-- SELECT name FROM airport WHERE name LIKE '%international%'	flight_company
-- SELECT COUNT( * ) , country FROM airport GROUP BY country	flight_company
-- SELECT country FROM airport GROUP BY country HAVING COUNT( * ) > 2	flight_company
-- SELECT pilot FROM flight GROUP BY pilot ORDER BY COUNT( * ) DESC LIMIT 1	flight_company
-- SELECT COUNT( * ) FROM accounts	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM accounts	cre_Docs_and_Epenses
-- SELECT account_id , account_details FROM accounts	cre_Docs_and_Epenses
-- SELECT account_id , account_details FROM accounts	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM statements	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM statements	cre_Docs_and_Epenses
-- SELECT statement_id , statement_details FROM statements	cre_Docs_and_Epenses
-- SELECT statement_id , statement_details FROM statements	cre_Docs_and_Epenses
-- SELECT statement_id , COUNT( * ) FROM accounts GROUP BY statement_id	cre_Docs_and_Epenses
-- SELECT statement_id , COUNT( * ) FROM accounts GROUP BY statement_id	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM documents	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM documents	cre_Docs_and_Epenses
-- SELECT document_type_code , document_name , document_description FROM documents WHERE document_name = 'Noel CV' OR document_name = 'King Book'	cre_Docs_and_Epenses
-- SELECT document_type_code , document_name , document_description FROM documents WHERE document_name = 'Noel CV' OR document_name = 'King Book'	cre_Docs_and_Epenses
-- SELECT document_id , document_name FROM documents	cre_Docs_and_Epenses
-- SELECT document_id , document_name FROM documents	cre_Docs_and_Epenses
-- SELECT document_name , document_id FROM documents WHERE document_type_code = 'BK'	cre_Docs_and_Epenses
-- SELECT document_name , document_id FROM documents WHERE document_type_code = 'BK'	cre_Docs_and_Epenses
-- SELECT COUNT( * ) , project_id FROM documents WHERE document_type_code = 'BK' GROUP BY project_id	cre_Docs_and_Epenses
-- SELECT COUNT( * ) , project_id FROM documents WHERE document_type_code = 'BK' GROUP BY project_id	cre_Docs_and_Epenses
-- SELECT project_id , COUNT( * ) FROM documents GROUP BY project_id	cre_Docs_and_Epenses
-- SELECT project_id , COUNT( * ) FROM documents GROUP BY project_id	cre_Docs_and_Epenses
-- SELECT project_id FROM documents GROUP BY project_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Docs_and_Epenses
-- SELECT project_id FROM documents GROUP BY project_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Docs_and_Epenses
-- SELECT project_id FROM documents GROUP BY project_id HAVING COUNT( * ) >= 2	cre_Docs_and_Epenses
-- SELECT project_id FROM documents GROUP BY project_id HAVING COUNT( * ) >= 2	cre_Docs_and_Epenses
-- SELECT document_type_code , COUNT( * ) FROM documents GROUP BY document_type_code	cre_Docs_and_Epenses
-- SELECT document_type_code , COUNT( * ) FROM documents GROUP BY document_type_code	cre_Docs_and_Epenses
-- SELECT document_type_code FROM documents GROUP BY document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Docs_and_Epenses
-- SELECT document_type_code FROM documents GROUP BY document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Docs_and_Epenses
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * )<3	cre_Docs_and_Epenses
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING COUNT( * )<3	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM projects	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM projects	cre_Docs_and_Epenses
-- SELECT project_id , project_details FROM projects	cre_Docs_and_Epenses
-- SELECT project_id , project_details FROM projects	cre_Docs_and_Epenses
-- SELECT MAX( account_details ) FROM accounts UNION SELECT account_details FROM accounts WHERE account_details LIKE '%5%'	cre_Docs_and_Epenses
-- SELECT MAX( account_details ) FROM accounts UNION SELECT account_details FROM accounts WHERE account_details LIKE '%5%'	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM scientists	scientist_1
-- SELECT COUNT( * ) FROM scientists	scientist_1
-- SELECT SUM( hours ) FROM projects	scientist_1
-- SELECT SUM( hours ) FROM projects	scientist_1
-- SELECT COUNT( DISTINCT name ) FROM projects	scientist_1
-- SELECT COUNT( DISTINCT name ) FROM projects	scientist_1
-- SELECT AVG( hours ) FROM projects	scientist_1
-- SELECT AVG( hours ) FROM projects	scientist_1
-- SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
-- SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
-- SELECT name FROM projects WHERE hours > (SELECT AVG( hours ) FROM projects)	scientist_1
-- SELECT name FROM projects WHERE hours > (SELECT AVG( hours ) FROM projects)	scientist_1
-- SELECT name FROM projects WHERE hours BETWEEN 100 and 300	scientist_1
-- SELECT name FROM projects WHERE hours BETWEEN 100 and 300	scientist_1
-- SELECT name FROM scientists ORDER BY name ASC	scientist_1
-- SELECT name FROM scientists ORDER BY name ASC	scientist_1
-- SELECT name FROM wine ORDER BY score ASC LIMIT 1	wine_1
-- SELECT name FROM wine ORDER BY score ASC LIMIT 1	wine_1
-- SELECT winery FROM wine ORDER BY score ASC LIMIT 1	wine_1
-- SELECT winery FROM wine ORDER BY score ASC LIMIT 1	wine_1
-- SELECT name FROM wine WHERE year = '2008'	wine_1
-- SELECT name FROM wine WHERE year = '2008'	wine_1
-- SELECT grape , appelation FROM wine	wine_1
-- SELECT grape , appelation FROM wine	wine_1
-- SELECT name , score FROM wine	wine_1
-- SELECT name , score FROM wine	wine_1
-- SELECT area , county FROM appellations	wine_1
-- SELECT area , county FROM appellations	wine_1
-- SELECT price FROM wine WHERE year<2010	wine_1
-- SELECT price FROM wine WHERE year<2010	wine_1
-- SELECT name FROM wine WHERE score > 90	wine_1
-- SELECT name FROM wine WHERE score > 90	wine_1
-- SELECT COUNT( * ) FROM wine WHERE winery = 'Robert Biale'	wine_1
-- SELECT COUNT( * ) FROM wine WHERE winery = 'Robert Biale'	wine_1
-- SELECT COUNT( * ) FROM appellations WHERE county = 'Napa'	wine_1
-- SELECT COUNT( * ) FROM appellations WHERE county = 'Napa'	wine_1
-- SELECT COUNT( * ) , grape FROM wine GROUP BY grape	wine_1
-- SELECT COUNT( * ) , grape FROM wine GROUP BY grape	wine_1
-- SELECT AVG( price ) , year FROM wine GROUP BY year	wine_1
-- SELECT AVG( price ) , year FROM wine GROUP BY year	wine_1
-- SELECT DISTINCT name FROM wine WHERE price > (SELECT MIN( price ) FROM wine WHERE winery = 'John Anthony')	wine_1
-- SELECT DISTINCT name FROM wine WHERE price > (SELECT MIN( price ) FROM wine WHERE winery = 'John Anthony')	wine_1
-- SELECT DISTINCT name FROM wine ORDER BY name ASC	wine_1
-- SELECT DISTINCT name FROM wine ORDER BY name ASC	wine_1
-- SELECT DISTINCT name FROM wine ORDER BY price ASC	wine_1
-- SELECT DISTINCT name FROM wine ORDER BY price ASC	wine_1
-- SELECT DISTINCT name FROM wine WHERE year<2000 OR year > 2010	wine_1
-- SELECT DISTINCT name FROM wine WHERE year<2000 OR year > 2010	wine_1
-- SELECT DISTINCT winery FROM wine WHERE price BETWEEN 50 and 100	wine_1
-- SELECT DISTINCT winery FROM wine WHERE price BETWEEN 50 and 100	wine_1
-- SELECT AVG( price ) , AVG( cases ) FROM wine WHERE year = 2009 AND grape = 'Zinfandel'	wine_1
-- SELECT AVG( price ) , AVG( cases ) FROM wine WHERE year = 2009 AND grape = 'Zinfandel'	wine_1
-- SELECT MAX( price ) , MAX( score ) FROM wine WHERE appelation = 'St. Helena'	wine_1
-- SELECT MAX( price ) , MAX( score ) FROM wine WHERE appelation = 'St. Helena'	wine_1
-- SELECT MAX( price ) , MAX( score ) , year FROM wine GROUP BY year	wine_1
-- SELECT MAX( price ) , MAX( score ) , year FROM wine GROUP BY year	wine_1
-- SELECT AVG( price ) , AVG( score ) , appelation FROM wine GROUP BY appelation	wine_1
-- SELECT AVG( price ) , AVG( score ) , appelation FROM wine GROUP BY appelation	wine_1
-- SELECT winery FROM wine GROUP BY winery HAVING COUNT( * ) >= 4	wine_1
-- SELECT winery FROM wine GROUP BY winery HAVING COUNT( * ) >= 4	wine_1
-- SELECT name FROM wine WHERE year<(SELECT MIN( year ) FROM wine WHERE winery = 'Brander')	wine_1
-- SELECT name FROM wine WHERE year<(SELECT MIN( year ) FROM wine WHERE winery = 'Brander')	wine_1
-- SELECT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE year = 2006)	wine_1
-- SELECT name FROM wine WHERE price > (SELECT MAX( price ) FROM wine WHERE year = 2006)	wine_1
-- SELECT grape , winery , year FROM wine WHERE price > 100 ORDER BY year ASC	wine_1
-- SELECT grape , winery , year FROM wine WHERE price > 100 ORDER BY year ASC	wine_1
-- SELECT grape , appelation , name FROM wine WHERE score > 93 ORDER BY name ASC	wine_1
-- SELECT grape , appelation , name FROM wine WHERE score > 93 ORDER BY name ASC	wine_1
-- SELECT COUNT( * ) FROM station	train_station
-- SELECT name , location , number_of_platforms FROM station	train_station
-- SELECT DISTINCT location FROM station	train_station
-- SELECT name , total_passengers FROM station WHERE location != 'London'	train_station
-- SELECT name , main_services FROM station ORDER BY total_passengers DESC LIMIT 3	train_station
-- SELECT AVG( total_passengers ) , MAX( total_passengers ) FROM station WHERE location = 'London' OR location = 'Glasgow'	train_station
-- SELECT location , SUM( number_of_platforms ) , SUM( total_passengers ) FROM station GROUP BY location	train_station
-- SELECT DISTINCT location FROM station WHERE number_of_platforms >= 15 AND total_passengers > 25	train_station
-- SELECT location FROM station EXCEPT SELECT location FROM station WHERE number_of_platforms >= 15	train_station
-- SELECT location FROM station GROUP BY location ORDER BY COUNT( * ) DESC LIMIT 1	train_station
-- SELECT name , time , service FROM train	train_station
-- SELECT COUNT( * ) FROM train	train_station
-- SELECT name , service FROM train ORDER BY time ASC	train_station
-- SELECT location FROM station GROUP BY location HAVING COUNT( * ) = 1	train_station
-- SELECT name , location FROM station ORDER BY annual_entry_exit , annual_interchanges ASC	train_station
-- SELECT vehicle_id FROM vehicles	driving_school
-- SELECT vehicle_id FROM vehicles	driving_school
-- SELECT COUNT( * ) FROM vehicles	driving_school
-- SELECT COUNT( * ) FROM vehicles	driving_school
-- SELECT vehicle_details FROM vehicles WHERE vehicle_id = 1	driving_school
-- SELECT vehicle_details FROM vehicles WHERE vehicle_id = 1	driving_school
-- SELECT first_name , middle_name , last_name FROM staff	driving_school
-- SELECT first_name , middle_name , last_name FROM staff	driving_school
-- SELECT date_of_birth FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT date_of_birth FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT date_joined_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT date_joined_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT date_left_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT date_left_staff FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT COUNT( * ) FROM staff WHERE first_name = 'Ludie'	driving_school
-- SELECT COUNT( * ) FROM staff WHERE first_name = 'Ludie'	driving_school
-- SELECT nickname FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT nickname FROM staff WHERE first_name = 'Janessa' AND last_name = 'Sawayn'	driving_school
-- SELECT COUNT( * ) FROM staff	driving_school
-- SELECT COUNT( * ) FROM staff	driving_school
-- SELECT COUNT( * ) FROM addresses WHERE state_province_county = 'Georgia'	driving_school
-- SELECT COUNT( * ) FROM addresses WHERE state_province_county = 'Georgia'	driving_school
-- SELECT first_name , last_name FROM customers	driving_school
-- SELECT first_name , last_name FROM customers	driving_school
-- SELECT email_address , date_of_birth FROM customers WHERE first_name = 'Carole'	driving_school
-- SELECT email_address , date_of_birth FROM customers WHERE first_name = 'Carole'	driving_school
-- SELECT phone_number , email_address FROM customers WHERE amount_outstanding > 2000	driving_school
-- SELECT phone_number , email_address FROM customers WHERE amount_outstanding > 2000	driving_school
-- SELECT customer_status_code , cell_mobile_phone_number , email_address FROM customers WHERE first_name = 'Marina' OR last_name = 'Kohler'	driving_school
-- SELECT customer_status_code , cell_mobile_phone_number , email_address FROM customers WHERE first_name = 'Marina' OR last_name = 'Kohler'	driving_school
-- SELECT date_of_birth FROM customers WHERE customer_status_code = 'Good Customer'	driving_school
-- SELECT date_of_birth FROM customers WHERE customer_status_code = 'Good Customer'	driving_school
-- SELECT date_became_customer FROM customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
-- SELECT date_became_customer FROM customers WHERE first_name = 'Carole' AND last_name = 'Bernhard'	driving_school
-- SELECT COUNT( * ) FROM customers	driving_school
-- SELECT COUNT( * ) FROM customers	driving_school
-- SELECT customer_status_code , COUNT( * ) FROM customers GROUP BY customer_status_code	driving_school
-- SELECT customer_status_code , COUNT( * ) FROM customers GROUP BY customer_status_code	driving_school
-- SELECT customer_status_code FROM customers GROUP BY customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
-- SELECT customer_status_code FROM customers GROUP BY customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
-- SELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school
-- SELECT MAX( amount_outstanding ) , MIN( amount_outstanding ) , AVG( amount_outstanding ) FROM customers	driving_school
-- SELECT first_name , last_name FROM customers WHERE amount_outstanding BETWEEN 1000 and 3000	driving_school
-- SELECT first_name , last_name FROM customers WHERE amount_outstanding BETWEEN 1000 and 3000	driving_school
-- SELECT COUNT( * ) FROM lessons WHERE lesson_status_code = 'cancelled'	driving_school
-- SELECT COUNT( * ) FROM lessons WHERE lesson_status_code = 'cancelled'	driving_school
-- SELECT COUNT( * ) FROM faculty	activity_1
-- SELECT COUNT( * ) FROM faculty	activity_1
-- SELECT DISTINCT rank FROM faculty	activity_1
-- SELECT DISTINCT rank FROM faculty	activity_1
-- SELECT DISTINCT building FROM faculty	activity_1
-- SELECT DISTINCT building FROM faculty	activity_1
-- SELECT rank , fname , lname FROM faculty	activity_1
-- SELECT rank , fname , lname FROM faculty	activity_1
-- SELECT fname , lname , phone FROM faculty WHERE sex = 'f'	activity_1
-- SELECT fname , lname , phone FROM faculty WHERE sex = 'f'	activity_1
-- SELECT facid FROM faculty WHERE sex = 'm'	activity_1
-- SELECT facid FROM faculty WHERE sex = 'm'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE sex = 'f' AND rank = 'Professors'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE sex = 'f' AND rank = 'Professors'	activity_1
-- SELECT phone , room , building FROM faculty WHERE fname = 'Jerry' AND lname = 'Prince'	activity_1
-- SELECT phone , room , building FROM faculty WHERE fname = 'Jerry' AND lname = 'Prince'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE rank = 'Professors' AND building = 'NEB'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE rank = 'Professors' AND building = 'NEB'	activity_1
-- SELECT fname , lname FROM faculty WHERE rank = 'instructors'	activity_1
-- SELECT fname , lname FROM faculty WHERE rank = 'instructors'	activity_1
-- SELECT building , COUNT( * ) FROM faculty GROUP BY building	activity_1
-- SELECT building , COUNT( * ) FROM faculty GROUP BY building	activity_1
-- SELECT building FROM faculty GROUP BY building ORDER BY COUNT( * ) DESC LIMIT 1	activity_1
-- SELECT building FROM faculty GROUP BY building ORDER BY COUNT( * ) DESC LIMIT 1	activity_1
-- SELECT building FROM faculty WHERE rank = 'professors' GROUP BY building HAVING COUNT( * ) >= 10	activity_1
-- SELECT building FROM faculty WHERE rank = 'professors' GROUP BY building HAVING COUNT( DISTINCT * ) = 2	activity_1
-- SELECT rank , COUNT( * ) FROM faculty GROUP BY rank	activity_1
-- SELECT rank , COUNT( * ) FROM faculty GROUP BY rank	activity_1
-- SELECT rank , sex , COUNT( * ) FROM faculty GROUP BY rank , sex	activity_1
-- SELECT rank , sex , COUNT( * ) FROM faculty GROUP BY rank , sex	activity_1
-- SELECT rank FROM faculty GROUP BY rank ORDER BY COUNT( * ) ASC LIMIT 1	activity_1
-- SELECT rank FROM faculty GROUP BY rank ORDER BY COUNT( * ) ASC LIMIT 1	activity_1
-- SELECT sex , COUNT( * ) FROM faculty WHERE rank = 'm' GROUP BY sex	activity_1
-- SELECT sex , COUNT( * ) FROM faculty WHERE rank = 'assistant professors' ORDER BY sex ASC	activity_1
-- SELECT activity_name FROM activity	activity_1
-- SELECT activity_name FROM activity	activity_1
-- SELECT COUNT( * ) FROM activity	activity_1
-- SELECT COUNT( * ) FROM activity	activity_1
-- SELECT stuid FROM activity JOIN activity ON actid = actid WHERE activity_name = 'Canoeing' INTERSECT SELECT stuid FROM activity JOIN activity ON actid = actid WHERE activity_name = 'Kayaking'	activity_1
-- SELECT stuid FROM activity JOIN activity ON actid = actid WHERE activity_name = 'Canoeing' INTERSECT SELECT stuid FROM activity JOIN activity ON actid = actid WHERE activity_name = 'Kayaking'	activity_1
-- SELECT name FROM airports WHERE city = 'Goroka'	flight_4
-- SELECT name FROM airports WHERE city = 'Goroka'	flight_4
-- SELECT name , city , country , elevation FROM airports WHERE city = 'New York'	flight_4
-- SELECT name , city , country , elevation FROM airports WHERE city = 'New York'	flight_4
-- SELECT COUNT( * ) FROM airlines	flight_4
-- SELECT COUNT( * ) FROM airlines	flight_4
-- SELECT COUNT( * ) FROM airlines WHERE country = 'Russia'	flight_4
-- SELECT COUNT( * ) FROM airlines WHERE country = 'Russia'	flight_4
-- SELECT MAX( elevation ) FROM airports WHERE country = 'Iceland'	flight_4
-- SELECT MAX( elevation ) FROM airports WHERE country = 'Iceland'	flight_4
-- SELECT name FROM airports WHERE country = 'Cuba' OR country = 'Argentina'	flight_4
-- SELECT name FROM airports WHERE country = 'Cuba' OR country = 'Argentina'	flight_4
-- SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4
-- SELECT country FROM airlines WHERE name LIKE '%Orbit%'	flight_4
-- SELECT name FROM airports WHERE elevation >= -50 AND elevation <= 50	flight_4
-- SELECT name FROM airports WHERE elevation >= -50 AND elevation <= 50	flight_4
-- SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT COUNT( * ) FROM airports WHERE name LIKE '%International%'	flight_4
-- SELECT COUNT( * ) FROM airports WHERE name LIKE '%Inter%'	flight_4
-- SELECT COUNT( DISTINCT city ) FROM airports WHERE country = 'Greenland'	flight_4
-- SELECT COUNT( DISTINCT city ) FROM airports WHERE country = 'Greenland'	flight_4
-- SELECT name , city , country FROM airports ORDER BY elevation ASC LIMIT 1	flight_4
-- SELECT name , city , country FROM airports ORDER BY elevation ASC LIMIT 1	flight_4
-- SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT country FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines WHERE active = 'y' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines WHERE active = 'y' GROUP BY country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT country , COUNT( * ) FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT country , COUNT( * ) FROM airlines GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , country FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , country FROM airports GROUP BY country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , city FROM airports WHERE country = 'yes' GROUP BY city ORDER BY COUNT( * ) DESC	flight_4
-- SELECT city FROM airports WHERE country = 'United States' GROUP BY city HAVING COUNT( * ) > 3	flight_4
-- SELECT city FROM airports WHERE country = 'United States' GROUP BY city HAVING COUNT( * ) > 3	flight_4
-- SELECT COUNT( * ) FROM airports WHERE city NOT IN (SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3)	flight_4
-- SELECT COUNT( * ) FROM airports WHERE city NOT IN (SELECT city FROM airports GROUP BY city HAVING COUNT( * ) > 3)	flight_4
-- SELECT city , COUNT( * ) FROM airports GROUP BY city HAVING COUNT( * ) > 1	flight_4
-- SELECT city , COUNT( * ) FROM airports GROUP BY city HAVING COUNT( * ) > 1	flight_4
-- SELECT city FROM airports GROUP BY city ORDER BY COUNT( * ) ASC HAVING COUNT( * ) > 2	flight_4
-- SELECT city FROM airports GROUP BY city ORDER BY COUNT( * ) ASC HAVING COUNT( * ) > 2	flight_4
-- SELECT AVG( elevation ) , country FROM airports GROUP BY country	flight_4
-- SELECT AVG( elevation ) , country FROM airports GROUP BY country	flight_4
-- SELECT city FROM airports GROUP BY city HAVING COUNT( * ) = 2	flight_4
-- SELECT city FROM airports GROUP BY city HAVING COUNT( * ) = 2	flight_4
-- SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT order_id , customer_id FROM orders ORDER BY date_order_placed ASC LIMIT 1	tracking_orders
-- SELECT order_id , customer_id FROM orders ORDER BY date_order_placed ASC LIMIT 1	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_tracking_number = '3452'	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_tracking_number = '3452'	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date > '2000-01-01'	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date > '2000-01-01'	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date = (SELECT MAX( shipment_date ) FROM shipments)	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date = (SELECT MAX( shipment_date ) FROM shipments)	tracking_orders
-- SELECT DISTINCT product_name FROM products ORDER BY product_name ASC	tracking_orders
-- SELECT DISTINCT product_name FROM products ORDER BY product_name ASC	tracking_orders
-- SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed ASC	tracking_orders
-- SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed ASC	tracking_orders
-- SELECT invoice_number FROM invoices WHERE invoice_date<'1989-09-03' OR invoice_date > '2007-12-25'	tracking_orders
-- SELECT invoice_number FROM invoices WHERE invoice_date<'1989-09-03' OR invoice_date > '2007-12-25'	tracking_orders
-- SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date<'1989-09-03' OR invoice_date > '2007-12-25'	tracking_orders
-- SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date<'1989-09-03' OR invoice_date > '2007-12-25'	tracking_orders
-- SELECT COUNT( * ) FROM architect WHERE gender = 'female'	architecture
-- SELECT name , nationality , id FROM architect WHERE gender = 'male' ORDER BY name ASC	architecture
-- SELECT AVG( length_feet ) FROM bridge	architecture
-- SELECT name , built_year FROM mill WHERE type = 'Grondzeiler'	architecture
-- SELECT name FROM mill WHERE location != 'Donceel'	architecture
-- SELECT location FROM bridge WHERE name = 'Kolob Arch' OR name = 'Rainbow Bridge'	architecture
-- SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
-- SELECT type , COUNT( * ) FROM mill GROUP BY type ORDER BY COUNT( * ) DESC LIMIT 1	architecture
-- SELECT title , year , director FROM movie ORDER BY budget_million ASC	culture_company
-- SELECT title , year , director FROM movie ORDER BY budget_million ASC	culture_company
-- SELECT COUNT( DISTINCT director ) FROM movie	culture_company
-- SELECT COUNT( DISTINCT director ) FROM movie	culture_company
-- SELECT title , director FROM movie WHERE year <= 2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
-- SELECT title , director FROM movie WHERE year <= 2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
-- SELECT director FROM movie WHERE year = 2000 INTERSECT SELECT director FROM movie WHERE year = 1999	culture_company
-- SELECT director FROM movie WHERE year = 2000 INTERSECT SELECT director FROM movie WHERE year = 1999	culture_company
-- SELECT director FROM movie WHERE year = 1999 OR year = 2000	culture_company
-- SELECT director FROM movie WHERE year = 1999 OR year = 2000	culture_company
-- SELECT AVG( budget_million ) , MAX( budget_million ) , MIN( budget_million ) FROM movie WHERE year<2000	culture_company
-- SELECT AVG( budget_million ) , MAX( budget_million ) , MIN( budget_million ) FROM movie WHERE year<2000	culture_company
