SELECT count(*) FROM head WHERE age  >  56	department_management
SELECT name ,  born_state ,  age FROM head ORDER BY age	department_management
SELECT creation ,  name ,  budget_in_billions FROM department	department_management
SELECT max(budget_in_billions) ,  min(budget_in_billions) FROM department	department_management
SELECT avg(num_employees) FROM department WHERE ranking BETWEEN 10 AND 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING count(*)  >=  3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1	department_management
SELECT count(DISTINCT temporary_acting) FROM management	department_management
SELECT head_id ,  name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT count(*) FROM farm	farm
SELECT count(*) FROM farm	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000	farm
SELECT max(Cows) ,  min(Cows) FROM farm	farm
SELECT max(Cows) ,  min(Cows) FROM farm	farm
SELECT count(DISTINCT Status) FROM city	farm
SELECT count(DISTINCT Status) FROM city	farm
SELECT Official_Name FROM city ORDER BY Population DESC	farm
SELECT Official_Name FROM city ORDER BY Population DESC	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Census_Ranking FROM city WHERE Status != "Village"	farm
SELECT Census_Ranking FROM city WHERE Status != "Village"	farm
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT date FROM weather WHERE max_temperature_f  >  85	bike_1
SELECT date FROM weather WHERE max_temperature_f  >  85	bike_1
SELECT name FROM station WHERE lat  <  37.5	bike_1
SELECT name FROM station WHERE lat  <  37.5	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code	bike_1
SELECT count(DISTINCT bike_id) FROM trip	bike_1
SELECT count(DISTINCT bike_id) FROM trip	bike_1
SELECT count(DISTINCT city) FROM station	bike_1
SELECT count(DISTINCT city) FROM station	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View"	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View"	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103)	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103)	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1	bike_1
SELECT count(*) FROM book	book_2
SELECT Writer FROM book ORDER BY Writer ASC	book_2
SELECT Title FROM book ORDER BY Issues ASC	book_2
SELECT Title FROM book WHERE Writer != "Elaine Lee"	book_2
SELECT Title ,  Issues FROM book	book_2
SELECT Publication_Date FROM publication ORDER BY Price DESC	book_2
SELECT DISTINCT Publisher FROM publication WHERE Price  >  5000000	book_2
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1	book_2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3	book_2
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*)  >  1	book_2
SELECT Publisher ,  COUNT(*) FROM publication GROUP BY Publisher	book_2
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1	book_2
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1	book_2
SELECT Publisher FROM publication WHERE Price  >  10000000 INTERSECT SELECT Publisher FROM publication WHERE Price  <  5000000	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT Price FROM publication WHERE Publisher  =  "Person" OR Publisher  =  "Wiley"	book_2
SELECT count(*) FROM actor	musical
SELECT count(*) FROM actor	musical
SELECT Name FROM actor ORDER BY Name ASC	musical
SELECT Name FROM actor ORDER BY Name ASC	musical
SELECT Character ,  Duration FROM actor	musical
SELECT Character ,  Duration FROM actor	musical
SELECT Name FROM actor WHERE Age != 20	musical
SELECT Name FROM actor WHERE Age != 20	musical
SELECT Character FROM actor ORDER BY age DESC	musical
SELECT Character FROM actor ORDER BY age DESC	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse"	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse"	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT count(*) FROM follows	twitter_1
SELECT count(*) FROM follows GROUP BY f1	twitter_1
SELECT count(*) FROM tweets	twitter_1
SELECT count(DISTINCT UID) FROM tweets	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT text FROM tweets ORDER BY createdate	twitter_1
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
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
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
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
SELECT DISTINCT name FROM genres;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT name FROM playlists;	store_1
SELECT name FROM playlists;	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT count(*) FROM editor	journal_committee
SELECT Name FROM editor ORDER BY Age ASC	journal_committee
SELECT Name ,  Age FROM editor	journal_committee
SELECT Name FROM editor WHERE Age  >  25	journal_committee
SELECT Name FROM editor WHERE Age  =  24 OR Age  =  25	journal_committee
SELECT Name FROM editor ORDER BY Age ASC LIMIT 1	journal_committee
SELECT Age ,  COUNT(*) FROM editor GROUP BY Age	journal_committee
SELECT Age FROM editor GROUP BY Age ORDER BY COUNT(*) DESC LIMIT 1	journal_committee
SELECT DISTINCT Theme FROM journal	journal_committee
SELECT count(*) FROM track	race_track
SELECT count(*) FROM track	race_track
SELECT name ,  LOCATION FROM track	race_track
SELECT name ,  LOCATION FROM track	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track)	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track)	race_track
SELECT DISTINCT LOCATION FROM track	race_track
SELECT DISTINCT LOCATION FROM track	race_track
SELECT count(*) FROM race	race_track
SELECT count(*) FROM race	race_track
SELECT DISTINCT CLASS FROM race	race_track
SELECT DISTINCT CLASS FROM race	race_track
SELECT name ,  CLASS ,  date FROM race	race_track
SELECT name ,  CLASS ,  date FROM race	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000	race_track
SELECT count(*) FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT count(*) ,  address FROM member GROUP BY address	coffee_shop
SELECT name FROM member WHERE address  =  'Harford' OR address  =  'Waterbury'	coffee_shop
SELECT name ,  member_id FROM member WHERE Membership_card  =  'Black' OR age  <  30	coffee_shop
SELECT Time_of_purchase ,  age ,  address FROM member ORDER BY Time_of_purchase	coffee_shop
SELECT Membership_card FROM member GROUP BY Membership_card HAVING count(*)  >  5	coffee_shop
SELECT address FROM member WHERE age  <  30 INTERSECT SELECT address FROM member WHERE age  >  40	coffee_shop
SELECT membership_card FROM member WHERE address  =  'Hartford' INTERSECT SELECT membership_card FROM member WHERE address  =  'Waterbury'	coffee_shop
SELECT count(*) FROM member WHERE address != 'Hartford'	coffee_shop
SELECT address FROM member EXCEPT SELECT address FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT address FROM shop ORDER BY open_year	coffee_shop
SELECT avg(num_of_staff) ,  avg(score) FROM shop	coffee_shop
SELECT shop_id ,  address FROM shop WHERE score  <  (SELECT avg(score) FROM shop)	coffee_shop
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
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
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760";	phone_1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation";	phone_1
SELECT Hardware_Model_name ,  Company_name FROM phone WHERE Accreditation_type LIKE 'Full';	phone_1
SELECT Company_name ,  count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1;	phone_1
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*)  >  1;	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_level FROM phone GROUP BY Accreditation_level HAVING count(*)  >  3	phone_1
SELECT count(*) FROM country	match_season
SELECT count(*) FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT count(*) FROM climber	climbing
SELECT count(*) FROM climber	climbing
SELECT Name FROM climber ORDER BY Points DESC	climbing
SELECT Name FROM climber ORDER BY Points DESC	climbing
SELECT Name FROM climber WHERE Country != "Switzerland"	climbing
SELECT Name FROM climber WHERE Country != "Switzerland"	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom"	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom"	climbing
SELECT COUNT(DISTINCT Country) FROM climber	climbing
SELECT COUNT(DISTINCT Country) FROM climber	climbing
SELECT Name FROM mountain ORDER BY Name ASC	climbing
SELECT Name FROM mountain ORDER BY Name ASC	climbing
SELECT Country FROM mountain WHERE Height  >  5000	climbing
SELECT Country FROM mountain WHERE Height  >  5000	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT Birth_Place ,  COUNT(*) FROM people GROUP BY Birth_Place	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*)  >=  2	body_builder
SELECT Height ,  Weight FROM people ORDER BY Height DESC	body_builder
SELECT count(DISTINCT Birth_Place) FROM people	body_builder
SELECT count(*) FROM election	election_representative
SELECT Votes FROM election ORDER BY Votes DESC	election_representative
SELECT Date ,  Vote_Percent FROM election	election_representative
SELECT min(Vote_Percent) ,  max(Vote_Percent) FROM election	election_representative
SELECT Name ,  Party FROM representative	election_representative
SELECT Lifespan FROM representative WHERE State  =  "New York" OR State  =  "Indiana"	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	election_representative
SELECT Party FROM representative GROUP BY Party HAVING COUNT(*)  >=  3	election_representative
SELECT State FROM representative GROUP BY State HAVING COUNT(*)  >=  2	election_representative
SELECT Party FROM representative WHERE State  =  "New York" INTERSECT SELECT Party FROM representative WHERE State  =  "Pennsylvania"	election_representative
SELECT count(DISTINCT Party) FROM representative	election_representative
SELECT count(*) FROM game WHERE season  >  2007	game_injury
SELECT Date FROM game ORDER BY home_team DESC	game_injury
SELECT season ,  home_team ,  away_team FROM game	game_injury
SELECT max(home_games) ,  min(home_games) ,  avg(home_games) FROM stadium	game_injury
SELECT average_attendance FROM stadium WHERE capacity_percentage  >  100	game_injury
SELECT name FROM stadium WHERE name LIKE "%Bank%"	game_injury
SELECT count(*) FROM performance	performance_attendance
SELECT HOST FROM performance ORDER BY Attendance ASC	performance_attendance
SELECT Date ,  LOCATION FROM performance	performance_attendance
SELECT Attendance FROM performance WHERE LOCATION  =  "TD Garden" OR LOCATION  =  "Bell Centre"	performance_attendance
SELECT avg(Attendance) FROM performance	performance_attendance
SELECT Date FROM performance ORDER BY Attendance DESC LIMIT 1	performance_attendance
SELECT LOCATION ,  COUNT(*) FROM performance GROUP BY LOCATION	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION HAVING COUNT(*)  >=  2	performance_attendance
SELECT LOCATION FROM performance WHERE Attendance  >  2000 INTERSECT SELECT LOCATION FROM performance WHERE Attendance  <  1000	performance_attendance
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
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
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
SELECT count(*) FROM debate	debate
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC	debate
SELECT Date ,  Venue FROM debate	debate
SELECT Date FROM debate WHERE Num_of_Audience  >  150	debate
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36	debate
SELECT Party FROM people ORDER BY Age ASC LIMIT 1	debate
SELECT Party ,  COUNT(*) FROM people GROUP BY Party	debate
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	debate
SELECT DISTINCT Venue FROM debate	debate
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT name FROM church ORDER BY open_date DESC	wedding
SELECT open_date FROM church GROUP BY open_date HAVING count(*)  >=  2	wedding
SELECT organized_by ,  name FROM church WHERE open_date BETWEEN 1830 AND 1840	wedding
SELECT open_date ,  count(*) FROM church GROUP BY open_date	wedding
SELECT name ,  open_date FROM church ORDER BY open_date DESC LIMIT 3	wedding
SELECT count(*) FROM people WHERE is_male  =  'F' AND age  >  30	wedding
SELECT country FROM people WHERE age  <  25 INTERSECT SELECT country FROM people WHERE age  >  30	wedding
SELECT min(age) ,  max(age) ,  avg(age) FROM people	wedding
SELECT name ,  country FROM people WHERE age  <  (SELECT avg(age) FROM people)	wedding
SELECT count(*) FROM wedding WHERE YEAR  =  2016	wedding
SELECT country ,  count(*) FROM people GROUP BY country	wedding
SELECT COUNT (DISTINCT church_id) FROM wedding WHERE YEAR  =  2016	wedding
SELECT count(*) FROM artist	theme_gallery
SELECT count(*) FROM artist	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States'	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States'	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT i_id FROM item WHERE title  =  "orange"	epinions_1
SELECT * FROM item	epinions_1
SELECT count(*) FROM review	epinions_1
SELECT count(*) FROM useracct	epinions_1
SELECT avg(rating) ,  max(rating) FROM review	epinions_1
SELECT min(rank) FROM review	epinions_1
SELECT count(DISTINCT u_id) FROM review	epinions_1
SELECT count(DISTINCT i_id) FROM review	epinions_1
SELECT title FROM item ORDER BY title	epinions_1
SELECT count(*) FROM player	riding_club
SELECT Player_name FROM player ORDER BY Votes ASC	riding_club
SELECT Gender ,  Occupation FROM player	riding_club
SELECT Player_name ,  residence FROM player WHERE Occupation != "Researcher"	riding_club
SELECT Sponsor_name FROM player WHERE Residence  =  "Brandon" OR Residence  =  "Birtle"	riding_club
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1	riding_club
SELECT Occupation ,  COUNT(*) FROM player GROUP BY Occupation	riding_club
SELECT Occupation FROM player GROUP BY Occupation ORDER BY COUNT(*) DESC LIMIT 1	riding_club
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*)  >=  2	riding_club
SELECT Residence FROM player WHERE gender  =  "M" INTERSECT SELECT Residence FROM player WHERE gender  =  "F"	riding_club
SELECT count(*) FROM gymnast	gymnast
SELECT count(*) FROM gymnast	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(*) FROM accounts	small_bank_1
SELECT count(*) FROM accounts	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT count(*) FROM browser WHERE market_share  >=  5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id ,  name ,  market_share FROM browser	browser_web
SELECT max(market_share) ,  min(market_share) ,  avg(market_share) FROM browser	browser_web
SELECT id ,  market_share FROM browser WHERE name  =  'Safari'	browser_web
SELECT count(*) FROM wrestler	wrestler
SELECT count(*) FROM wrestler	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan"	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan"	wrestler
SELECT Name ,  LOCATION FROM wrestler	wrestler
SELECT Name ,  LOCATION FROM wrestler	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3	wrestler
SELECT Reign ,  Days_held FROM wrestler	wrestler
SELECT Reign ,  Days_held FROM wrestler	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
SELECT count(*) FROM school	school_finance
SELECT count(*) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name	school_finance
SELECT school_name ,  LOCATION ,  mascot FROM school	school_finance
SELECT sum(enrollment) ,  avg(enrollment) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment  >  (SELECT avg(enrollment) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment LIMIT 1	school_finance
SELECT avg(enrollment) ,  max(enrollment) ,  min(enrollment) FROM school	school_finance
SELECT county ,  count(*) ,  sum(enrollment) FROM school GROUP BY county	school_finance
SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount  <  9	school_finance
SELECT amount ,  donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT DISTINCT donator_name FROM endowment	school_finance
SELECT count(*) FROM budget WHERE budgeted  <  invested	school_finance
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1)	school_finance
SELECT count(*) FROM building	protein_institute
SELECT name ,  street_address ,  floors FROM building ORDER BY floors	protein_institute
SELECT name FROM building ORDER BY height_feet DESC LIMIT 1	protein_institute
SELECT avg(floors) ,  max(floors) ,  min(floors) FROM building	protein_institute
SELECT count(*) FROM building WHERE height_feet  >  (SELECT avg(height_feet) FROM building) OR floors  >  (SELECT avg(floors) FROM building)	protein_institute
SELECT name FROM building WHERE height_feet  >=  200 AND floors  >=  20	protein_institute
SELECT institution ,  LOCATION FROM institution WHERE founded  >  1990 AND TYPE  =  'Private'	protein_institute
SELECT TYPE ,  count(*) ,  sum(enrollment) FROM institution GROUP BY TYPE	protein_institute
SELECT TYPE FROM institution GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	protein_institute
SELECT TYPE FROM institution WHERE founded  >  1990 AND enrollment  >=  1000	protein_institute
SELECT DISTINCT TYPE FROM institution	protein_institute
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
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT first_name ,  last_name ,  gender_mf FROM customers WHERE good_or_bad_customer  =  'good' ORDER BY last_name	products_for_hire
SELECT avg(amount_due) FROM payments	products_for_hire
SELECT DISTINCT payment_type_code FROM payments	products_for_hire
SELECT payment_date FROM payments WHERE amount_paid  >  300 OR payment_type_code  =  'Check'	products_for_hire
SELECT count(*) FROM company	gas_company
SELECT count(*) FROM company	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA'	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA'	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT count(*) FROM region	party_people
SELECT count(*) FROM region	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label	party_people
SELECT count(DISTINCT party_name) FROM party	party_people
SELECT count(DISTINCT party_name) FROM party	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1	party_people
SELECT count(*) FROM pilot	pilot_record
SELECT Pilot_name FROM pilot ORDER BY Rank ASC	pilot_record
SELECT POSITION ,  Team FROM pilot	pilot_record
SELECT DISTINCT POSITION FROM pilot WHERE Age  >  30	pilot_record
SELECT Pilot_name FROM pilot WHERE Team  =  "Bradley" OR Team  =  "Fordham"	pilot_record
SELECT Join_Year FROM pilot ORDER BY Rank ASC LIMIT 1	pilot_record
SELECT Nationality ,  COUNT(*) FROM pilot GROUP BY Nationality	pilot_record
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	pilot_record
SELECT POSITION FROM pilot WHERE Join_Year  <  2000 INTERSECT SELECT POSITION FROM pilot WHERE Join_Year  >  2005	pilot_record
SELECT dname FROM department ORDER BY mgr_start_date	company_1
SELECT Dependent_name FROM dependent WHERE relationship  =  'Spouse'	company_1
SELECT count(*) FROM dependent WHERE sex  =  'F'	company_1
SELECT fname ,  lname FROM employee WHERE salary  >  30000	company_1
SELECT count(*) ,  sex FROM employee WHERE salary  <  50000 GROUP BY sex	company_1
SELECT fname ,  lname ,  address FROM employee ORDER BY Bdate	company_1
SELECT count(*) FROM participants WHERE participant_type_code  =  'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
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
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT count(*) FROM perpetrator	perpetrator
SELECT Date FROM perpetrator ORDER BY Killed DESC	perpetrator
SELECT Injured FROM perpetrator ORDER BY Injured ASC	perpetrator
SELECT avg(Injured) FROM perpetrator	perpetrator
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2	perpetrator
SELECT Country FROM perpetrator WHERE Injured  >  50 INTERSECT SELECT Country FROM perpetrator WHERE Injured  <  20	perpetrator
SELECT count(DISTINCT LOCATION) FROM perpetrator	perpetrator
SELECT max(YEAR) FROM perpetrator;	perpetrator
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM candidate	candidate_poll
SELECT count(*) FROM candidate	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT name FROM people ORDER BY date_of_birth	candidate_poll
SELECT name FROM people ORDER BY date_of_birth	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M'	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M'	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT * FROM people	candidate_poll
SELECT * FROM people	candidate_poll
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
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
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
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
SELECT count(*) FROM region	storm_record
SELECT count(*) FROM region	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC	storm_record
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
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
-- SELECT count(*) FROM journalist	news_report
-- SELECT Name FROM journalist ORDER BY Years_working ASC	news_report
-- SELECT Nationality ,  Age FROM journalist	news_report
-- SELECT Name FROM journalist WHERE Nationality  =  "England" OR Nationality  =  "Wales"	news_report
-- SELECT avg(Years_working) FROM journalist	news_report
-- SELECT Nationality FROM journalist ORDER BY Years_working DESC LIMIT 1	news_report
-- SELECT Nationality ,  COUNT(*) FROM journalist GROUP BY Nationality	news_report
-- SELECT Nationality FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	news_report
-- SELECT Nationality FROM journalist WHERE Years_working  >  10 INTERSECT SELECT Nationality FROM journalist WHERE Years_working  <  3	news_report
-- SELECT Date ,  Name ,  venue FROM event ORDER BY Event_Attendance DESC	news_report
-- SELECT avg(Event_Attendance) ,  max(Event_Attendance) FROM event	news_report
-- SELECT venue ,  name FROM event ORDER BY Event_Attendance DESC LIMIT 2	news_report
-- SELECT count(*) FROM customers	customer_deliveries
-- SELECT count(DISTINCT payment_method) FROM customers	customer_deliveries
-- SELECT truck_details FROM trucks ORDER BY truck_licence_number	customer_deliveries
-- SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1	customer_deliveries
-- SELECT customer_email ,  customer_name FROM customers WHERE payment_method  =  'Visa'	customer_deliveries
-- SELECT count(*) FROM authors	icfp_1
-- SELECT count(*) FROM authors	icfp_1
-- SELECT count(*) FROM papers	icfp_1
-- SELECT count(*) FROM papers	icfp_1
-- SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
-- SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
-- SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
-- SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
-- SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
-- SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
-- SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
-- SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
-- SELECT fname FROM authors ORDER BY fname	icfp_1
-- SELECT fname FROM authors ORDER BY fname	icfp_1
-- SELECT lname FROM authors ORDER BY lname	icfp_1
-- SELECT lname FROM authors ORDER BY lname	icfp_1
-- SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
-- SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
-- SELECT count(DISTINCT last_name) FROM actor	sakila_1
-- SELECT count(DISTINCT last_name) FROM actor	sakila_1
-- SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
-- SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
-- SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
-- SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
-- SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
-- SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
-- SELECT count(*) FROM customer WHERE active = '1'	sakila_1
-- SELECT count(*) FROM customer WHERE active = '1'	sakila_1
-- SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
-- SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
-- SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT sum(amount) FROM payment	sakila_1
-- SELECT sum(amount) FROM payment	sakila_1
-- SELECT count(DISTINCT language_id) FROM film	sakila_1
-- SELECT count(DISTINCT language_id) FROM film	sakila_1
-- SELECT title FROM film WHERE rating  =  'R'	sakila_1
-- SELECT title FROM film WHERE rating  =  'R'	sakila_1
-- SELECT count(*) FROM store	sakila_1
-- SELECT count(*) FROM store	sakila_1
-- SELECT count(DISTINCT rating) FROM film	sakila_1
-- SELECT count(DISTINCT rating) FROM film	sakila_1
-- SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
-- SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
-- SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
-- SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
-- SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
-- SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
-- SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
-- SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
-- SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
-- SELECT count(*) FROM bank	loan_1
-- SELECT count(*) FROM bank	loan_1
-- SELECT sum(no_of_customers) FROM bank	loan_1
-- SELECT sum(no_of_customers) FROM bank	loan_1
-- SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
-- SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
-- SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
-- SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
-- SELECT avg(no_of_customers) FROM bank	loan_1
-- SELECT avg(no_of_customers) FROM bank	loan_1
-- SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
-- SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
-- SELECT bname FROM bank WHERE state  =  'New York'	loan_1
-- SELECT bname FROM bank WHERE state  =  'New York'	loan_1
-- SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
-- SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
-- SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
-- SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
-- SELECT count(DISTINCT city) FROM bank	loan_1
-- SELECT count(DISTINCT city) FROM bank	loan_1
-- SELECT count(DISTINCT state) FROM bank	loan_1
-- SELECT count(DISTINCT state) FROM bank	loan_1
-- SELECT count(DISTINCT acc_type) FROM customer	loan_1
-- SELECT count(DISTINCT acc_type) FROM customer	loan_1
-- SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
-- SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
-- SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
-- SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
-- SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
-- SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
-- SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
-- SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
-- SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
-- SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
-- SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
-- SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
-- SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
-- SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
-- SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
-- SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
-- SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
-- SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
-- SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
-- SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
-- SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
-- SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
-- SELECT gender FROM staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1	assets_maintenance
-- SELECT local_authority ,  services FROM station	station_weather
-- SELECT train_number ,  name FROM train ORDER BY TIME	station_weather
-- SELECT TIME ,  train_number FROM train WHERE destination  =  'Chennai' ORDER BY TIME	station_weather
-- SELECT count(*) FROM train WHERE name LIKE "%Express%"	station_weather
-- SELECT train_number ,  TIME FROM train WHERE origin  =  'Chennai' AND destination  =  'Guruvayur'	station_weather
-- SELECT origin ,  count(*) FROM train GROUP BY origin	station_weather
-- SELECT count(DISTINCT services) FROM station	station_weather
-- SELECT origin FROM train GROUP BY origin HAVING count(*)  >  1	station_weather
-- SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
-- SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
-- SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
-- SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
-- SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
-- SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
-- SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
-- SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
-- SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
-- SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
-- SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
-- SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
-- SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
-- SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
-- SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
-- SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
-- SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
-- SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
-- SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
-- SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
-- SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
-- SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
-- SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
-- SELECT count(DISTINCT school_code) FROM department	college_1
-- SELECT count(DISTINCT school_code) FROM department	college_1
-- SELECT count(DISTINCT dept_name) FROM department	college_1
-- SELECT count(DISTINCT dept_name) FROM department	college_1
-- SELECT count(*) FROM employee	college_1
-- SELECT count(*) FROM employee	college_1
-- SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
-- SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
-- SELECT dept_name FROM department ORDER BY dept_name	college_1
-- SELECT dept_name FROM department ORDER BY dept_name	college_1
-- SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
-- SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
-- SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
-- SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
-- SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
-- SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
-- SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
-- SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
-- SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
-- SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
-- SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
-- SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
-- SELECT count(*) FROM club	sports_competition
-- SELECT count(*) FROM club	sports_competition
-- SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
-- SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
-- SELECT Competition_type ,  Country FROM competition	sports_competition
-- SELECT Competition_type ,  Country FROM competition	sports_competition
-- SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
-- SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
-- SELECT name FROM club ORDER BY Start_year ASC	sports_competition
-- SELECT name FROM club ORDER BY Start_year ASC	sports_competition
-- SELECT name FROM club ORDER BY name DESC	sports_competition
-- SELECT name FROM club ORDER BY name DESC	sports_competition
-- SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
-- SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
-- SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
-- SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
-- SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
-- SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
-- SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
-- SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
-- SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
-- SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
-- SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
-- SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
-- SELECT sum(Points) FROM player	sports_competition
-- SELECT sum(Points) FROM player	sports_competition
-- SELECT count(DISTINCT POSITION) FROM player	sports_competition
-- SELECT count(DISTINCT POSITION) FROM player	sports_competition
-- SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
-- SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
-- SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
-- SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
-- SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
-- SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
-- SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
-- SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
-- SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
-- SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
-- SELECT sum(num_of_component) FROM furniture	manufacturer
-- SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
-- SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
-- SELECT Num_of_Component ,  name FROM furniture WHERE Num_of_Component  >  10	manufacturer
-- SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
-- SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
-- SELECT avg(Num_of_Factories) FROM manufacturer WHERE num_of_shops  >  20	manufacturer
-- SELECT name ,  manufacturer_id FROM manufacturer ORDER BY open_year	manufacturer
-- SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
-- SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
-- SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
-- SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
-- SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
-- SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
-- SELECT * FROM employees WHERE department_id  =  "null"	hr_1
-- SELECT * FROM employees WHERE department_id  =  "null"	hr_1
-- SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
-- SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
-- SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
-- SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
-- SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
-- SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
-- SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
-- SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
-- SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
-- SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
-- SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
-- SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
-- SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
-- SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
-- SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
-- SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
-- SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
-- SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
-- SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
-- SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
-- SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
-- SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
-- SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
-- SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
-- SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
-- SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
-- SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
-- SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
-- SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
-- SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
-- SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
-- SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
-- SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
-- SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
-- SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
-- SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
-- SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
-- SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
-- SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
-- SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
-- SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
-- SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
-- SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
-- SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
-- SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
-- SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
-- SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
-- SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
-- SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
-- SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
-- SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
-- SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
-- SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
-- SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
-- SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
-- SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
-- SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
-- SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
-- SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
-- SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
-- SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
-- SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
-- SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
-- SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
-- SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
-- SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
-- SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
-- SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
-- SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
-- SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
-- SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
-- SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
-- SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
-- SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
-- SELECT song_name FROM song WHERE languages  =  "english"	music_1
-- SELECT song_name FROM song WHERE languages  =  "english"	music_1
-- SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
-- SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
-- SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
-- SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
-- SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
-- SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
-- SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
-- SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
-- SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
-- SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
-- SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
-- SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
-- SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
-- SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
-- SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
-- SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
-- SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
-- SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
-- SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
-- SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
-- SELECT song_name FROM song ORDER BY resolution	music_1
-- SELECT song_name FROM song ORDER BY resolution	music_1
-- SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
-- SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
-- SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
-- SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
-- SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
-- SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
-- SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
-- SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
-- SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
-- SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
-- SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
-- SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
-- SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
-- SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
-- SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
-- SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
-- SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
-- SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
-- SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
-- SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
-- SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
-- SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
-- SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
-- SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
-- SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
-- SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
-- SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
-- SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
-- SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
-- SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
-- SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
-- SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
-- SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
-- SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
-- SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
-- SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
-- SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
-- SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
-- SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
-- SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
-- SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
-- SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
-- SELECT id ,  color ,  name FROM photos	mountain_photos
-- SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
-- SELECT avg(prominence) FROM mountain WHERE country  =  'Morocco'	mountain_photos
-- SELECT name ,  height ,  prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
-- SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
-- SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
-- SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
-- SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
-- SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
-- SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
-- SELECT count(*) FROM program	program_share
-- SELECT count(*) FROM program	program_share
-- SELECT name FROM program ORDER BY launch	program_share
-- SELECT name FROM program ORDER BY launch	program_share
-- SELECT name ,  origin ,  OWNER FROM program	program_share
-- SELECT name ,  origin ,  OWNER FROM program	program_share
-- SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
-- SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
-- SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
-- SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
-- SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
-- SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
-- SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
-- SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
-- SELECT origin FROM program ORDER BY origin	program_share
-- SELECT origin FROM program ORDER BY origin	program_share
-- SELECT count(DISTINCT OWNER) FROM channel	program_share
-- SELECT count(DISTINCT OWNER) FROM channel	program_share
-- SELECT name FROM program WHERE origin != 'Beijing'	program_share
-- SELECT name FROM program WHERE origin != 'Beijing'	program_share
-- SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
-- SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
-- SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
-- SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
-- SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
-- SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
-- SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
-- SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
-- SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
-- SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
-- SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
-- SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
-- SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
-- SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
-- SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
-- SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
-- SELECT count(DISTINCT roomtype) FROM room	hospital_1
-- SELECT count(DISTINCT roomtype) FROM room	hospital_1
-- SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
-- SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
-- SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
-- SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
-- SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
-- SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
-- SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
-- SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
-- SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
-- SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
-- SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
-- SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
-- SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
-- SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
-- SELECT count(*) FROM appointment	hospital_1
-- SELECT count(*) FROM appointment	hospital_1
-- SELECT count(*) FROM ship	ship_mission
-- SELECT count(*) FROM ship	ship_mission
-- SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
-- SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
-- SELECT TYPE ,  Nationality FROM ship	ship_mission
-- SELECT TYPE ,  Nationality FROM ship	ship_mission
-- SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
-- SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
-- SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
-- SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
-- SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
-- SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
-- SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
-- SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
-- SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
-- SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
-- SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
-- SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
-- SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
-- SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
-- SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
-- SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
-- SELECT count(*) FROM list	student_1
-- SELECT count(*) FROM list	student_1
-- SELECT lastname FROM list WHERE classroom  =  111	student_1
-- SELECT lastname FROM list WHERE classroom  =  111	student_1
-- SELECT firstname FROM list WHERE classroom  =  108	student_1
-- SELECT firstname FROM list WHERE classroom  =  108	student_1
-- SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
-- SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
-- SELECT DISTINCT classroom ,  grade FROM list	student_1
-- SELECT DISTINCT classroom ,  grade FROM list	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
-- SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
-- SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
-- SELECT firstname FROM teachers WHERE classroom  =  110	student_1
-- SELECT firstname FROM teachers WHERE classroom  =  110	student_1
-- SELECT lastname FROM teachers WHERE classroom  =  109	student_1
-- SELECT lastname FROM teachers WHERE classroom  =  109	student_1
-- SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
-- SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
-- SELECT DISTINCT firstname ,  lastname FROM list	student_1
-- SELECT DISTINCT firstname ,  lastname FROM list	student_1
-- SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
-- SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
-- SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
-- SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
-- SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
-- SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
-- SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
-- SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
-- SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
-- SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
-- SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
-- SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
-- SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
-- SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
-- SELECT count(*) FROM company WHERE Headquarters  =  'USA'	company_employee
-- SELECT Name FROM company ORDER BY Sales_in_Billion ASC	company_employee
-- SELECT Headquarters ,  Industry FROM company	company_employee
-- SELECT Name FROM company WHERE Industry  =  "Banking" OR Industry  =  "Retailing"	company_employee
-- SELECT max(Market_Value_in_Billion) ,  min(Market_Value_in_Billion) FROM company	company_employee
-- SELECT Headquarters FROM company ORDER BY Sales_in_Billion DESC LIMIT 1	company_employee
-- SELECT Headquarters ,  COUNT(*) FROM company GROUP BY Headquarters	company_employee
-- SELECT Headquarters FROM company GROUP BY Headquarters ORDER BY COUNT(*) DESC LIMIT 1	company_employee
-- SELECT Headquarters FROM company GROUP BY Headquarters HAVING COUNT(*)  >=  2	company_employee
-- SELECT Headquarters FROM company WHERE Industry  =  "Banking" INTERSECT SELECT Headquarters FROM company WHERE Industry  =  "Oil and gas"	company_employee
-- SELECT name FROM company WHERE Sales_in_Billion  >  200 ORDER BY Sales_in_Billion ,  Profits_in_Billion DESC	company_employee
-- SELECT count(*) FROM film	film_rank
-- SELECT count(*) FROM film	film_rank
-- SELECT DISTINCT Director FROM film	film_rank
-- SELECT DISTINCT Director FROM film	film_rank
-- SELECT avg(Gross_in_dollar) FROM film	film_rank
-- SELECT avg(Gross_in_dollar) FROM film	film_rank
-- SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
-- SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
-- SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
-- SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
-- SELECT Country FROM market ORDER BY Country ASC	film_rank
-- SELECT Country FROM market ORDER BY Country ASC	film_rank
-- SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
-- SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
-- SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
-- SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
-- SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
-- SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
-- SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
-- SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
-- SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
-- SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
-- SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
-- SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
-- SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
-- SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
-- SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
-- SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
-- SELECT count(*) FROM club	club_1
-- SELECT count(*) FROM club	club_1
-- SELECT clubname FROM club	club_1
-- SELECT clubname FROM club	club_1
-- SELECT count(*) FROM student	club_1
-- SELECT count(*) FROM student	club_1
-- SELECT DISTINCT fname FROM student	club_1
-- SELECT DISTINCT fname FROM student	club_1
-- SELECT clubdesc FROM club WHERE clubname  =  "Tennis Club"	club_1
-- SELECT clubdesc FROM club WHERE clubname  =  "Tennis Club"	club_1
-- SELECT clubdesc FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
-- SELECT clubdesc FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Tennis Club"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Tennis Club"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Hopkins Student Enterprises"	club_1
-- SELECT clublocation FROM club WHERE clubname  =  "Hopkins Student Enterprises"	club_1
-- SELECT clubname FROM club WHERE clublocation  =  "AKW"	club_1
-- SELECT clubname FROM club WHERE clublocation  =  "AKW"	club_1
-- SELECT count(*) FROM club WHERE clublocation  =  "HHH"	club_1
-- SELECT count(*) FROM club WHERE clublocation  =  "HHH"	club_1
-- SELECT homepage FROM journal WHERE name  =  "PVLDB";	academic
-- SELECT homepage FROM author WHERE name  =  "H. V. Jagadish";	academic
-- SELECT abstract FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT YEAR FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT YEAR FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT title FROM publication WHERE YEAR  >  2000;	academic
-- SELECT homepage FROM conference WHERE name  =  "VLDB";	academic
-- SELECT keyword FROM keyword;	academic
-- SELECT name FROM organization;	academic
-- SELECT name FROM organization WHERE continent  =  "North America";	academic
-- SELECT homepage FROM organization WHERE name  =  "University of Michigan";	academic
-- SELECT reference_num FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT reference_num FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT citation_num FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT citation_num FROM publication WHERE title  =  "Making database systems usable";	academic
-- SELECT title FROM publication WHERE citation_num  >  200;	academic
-- SELECT title FROM publication WHERE citation_num  >  200 AND YEAR  >  2000;	academic
-- SELECT YEAR  ,  SUM ( citation_num ) FROM publication WHERE title  =  "Making database systems usable" GROUP BY YEAR;	academic
-- SELECT COUNT ( DISTINCT title ) FROM publication WHERE YEAR  >  2000;	academic
-- SELECT COUNT ( DISTINCT keyword ) FROM keyword;	academic
-- SELECT COUNT ( DISTINCT name ) FROM organization;	academic
-- SELECT COUNT ( DISTINCT name ) FROM organization WHERE continent  =  "North America";	academic
-- SELECT title FROM publication ORDER BY citation_num DESC LIMIT 1;	academic
-- SELECT title FROM publication WHERE YEAR  >  2000 ORDER BY citation_num DESC LIMIT 1;	academic
-- SELECT count(*) FROM member	decoration_competition
-- SELECT Name FROM member ORDER BY Name ASC	decoration_competition
-- SELECT Name ,  Country FROM member	decoration_competition
-- SELECT Name FROM member WHERE Country  =  "United States" OR Country  =  "Canada"	decoration_competition
-- SELECT Country ,  COUNT(*) FROM member GROUP BY Country	decoration_competition
-- SELECT Country FROM member GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	decoration_competition
-- SELECT Country FROM member GROUP BY Country HAVING COUNT(*)  >  2	decoration_competition
-- SELECT Leader_Name ,  College_Location FROM college	decoration_competition
-- SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
-- SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
-- SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
-- SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
-- SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
-- SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
-- SELECT avg(access_count) FROM documents	document_management
-- SELECT avg(access_count) FROM documents	document_management
-- SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
-- SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
-- SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
-- SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
-- SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
-- SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
-- SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
-- SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
-- SELECT count(*) FROM users WHERE user_login  =  1	document_management
-- SELECT count(*) FROM users WHERE user_login  =  1	document_management
-- SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
-- SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
-- SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
-- SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
-- SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
-- SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
-- SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
-- SELECT name FROM buildings ORDER BY Height DESC	company_office
-- SELECT name FROM buildings ORDER BY Height DESC	company_office
-- SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
-- SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
-- SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
-- SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
-- SELECT count(*) FROM artwork	entertainment_awards
-- SELECT Name FROM artwork ORDER BY Name ASC	entertainment_awards
-- SELECT Name FROM artwork WHERE TYPE != "Program Talent Show"	entertainment_awards
-- SELECT TYPE ,  COUNT(*) FROM artwork GROUP BY TYPE	entertainment_awards
-- SELECT TYPE FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	entertainment_awards
-- SELECT count(*) FROM premises	customers_campaigns_ecommerce
-- SELECT DISTINCT premises_type FROM premises	customers_campaigns_ecommerce
-- SELECT premises_type ,  premise_details FROM premises ORDER BY premises_type	customers_campaigns_ecommerce
-- SELECT premises_type ,  count(*) FROM premises GROUP BY premises_type	customers_campaigns_ecommerce
-- SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
-- SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
-- SELECT count(DISTINCT product_type_code) FROM products	department_store
-- SELECT count(DISTINCT product_type_code) FROM products	department_store
-- SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
-- SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
-- SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
-- SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
-- SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
-- SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
-- SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
-- SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
-- SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
-- SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
-- SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
-- SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
-- SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
-- SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
-- SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
-- SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
-- SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
-- SELECT count(*) FROM aircraft	aircraft
-- SELECT count(*) FROM aircraft	aircraft
-- SELECT Description FROM aircraft	aircraft
-- SELECT Description FROM aircraft	aircraft
-- SELECT avg(International_Passengers) FROM airport	aircraft
-- SELECT avg(International_Passengers) FROM airport	aircraft
-- SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
-- SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
-- SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
-- SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
-- SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
-- SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
-- SELECT Name FROM pilot WHERE Age  >=  25	aircraft
-- SELECT Name FROM pilot WHERE Age  >=  25	aircraft
-- SELECT Name FROM pilot ORDER BY Name ASC	aircraft
-- SELECT Name FROM pilot ORDER BY Name ASC	aircraft
-- SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
-- SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
-- SELECT Name FROM pilot ORDER BY Age DESC	aircraft
-- SELECT Name FROM pilot ORDER BY Age DESC	aircraft
-- SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
-- SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
-- SELECT organization_id FROM organizations EXCEPT SELECT parent_organization_id FROM organizations	local_govt_and_lot
-- SELECT DISTINCT date_moved_in FROM residents	local_govt_and_lot
-- SELECT count(*) FROM school	school_player
-- SELECT count(*) FROM school	school_player
-- SELECT LOCATION FROM school ORDER BY Enrollment ASC	school_player
-- SELECT LOCATION FROM school ORDER BY Enrollment ASC	school_player
-- SELECT LOCATION FROM school ORDER BY Founded DESC	school_player
-- SELECT LOCATION FROM school ORDER BY Founded DESC	school_player
-- SELECT Enrollment FROM school WHERE Denomination != "Catholic"	school_player
-- SELECT Enrollment FROM school WHERE Denomination != "Catholic"	school_player
-- SELECT avg(Enrollment) FROM school	school_player
-- SELECT avg(Enrollment) FROM school	school_player
-- SELECT Team FROM player ORDER BY Team ASC	school_player
-- SELECT Team FROM player ORDER BY Team ASC	school_player
-- SELECT count(DISTINCT POSITION) FROM player	school_player
-- SELECT count(DISTINCT POSITION) FROM player	school_player
-- SELECT Team FROM player ORDER BY Age DESC LIMIT 1	school_player
-- SELECT Team FROM player ORDER BY Age DESC LIMIT 1	school_player
-- SELECT Team FROM player ORDER BY Age DESC LIMIT 5	school_player
-- SELECT Team FROM player ORDER BY Age DESC LIMIT 5	school_player
-- SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination	school_player
-- SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination	school_player
-- SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC	school_player
-- SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC	school_player
-- SELECT School_Colors FROM school ORDER BY Enrollment DESC LIMIT 1	school_player
-- SELECT School_Colors FROM school ORDER BY Enrollment DESC LIMIT 1	school_player
-- SELECT Denomination FROM school WHERE Founded  <  1890 INTERSECT SELECT Denomination FROM school WHERE Founded  >  1900	school_player
-- SELECT Denomination FROM school WHERE Founded  <  1890 INTERSECT SELECT Denomination FROM school WHERE Founded  >  1900	school_player
-- SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*)  >  1	school_player
-- SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*)  >  1	school_player
-- SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
-- SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
-- SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
-- SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
-- SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
-- SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
-- SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
-- SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
-- SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
-- SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
-- SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
-- SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
-- SELECT avg(pages_per_minute_color) FROM product	store_product
-- SELECT avg(pages_per_minute_color) FROM product	store_product
-- SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
-- SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
-- SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
-- SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
-- SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
-- SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
-- SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
-- SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
-- SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
-- SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
-- SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
-- SELECT count(DISTINCT cName) FROM tryout	soccer_2
-- SELECT count(DISTINCT cName) FROM tryout	soccer_2
-- SELECT count(DISTINCT pPos) FROM tryout	soccer_2
-- SELECT count(DISTINCT pPos) FROM tryout	soccer_2
-- SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
-- SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
-- SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
-- SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
-- SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
-- SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
-- SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
-- SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
-- SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
-- SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
-- SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
-- SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
-- SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
-- SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
-- SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
-- SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
-- SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
-- SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
-- SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
-- SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
-- SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
-- SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
-- SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
-- SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
-- SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
-- SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
-- SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
-- SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
-- SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
-- SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
-- SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
-- SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
-- SELECT release_year FROM movie WHERE title  =  "The Imitation Game";	imdb
-- SELECT release_year FROM movie WHERE title  =  "The Imitation Game";	imdb
-- SELECT birth_year FROM actor WHERE name  =  "Benedict Cumberbatch";	imdb
-- SELECT birth_year FROM actor WHERE name  =  "Benedict Cumberbatch";	imdb
-- SELECT nationality FROM actor WHERE name  =  "Christoph Waltz";	imdb
-- SELECT nationality FROM actor WHERE name  =  "Christoph Waltz";	imdb
-- SELECT title FROM movie WHERE release_year  =  2015;	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
-- SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
-- SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
-- SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
-- SELECT name FROM actor WHERE birth_year  =  1984;	imdb
-- SELECT birth_year FROM actor WHERE name  =  "actor_name0";	imdb
-- SELECT birth_year FROM actor WHERE name  =  "actor_name0";	imdb
-- SELECT birth_city FROM director WHERE name  =  "director_name0";	imdb
-- SELECT birth_city FROM director WHERE name  =  "director_name0";	imdb
-- SELECT nationality FROM director WHERE name  =  "director_name0";	imdb
-- SELECT budget FROM movie WHERE title  =  "Finding Nemo";	imdb
-- SELECT budget FROM movie WHERE release_year  =  2007 AND title  =  "Juno";	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
-- SELECT name FROM actor WHERE birth_city  =  "New York City" AND birth_year  =  1984;	imdb
-- SELECT name FROM actor WHERE birth_city  =  "Austin" AND gender  =  "female";	imdb
-- SELECT name FROM actor WHERE birth_year  >  1980 AND nationality  =  "Italy";	imdb
-- SELECT name FROM actor WHERE birth_city  =  "New York City" AND birth_year  >  1980 AND gender  =  "female";	imdb
-- SELECT name FROM director WHERE nationality  =  "Afghanistan";	imdb
-- SELECT COUNT ( DISTINCT title  ) FROM movie WHERE release_year  =  2013;	imdb
-- SELECT COUNT ( DISTINCT title  ) FROM movie WHERE release_year  =  2013;	imdb
-- SELECT COUNT ( DISTINCT name  ) FROM actor WHERE birth_city  =  "Los Angeles" AND birth_year  >  2000;	imdb
-- SELECT COUNT ( DISTINCT name  ) FROM actor WHERE birth_city  =  "New York City" AND birth_year  >  1980 AND gender  =  "female";	imdb
-- SELECT count(*) FROM device	device
-- SELECT count(*) FROM device	device
-- SELECT Carrier FROM device ORDER BY Carrier ASC	device
-- SELECT Carrier FROM device ORDER BY Carrier ASC	device
-- SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
-- SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
-- SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
-- SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
-- SELECT avg(Quantity) FROM stock	device
-- SELECT avg(Quantity) FROM stock	device
-- SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
-- SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
-- SELECT count(DISTINCT Software_Platform) FROM device	device
-- SELECT count(DISTINCT Software_Platform) FROM device	device
-- SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
-- SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
-- SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
-- SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
-- SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
-- SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
-- SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
-- SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
-- SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
-- SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
-- SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
-- SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
-- SELECT count(DISTINCT label) FROM albums	music_2
-- SELECT count(DISTINCT label) FROM albums	music_2
-- SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT title FROM songs WHERE title LIKE '% the %'	music_2
-- SELECT title FROM songs WHERE title LIKE '% the %'	music_2
-- SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
-- SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
-- SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
-- SELECT DISTINCT TYPE FROM vocals	music_2
-- SELECT DISTINCT TYPE FROM vocals	music_2
-- SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
-- SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
-- SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
-- SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
-- SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
-- SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
-- SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
-- SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
-- SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
-- SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
-- SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
-- SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
-- SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
-- SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
-- SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
-- SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
-- SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
-- SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
-- SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
-- SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
-- SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
-- SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
-- SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
-- SELECT name ,  price FROM products	manufactory_1
-- SELECT name ,  price FROM products	manufactory_1
-- SELECT name FROM products WHERE price  <=  200	manufactory_1
-- SELECT name FROM products WHERE price  <=  200	manufactory_1
-- SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
-- SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
-- SELECT avg(price) FROM products	manufactory_1
-- SELECT avg(price) FROM products	manufactory_1
-- SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
-- SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
-- SELECT count(*) FROM products WHERE price >= 180	manufactory_1
-- SELECT count(*) FROM products WHERE price >= 180	manufactory_1
-- SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
-- SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
-- SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
-- SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
-- SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
-- SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
-- SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
-- SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
-- SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
-- SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
-- SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
-- SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
-- SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
-- SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
-- SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
-- SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
-- SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
-- SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
-- SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
-- SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
-- SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
-- SELECT count(DISTINCT LEVEL) FROM member	shop_membership
-- SELECT count(DISTINCT LEVEL) FROM member	shop_membership
-- SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
-- SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
-- SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
-- SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
-- SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
-- SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
-- SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
-- SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
-- SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
-- SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
-- SELECT count(*) FROM products	products_gen_characteristics
-- SELECT count(*) FROM products	products_gen_characteristics
-- SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
-- SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
-- SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
-- SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
-- SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
-- SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
-- SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
-- SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
-- SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
-- SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
-- SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
-- SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
-- SELECT count(*) FROM event	swimming
-- SELECT name FROM event ORDER BY YEAR DESC	swimming
-- SELECT name FROM event ORDER BY YEAR DESC LIMIT 1	swimming
-- SELECT count(*) FROM stadium	swimming
-- SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
-- SELECT name FROM stadium WHERE capacity  <  (SELECT avg(capacity) FROM stadium)	swimming
-- SELECT country FROM stadium GROUP BY country ORDER BY count(*) DESC LIMIT 1	swimming
-- SELECT country FROM stadium GROUP BY country HAVING count(*)  <=  3	swimming
-- SELECT country FROM stadium WHERE capacity  >  60000 INTERSECT SELECT country FROM stadium WHERE capacity  <  50000	swimming
-- SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006	swimming
-- SELECT country ,  count(*) FROM stadium GROUP BY country	swimming
-- SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year  >  2006	swimming
-- SELECT count(*) FROM stadium WHERE country != 'Russia'	swimming
-- SELECT name FROM swimmer ORDER BY meter_100	swimming
-- SELECT count(DISTINCT nationality) FROM swimmer	swimming
-- SELECT nationality ,  count(*) FROM swimmer GROUP BY nationality HAVING count(*)  >  1	swimming
-- SELECT meter_200 ,  meter_300 FROM swimmer WHERE nationality  =  'Australia'	swimming
-- SELECT * FROM swimmer	swimming
-- SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005	swimming
-- SELECT count(*) FROM railway	railway
-- SELECT Builder FROM railway ORDER BY Builder ASC	railway
-- SELECT Wheels ,  LOCATION FROM railway	railway
-- SELECT max(LEVEL) FROM manager WHERE Country != "Australia "	railway
-- SELECT avg(Age) FROM manager	railway
-- SELECT Name FROM manager ORDER BY LEVEL ASC	railway
-- SELECT Name ,  Arrival FROM train	railway
-- SELECT Name FROM manager ORDER BY Age DESC LIMIT 1	railway
-- SELECT Builder ,  COUNT(*) FROM railway GROUP BY Builder	railway
-- SELECT Builder FROM railway GROUP BY Builder ORDER BY COUNT(*) DESC LIMIT 1	railway
-- SELECT LOCATION ,  COUNT(*) FROM railway GROUP BY LOCATION	railway
-- SELECT LOCATION FROM railway GROUP BY LOCATION HAVING COUNT(*)  >  1	railway
-- SELECT Country FROM manager WHERE Age  >  50 INTERSECT SELECT Country FROM manager WHERE Age  <  46	railway
-- SELECT DISTINCT Country FROM manager	railway
-- SELECT Working_year_starts FROM manager ORDER BY LEVEL DESC	railway
-- SELECT Country FROM manager WHERE Age  >  50 OR Age  <  46	railway
-- SELECT count(*) FROM addresses WHERE country  =  'USA'	customers_and_products_contacts
-- SELECT DISTINCT city FROM addresses	customers_and_products_contacts
-- SELECT state_province_county ,  count(*) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
-- SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*)  >=  2	customers_and_products_contacts
-- SELECT customer_name ,  customer_phone ,  payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
-- SELECT min(product_price) ,  max(product_price) ,  avg(product_price) FROM products	customers_and_products_contacts
-- SELECT count(*) FROM products WHERE product_price  >  (SELECT avg(product_price) FROM products)	customers_and_products_contacts
-- SELECT product_type_code ,  product_name FROM products WHERE product_price  >  1000 OR product_price  <  500	customers_and_products_contacts
-- SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
-- SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
-- SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
-- SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
-- SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
-- SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
-- SELECT fname FROM student WHERE age  >  20	dorm_1
-- SELECT fname FROM student WHERE age  >  20	dorm_1
-- SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
-- SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
-- SELECT count(*) FROM dorm	dorm_1
-- SELECT count(*) FROM dorm	dorm_1
-- SELECT sum(student_capacity) FROM dorm	dorm_1
-- SELECT sum(student_capacity) FROM dorm	dorm_1
-- SELECT count(*) FROM student	dorm_1
-- SELECT count(*) FROM student	dorm_1
-- SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
-- SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
-- SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
-- SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
-- SELECT count(DISTINCT gender) FROM dorm	dorm_1
-- SELECT count(DISTINCT gender) FROM dorm	dorm_1
-- SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
-- SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
-- SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
-- SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
-- SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
-- SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
-- SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
-- SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
-- SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
-- SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
-- SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
-- SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
-- SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
-- SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
-- SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
-- SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
-- SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
-- SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
-- SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
-- SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
-- SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
-- SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
-- SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
-- SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
-- SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
-- SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
-- SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
-- SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
-- SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
-- SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
-- SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
-- SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
-- SELECT count(*) FROM customers	customer_complaints
-- SELECT count(*) FROM customers	customer_complaints
-- SELECT email_address ,  phone_number FROM customers ORDER BY email_address ,  phone_number	customer_complaints
-- SELECT email_address ,  phone_number FROM customers ORDER BY email_address ,  phone_number	customer_complaints
-- SELECT town_city FROM customers WHERE customer_type_code  =  "Good Credit Rating" GROUP BY town_city ORDER BY count(*) LIMIT 1	customer_complaints
-- SELECT town_city FROM customers WHERE customer_type_code  =  "Good Credit Rating" GROUP BY town_city ORDER BY count(*) LIMIT 1	customer_complaints
-- SELECT product_description FROM products WHERE product_name  =  "Chocolate"	customer_complaints
-- SELECT product_description FROM products WHERE product_name  =  "Chocolate"	customer_complaints
-- SELECT product_name ,  product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
-- SELECT product_name ,  product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
-- SELECT avg(product_price) ,  product_category_code FROM products GROUP BY product_category_code	customer_complaints
-- SELECT avg(product_price) ,  product_category_code FROM products GROUP BY product_category_code	customer_complaints
-- SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*)  >  3	customer_complaints
-- SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*)  >  3	customer_complaints
-- SELECT last_name FROM staff WHERE email_address LIKE "%wrau%"	customer_complaints
-- SELECT last_name FROM staff WHERE email_address LIKE "%wrau%"	customer_complaints
-- SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
-- SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
-- SELECT count(DISTINCT complaint_type_code) FROM complaints	customer_complaints
-- SELECT count(DISTINCT complaint_type_code) FROM complaints	customer_complaints
-- SELECT address_line_1 ,  address_line_2 FROM customers WHERE email_address  =  "vbogisich@example.org"	customer_complaints
-- SELECT address_line_1 ,  address_line_2 FROM customers WHERE email_address  =  "vbogisich@example.org"	customer_complaints
-- SELECT complaint_status_code ,  count(*) FROM complaints WHERE complaint_type_code  =  "Product Failure" GROUP BY complaint_status_code	customer_complaints
-- SELECT complaint_status_code ,  count(*) FROM complaints WHERE complaint_type_code  =  "Product Failure" GROUP BY complaint_status_code	customer_complaints
-- SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1	customer_complaints
-- SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1	customer_complaints
-- SELECT count(*) FROM submission	workshop_paper
-- SELECT count(*) FROM submission	workshop_paper
-- SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
-- SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
-- SELECT Author ,  College FROM submission	workshop_paper
-- SELECT Author ,  College FROM submission	workshop_paper
-- SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
-- SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
-- SELECT avg(Scores) FROM submission	workshop_paper
-- SELECT avg(Scores) FROM submission	workshop_paper
-- SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
-- SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
-- SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
-- SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
-- SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
-- SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
-- SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
-- SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
-- SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
-- SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
-- SELECT customer_name FROM customers	customers_and_addresses
-- SELECT customer_name FROM customers	customers_and_addresses
-- SELECT count(*) FROM customers	customers_and_addresses
-- SELECT count(*) FROM customers	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method  =  "Cash"	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method  =  "Cash"	customers_and_addresses
-- SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20	customers_and_addresses
-- SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20	customers_and_addresses
-- SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
-- SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method  =  (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method  =  (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
-- SELECT DISTINCT payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT product_details FROM products	customers_and_addresses
-- SELECT DISTINCT product_details FROM products	customers_and_addresses
-- SELECT customer_name FROM customers WHERE customer_name LIKE "%Alex%"	customers_and_addresses
-- SELECT customer_name FROM customers WHERE customer_name LIKE "%Alex%"	customers_and_addresses
-- SELECT product_details FROM products WHERE product_details LIKE "%Latte%" OR product_details LIKE "%Americano%"	customers_and_addresses
-- SELECT product_details FROM products WHERE product_details LIKE "%Latte%" OR product_details LIKE "%Americano%"	customers_and_addresses
-- SELECT DISTINCT city FROM addresses	customers_and_addresses
-- SELECT DISTINCT city FROM addresses	customers_and_addresses
-- SELECT city FROM addresses WHERE zip_postcode  =  255	customers_and_addresses
-- SELECT city FROM addresses WHERE zip_postcode  =  255	customers_and_addresses
-- SELECT state_province_county ,  country FROM addresses WHERE zip_postcode LIKE "4%"	customers_and_addresses
-- SELECT state_province_county ,  country FROM addresses WHERE zip_postcode LIKE "4%"	customers_and_addresses
-- SELECT country FROM addresses GROUP BY country HAVING count(address_id)  >  4	customers_and_addresses
-- SELECT country FROM addresses GROUP BY country HAVING count(address_id)  >  4	customers_and_addresses
-- SELECT address_content FROM addresses WHERE city  =  "East Julianaside" AND state_province_county  =  "Texas" UNION SELECT address_content FROM addresses WHERE city  =  "Gleasonmouth" AND state_province_county  =  "Arizona"	customers_and_addresses
-- SELECT address_content FROM addresses WHERE city  =  "East Julianaside" AND state_province_county  =  "Texas" UNION SELECT address_content FROM addresses WHERE city  =  "Gleasonmouth" AND state_province_county  =  "Arizona"	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
-- SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
-- SELECT count(*) FROM artist	music_4
-- SELECT count(*) FROM artist	music_4
-- SELECT Age FROM artist	music_4
-- SELECT Age FROM artist	music_4
-- SELECT avg(Age) FROM artist	music_4
-- SELECT avg(Age) FROM artist	music_4
-- SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
-- SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
-- SELECT distinct(Famous_Release_date) FROM artist	music_4
-- SELECT distinct(Famous_Release_date) FROM artist	music_4
-- SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
-- SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
-- SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
-- SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
-- SELECT Song FROM volume ORDER BY Song	music_4
-- SELECT Song FROM volume ORDER BY Song	music_4
-- SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
-- SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
-- SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
-- SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
-- SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
-- SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
-- SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
-- SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
-- SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
-- SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
-- SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
-- SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
-- SELECT Name FROM country WHERE Languages != "German"	roller_coaster
-- SELECT count(DISTINCT rank) FROM captain	ship_1
-- SELECT count(DISTINCT rank) FROM captain	ship_1
-- SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
-- SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
-- SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
-- SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
-- SELECT name FROM captain ORDER BY age DESC	ship_1
-- SELECT name FROM captain ORDER BY age DESC	ship_1
-- SELECT name ,  CLASS ,  rank FROM captain	ship_1
-- SELECT name ,  CLASS ,  rank FROM captain	ship_1
-- SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
-- SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
-- SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
-- SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
-- SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
-- SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
-- SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
-- SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
-- SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
-- SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
-- SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
-- SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
-- SELECT count(*) FROM ship	ship_1
-- SELECT count(*) FROM ship	ship_1
-- SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
-- SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
-- SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
-- SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
-- SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
-- SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
-- SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
-- SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
-- SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
-- SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
-- SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
-- SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
-- SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
-- SELECT city FROM city WHERE regional_population  >  10000000	city_record
-- SELECT city FROM city WHERE regional_population  >  10000000	city_record
-- SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
-- SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
-- SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
-- SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
-- SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
-- SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
-- SELECT DISTINCT form_type_code FROM forms	e_government
-- SELECT DISTINCT form_type_code FROM forms	e_government
-- SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
-- SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
-- SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
-- SELECT count(*) FROM services	e_government
-- SELECT count(*) FROM services	e_government
-- SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
-- SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
-- SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
-- SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
-- SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
-- SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
-- SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
-- SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
-- SELECT count(DISTINCT payment_method_code) FROM parties	e_government
-- SELECT count(DISTINCT payment_method_code) FROM parties	e_government
-- SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
-- SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
-- SELECT count(*) FROM driver	school_bus
-- SELECT name ,  home_city ,  age FROM driver	school_bus
-- SELECT party ,  count(*) FROM driver GROUP BY party	school_bus
-- SELECT name FROM driver ORDER BY age DESC	school_bus
-- SELECT DISTINCT home_city FROM driver	school_bus
-- SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1	school_bus
-- SELECT party FROM driver WHERE home_city  =  'Hartford' AND age  >  40	school_bus
-- SELECT home_city FROM driver WHERE age  >  40 GROUP BY home_city HAVING count(*)  >=  2	school_bus
-- SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age  >  40	school_bus
-- SELECT TYPE FROM school GROUP BY TYPE HAVING count(*)  =  2	school_bus
-- SELECT count(*) FROM driver WHERE home_city  =  'Hartford' OR age  <  40	school_bus
-- SELECT name FROM driver WHERE home_city  =  'Hartford' AND age  <  40	school_bus
-- SELECT count(*) FROM flight WHERE velocity  >  200	flight_company
-- SELECT vehicle_flight_number ,  date ,  pilot FROM flight ORDER BY altitude ASC	flight_company
-- SELECT id ,  country ,  city ,  name FROM airport ORDER BY name	flight_company
-- SELECT avg(velocity) FROM flight WHERE pilot  =  'Thompson'	flight_company
-- SELECT name FROM airport WHERE country != 'Iceland'	flight_company
-- SELECT name FROM airport WHERE name LIKE '%international%'	flight_company
-- SELECT count(*) ,  country FROM airport GROUP BY country	flight_company
-- SELECT country FROM airport GROUP BY country HAVING count(*)  >  2	flight_company
-- SELECT pilot FROM flight GROUP BY pilot ORDER BY count(*) DESC LIMIT 1	flight_company
-- SELECT count(*) FROM scientists	scientist_1
-- SELECT count(*) FROM scientists	scientist_1
-- SELECT sum(hours) FROM projects	scientist_1
-- SELECT sum(hours) FROM projects	scientist_1
-- SELECT count(DISTINCT name) FROM projects	scientist_1
-- SELECT count(DISTINCT name) FROM projects	scientist_1
-- SELECT avg(hours) FROM projects	scientist_1
-- SELECT avg(hours) FROM projects	scientist_1
-- SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
-- SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
-- SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
-- SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
-- SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
-- SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
-- SELECT name FROM scientists ORDER BY name	scientist_1
-- SELECT name FROM scientists ORDER BY name	scientist_1
-- SELECT count(*) FROM station	train_station
-- SELECT name ,  LOCATION ,  number_of_platforms FROM station	train_station
-- SELECT DISTINCT LOCATION FROM station	train_station
-- SELECT name ,  total_passengers FROM station WHERE LOCATION != 'London'	train_station
-- SELECT name ,  main_services FROM station ORDER BY total_passengers DESC LIMIT 3	train_station
-- SELECT avg(total_passengers) ,  max(total_passengers) FROM station WHERE LOCATION  =  'London' OR LOCATION  =  'Glasgow'	train_station
-- SELECT LOCATION ,  sum(number_of_platforms) ,  sum(total_passengers) FROM station GROUP BY LOCATION	train_station
-- SELECT DISTINCT LOCATION FROM station WHERE number_of_platforms  >=  15 AND total_passengers  >  25	train_station
-- SELECT LOCATION FROM station EXCEPT SELECT LOCATION FROM station WHERE number_of_platforms  >=  15	train_station
-- SELECT LOCATION FROM station GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	train_station
-- SELECT name ,  TIME ,  service FROM train	train_station
-- SELECT count(*) FROM train	train_station
-- SELECT name ,  service FROM train ORDER BY TIME	train_station
-- SELECT LOCATION FROM station GROUP BY LOCATION HAVING count(*)  =  1	train_station
-- SELECT name ,  LOCATION FROM station ORDER BY Annual_entry_exit ,  Annual_interchanges	train_station
-- SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
-- SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
-- SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
-- SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
-- SELECT count(*) FROM airlines	flight_4
-- SELECT count(*) FROM airlines	flight_4
-- SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
-- SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
-- SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
-- SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
-- SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
-- SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
-- SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
-- SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
-- SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
-- SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
-- SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
-- SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
-- SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
-- SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
-- SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
-- SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
-- SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
-- SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
-- SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
-- SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
-- SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
-- SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
-- SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
-- SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
-- SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
-- SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
-- SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
-- SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
-- SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
-- SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
-- SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
-- SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
-- SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
-- SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
-- SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
-- SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
-- SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
-- SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
-- SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
-- SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
-- SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
-- SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
-- SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
-- SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
-- SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
-- SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
-- SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
-- SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
-- SELECT count(*) FROM architect WHERE gender  =  'female'	architecture
-- SELECT name ,  nationality ,  id FROM architect WHERE gender  =  'male' ORDER BY name	architecture
-- SELECT avg(length_feet) FROM bridge	architecture
-- SELECT name ,  built_year FROM mill WHERE TYPE  =  'Grondzeiler'	architecture
-- SELECT name FROM mill WHERE LOCATION != 'Donceel'	architecture
-- SELECT LOCATION FROM bridge WHERE name  =  'Kolob Arch' OR name  =  'Rainbow Bridge'	architecture
-- SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
-- SELECT TYPE ,  count(*) FROM mill GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	architecture
-- SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
-- SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
-- SELECT COUNT (DISTINCT director) FROM movie	culture_company
-- SELECT COUNT (DISTINCT director) FROM movie	culture_company
-- SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
-- SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
-- SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
-- SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
-- SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
-- SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
-- SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
-- SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
