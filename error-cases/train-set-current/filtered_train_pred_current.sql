SELECT COUNT( * ) FROM head WHERE head.age > 56	department_management
SELECT head.name , head.born_state , head.age FROM head ORDER BY head.age ASC	department_management
SELECT department.creation , department.name , department.budget_in_billions FROM department	department_management
SELECT MAX( department.budget_in_billions ) , MIN( department.budget_in_billions ) FROM department	department_management
SELECT AVG( department.num_employees ) FROM department WHERE department.ranking BETWEEN 10 and 15	department_management
SELECT head.name FROM head WHERE head.born_state != 'California'	department_management
SELECT head.born_state FROM head GROUP BY head.born_state HAVING COUNT( * ) >= 3	department_management
SELECT department.creation FROM department GROUP BY department.creation ORDER BY COUNT( * ) DESC LIMIT 1	department_management
SELECT COUNT( DISTINCT management.temporary_acting ) FROM management	department_management
SELECT head.head_id , head.name FROM head WHERE head.name LIKE '%Ha%'	department_management
SELECT COUNT( * ) FROM farm	farm
SELECT COUNT( * ) FROM farm	farm
SELECT farm.total_horses FROM farm ORDER BY farm.total_horses ASC	farm
SELECT farm.total_horses FROM farm ORDER BY farm.total_horses ASC	farm
SELECT AVG( farm.working_horses ) FROM farm WHERE farm.total_horses > 5000	farm
SELECT AVG( farm.working_horses ) FROM farm WHERE farm.total_horses > 5000	farm
SELECT MAX( farm.cows ) , MIN( farm.cows ) FROM farm	farm
SELECT MAX( farm.cows ) , MIN( farm.cows ) FROM farm	farm
SELECT COUNT( DISTINCT city.status ) FROM city	farm
SELECT COUNT( DISTINCT city.status ) FROM city	farm
SELECT city.official_name FROM city ORDER BY city.population DESC	farm
SELECT city.official_name FROM city ORDER BY city.population DESC	farm
SELECT city.official_name , city.status FROM city ORDER BY city.population DESC LIMIT 1	farm
SELECT city.official_name , city.status FROM city ORDER BY city.population DESC LIMIT 1	farm
SELECT city.status , AVG( city.population ) FROM city GROUP BY city.status	farm
SELECT city.status , AVG( city.population ) FROM city GROUP BY city.status	farm
SELECT city.status FROM city GROUP BY city.status ORDER BY COUNT( * ) ASC	farm
SELECT city.status FROM city GROUP BY city.status ORDER BY COUNT( * ) ASC	farm
SELECT city.status FROM city GROUP BY city.status ORDER BY COUNT( * ) DESC LIMIT 1	farm
SELECT city.status FROM city GROUP BY city.status ORDER BY COUNT( * ) DESC LIMIT 1	farm
SELECT city.status FROM city WHERE city.population > 1500 INTERSECT SELECT city.status FROM city WHERE city.population<500	farm
SELECT city.status FROM city WHERE city.population > 1500 INTERSECT SELECT city.status FROM city WHERE city.population<500	farm
SELECT city.official_name FROM city WHERE city.population > 1500 OR city.population<500	farm
SELECT city.official_name FROM city WHERE city.population > 1500 OR city.population<500	farm
SELECT city.census_ranking FROM city WHERE city.status != 'Village'	farm
SELECT city.census_ranking FROM city WHERE city.status != 'Village'	farm
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT courses.course_name FROM courses ORDER BY courses.course_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT people.first_name FROM people ORDER BY people.first_name ASC	student_assessment
SELECT weather.date FROM weather WHERE weather.max_temperature_f > 85	bike_1
SELECT weather.date FROM weather WHERE weather.max_temperature_f > 85	bike_1
SELECT station.name FROM station WHERE station.lat<37.5	bike_1
SELECT station.name FROM station WHERE station.lat<37.5	bike_1
SELECT station.city , MAX( station.lat ) FROM station GROUP BY station.city	bike_1
SELECT station.city , MAX( station.lat ) FROM station GROUP BY station.city	bike_1
SELECT trip.start_station_name , trip.end_station_name FROM trip ORDER BY trip.id ASC LIMIT 3	bike_1
SELECT trip.start_station_name , trip.end_station_name FROM trip ORDER BY trip.id ASC LIMIT 3	bike_1
SELECT AVG( station.lat ) , AVG( station.long ) FROM station WHERE station.city = 'San Jose'	bike_1
SELECT AVG( station.lat ) , AVG( station.long ) FROM station WHERE station.city = 'San Jose'	bike_1
SELECT trip.id FROM trip ORDER BY trip.duration ASC LIMIT 1	bike_1
SELECT trip.id FROM trip ORDER BY trip.duration ASC LIMIT 1	bike_1
SELECT SUM( trip.duration ) , MAX( trip.duration ) FROM trip WHERE trip.bike_id = 636	bike_1
SELECT SUM( trip.duration ) , MAX( trip.duration ) FROM trip WHERE trip.bike_id = 636	bike_1
SELECT weather.zip_code , AVG( weather.mean_temperature_f ) FROM weather WHERE weather.date = 'y' GROUP BY weather.zip_code	bike_1
SELECT weather.zip_code , AVG( weather.mean_temperature_f ) FROM weather WHERE weather.date LIKE '%8%' GROUP BY weather.zip_code	bike_1
SELECT COUNT( DISTINCT trip.bike_id ) FROM trip	bike_1
SELECT COUNT( DISTINCT trip.bike_id ) FROM trip	bike_1
SELECT COUNT( DISTINCT station.city ) FROM station	bike_1
SELECT COUNT( DISTINCT station.city ) FROM station	bike_1
SELECT COUNT( * ) FROM station WHERE station.city = 'Mountain View'	bike_1
SELECT COUNT( * ) FROM station WHERE station.city = 'Mountain View'	bike_1
station , trip	bike_1
SELECT trip.start_station_name , trip.start_station_id FROM trip WHERE trip.start_date = (SELECT trip.start_date FROM trip ORDER BY trip.start_date ASC LIMIT 1) GROUP BY trip.start_station_name ORDER BY COUNT( * ) DESC	bike_1
SELECT trip.bike_id FROM trip WHERE trip.zip_code = 94002 GROUP BY trip.bike_id ORDER BY COUNT( * ) DESC LIMIT 1	bike_1
SELECT trip.bike_id FROM trip WHERE trip.zip_code = 94002 GROUP BY trip.bike_id ORDER BY COUNT( * ) DESC LIMIT 1	bike_1
SELECT COUNT( * ) FROM weather WHERE weather.mean_humidity > 50 AND weather.mean_visibility_miles > 8	bike_1
SELECT COUNT( * ) FROM weather WHERE weather.mean_humidity > 50 AND weather.mean_visibility_miles > 8	bike_1
SELECT weather.cloud_cover FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY COUNT( * ) DESC LIMIT 3	bike_1
SELECT weather.cloud_cover FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY COUNT( * ) DESC LIMIT 3	bike_1
SELECT weather.zip_code FROM weather GROUP BY weather.zip_code ORDER BY AVG( weather.mean_sea_level_pressure_inches ) ASC LIMIT 1	bike_1
SELECT weather.zip_code FROM weather GROUP BY weather.zip_code ORDER BY AVG( weather.mean_sea_level_pressure_inches ) ASC LIMIT 1	bike_1
SELECT weather.date , weather.zip_code FROM weather WHERE weather.max_temperature_f >= 80	bike_1
SELECT weather.date , weather.zip_code FROM weather WHERE weather.max_temperature_f >= 80	bike_1
SELECT weather.zip_code , COUNT( * ) FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code	bike_1
SELECT weather.zip_code , COUNT( * ) FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code	bike_1
SELECT weather.date , weather.zip_code FROM weather WHERE weather.min_dew_point_f<(SELECT MIN( weather.min_dew_point_f ) FROM weather WHERE weather.zip_code = 94107)	bike_1
SELECT weather.date , weather.zip_code FROM weather WHERE weather.min_dew_point_f<(SELECT MIN( weather.min_dew_point_f ) FROM weather WHERE weather.zip_code = 94107)	bike_1
SELECT weather.date FROM weather WHERE weather.zip_code = 94107 AND weather.zip_code = 94107 AND weather.events != 'fog'	bike_1
SELECT station.name FROM station WHERE station.city = 'San Jose' EXCEPT SELECT station.name FROM station WHERE station.city = 'San Jose'	bike_1
SELECT station.name , station.lat , station.city FROM station ORDER BY station.lat ASC LIMIT 1	bike_1
SELECT station.name , station.lat , station.city FROM station ORDER BY station.lat ASC LIMIT 1	bike_1
SELECT weather.date , weather.mean_temperature_f , weather.mean_humidity FROM weather ORDER BY weather.max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT weather.date , weather.mean_temperature_f , weather.mean_humidity FROM weather ORDER BY weather.max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT station.city , COUNT( * ) FROM station GROUP BY station.city HAVING COUNT( * ) >= 15	bike_1
SELECT station.city , COUNT( * ) FROM station GROUP BY station.city HAVING COUNT( * ) >= 15	bike_1
SELECT trip.start_station_id , trip.start_station_name FROM trip GROUP BY trip.start_station_name HAVING COUNT( * ) >= 200	bike_1
SELECT trip.start_station_id , trip.start_station_name FROM trip GROUP BY trip.start_station_name HAVING COUNT( * ) >= 200	bike_1
SELECT weather.zip_code FROM weather GROUP BY weather.zip_code HAVING AVG( weather.mean_visibility_miles )<10	bike_1
SELECT weather.zip_code FROM weather GROUP BY weather.zip_code HAVING AVG( weather.mean_visibility_miles )<10	bike_1
SELECT station.city FROM station GROUP BY station.city ORDER BY MAX( station.lat ) DESC	bike_1
SELECT station.city FROM station GROUP BY station.city ORDER BY MAX( station.lat ) DESC	bike_1
SELECT weather.date , weather.cloud_cover FROM weather ORDER BY weather.cloud_cover DESC LIMIT 5	bike_1
SELECT weather.date , weather.cloud_cover FROM weather ORDER BY weather.cloud_cover DESC LIMIT 5	bike_1
SELECT trip.id , trip.duration FROM trip ORDER BY trip.duration DESC LIMIT 3	bike_1
SELECT trip.id , trip.duration FROM trip ORDER BY trip.duration DESC LIMIT 3	bike_1
SELECT DISTINCT trip.start_station_name FROM trip WHERE trip.duration<100	bike_1
SELECT DISTINCT trip.start_station_name FROM trip WHERE trip.duration<100	bike_1
SELECT DISTINCT weather.zip_code FROM weather EXCEPT SELECT DISTINCT weather.zip_code FROM weather WHERE weather.max_dew_point_f >= 70	bike_1
SELECT DISTINCT weather.zip_code FROM weather EXCEPT SELECT DISTINCT weather.zip_code FROM weather WHERE weather.max_dew_point_f >= 70	bike_1
SELECT trip.id FROM trip WHERE trip.duration >= (SELECT AVG( trip.duration ) FROM trip WHERE trip.zip_code = 94103)	bike_1
SELECT trip.id FROM trip WHERE trip.duration >= (SELECT AVG( trip.duration ) FROM trip WHERE trip.zip_code = 94103)	bike_1
SELECT weather.date FROM weather WHERE weather.mean_sea_level_pressure_inches >= 30.3 AND weather.mean_sea_level_pressure_inches <= 31	bike_1
SELECT weather.date FROM weather WHERE weather.mean_sea_level_pressure_inches >= 30.3 AND weather.mean_sea_level_pressure_inches <= 31	bike_1
SELECT weather.date , weather.min_temperature_f FROM weather ORDER BY weather.min_temperature_f ASC LIMIT 1	bike_1
SELECT weather.date , weather.mean_temperature_f FROM weather ORDER BY weather.mean_temperature_f ASC LIMIT 3	bike_1
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
SELECT COUNT( * ) FROM actor	musical
SELECT COUNT( * ) FROM actor	musical
SELECT actor.name FROM actor ORDER BY actor.name ASC	musical
SELECT actor.name FROM actor ORDER BY actor.name ASC	musical
SELECT actor.character , actor.duration FROM actor	musical
SELECT actor.character , actor.duration FROM actor	musical
SELECT actor.name FROM actor WHERE actor.age != 20	musical
SELECT actor.name FROM actor WHERE actor.age != 20	musical
SELECT actor.character FROM actor ORDER BY actor.age DESC	musical
SELECT actor.character FROM actor ORDER BY actor.age DESC	musical
SELECT actor.duration FROM actor ORDER BY actor.age DESC LIMIT 1	musical
SELECT actor.duration FROM actor ORDER BY actor.age DESC LIMIT 1	musical
SELECT musical.name FROM musical WHERE musical.nominee = 'Bob Fosse'	musical
SELECT musical.name FROM musical WHERE musical.nominee = 'Bob Fosse'	musical
SELECT DISTINCT musical.nominee FROM musical WHERE musical.award != 'Tony Award'	musical
SELECT DISTINCT musical.nominee FROM musical WHERE musical.award != 'Tony Award'	musical
SELECT musical.nominee , COUNT( * ) FROM musical GROUP BY musical.nominee	musical
SELECT musical.nominee , COUNT( * ) FROM musical GROUP BY musical.nominee	musical
SELECT musical.nominee FROM musical GROUP BY musical.nominee ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT musical.nominee FROM musical GROUP BY musical.nominee ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT musical.result FROM musical GROUP BY musical.result ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT musical.result FROM musical GROUP BY musical.result ORDER BY COUNT( * ) DESC LIMIT 1	musical
SELECT musical.nominee FROM musical GROUP BY musical.nominee HAVING COUNT( * ) > 2	musical
SELECT musical.nominee FROM musical GROUP BY musical.nominee HAVING COUNT( * ) > 2	musical
SELECT musical.nominee FROM musical WHERE musical.award = 'Tony Award' INTERSECT SELECT musical.nominee FROM musical WHERE musical.award = 'Drama Desk Award'	musical
SELECT musical.nominee FROM musical WHERE musical.award = 'Tony Award' INTERSECT SELECT musical.nominee FROM musical WHERE musical.award = 'Drama Desk Award'	musical
SELECT musical.nominee FROM musical WHERE musical.award = 'Bob Fosse' OR musical.award = 'Cleavant Derricks'	musical
SELECT musical.nominee FROM musical WHERE musical.award NOT IN (SELECT AVG( musical.award ) FROM musical)	musical
SELECT COUNT( * ) FROM follows	twitter_1
SELECT COUNT( * ) FROM follows	twitter_1
SELECT COUNT( * ) FROM tweets	twitter_1
SELECT COUNT( DISTINCT tweets.uid ) FROM tweets	twitter_1
SELECT tweets.text FROM tweets WHERE tweets.text LIKE '%intern%'	twitter_1
SELECT tweets.text FROM tweets ORDER BY tweets.createdate ASC	twitter_1
SELECT DISTINCT catalogs.catalog_publisher FROM catalogs WHERE catalogs.catalog_publisher LIKE '%Murray%'	product_catalog
SELECT DISTINCT catalogs.catalog_publisher FROM catalogs WHERE catalogs.catalog_publisher LIKE '%Murray%'	product_catalog
SELECT catalogs.catalog_publisher FROM catalogs GROUP BY catalogs.catalog_publisher ORDER BY COUNT( * ) DESC LIMIT 1	product_catalog
SELECT catalogs.catalog_publisher FROM catalogs GROUP BY catalogs.catalog_publisher ORDER BY COUNT( * ) DESC LIMIT 1	product_catalog
SELECT catalogs.date_of_latest_revision FROM catalogs GROUP BY catalogs.date_of_latest_revision HAVING COUNT( * ) > 1	product_catalog
SELECT catalogs.date_of_latest_revision FROM catalogs GROUP BY catalogs.date_of_latest_revision HAVING COUNT( * ) > 1	product_catalog
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , COUNT( * ) FROM invoices GROUP BY invoices.billing_country ORDER BY COUNT( * ) DESC LIMIT 5	store_1
SELECT invoices.billing_country , SUM( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY SUM( invoices.total ) DESC LIMIT 8	store_1
SELECT invoices.billing_country , SUM( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY SUM( invoices.total ) DESC LIMIT 8	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY AVG( invoices.total ) DESC LIMIT 10	store_1
SELECT invoices.billing_country , AVG( invoices.total ) FROM invoices GROUP BY invoices.billing_country ORDER BY AVG( invoices.total ) DESC	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
SELECT albums.title FROM albums WHERE albums.title LIKE '%A%' ORDER BY albums.title ASC	store_1
SELECT SUM( invoices.total ) FROM invoices WHERE invoices.billing_city = 'Chicago' AND invoices.billing_state = 'IL'	store_1
SELECT SUM( invoices.total ) FROM invoices WHERE invoices.billing_city = 'Chicago' AND invoices.billing_state = 'Chicago,'	store_1
SELECT COUNT( * ) FROM invoices WHERE invoices.billing_city = 'Chicago,' AND invoices.billing_state = 'IL'	store_1
SELECT COUNT( * ) FROM invoices WHERE invoices.billing_city = 'Chicago' AND invoices.billing_state = 'IL'	store_1
SELECT invoices.billing_state , COUNT( * ) FROM invoices WHERE invoices.billing_country = 'yes' GROUP BY invoices.billing_state	store_1
SELECT invoices.billing_state , COUNT( * ) FROM invoices GROUP BY invoices.billing_state	store_1
SELECT invoices.billing_state FROM invoices WHERE invoices.billing_country = 'invoices.billing_state' GROUP BY invoices.billing_state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT invoices.billing_state , COUNT( * ) FROM invoices GROUP BY invoices.billing_state ORDER BY COUNT( * ) DESC LIMIT 1	store_1
SELECT invoices.billing_state , COUNT( * ) , SUM( invoices.total ) FROM invoices GROUP BY invoices.billing_state	store_1
SELECT invoices.billing_state , COUNT( * ) , SUM( invoices.total ) FROM invoices WHERE invoices.billing_state = 'CA'	store_1
SELECT customers.company FROM customers WHERE customers.first_name = 'Eduardo' AND customers.last_name = 'Martins'	store_1
SELECT customers.company FROM customers WHERE customers.first_name = 'Eduardo' AND customers.last_name = 'Martins'	store_1
SELECT customers.email , customers.phone FROM customers WHERE customers.first_name = 'Astrid' AND customers.last_name = 'Gruber'	store_1
SELECT customers.email , customers.phone FROM customers WHERE customers.first_name = 'Astrid' AND customers.last_name = 'Gruber'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.city = 'Prague'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.state = 'CA'	store_1
SELECT COUNT( * ) FROM customers WHERE customers.state = 'California'	store_1
SELECT customers.country FROM customers WHERE customers.first_name = 'Roberto' AND customers.last_name = 'Almeida'	store_1
SELECT customers.country FROM customers WHERE customers.first_name = 'Roberto' AND customers.last_name = 'Almeida'	store_1
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.title , employees.phone , employees.hire_date FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees JOIN employees ON employees.id = employees.reports_to WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees JOIN employees ON employees.id = employees.reports_to WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.address FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.address FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT COUNT( * ) FROM employees WHERE employees.country = 'Canada'	store_1
SELECT COUNT( * ) FROM employees WHERE employees.country = 'Canada'	store_1
SELECT employees.phone FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.phone FROM employees WHERE employees.first_name = 'Nancy' AND employees.last_name = 'Edwards'	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.birth_date DESC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.birth_date DESC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.hire_date ASC LIMIT 10	store_1
SELECT employees.first_name , employees.last_name FROM employees ORDER BY employees.hire_date ASC LIMIT 10	store_1
SELECT COUNT( * ) , employees.city FROM employees WHERE employees.title = 'IT Staff' GROUP BY employees.city	store_1
SELECT COUNT( * ) , employees.city FROM employees WHERE employees.title = 'IT staff' GROUP BY employees.city	store_1
SELECT employees.first_name , employees.last_name , COUNT( employees.reports_to ) FROM employees JOIN employees ON employees.reports_to = employees.id GROUP BY employees.reports_to ORDER BY COUNT( employees.reports_to ) DESC LIMIT 1	store_1
SELECT employees.first_name , employees.last_name , COUNT( employees.reports_to ) FROM employees JOIN employees ON employees.reports_to = employees.id GROUP BY employees.reports_to ORDER BY COUNT( employees.reports_to ) DESC LIMIT 1	store_1
SELECT DISTINCT genres.name FROM genres	store_1
SELECT DISTINCT genres.name FROM genres	store_1
SELECT playlists.name FROM playlists	store_1
SELECT playlists.name FROM playlists	store_1
SELECT tracks.composer FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT tracks.composer FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT tracks.bytes FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT tracks.milliseconds FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT tracks.bytes FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT tracks.unit_price FROM tracks WHERE tracks.name = 'Fast As a Shark'	store_1
SELECT COUNT( * ) FROM editor	journal_committee
SELECT editor.name FROM editor ORDER BY editor.age ASC	journal_committee
SELECT editor.name , editor.age FROM editor	journal_committee
SELECT editor.name FROM editor WHERE editor.age > 25	journal_committee
SELECT editor.name FROM editor WHERE editor.age = 24 OR editor.age = 25	journal_committee
SELECT editor.name FROM editor ORDER BY editor.age ASC LIMIT 1	journal_committee
SELECT editor.age , COUNT( * ) FROM editor GROUP BY editor.age	journal_committee
SELECT editor.age FROM editor GROUP BY editor.age ORDER BY COUNT( * ) DESC LIMIT 1	journal_committee
SELECT DISTINCT journal.theme FROM journal	journal_committee
SELECT COUNT( * ) FROM track	race_track
SELECT COUNT( * ) FROM track	race_track
SELECT track.name , track.location FROM track	race_track
SELECT track.name , track.location FROM track	race_track
SELECT track.name , track.seating FROM track WHERE track.year_opened > 2000 ORDER BY track.seating ASC	race_track
SELECT track.name , track.seating FROM track WHERE track.year_opened > 2000 ORDER BY track.seating ASC	race_track
SELECT track.name , track.location , track.seating FROM track ORDER BY track.year_opened DESC LIMIT 1	race_track
SELECT track.name , track.location , track.seating FROM track ORDER BY track.year_opened DESC LIMIT 1	race_track
SELECT MIN( track.seating ) , MAX( track.seating ) , AVG( track.seating ) FROM track	race_track
SELECT MIN( track.seating ) , MAX( track.seating ) , AVG( track.seating ) FROM track	race_track
SELECT track.name , track.location , track.year_opened FROM track WHERE track.seating > (SELECT AVG( track.seating ) FROM track)	race_track
SELECT track.name , track.location , track.year_opened FROM track WHERE track.seating > (SELECT AVG( track.seating ) FROM track)	race_track
SELECT DISTINCT track.location FROM track	race_track
SELECT DISTINCT track.location FROM track	race_track
SELECT COUNT( * ) FROM race	race_track
SELECT COUNT( * ) FROM race	race_track
SELECT DISTINCT race.class FROM race	race_track
SELECT DISTINCT race.class FROM race	race_track
SELECT race.name , race.class , race.date FROM race	race_track
SELECT race.name , race.class , race.date FROM race	race_track
SELECT race.class , COUNT( * ) FROM race GROUP BY race.class	race_track
SELECT race.class , COUNT( * ) FROM race GROUP BY race.class	race_track
SELECT race.class FROM race GROUP BY race.class ORDER BY COUNT( * ) DESC LIMIT 1	race_track
SELECT race.class FROM race GROUP BY race.class ORDER BY COUNT( * ) DESC LIMIT 1	race_track
SELECT race.class FROM race GROUP BY race.class HAVING COUNT( * ) >= 2	race_track
SELECT race.class FROM race GROUP BY race.class HAVING COUNT( * ) >= 2	race_track
SELECT track.year_opened FROM track WHERE track.seating BETWEEN 4000 and 5000	race_track
SELECT track.year_opened FROM track WHERE track.seating BETWEEN 4000 and 5000	race_track
SELECT track.location FROM track WHERE track.seating > 90000 INTERSECT SELECT track.location FROM track WHERE track.seating<70000	race_track
SELECT track.location FROM track WHERE track.seating > 90000 INTERSECT SELECT track.location FROM track WHERE track.seating<70000	race_track
SELECT COUNT( * ) FROM member WHERE member.membership_card = 'black'	coffee_shop
SELECT COUNT( * ) , member.address FROM member GROUP BY member.address	coffee_shop
SELECT member.name FROM member WHERE member.address = 'Harford' OR member.address = 'Waterbury'	coffee_shop
SELECT member.name , member.member_id FROM member WHERE member.membership_card = 'black' OR member.age<30	coffee_shop
SELECT member.time_of_purchase , member.age , member.address FROM member ORDER BY member.time_of_purchase ASC	coffee_shop
SELECT member.membership_card FROM member GROUP BY member.membership_card HAVING COUNT( * ) > 5	coffee_shop
SELECT member.address FROM member WHERE member.age<30 INTERSECT SELECT member.address FROM member WHERE member.age > 40	coffee_shop
SELECT member.membership_card FROM member WHERE member.address = 'Hartford' INTERSECT SELECT member.membership_card FROM member WHERE member.address = 'Waterbury'	coffee_shop
SELECT COUNT( * ) FROM member WHERE member.address != 'Hartford'	coffee_shop
SELECT member.address FROM member EXCEPT SELECT member.address FROM member WHERE member.membership_card = 'black'	coffee_shop
SELECT shop.address FROM shop ORDER BY shop.open_year ASC	coffee_shop
SELECT AVG( shop.num_of_staff ) , AVG( shop.score ) FROM shop	coffee_shop
SELECT shop.shop_id , shop.address FROM shop WHERE shop.score<(SELECT AVG( shop.score ) FROM shop)	coffee_shop
SELECT SUM( settlements.settlement_amount ) , AVG( settlements.settlement_amount ) FROM settlements	insurance_fnol
SELECT SUM( settlements.settlement_amount ) , AVG( settlements.settlement_amount ) FROM settlements	insurance_fnol
SELECT services.service_name FROM services ORDER BY services.service_name ASC	insurance_fnol
SELECT services.service_name FROM services ORDER BY services.service_name ASC	insurance_fnol
SELECT COUNT( * ) FROM services	insurance_fnol
SELECT COUNT( * ) FROM services	insurance_fnol
SELECT customers.customer_id FROM customers WHERE customers.customer_name LIKE '%Diana%'	insurance_fnol
SELECT customers.customer_id FROM customers WHERE customers.customer_name LIKE '%Diana%'	insurance_fnol
SELECT MAX( settlements.settlement_amount ) , MIN( settlements.settlement_amount ) FROM settlements	insurance_fnol
SELECT MAX( settlements.settlement_amount ) , MIN( settlements.settlement_amount ) FROM settlements	insurance_fnol
SELECT customers.customer_id , customers.customer_name FROM customers ORDER BY customers.customer_id ASC	insurance_fnol
SELECT customers.customer_id , customers.customer_name FROM customers ORDER BY customers.customer_id ASC	insurance_fnol
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT COUNT( * ) FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC	medicine_enzyme_interaction
SELECT enzyme.name , enzyme.location FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.name , enzyme.location FROM enzyme	medicine_enzyme_interaction
SELECT MAX( enzyme.omim ) FROM enzyme	medicine_enzyme_interaction
SELECT MAX( enzyme.omim ) FROM enzyme	medicine_enzyme_interaction
SELECT enzyme.product , enzyme.chromosome , enzyme.porphyria FROM enzyme WHERE enzyme.location = 'Cytosol'	medicine_enzyme_interaction
SELECT enzyme.product , enzyme.chromosome , enzyme.porphyria FROM enzyme WHERE enzyme.location = 'Cytosol'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.product != 'Heme'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.product != 'Heme'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine WHERE medicine.fda_approved = 'yes'	medicine_enzyme_interaction
SELECT medicine.name , medicine.trade_name FROM medicine WHERE medicine.fda_approved = 'yes'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved = 'no'	medicine_enzyme_interaction
SELECT COUNT( * ) FROM medicine WHERE medicine.fda_approved = 'no'	medicine_enzyme_interaction
SELECT COUNT( DISTINCT medicine.fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT COUNT( DISTINCT medicine.fda_approved ) FROM medicine	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT enzyme.name FROM enzyme WHERE enzyme.name LIKE '%ALA%'	medicine_enzyme_interaction
SELECT medicine.trade_name , COUNT( * ) FROM medicine GROUP BY medicine.trade_name	medicine_enzyme_interaction
SELECT medicine.trade_name , COUNT( * ) FROM medicine GROUP BY medicine.trade_name	medicine_enzyme_interaction
SELECT university.school , university.nickname FROM university ORDER BY university.founded ASC	university_basketball
SELECT university.school , university.nickname FROM university ORDER BY university.founded ASC	university_basketball
SELECT university.school , university.location FROM university WHERE university.affiliation = 'public'	university_basketball
SELECT university.school , university.location FROM university WHERE university.affiliation = 'public'	university_basketball
SELECT university.founded FROM university ORDER BY university.enrollment DESC LIMIT 1	university_basketball
SELECT university.founded FROM university ORDER BY university.enrollment DESC LIMIT 1	university_basketball
SELECT university.founded FROM university WHERE university.affiliation != 'public' ORDER BY university.founded DESC LIMIT 1	university_basketball
SELECT university.founded FROM university WHERE university.affiliation != 'public' ORDER BY university.founded DESC LIMIT 1	university_basketball
SELECT AVG( university.enrollment ) FROM university WHERE university.founded<1850	university_basketball
SELECT AVG( university.enrollment ) FROM university WHERE university.founded<1850	university_basketball
SELECT university.enrollment , university.primary_conference FROM university ORDER BY university.founded ASC LIMIT 1	university_basketball
SELECT university.enrollment , university.primary_conference FROM university ORDER BY university.founded ASC LIMIT 1	university_basketball
SELECT SUM( university.enrollment ) , MIN( university.enrollment ) FROM university	university_basketball
SELECT SUM( university.enrollment ) , MIN( university.enrollment ) FROM university	university_basketball
SELECT SUM( university.enrollment ) , university.affiliation FROM university GROUP BY university.affiliation	university_basketball
SELECT SUM( university.enrollment ) , university.affiliation FROM university GROUP BY university.affiliation	university_basketball
SELECT university.school FROM university WHERE university.founded > 1850 OR university.affiliation = 'public'	university_basketball
SELECT university.school FROM university WHERE university.founded > 1850 OR university.affiliation = 'public'	university_basketball
SELECT COUNT( DISTINCT university.affiliation ) FROM university	university_basketball
SELECT COUNT( DISTINCT university.affiliation ) FROM university	university_basketball
SELECT COUNT( * ) FROM university WHERE university.location LIKE '%NY%'	university_basketball
SELECT COUNT( * ) FROM university WHERE university.location LIKE '%NY%'	university_basketball
SELECT COUNT( * ) , university.affiliation FROM university WHERE university.enrollment > 20000 GROUP BY university.affiliation	university_basketball
SELECT COUNT( * ) , university.affiliation FROM university WHERE university.enrollment > 20000 GROUP BY university.affiliation	university_basketball
SELECT SUM( university.enrollment ) , university.affiliation FROM university WHERE university.founded > 1850 GROUP BY university.affiliation	university_basketball
SELECT SUM( university.enrollment ) , university.affiliation FROM university WHERE university.founded > 1850 GROUP BY university.affiliation	university_basketball
SELECT MAX( university.enrollment ) FROM university	university_basketball
SELECT MAX( university.enrollment ) FROM university	university_basketball
SELECT phone.chip_model , phone.screen_mode FROM phone WHERE phone.hardware_model_name = 'LG-P760'	phone_1
SELECT COUNT( * ) FROM phone WHERE phone.company_name = 'Nokia Corporation'	phone_1
SELECT phone.hardware_model_name , phone.company_name FROM phone WHERE phone.accreditation_type LIKE '%Full%'	phone_1
SELECT phone.company_name , COUNT( * ) FROM phone GROUP BY phone.company_name ORDER BY COUNT( * ) ASC LIMIT 1	phone_1
SELECT phone.company_name FROM phone GROUP BY phone.company_name HAVING COUNT( * ) > 1	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_type , COUNT( * ) FROM phone GROUP BY phone.accreditation_type	phone_1
SELECT phone.accreditation_level FROM phone GROUP BY phone.accreditation_level HAVING COUNT( * ) > 3	phone_1
SELECT COUNT( * ) FROM country	match_season
SELECT COUNT( * ) FROM country	match_season
SELECT country.country_name , country.capital FROM country	match_season
SELECT country.country_name , country.capital FROM country	match_season
SELECT country.official_native_language FROM country WHERE country.official_native_language LIKE '%English%'	match_season
SELECT country.official_native_language FROM country WHERE country.official_native_language LIKE '%English%'	match_season
SELECT player.player , player.years_played FROM player	match_season
SELECT player.player , player.years_played FROM player	match_season
SELECT COUNT( * ) FROM climber	climbing
SELECT COUNT( * ) FROM climber	climbing
SELECT climber.name FROM climber ORDER BY climber.points DESC	climbing
SELECT climber.name FROM climber ORDER BY climber.points DESC	climbing
SELECT climber.name FROM climber WHERE climber.country != 'Switzerland'	climbing
SELECT climber.name FROM climber WHERE climber.country != 'Switzerland'	climbing
SELECT MAX( climber.points ) FROM climber WHERE climber.country = 'United Kingdom'	climbing
SELECT MAX( climber.points ) FROM climber WHERE climber.country = 'United Kingdom'	climbing
SELECT COUNT( DISTINCT climber.country ) FROM climber	climbing
SELECT COUNT( DISTINCT climber.country ) FROM climber	climbing
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC	climbing
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC	climbing
SELECT mountain.country FROM mountain WHERE mountain.height > 5000	climbing
SELECT mountain.country FROM mountain WHERE mountain.height > 5000	climbing
SELECT mountain.name FROM mountain ORDER BY mountain.height DESC LIMIT 1	climbing
SELECT mountain.name FROM mountain ORDER BY mountain.height DESC LIMIT 1	climbing
SELECT DISTINCT mountain.range FROM mountain ORDER BY mountain.prominence DESC LIMIT 3	climbing
SELECT DISTINCT mountain.range FROM mountain ORDER BY mountain.prominence DESC LIMIT 3	climbing
SELECT climber.country , COUNT( * ) FROM climber GROUP BY climber.country	climbing
SELECT climber.country , COUNT( * ) FROM climber GROUP BY climber.country	climbing
SELECT mountain.country FROM mountain GROUP BY mountain.country HAVING COUNT( * ) > 1	climbing
SELECT mountain.country FROM mountain GROUP BY mountain.country HAVING COUNT( * ) > 1	climbing
SELECT mountain.country FROM mountain WHERE mountain.height > 5600 INTERSECT SELECT mountain.country FROM mountain WHERE mountain.height<5200	climbing
SELECT mountain.country FROM mountain WHERE mountain.height > 5600 INTERSECT SELECT mountain.country FROM mountain WHERE mountain.height<5200	climbing
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT( * ) DESC LIMIT 1	climbing
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT( * ) DESC LIMIT 1	climbing
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000	climbing
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000	climbing
SELECT people.birth_date FROM people ORDER BY people.height ASC	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place ORDER BY COUNT( * ) DESC LIMIT 1	body_builder
SELECT people.birth_place FROM people GROUP BY people.birth_place HAVING COUNT( * ) >= 2	body_builder
SELECT people.height , people.weight FROM people ORDER BY people.height DESC	body_builder
SELECT COUNT( DISTINCT people.birth_place ) FROM people	body_builderSELECT COUNT( * ) FROM aircraft	flight_1
SELECT COUNT( * ) FROM election	election_representative
SELECT election.votes FROM election ORDER BY election.votes DESC	election_representative
SELECT election.date , election.vote_percent FROM election	election_representative
SELECT MIN( election.vote_percent ) , MAX( election.vote_percent ) FROM election	election_representative
SELECT representative.name , representative.party FROM representative	election_representative
SELECT representative.lifespan FROM representative WHERE representative.state = 'New York' OR representative.state = 'Indiana'	election_representative
SELECT representative.party , COUNT( * ) FROM representative GROUP BY representative.party	election_representative
SELECT representative.party , COUNT( * ) FROM representative GROUP BY representative.party ORDER BY COUNT( * ) DESC LIMIT 1	election_representative
SELECT representative.party FROM representative GROUP BY representative.party HAVING COUNT( * ) >= 3	election_representative
SELECT representative.state FROM representative GROUP BY representative.state HAVING COUNT( * ) >= 2	election_representative
SELECT representative.party FROM representative WHERE representative.state = 'New York' INTERSECT SELECT representative.party FROM representative WHERE representative.state = 'Pennsylvania'	election_representative
SELECT COUNT( DISTINCT representative.party ) FROM representative	election_representative
SELECT COUNT( * ) FROM game WHERE game.season > 2007	game_injury
SELECT game.date FROM game ORDER BY game.home_team DESC	game_injury
SELECT game.season , game.home_team , game.away_team FROM game	game_injury
SELECT MAX( stadium.home_games ) , MIN( stadium.home_games ) , AVG( stadium.home_games ) FROM stadium	game_injury
SELECT stadium.average_attendance FROM stadium WHERE stadium.capacity_percentage > 100	game_injury
SELECT stadium.name FROM stadium WHERE stadium.name LIKE '%Bank%'	game_injury
SELECT COUNT( * ) FROM performance	performance_attendance
SELECT performance.host FROM performance ORDER BY performance.attendance ASC	performance_attendance
SELECT performance.date , performance.location FROM performance	performance_attendance
SELECT performance.attendance FROM performance WHERE performance.location = 'TD Garden' OR performance.location = 'Bell Centre'	performance_attendance
SELECT AVG( performance.attendance ) FROM performance	performance_attendance
SELECT performance.date FROM performance ORDER BY performance.attendance DESC LIMIT 1	performance_attendance
SELECT performance.location , COUNT( * ) FROM performance GROUP BY performance.location	performance_attendance
SELECT performance.location FROM performance GROUP BY performance.location ORDER BY COUNT( * ) DESC LIMIT 1	performance_attendance
SELECT performance.location FROM performance GROUP BY performance.location HAVING COUNT( * ) >= 2	performance_attendance
SELECT performance.location FROM performance WHERE performance.attendance > 2000 INTERSECT SELECT performance.location FROM performance WHERE performance.attendance<1000	performance_attendance
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50	college_2
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building != 'Lamberton'	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building != 'Lamberton'	college_2
SELECT department.dept_name , department.building FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT department.dept_name , department.building FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT classroom.building , classroom.room_number FROM classroom WHERE classroom.capacity BETWEEN 50 and 100	college_2
SELECT classroom.building , classroom.room_number FROM classroom WHERE classroom.capacity BETWEEN 50 and 100	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC LIMIT 1	college_2
SELECT department.dept_name , department.building FROM department ORDER BY department.budget DESC LIMIT 1	college_2
SELECT student.name FROM student WHERE student.dept_name = 'History' ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT student.name FROM student WHERE student.dept_name = 'History' ORDER BY student.tot_cred DESC LIMIT 1	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building = 'Lamberton'	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building = 'Lamberton'	college_2
SELECT COUNT( DISTINCT advisor.s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT advisor.s_id ) FROM advisor	college_2
SELECT COUNT( DISTINCT course.dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT course.dept_name ) FROM course	college_2
SELECT COUNT( DISTINCT course.course_id ) FROM course WHERE course.dept_name = 'Physics'	college_2
SELECT COUNT( DISTINCT course.course_id ) FROM course WHERE course.dept_name = 'Physics'	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches	college_2
SELECT SUM( department.budget ) FROM department WHERE department.dept_name = 'Marketing' OR department.dept_name = 'Finance'	college_2
SELECT SUM( department.budget ) FROM department WHERE department.dept_name = 'Marketing' OR department.dept_name = 'Finance'	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.name LIKE '%Soisalon%'	college_2
SELECT instructor.dept_name FROM instructor WHERE instructor.name LIKE '%Soisalon%'	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building = 'Lamberton' AND classroom.capacity<50	college_2
SELECT COUNT( * ) FROM classroom WHERE classroom.building = 'Lamberton' AND classroom.capacity<50	college_2
SELECT department.dept_name , department.budget FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT department.dept_name , department.budget FROM department WHERE department.budget > (SELECT AVG( department.budget ) FROM department)	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC LIMIT 1	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC LIMIT 1	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' INTERSECT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' INTERSECT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' EXCEPT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT course.title FROM course WHERE course.dept_name = 'Statistics' EXCEPT SELECT course.title FROM course WHERE course.dept_name = 'Psychology'	college_2
SELECT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 EXCEPT SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010	college_2
SELECT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 EXCEPT SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010	college_2
SELECT course.dept_name FROM course GROUP BY course.dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT course.dept_name FROM course GROUP BY course.dept_name ORDER BY COUNT( * ) DESC LIMIT 3	college_2
SELECT course.dept_name FROM course GROUP BY course.dept_name ORDER BY SUM( course.credits ) DESC LIMIT 1	college_2
SELECT course.dept_name FROM course GROUP BY course.dept_name ORDER BY SUM( course.credits ) DESC LIMIT 1	college_2
SELECT course.title FROM course ORDER BY course.title , course.credits ASC	college_2
SELECT course.title FROM course ORDER BY course.title , course.credits ASC	college_2
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
SELECT COUNT( * ) , classroom.building FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building	college_2
SELECT MAX( classroom.capacity ) , AVG( classroom.capacity ) , classroom.building FROM classroom GROUP BY classroom.building	college_2
SELECT MAX( classroom.capacity ) , AVG( classroom.capacity ) , classroom.building FROM classroom GROUP BY classroom.building	college_2
SELECT course.title FROM course GROUP BY course.title HAVING COUNT( * ) > 1	college_2
SELECT course.title FROM course GROUP BY course.title HAVING COUNT( * ) > 1	college_2
SELECT SUM( course.credits ) , course.dept_name FROM course GROUP BY course.dept_name	college_2
SELECT SUM( course.credits ) , course.dept_name FROM course GROUP BY course.dept_name	college_2
SELECT MIN( instructor.salary ) , instructor.dept_name FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor) UNION SELECT MIN( instructor.salary ) , instructor.dept_name FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor)	college_2
SELECT MIN( instructor.salary ) , instructor.dept_name FROM instructor GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > (SELECT instructor.dept_name FROM instructor)	college_2
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT student.dept_name FROM student GROUP BY student.dept_name ORDER BY COUNT( * ) DESC LIMIT 1	college_2
SELECT COUNT( * ) , student.dept_name FROM student GROUP BY student.dept_name	college_2
SELECT COUNT( * ) , student.dept_name FROM student GROUP BY student.dept_name	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name ORDER BY AVG( instructor.salary ) DESC LIMIT 1	college_2
SELECT instructor.name , instructor.salary FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Physics')	college_2
SELECT instructor.name , instructor.salary FROM instructor WHERE instructor.salary<(SELECT AVG( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Physics')	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'computer science'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci.'	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci.' AND instructor.salary > 80000	college_2
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Comp. Sci.' AND instructor.salary > 80000	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT instructor.name FROM instructor WHERE instructor.name LIKE '%dar%'	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
SELECT DISTINCT instructor.name FROM instructor ORDER BY instructor.name ASC	college_2
SELECT DISTINCT instructor.salary FROM instructor WHERE instructor.salary<(SELECT MAX( instructor.salary ) FROM instructor)	college_2
SELECT DISTINCT instructor.salary FROM instructor WHERE instructor.salary<(SELECT MAX( instructor.salary ) FROM instructor)	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010	college_2
SELECT COUNT( DISTINCT teaches.id ) FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010	college_2
SELECT instructor.dept_name , AVG( instructor.salary ) FROM instructor GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > 42000	college_2
SELECT instructor.dept_name , AVG( instructor.salary ) FROM instructor GROUP BY instructor.dept_name HAVING AVG( instructor.salary ) > 42000	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MIN( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MIN( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MAX( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MAX( instructor.salary ) FROM instructor WHERE instructor.dept_name = 'Biology')	college_2
SELECT COUNT( * ) FROM debate	debate
SELECT debate.venue FROM debate ORDER BY debate.num_of_audience ASC	debate
SELECT debate.date , debate.venue FROM debate	debate
SELECT debate.date FROM debate WHERE debate.num_of_audience > 150	debate
SELECT people.name FROM people WHERE people.age = 35 OR people.age = 36	debate
SELECT people.party FROM people ORDER BY people.age ASC LIMIT 1	debate
SELECT people.party , COUNT( * ) FROM people GROUP BY people.party	debate
SELECT people.party FROM people GROUP BY people.party ORDER BY COUNT( * ) DESC LIMIT 1	debate
SELECT DISTINCT debate.venue FROM debate	debate
SELECT customers.customer_details FROM customers ORDER BY customers.customer_details ASC	insurance_and_eClaims
SELECT customers.customer_details FROM customers ORDER BY customers.customer_details ASC	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT policies.policy_type_code FROM policies GROUP BY policies.policy_type_code HAVING COUNT( * ) > 2	insurance_and_eClaims
SELECT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT customers.customer_details FROM customers WHERE customers.customer_details LIKE '%Diana%'	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
SELECT policies.policy_type_code , COUNT( * ) FROM policies GROUP BY policies.policy_type_code	insurance_and_eClaims
SELECT COUNT( * ) FROM church WHERE church.open_date<1850	wedding
SELECT church.open_date FROM church GROUP BY church.open_date HAVING COUNT( * ) >= 2	wedding
SELECT church.organized_by , church.name FROM church WHERE church.open_date BETWEEN 1830 and 1840	wedding
SELECT church.open_date , COUNT( * ) FROM church GROUP BY church.open_date	wedding
SELECT church.name , church.open_date FROM church ORDER BY church.open_date DESC LIMIT 3	wedding
SELECT COUNT( * ) FROM people WHERE people.is_male = 'f' AND people.age > 30	wedding
SELECT people.country FROM people WHERE people.age<25 INTERSECT SELECT people.country FROM people WHERE people.age > 30	wedding
SELECT MIN( people.age ) , MAX( people.age ) , AVG( people.age ) FROM people	wedding
SELECT people.name , people.country FROM people WHERE people.age<(SELECT AVG( people.age ) FROM people)	wedding
SELECT COUNT( * ) FROM wedding WHERE wedding.year = 2016	wedding
SELECT people.country , COUNT( * ) FROM people GROUP BY people.country	wedding
SELECT COUNT( DISTINCT wedding.church_id ) FROM wedding WHERE wedding.year = 2016	wedding
SELECT COUNT( * ) FROM artist	theme_gallery
SELECT COUNT( * ) FROM artist	theme_gallery
SELECT artist.name , artist.age , artist.country FROM artist ORDER BY artist.year_join ASC	theme_gallery
SELECT artist.name , artist.age , artist.country FROM artist ORDER BY artist.year_join ASC	theme_gallery
SELECT DISTINCT artist.country FROM artist	theme_gallery
SELECT DISTINCT artist.country FROM artist	theme_gallery
SELECT artist.name , artist.year_join FROM artist WHERE artist.country != 'United States'	theme_gallery
SELECT artist.name , artist.year_join FROM artist WHERE artist.country != 'United States'	theme_gallery
SELECT COUNT( * ) FROM artist WHERE artist.age > 46 AND artist.year_join > 1990	theme_gallery
SELECT COUNT( * ) FROM artist WHERE artist.age > 46 AND artist.year_join > 1990	theme_gallery
SELECT AVG( artist.age ) , MIN( artist.age ) FROM artist WHERE artist.country = 'United States'	theme_gallery
SELECT AVG( artist.age ) , MIN( artist.age ) FROM artist WHERE artist.country = 'United States'	theme_gallery
SELECT artist.name FROM artist ORDER BY artist.year_join DESC LIMIT 1	theme_gallery
SELECT artist.name FROM artist ORDER BY artist.year_join DESC LIMIT 1	theme_gallery
SELECT COUNT( * ) FROM exhibition WHERE exhibition.year >= 2005	theme_gallery
SELECT COUNT( * ) FROM exhibition WHERE exhibition.year >= 2005	theme_gallery
SELECT exhibition.theme , exhibition.year FROM exhibition WHERE exhibition.ticket_price<15	theme_gallery
SELECT exhibition.theme , exhibition.year FROM exhibition WHERE exhibition.ticket_price<15	theme_gallery
SELECT AVG( exhibition.ticket_price ) , MIN( exhibition.ticket_price ) , MAX( exhibition.ticket_price ) FROM exhibition WHERE exhibition.year<2009	theme_gallery
SELECT AVG( exhibition.ticket_price ) , MIN( exhibition.ticket_price ) , MAX( exhibition.ticket_price ) FROM exhibition WHERE exhibition.year<2009	theme_gallery
SELECT exhibition.theme , exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC	theme_gallery
SELECT exhibition.theme , exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC	theme_gallery
SELECT item.i_id FROM item WHERE item.title = 'orange'	epinions_1
SELECT * FROM item	epinions_1
SELECT COUNT( * ) FROM review	epinions_1
SELECT COUNT( * ) FROM useracct	epinions_1
SELECT AVG( review.rating ) , MAX( review.rating ) FROM review	epinions_1
SELECT MIN( review.rank ) FROM review	epinions_1
SELECT COUNT( DISTINCT review.u_id ) FROM review	epinions_1
SELECT COUNT( DISTINCT review.i_id ) FROM review	epinions_1
SELECT item.title FROM item ORDER BY item.title ASC	epinions_1
SELECT COUNT( * ) FROM player	riding_club
SELECT player.player_name FROM player ORDER BY player.votes ASC	riding_club
SELECT player.gender , player.occupation FROM player	riding_club
SELECT player.player_name , player.residence FROM player WHERE player.occupation != 'Researcher'	riding_club
SELECT player.sponsor_name FROM player WHERE player.residence = 'Brandon' OR player.residence = 'Birtle'	riding_club
SELECT player.player_name FROM player ORDER BY player.votes DESC LIMIT 1	riding_club
SELECT player.occupation , COUNT( * ) FROM player GROUP BY player.occupation	riding_club
SELECT player.occupation FROM player GROUP BY player.occupation ORDER BY COUNT( * ) DESC LIMIT 1	riding_club
SELECT player.residence FROM player GROUP BY player.residence HAVING COUNT( * ) >= 2	riding_club
SELECT player.residence FROM player WHERE player.gender = 'M' INTERSECT SELECT player.residence FROM player WHERE player.gender = 'f'	riding_club
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
SELECT COUNT( * ) FROM accounts	small_bank_1
SELECT COUNT( * ) FROM accounts	small_bank_1
SELECT SUM( checking.balance ) FROM checking	small_bank_1
SELECT SUM( checking.balance ) FROM checking	small_bank_1
SELECT AVG( checking.balance ) FROM checking	small_bank_1
SELECT AVG( checking.balance ) FROM checking	small_bank_1
SELECT COUNT( * ) FROM savings WHERE savings.balance > (SELECT AVG( savings.balance ) FROM savings)	small_bank_1
SELECT COUNT( * ) FROM savings WHERE savings.balance > (SELECT AVG( savings.balance ) FROM savings)	small_bank_1
SELECT accounts.name FROM accounts ORDER BY accounts.name ASC	small_bank_1
SELECT accounts.name FROM accounts ORDER BY accounts.name ASC	small_bank_1
SELECT COUNT( * ) FROM browser WHERE browser.market_share >= 5	browser_web
SELECT browser.name FROM browser ORDER BY browser.market_share DESC	browser_web
SELECT browser.id , browser.name , browser.market_share FROM browser	browser_web
SELECT MAX( browser.market_share ) , MIN( browser.market_share ) , AVG( browser.market_share ) FROM browser	browser_web
SELECT browser.id , browser.market_share FROM browser WHERE browser.name = 'Safari'	browser_web
SELECT COUNT( * ) FROM wrestler	wrestler
SELECT COUNT( * ) FROM wrestler	wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held DESC	wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held DESC	wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held ASC LIMIT 1	wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held ASC LIMIT 1	wrestler
SELECT DISTINCT wrestler.reign FROM wrestler WHERE wrestler.location != 'Tokyo,Japan'	wrestler
SELECT DISTINCT wrestler.reign FROM wrestler WHERE wrestler.location != 'Tokyo, Japan'	wrestler
SELECT wrestler.name , wrestler.location FROM wrestler	wrestler
SELECT wrestler.name , wrestler.location FROM wrestler	wrestler
SELECT elimination.team FROM elimination GROUP BY elimination.team HAVING COUNT( * ) > 3	wrestler
SELECT elimination.team FROM elimination GROUP BY elimination.team HAVING COUNT( * ) > 3	wrestler
SELECT wrestler.reign , wrestler.days_held FROM wrestler	wrestler
SELECT wrestler.reign , wrestler.days_held FROM wrestler	wrestler
SELECT wrestler.name FROM wrestler WHERE wrestler.days_held<100	wrestler
SELECT wrestler.name FROM wrestler WHERE wrestler.days_held<100	wrestler
SELECT wrestler.reign FROM wrestler GROUP BY wrestler.reign ORDER BY COUNT( * ) DESC LIMIT 1	wrestler
SELECT wrestler.reign FROM wrestler GROUP BY wrestler.reign ORDER BY COUNT( * ) DESC LIMIT 1	wrestler
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT( * ) > 2	wrestler
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT( * ) > 2	wrestler
SELECT elimination.team FROM elimination WHERE elimination.eliminated_by = 'Orton' INTERSECT SELECT elimination.team FROM elimination WHERE elimination.eliminated_by = 'Benjamin'	wrestler
SELECT elimination.team FROM elimination WHERE elimination.eliminated_by = 'Orton' INTERSECT SELECT elimination.team FROM elimination WHERE elimination.eliminated_by = 'Benjamin'	wrestler
SELECT COUNT( DISTINCT elimination.team ) FROM elimination	wrestler
SELECT COUNT( DISTINCT elimination.team ) FROM elimination	wrestler
SELECT elimination.time FROM elimination WHERE elimination.eliminated_by = 'Punk' OR elimination.eliminated_by = 'Orton'	wrestler
SELECT elimination.time FROM elimination WHERE elimination.eliminated_by = 'Punk' OR elimination.eliminated_by = 'Orton'	wrestler
SELECT COUNT( * ) FROM school	school_finance
SELECT COUNT( * ) FROM school	school_finance
SELECT school.school_name FROM school ORDER BY school.school_name ASC	school_finance
SELECT school.school_name , school.location , school.mascot FROM school	school_finance
SELECT SUM( school.enrollment ) , AVG( school.enrollment ) FROM school	school_finance
SELECT school.mascot FROM school WHERE school.enrollment > (SELECT AVG( school.enrollment ) FROM school)	school_finance
SELECT school.school_name FROM school ORDER BY school.enrollment ASC LIMIT 1	school_finance
SELECT AVG( school.enrollment ) , MAX( school.enrollment ) , MIN( school.enrollment ) FROM school	school_finance
SELECT school.county , COUNT( * ) , SUM( school.enrollment ) FROM school GROUP BY school.county	school_finance
SELECT endowment.donator_name , SUM( endowment.amount ) FROM endowment GROUP BY endowment.donator_name ORDER BY SUM( endowment.amount ) DESC	school_finance
SELECT endowment.donator_name FROM endowment EXCEPT SELECT endowment.donator_name FROM endowment WHERE endowment.amount<9	school_finance
SELECT endowment.amount , endowment.donator_name FROM endowment ORDER BY endowment.amount DESC LIMIT 1	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.budgeted > 3000 AND budget.year <= 2001	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.budgeted > 3000 AND budget.year <= 2001	school_finance
SELECT DISTINCT endowment.donator_name FROM endowment	school_finance
SELECT COUNT( * ) FROM budget WHERE budget.budgeted<budget.invested	school_finance
SELECT * FROM endowment WHERE endowment.amount > 8.5 GROUP BY endowment.school_id HAVING COUNT( * ) > 1	school_finance
SELECT COUNT( * ) FROM building	protein_institute
SELECT building.name , building.street_address , building.floors FROM building ORDER BY building.floors ASC	protein_institute
SELECT building.name FROM building ORDER BY building.height_feet DESC LIMIT 1	protein_institute
SELECT AVG( building.floors ) , MAX( building.floors ) , MIN( building.floors ) FROM building	protein_institute
SELECT COUNT( * ) FROM building WHERE building.height_feet > (SELECT AVG( building.height_feet ) FROM building) OR building.floors > (SELECT AVG( building.floors ) FROM building)	protein_institute
SELECT building.name FROM building WHERE building.height_feet >= 200 AND building.floors >= 20	protein_institute
SELECT institution.institution , institution.location FROM institution WHERE institution.founded > 1990 AND institution.type = 'Private'	protein_institute
SELECT institution.type , COUNT( * ) , SUM( institution.enrollment ) FROM institution GROUP BY institution.type	protein_institute
SELECT institution.type FROM institution GROUP BY institution.type ORDER BY COUNT( * ) DESC LIMIT 1	protein_institute
SELECT institution.type FROM institution WHERE institution.founded > 1990 AND institution.enrollment >= 1000	protein_institute
SELECT DISTINCT institution.type FROM institution	protein_institute
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
SELECT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT( * ) > 1	cinema
SELECT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT( * ) > 1	cinema
SELECT COUNT( * ) FROM film WHERE film.title LIKE '%Dummy%'	cinema
SELECT COUNT( * ) FROM film WHERE film.title LIKE '%Dummy%'	cinema
SELECT customers.first_name , customers.last_name , customers.gender_mf FROM customers WHERE customers.good_or_bad_customer = 'good' ORDER BY customers.last_name ASC	products_for_hire
SELECT AVG( payments.amount_due ) FROM payments	products_for_hire
SELECT DISTINCT payments.payment_type_code FROM payments	products_for_hire
SELECT payments.payment_date FROM payments WHERE payments.amount_paid > 300 OR payments.payment_type_code = 'Check'	products_for_hire
SELECT COUNT( * ) FROM company	gas_company
SELECT COUNT( * ) FROM company	gas_company
SELECT company.company , company.rank FROM company ORDER BY company.sales_billion DESC	gas_company
SELECT company.company , company.rank FROM company ORDER BY company.sales_billion DESC	gas_company
SELECT company.company , company.main_industry FROM company WHERE company.headquarters != 'USA'	gas_company
SELECT company.company , company.main_industry FROM company WHERE company.headquarters != 'United States'	gas_company
SELECT company.company , company.headquarters FROM company ORDER BY company.market_value DESC	gas_company
SELECT company.company , company.headquarters FROM company ORDER BY company.market_value DESC	gas_company
SELECT MIN( company.market_value ) , MAX( company.market_value ) , AVG( company.market_value ) FROM company	gas_company
SELECT MIN( company.market_value ) , MAX( company.market_value ) , AVG( company.market_value ) FROM company	gas_company
SELECT DISTINCT company.main_industry FROM company	gas_company
SELECT DISTINCT company.main_industry FROM company	gas_company
SELECT company.headquarters , COUNT( * ) FROM company GROUP BY company.headquarters	gas_company
SELECT company.headquarters , COUNT( * ) FROM company GROUP BY company.headquarters	gas_company
SELECT company.main_industry , SUM( company.market_value ) FROM company GROUP BY company.main_industry	gas_company
SELECT company.main_industry , SUM( company.market_value ) FROM company GROUP BY company.main_industry	gas_company
SELECT company.main_industry , COUNT( * ) FROM company GROUP BY company.main_industry ORDER BY SUM( company.market_value ) DESC LIMIT 1	gas_company
SELECT company.main_industry , COUNT( * ) FROM company GROUP BY company.main_industry ORDER BY SUM( company.market_value ) DESC LIMIT 1	gas_company
SELECT company.headquarters FROM company WHERE company.main_industry = 'banking' GROUP BY company.headquarters HAVING COUNT( * ) >= 2	gas_company
SELECT company.headquarters FROM company WHERE company.main_industry = 'banking' GROUP BY company.headquarters HAVING COUNT( * ) >= 2	gas_company
SELECT company.headquarters FROM company WHERE company.main_industry = 'banking' INTERSECT SELECT company.headquarters FROM company WHERE company.main_industry = 'Oil and gas'	gas_company
SELECT company.headquarters FROM company WHERE company.main_industry = 'banking' INTERSECT SELECT company.headquarters FROM company WHERE company.main_industry = 'oil and gas'	gas_company
SELECT company.headquarters FROM company EXCEPT SELECT company.headquarters FROM company WHERE company.main_industry = 'banking'	gas_company
SELECT company.headquarters FROM company EXCEPT SELECT company.headquarters FROM company WHERE company.main_industry = 'banking'	gas_company
SELECT company.rank , company.company , company.market_value FROM company WHERE company.main_industry = 'banking' ORDER BY company.sales_billion , company.profits_billion ASC	gas_company
SELECT company.rank , company.company , company.market_value FROM company WHERE company.main_industry = 'banking' ORDER BY company.sales_billion , company.profits_billion ASC	gas_company
SELECT COUNT( * ) FROM region	party_people
SELECT COUNT( * ) FROM region	party_people
SELECT DISTINCT region.region_name FROM region ORDER BY region.label ASC	party_people
SELECT DISTINCT region.region_name FROM region ORDER BY region.label ASC	party_people
SELECT COUNT( DISTINCT party.party_name ) FROM party	party_people
SELECT COUNT( DISTINCT party.party_name ) FROM party	party_people
SELECT party.minister , party.took_office , party.left_office FROM party ORDER BY party.left_office ASC	party_people
SELECT party.minister , party.took_office , party.left_office FROM party ORDER BY party.left_office ASC	party_people
SELECT party.minister FROM party WHERE party.took_office > 1961 OR party.took_office<1959	party_people
SELECT party.minister FROM party WHERE party.took_office > 1961 OR party.took_office<1959	party_people
SELECT party.minister FROM party WHERE party.party_name != 'Progress Party'	party_people
SELECT party.minister FROM party WHERE party.party_name != 'Progress Party'	party_people
SELECT party.minister , party.party_name FROM party ORDER BY party.took_office DESC	party_people
SELECT party.minister , party.party_name FROM party ORDER BY party.took_office DESC	party_people
SELECT party.minister FROM party ORDER BY party.left_office DESC LIMIT 1	party_people
SELECT party.minister FROM party ORDER BY party.left_office DESC LIMIT 1	party_people
SELECT member.member_name FROM member WHERE member.party_id = 3 INTERSECT SELECT member.member_name FROM member WHERE member.party_id = 1	party_people
SELECT member.member_name FROM member WHERE member.party_id = 3 INTERSECT SELECT member.member_name FROM member WHERE member.party_id = 1	party_people
SELECT COUNT( * ) FROM pilot	pilot_record
SELECT pilot.pilot_name FROM pilot ORDER BY pilot.rank ASC	pilot_record
SELECT pilot.position , pilot.team FROM pilot	pilot_record
SELECT DISTINCT pilot.position FROM pilot WHERE pilot.age > 30	pilot_record
SELECT pilot.pilot_name FROM pilot WHERE pilot.team = 'Bradley' OR pilot.team = 'Fordham'	pilot_record
SELECT pilot.join_year FROM pilot ORDER BY pilot.rank ASC LIMIT 1	pilot_record
SELECT pilot.nationality , COUNT( * ) FROM pilot GROUP BY pilot.nationality	pilot_record
SELECT pilot.nationality FROM pilot GROUP BY pilot.nationality ORDER BY COUNT( * ) DESC LIMIT 1	pilot_record
SELECT pilot.position FROM pilot WHERE pilot.join_year<2000 INTERSECT SELECT pilot.position FROM pilot WHERE pilot.join_year > 2005	pilot_record
SELECT department.dname FROM department ORDER BY department.mgr_start_date ASC	company_1
SELECT dependent.dependent_name FROM dependent WHERE dependent.relationship = 'spouse'	company_1
SELECT COUNT( * ) FROM dependent WHERE dependent.sex = 'f'	company_1
SELECT employee.fname , employee.lname FROM employee WHERE employee.salary > 30000	company_1
SELECT COUNT( * ) , employee.sex FROM employee WHERE employee.salary<50000 GROUP BY employee.sex	company_1
SELECT employee.fname , employee.lname , employee.address FROM employee ORDER BY employee.bdate ASC	company_1
SELECT COUNT( * ) FROM participants WHERE participants.participant_type_code = 'Organizer'	local_govt_in_alabama
SELECT services.service_type_code FROM services ORDER BY services.service_type_code ASC	local_govt_in_alabama
SELECT participants.participant_type_code FROM participants GROUP BY participants.participant_type_code ORDER BY COUNT( * ) DESC LIMIT 1	local_govt_in_alabama
SELECT races.name FROM races ORDER BY races.date DESC LIMIT 1	formula_1
SELECT races.name FROM races ORDER BY races.date DESC LIMIT 1	formula_1
SELECT races.name , races.date FROM races ORDER BY races.date DESC LIMIT 1	formula_1
SELECT races.name , races.date FROM races ORDER BY races.date DESC LIMIT 1	formula_1
SELECT races.date FROM races WHERE races.round = 2017	formula_1
SELECT races.date FROM races WHERE races.year = 2017	formula_1
SELECT DISTINCT races.date FROM races WHERE races.round BETWEEN 2014 and 2017	formula_1
SELECT DISTINCT races.date FROM races WHERE races.round BETWEEN 2014 and 2017	formula_1
SELECT drivers.forename , drivers.surname FROM drivers WHERE drivers.nationality = 'German'	formula_1
SELECT drivers.forename , drivers.surname FROM drivers WHERE drivers.nationality = 'German'	formula_1
SELECT COUNT( * ) , constructors.nationality FROM constructors GROUP BY constructors.nationality	formula_1
SELECT COUNT( * ) , constructors.nationality FROM constructors GROUP BY constructors.nationality	formula_1
SELECT DISTINCT drivers.forename FROM drivers ORDER BY drivers.forename ASC	formula_1
SELECT DISTINCT drivers.forename FROM drivers ORDER BY drivers.forename ASC	formula_1
SELECT DISTINCT races.date FROM races ORDER BY races.date DESC	formula_1
SELECT DISTINCT races.date FROM races ORDER BY races.date DESC	formula_1
SELECT races.date FROM races WHERE races.round BETWEEN 2009 and 2011	formula_1
SELECT races.date FROM races WHERE races.round BETWEEN 2009 and 2011	formula_1
SELECT races.date FROM races WHERE races.date > '12:00:00' OR races.date<'09:00:00'	formula_1
SELECT races.date FROM races WHERE races.date > '12:00:00' OR races.date<'09:00:00'	formula_1
SELECT circuits.name FROM circuits WHERE circuits.country = 'UK' OR circuits.country = 'Malaysia'	formula_1
SELECT circuits.name FROM circuits WHERE circuits.country = 'UK' OR circuits.country = 'Malaysia'	formula_1
SELECT circuits.circuitid , circuits.location FROM circuits WHERE circuits.country = 'France' OR circuits.country = 'Belgium'	formula_1
SELECT circuits.circuitid , circuits.location FROM circuits WHERE circuits.country = 'France' OR circuits.country = 'Belgium'	formula_1
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
SELECT technician.starting_year FROM technician WHERE technician.team = 'CLE' INTERSECT SELECT technician.starting_year FROM technician WHERE technician.team = 'CWS'	machine_repair
SELECT COUNT( * ) FROM entrepreneur	entrepreneur
SELECT COUNT( * ) FROM entrepreneur	entrepreneur
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC	entrepreneur
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC	entrepreneur
SELECT entrepreneur.company , entrepreneur.investor FROM entrepreneur	entrepreneur
SELECT entrepreneur.company , entrepreneur.investor FROM entrepreneur	entrepreneur
SELECT AVG( entrepreneur.money_requested ) FROM entrepreneur	entrepreneur
SELECT AVG( entrepreneur.money_requested ) FROM entrepreneur	entrepreneur
SELECT people.weight FROM people ORDER BY people.height ASC LIMIT 1	entrepreneur
SELECT people.weight FROM people ORDER BY people.height ASC LIMIT 1	entrepreneur
SELECT entrepreneur.investor , COUNT( * ) FROM entrepreneur GROUP BY entrepreneur.investor	entrepreneur
SELECT entrepreneur.investor , COUNT( * ) FROM entrepreneur GROUP BY entrepreneur.investor	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY COUNT( * ) DESC LIMIT 1	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY COUNT( * ) DESC LIMIT 1	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT( * ) >= 2	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT( * ) >= 2	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur WHERE entrepreneur.money_requested > 140000 INTERSECT SELECT entrepreneur.investor FROM entrepreneur WHERE entrepreneur.money_requested<120000	entrepreneur
SELECT entrepreneur.investor FROM entrepreneur WHERE entrepreneur.money_requested > 140000 INTERSECT SELECT entrepreneur.investor FROM entrepreneur WHERE entrepreneur.money_requested<120000	entrepreneur
SELECT COUNT( DISTINCT entrepreneur.company ) FROM entrepreneur	entrepreneur
SELECT COUNT( DISTINCT entrepreneur.company ) FROM entrepreneur	entrepreneur
SELECT COUNT( * ) FROM perpetrator	perpetrator
SELECT perpetrator.date FROM perpetrator ORDER BY perpetrator.killed DESC	perpetrator
SELECT perpetrator.injured FROM perpetrator ORDER BY perpetrator.injured ASC	perpetrator
SELECT AVG( perpetrator.injured ) FROM perpetrator	perpetrator
SELECT perpetrator.location FROM perpetrator ORDER BY perpetrator.killed DESC LIMIT 1	perpetrator
SELECT perpetrator.country , COUNT( * ) FROM perpetrator GROUP BY perpetrator.country	perpetrator
SELECT perpetrator.country , COUNT( * ) FROM perpetrator GROUP BY perpetrator.country ORDER BY COUNT( * ) DESC LIMIT 1	perpetrator
SELECT perpetrator.country , COUNT( * ) FROM perpetrator GROUP BY perpetrator.country HAVING COUNT( * ) >= 2	perpetrator
SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured > 50 INTERSECT SELECT perpetrator.country FROM perpetrator WHERE perpetrator.injured<20	perpetrator
SELECT COUNT( DISTINCT perpetrator.location ) FROM perpetrator	perpetrator
SELECT MAX( perpetrator.year ) FROM perpetrator	perpetrator
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.location = 'Chico'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.location = 'Chico'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year = 1958	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year = 1958	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year<1800	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year<1800	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year BETWEEN 1935 and 1939	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.year BETWEEN 1935 and 1939	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.location = 'Northridge' AND campuses.county = 'Los Angeles' UNION SELECT campuses.campus FROM campuses WHERE campuses.location = 'San Francisco' AND campuses.county = ', San Francisco'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.location = 'Northridge,' AND campuses.county = 'Los Angeles' UNION SELECT campuses.campus FROM campuses WHERE campuses.location = 'San Francisco, San Francisco' AND campuses.county = ', San Francisco'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles' AND campuses.year > 1950	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles' AND campuses.year > 1950	csu_1
SELECT degrees.year FROM degrees GROUP BY degrees.year ORDER BY SUM( degrees.degrees ) DESC LIMIT 1	csu_1
SELECT degrees.year FROM degrees GROUP BY degrees.year ORDER BY SUM( degrees.degrees ) DESC LIMIT 1	csu_1
SELECT degrees.campus FROM degrees GROUP BY degrees.campus ORDER BY SUM( degrees.degrees ) DESC LIMIT 1	csu_1
SELECT degrees.campus FROM degrees GROUP BY degrees.campus ORDER BY SUM( degrees.degrees ) DESC LIMIT 1	csu_1
SELECT COUNT( * ) FROM campuses WHERE campuses.county = 'Los Angeles'	csu_1
SELECT COUNT( * ) FROM campuses WHERE campuses.county = 'LA'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles'	csu_1
SELECT campuses.campus FROM campuses WHERE campuses.county = 'Los Angeles'	csu_1
SELECT SUM( faculty.faculty ) FROM faculty WHERE faculty.year = 2002	csu_1
SELECT SUM( faculty.faculty ) FROM faculty WHERE faculty.year = 2002	csu_1
SELECT COUNT( * ) FROM campuses	csu_1
SELECT COUNT( * ) FROM campuses	csu_1
SELECT COUNT( * ) FROM candidate	candidate_poll
SELECT COUNT( * ) FROM candidate	candidate_poll
SELECT candidate.poll_source FROM candidate GROUP BY candidate.poll_source ORDER BY COUNT( * ) DESC LIMIT 1	candidate_poll
SELECT candidate.poll_source FROM candidate GROUP BY candidate.poll_source ORDER BY COUNT( * ) DESC LIMIT 1	candidate_poll
SELECT candidate.support_rate FROM candidate ORDER BY candidate.support_rate DESC LIMIT 3	candidate_poll
SELECT candidate.support_rate FROM candidate ORDER BY candidate.support_rate DESC LIMIT 3	candidate_poll
SELECT candidate.candidate_id FROM candidate ORDER BY candidate.oppose_rate ASC LIMIT 1	candidate_poll
SELECT candidate.candidate_id FROM candidate ORDER BY candidate.oppose_rate ASC LIMIT 1	candidate_poll
SELECT candidate.support_rate , candidate.consider_rate , candidate.oppose_rate FROM candidate ORDER BY candidate.unsure_rate ASC	candidate_poll
SELECT candidate.support_rate , candidate.consider_rate , candidate.oppose_rate FROM candidate ORDER BY candidate.unsure_rate ASC	candidate_poll
SELECT candidate.poll_source FROM candidate ORDER BY candidate.oppose_rate DESC LIMIT 1	candidate_poll
SELECT candidate.poll_source FROM candidate ORDER BY candidate.oppose_rate DESC LIMIT 1	candidate_poll
SELECT people.name FROM people ORDER BY people.date_of_birth ASC	candidate_poll
SELECT people.name FROM people ORDER BY people.date_of_birth ASC	candidate_poll
SELECT AVG( people.height ) , AVG( people.weight ) FROM people WHERE people.sex = 'M'	candidate_poll
SELECT AVG( people.height ) , AVG( people.weight ) FROM people WHERE people.sex = 'm'	candidate_poll
SELECT people.name FROM people WHERE people.height > 200 OR people.height<190	candidate_poll
SELECT people.name FROM people WHERE people.height > 200 OR people.height<190	candidate_poll
SELECT AVG( people.weight ) , MIN( people.weight ) , people.sex FROM people GROUP BY people.sex	candidate_poll
SELECT AVG( people.weight ) , MIN( people.weight ) , people.sex FROM people GROUP BY people.sex	candidate_poll
SELECT COUNT( * ) , people.sex FROM people WHERE people.weight > 85 GROUP BY people.sex	candidate_poll
SELECT COUNT( * ) , people.sex FROM people WHERE people.weight > 85 GROUP BY people.sex	candidate_poll
SELECT MAX( candidate.support_rate ) , MIN( candidate.consider_rate ) , MIN( candidate.oppose_rate ) FROM candidate	candidate_poll
SELECT MAX( candidate.support_rate ) , MIN( candidate.consider_rate ) , MIN( candidate.oppose_rate ) FROM candidate	candidate_poll
SELECT people.name FROM people WHERE people.height<(SELECT AVG( people.height ) FROM people)	candidate_poll
SELECT people.name FROM people WHERE people.height<(SELECT AVG( people.height ) FROM people)	candidate_poll
SELECT * FROM people	candidate_poll
SELECT * FROM people	candidate_poll
SELECT city.name FROM city ORDER BY city.name ASC	county_public_safety
SELECT city.name FROM city ORDER BY city.name ASC	county_public_safety
SELECT city.hispanic FROM city WHERE city.black > 10	county_public_safety
SELECT city.hispanic FROM city WHERE city.black > 10	county_public_safety
SELECT city.name FROM city ORDER BY city.white DESC LIMIT 5	county_public_safety
SELECT city.name FROM city ORDER BY city.white DESC LIMIT 5	county_public_safety
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice<160 AND rooms.beds = 2 AND rooms.decor = 'modern'	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice<160 AND rooms.beds = 2 AND rooms.decor = 'modern'	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT rooms.roomname , rooms.roomid FROM rooms WHERE rooms.baseprice > 160 AND rooms.maxoccupancy > 2	inn_1
SELECT reservations.kids FROM reservations WHERE reservations.firstname = 'ROY' AND reservations.lastname = 'SWEAZY'	inn_1
SELECT reservations.kids FROM reservations WHERE reservations.firstname = 'ROY' AND reservations.lastname = 'SWEAZ'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY' AND reservations.lastname = 'SWEAZY'	inn_1
SELECT COUNT( * ) FROM reservations WHERE reservations.firstname = 'ROY' AND reservations.lastname = 'SWEAZY'	inn_1
SELECT reservations.adults FROM reservations WHERE reservations.firstname = 'CONRAD' AND reservations.lastname = 'SELBIG' AND reservations.lastname = 'SELBIG'	inn_1
SELECT reservations.adults FROM reservations WHERE reservations.firstname = 'CONRAD' AND reservations.lastname = 'SELBIG' AND reservations.lastname = 'SELBIG'	inn_1
SELECT reservations.kids FROM reservations WHERE reservations.firstname = 'DAMIEN' AND reservations.lastname = 'TRACHSEL' AND reservations.lastname = 'TRACHSEL'	inn_1
SELECT reservations.kids FROM reservations WHERE reservations.firstname = 'DAMIEN' AND reservations.lastname = 'TRACHSEL' AND reservations.lastname = 'TRACHSEL'	inn_1
SELECT SUM( rooms.beds ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT SUM( rooms.beds ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT rooms.roomname , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname , rooms.decor FROM rooms WHERE rooms.bedtype = 'king' ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname , rooms.baseprice FROM rooms ORDER BY rooms.baseprice ASC LIMIT 1	inn_1
SELECT rooms.roomname , rooms.baseprice FROM rooms ORDER BY rooms.baseprice ASC LIMIT 1	inn_1
SELECT rooms.decor FROM rooms WHERE rooms.roomname = 'Recluse and defiance'	inn_1
SELECT rooms.decor FROM rooms WHERE rooms.roomname = 'Recluse and defiance'	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT SUM( rooms.maxoccupancy ) FROM rooms WHERE rooms.decor = 'modern'	inn_1
SELECT SUM( rooms.maxoccupancy ) FROM rooms WHERE rooms.decor = 'modern'	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king'	inn_1
SELECT rooms.bedtype , COUNT( * ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.bedtype , COUNT( * ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.maxoccupancy DESC LIMIT 1	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.maxoccupancy DESC LIMIT 1	inn_1
SELECT rooms.roomid , rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 1	inn_1
SELECT rooms.roomid , rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 1	inn_1
SELECT rooms.roomname , rooms.bedtype FROM rooms WHERE rooms.decor = 'traditional'	inn_1
SELECT rooms.roomname , rooms.bedtype FROM rooms WHERE rooms.decor = 'traditional'	inn_1
SELECT rooms.decor , COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king' GROUP BY rooms.decor	inn_1
SELECT rooms.decor , COUNT( * ) FROM rooms WHERE rooms.bedtype = 'king' GROUP BY rooms.decor	inn_1
SELECT rooms.decor , AVG( rooms.baseprice ) , MIN( rooms.baseprice ) FROM rooms GROUP BY rooms.decor	inn_1
SELECT rooms.decor , AVG( rooms.baseprice ) , MIN( rooms.baseprice ) FROM rooms GROUP BY rooms.decor	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.roomname FROM rooms ORDER BY rooms.baseprice ASC	inn_1
SELECT rooms.decor , COUNT( * ) FROM rooms WHERE rooms.baseprice > 120 GROUP BY rooms.decor	inn_1
SELECT rooms.decor , COUNT( * ) FROM rooms WHERE rooms.baseprice > 120 GROUP BY rooms.decor	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.bedtype , AVG( rooms.baseprice ) FROM rooms GROUP BY rooms.bedtype	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.bedtype = 'king' OR rooms.bedtype = 'queen'	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.bedtype = 'king' OR rooms.bedtype = 'queen'	inn_1
SELECT COUNT( DISTINCT rooms.bedtype ) FROM rooms	inn_1
SELECT COUNT( DISTINCT rooms.bedtype ) FROM rooms	inn_1
SELECT rooms.roomid , rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 3	inn_1
SELECT rooms.roomid , rooms.roomname FROM rooms ORDER BY rooms.baseprice DESC LIMIT 3	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice > (SELECT AVG( rooms.baseprice ) FROM rooms)	inn_1
SELECT rooms.roomname FROM rooms WHERE rooms.baseprice > (SELECT AVG( rooms.baseprice ) FROM rooms)	inn_1
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
SELECT COUNT( * ) FROM region	storm_record
SELECT COUNT( * ) FROM region	storm_record
SELECT region.region_code , region.region_name FROM region ORDER BY region.region_code ASC	storm_record
SELECT region.region_code , region.region_name FROM region ORDER BY region.region_code ASC	storm_record
SELECT region.region_name FROM region ORDER BY region.region_name ASC	storm_record
SELECT region.region_name FROM region ORDER BY region.region_name ASC	storm_record
SELECT region.region_name FROM region WHERE region.region_name != 'Denmark'	storm_record
SELECT region.region_name FROM region WHERE region.region_name != 'Denmark'	storm_record
SELECT COUNT( * ) FROM storm WHERE storm.number_deaths = 1	storm_record
SELECT COUNT( * ) FROM storm WHERE storm.number_deaths > 1	storm_record
SELECT storm.name , storm.dates_active , storm.number_deaths FROM storm WHERE storm.number_deaths >= 1	storm_record
SELECT storm.name , storm.dates_active , storm.number_deaths FROM storm WHERE storm.number_deaths >= 1	storm_record
SELECT AVG( storm.damage_millions_usd ) , MAX( storm.damage_millions_usd ) FROM storm WHERE storm.max_speed > 1000	storm_record
SELECT AVG( storm.damage_millions_usd ) , MAX( storm.damage_millions_usd ) FROM storm WHERE storm.max_speed > 1000	storm_record
SELECT SUM( storm.number_deaths ) , SUM( storm.damage_millions_usd ) FROM storm WHERE storm.max_speed > (SELECT AVG( storm.max_speed ) FROM storm)	storm_record
SELECT SUM( storm.number_deaths ) , SUM( storm.damage_millions_usd ) FROM storm WHERE storm.max_speed > (SELECT AVG( storm.max_speed ) FROM storm)	storm_record
SELECT storm.name , storm.damage_millions_usd FROM storm ORDER BY storm.max_speed DESC	storm_record
SELECT storm.name , storm.damage_millions_usd FROM storm ORDER BY storm.max_speed DESC	storm_record
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
SELECT party.party FROM party GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.party FROM party GROUP BY party.party HAVING COUNT( * ) >= 2	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.governor FROM party GROUP BY party.governor ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
SELECT party.comptroller , COUNT( * ) FROM party GROUP BY party.comptroller ORDER BY COUNT( * ) DESC LIMIT 1	election
-- SELECT COUNT( * ) FROM aircraft	flight_1
-- SELECT aircraft.name , aircraft.distance FROM aircraft	flight_1
-- SELECT aircraft.name , aircraft.distance FROM aircraft	flight_1
-- SELECT aircraft.aid FROM aircraft WHERE aircraft.distance > 1000	flight_1
-- SELECT aircraft.aid FROM aircraft WHERE aircraft.distance > 1000	flight_1
-- SELECT COUNT( * ) FROM aircraft WHERE aircraft.distance BETWEEN 1000 and 5000	flight_1
-- SELECT COUNT( * ) FROM aircraft WHERE aircraft.distance BETWEEN 1000 and 5000	flight_1
-- SELECT aircraft.name , aircraft.distance FROM aircraft WHERE aircraft.aid = 12	flight_1
-- SELECT aircraft.name , aircraft.distance FROM aircraft WHERE aircraft.aid = 12	flight_1
-- SELECT MIN( aircraft.distance ) , AVG( aircraft.distance ) , MAX( aircraft.distance ) FROM aircraft	flight_1
-- SELECT MIN( aircraft.distance ) , AVG( aircraft.distance ) , MAX( aircraft.distance ) FROM aircraft	flight_1
-- SELECT aircraft.aid , aircraft.name FROM aircraft ORDER BY aircraft.distance DESC LIMIT 1	flight_1
-- SELECT aircraft.aid , aircraft.name FROM aircraft ORDER BY aircraft.distance DESC LIMIT 1	flight_1
-- SELECT aircraft.name FROM aircraft ORDER BY aircraft.distance ASC LIMIT 3	flight_1
-- SELECT aircraft.name FROM aircraft ORDER BY aircraft.distance ASC LIMIT 3	flight_1
-- SELECT aircraft.name FROM aircraft WHERE aircraft.distance > (SELECT AVG( aircraft.distance ) FROM aircraft)	flight_1
-- SELECT aircraft.name FROM aircraft WHERE aircraft.distance > (SELECT AVG( aircraft.distance ) FROM aircraft)	flight_1
-- SELECT COUNT( * ) FROM employee	flight_1
-- SELECT COUNT( * ) FROM employee	flight_1
-- SELECT employee.name , employee.salary FROM employee ORDER BY employee.salary ASC	flight_1
-- SELECT employee.name , employee.salary FROM employee ORDER BY employee.salary ASC	flight_1
-- SELECT employee.eid FROM employee WHERE employee.salary > 100000	flight_1
-- SELECT employee.eid FROM employee WHERE employee.salary > 100000	flight_1
-- SELECT COUNT( * ) FROM employee WHERE employee.salary BETWEEN 100000 and 200000	flight_1
-- SELECT COUNT( * ) FROM employee WHERE employee.salary BETWEEN 100000 and 200000	flight_1
-- SELECT employee.name , employee.salary FROM employee WHERE employee.eid = 242518965	flight_1
-- SELECT employee.name , employee.salary FROM employee WHERE employee.eid = 242518965	flight_1
-- SELECT AVG( employee.salary ) , MAX( employee.salary ) FROM employee	flight_1
-- SELECT AVG( employee.salary ) , MAX( employee.salary ) FROM employee	flight_1
-- SELECT employee.eid , employee.name FROM employee ORDER BY employee.salary DESC LIMIT 1	flight_1
-- SELECT employee.eid , employee.name FROM employee ORDER BY employee.salary DESC LIMIT 1	flight_1
-- SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3	flight_1
-- SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3	flight_1
-- SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG( employee.salary ) FROM employee)	flight_1
-- SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG( employee.salary ) FROM employee)	flight_1
-- SELECT employee.eid , employee.salary FROM employee WHERE employee.name = 'Mark Young'	flight_1
-- SELECT employee.eid , employee.salary FROM employee WHERE employee.name = 'Mark Young'	flight_1
-- SELECT COUNT( * ) FROM flight	flight_1
-- SELECT COUNT( * ) FROM flight	flight_1
-- SELECT flight.flno , flight.origin , flight.destination FROM flight ORDER BY flight.origin ASC	flight_1
-- SELECT flight.flno , flight.origin , flight.destination FROM flight ORDER BY flight.origin ASC	flight_1
-- SELECT flight.flno FROM flight WHERE flight.origin = 'Los Angeles'	flight_1
-- SELECT flight.flno FROM flight WHERE flight.origin = 'Los Angeles'	flight_1
-- SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'	flight_1
-- SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'	flight_1
-- SELECT flight.departure_date , flight.arrival_date FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'	flight_1
-- SELECT flight.departure_date , flight.arrival_date FROM flight WHERE flight.origin = 't' AND flight.destination = 'Honolulu'	flight_1
-- SELECT flight.flno FROM flight WHERE flight.distance > 2000	flight_1
-- SELECT flight.flno FROM flight WHERE flight.distance > 2000	flight_1
-- SELECT AVG( flight.price ) FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'	flight_1
-- SELECT AVG( flight.price ) FROM flight WHERE flight.origin = 't' AND flight.destination = 'Honolulu'	flight_1
-- SELECT flight.origin , flight.destination FROM flight WHERE flight.price > 300	flight_1
-- SELECT flight.origin , flight.destination FROM flight WHERE flight.price > 300	flight_1
-- SELECT flight.flno , flight.distance FROM flight ORDER BY flight.price DESC LIMIT 1	flight_1
-- SELECT flight.flno , flight.distance FROM flight ORDER BY flight.price DESC LIMIT 1	flight_1
-- SELECT flight.flno FROM flight ORDER BY flight.distance ASC LIMIT 3	flight_1
-- SELECT flight.flno FROM flight ORDER BY flight.distance ASC LIMIT 3	flight_1
-- SELECT AVG( flight.distance ) , AVG( flight.price ) FROM flight WHERE flight.origin = 'Los Angeles'	flight_1
-- SELECT AVG( flight.distance ) , AVG( flight.price ) FROM flight WHERE flight.origin = 'yes'	flight_1
-- SELECT flight.origin , COUNT( * ) FROM flight GROUP BY flight.origin	flight_1
-- SELECT flight.origin , COUNT( * ) FROM flight GROUP BY flight.origin	flight_1
-- SELECT flight.destination , COUNT( * ) FROM flight GROUP BY flight.destination	flight_1
-- SELECT flight.destination , COUNT( * ) FROM flight GROUP BY flight.destination	flight_1
-- SELECT flight.origin FROM flight GROUP BY flight.origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
-- SELECT flight.origin FROM flight GROUP BY flight.origin ORDER BY COUNT( * ) DESC LIMIT 1	flight_1
-- SELECT flight.destination FROM flight GROUP BY flight.destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
-- SELECT flight.destination FROM flight GROUP BY flight.destination ORDER BY COUNT( * ) ASC LIMIT 1	flight_1
-- SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
-- SELECT COUNT( DISTINCT certificate.eid ) FROM certificate	flight_1
-- SELECT COUNT( * ) FROM student	allergy_1
-- SELECT COUNT( * ) FROM student	allergy_1
-- SELECT student.fname , student.lname FROM student	allergy_1
-- SELECT student.fname , student.lname FROM student	allergy_1
-- SELECT COUNT( DISTINCT student.advisor ) FROM student	allergy_1
-- SELECT COUNT( DISTINCT student.advisor ) FROM student	allergy_1
-- SELECT DISTINCT student.major FROM student	allergy_1
-- SELECT DISTINCT student.major FROM student	allergy_1
-- SELECT DISTINCT student.city_code FROM student	allergy_1
-- SELECT DISTINCT student.city_code FROM student	allergy_1
-- SELECT student.fname , student.lname , student.age FROM student WHERE student.sex = 'F'	allergy_1
-- SELECT student.fname , student.lname , student.age FROM student WHERE student.sex = 'F'	allergy_1
-- SELECT student.stuid FROM student WHERE student.sex = 'm'	allergy_1
-- SELECT student.stuid FROM student WHERE student.sex = 'm'	allergy_1
-- SELECT COUNT( * ) FROM student WHERE student.age = 18	allergy_1
-- SELECT COUNT( * ) FROM student WHERE student.age = 18	allergy_1
-- SELECT student.stuid FROM student WHERE student.age > 20	allergy_1
-- SELECT student.stuid FROM student WHERE student.age > 20	allergy_1
-- SELECT student.city_code FROM student WHERE student.lname = 'Kim'	allergy_1
-- SELECT student.city_code FROM student WHERE student.lname = 'Kim'	allergy_1
-- SELECT student.advisor FROM student WHERE student.stuid = 1004	allergy_1
-- SELECT student.advisor FROM student WHERE student.stuid = 1004	allergy_1
-- SELECT COUNT( * ) FROM student WHERE student.city_code = 'HKG' OR student.city_code = 'CHI'	allergy_1
-- SELECT COUNT( * ) FROM student WHERE student.city_code = 'HKG' OR student.city_code = 'CHI'	allergy_1
-- SELECT MIN( student.age ) , AVG( student.age ) , MAX( student.age ) FROM student	allergy_1
-- SELECT MIN( student.age ) , AVG( student.age ) , MAX( student.age ) FROM student	allergy_1
-- SELECT student.lname FROM student WHERE student.age = (SELECT MIN( student.age ) FROM student)	allergy_1
-- SELECT student.lname FROM student WHERE student.age = (SELECT MIN( student.age ) FROM student)	allergy_1
-- SELECT student.stuid FROM student WHERE student.age = (SELECT MAX( student.age ) FROM student)	allergy_1
-- SELECT student.stuid FROM student WHERE student.age = (SELECT MAX( student.age ) FROM student)	allergy_1
-- SELECT student.major , COUNT( * ) FROM student GROUP BY student.major	allergy_1
-- SELECT student.major , COUNT( * ) FROM student GROUP BY student.major	allergy_1
-- SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT student.age , COUNT( * ) FROM student GROUP BY student.age	allergy_1
-- SELECT student.age , COUNT( * ) FROM student GROUP BY student.age	allergy_1
-- SELECT AVG( student.age ) , student.sex FROM student GROUP BY student.sex	allergy_1
-- SELECT AVG( student.age ) , student.sex FROM student GROUP BY student.sex	allergy_1
-- SELECT student.city_code , COUNT( * ) FROM student GROUP BY student.city_code	allergy_1
-- SELECT student.city_code , COUNT( * ) FROM student GROUP BY student.city_code	allergy_1
-- SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	allergy_1
-- SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	allergy_1
-- SELECT student.advisor FROM student GROUP BY student.advisor ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT student.advisor FROM student GROUP BY student.advisor ORDER BY COUNT( * ) DESC LIMIT 1	allergy_1
-- SELECT COUNT( * ) FROM accounts	customers_card_transactions
-- SELECT COUNT( * ) FROM accounts	customers_card_transactions
-- SELECT accounts.account_id , accounts.customer_id , accounts.account_name FROM accounts	customers_card_transactions
-- SELECT accounts.account_id , accounts.customer_id , accounts.account_name FROM accounts	customers_card_transactions
-- SELECT accounts.other_account_details FROM accounts WHERE accounts.account_name = '338'	customers_card_transactions
-- SELECT accounts.other_account_details FROM accounts WHERE accounts.account_name = '338'	customers_card_transactions
-- SELECT accounts.customer_id , COUNT( * ) FROM accounts GROUP BY accounts.customer_id	customers_card_transactions
-- SELECT accounts.customer_id , COUNT( * ) FROM accounts GROUP BY accounts.customer_id	customers_card_transactions
-- SELECT accounts.customer_id , COUNT( * ) FROM accounts GROUP BY accounts.customer_id ORDER BY COUNT( * ) DESC LIMIT 1	customers_card_transactions
-- SELECT accounts.customer_id , COUNT( * ) FROM accounts GROUP BY accounts.customer_id ORDER BY COUNT( * ) DESC LIMIT 1	customers_card_transactions
-- SELECT COUNT( DISTINCT accounts.customer_id ) FROM accounts	customers_card_transactions
-- SELECT COUNT( DISTINCT accounts.customer_id ) FROM accounts	customers_card_transactions
-- SELECT COUNT( * ) FROM customers	customers_card_transactions
-- SELECT COUNT( * ) FROM customers	customers_card_transactions
-- SELECT customers.customer_id , customers.customer_first_name , customers.customer_last_name , customers.customer_phone FROM customers	customers_card_transactions
-- SELECT customers.customer_id , customers.customer_first_name , customers.customer_last_name , customers.customer_phone FROM customers	customers_card_transactions
-- SELECT customers.customer_phone , customers.customer_email FROM customers WHERE customers.customer_first_name = 'Aniyah' AND customers.customer_last_name = 'Feest'	customers_card_transactions
-- SELECT customers.customer_phone , customers.customer_email FROM customers WHERE customers.customer_first_name = 'Aniyah' AND customers.customer_last_name = 'Feest'	customers_card_transactions
-- SELECT COUNT( * ) FROM album	chinook_1
-- SELECT COUNT( * ) FROM album	chinook_1
-- SELECT genre.name FROM genre	chinook_1
-- SELECT genre.name FROM genre	chinook_1
-- SELECT * FROM customer WHERE customer.state = 'NY'	chinook_1
-- SELECT * FROM customer WHERE customer.state = 'NY'	chinook_1
-- SELECT employee.firstname , employee.lastname FROM employee WHERE employee.city = 'Calgary'	chinook_1
-- SELECT employee.firstname , employee.lastname FROM employee WHERE employee.city = 'Calgary'	chinook_1
-- SELECT DISTINCT invoice.billingcountry FROM invoice	chinook_1
-- SELECT DISTINCT invoice.billingcountry FROM invoice	chinook_1
-- SELECT artist.name FROM artist WHERE artist.name LIKE '%a%'	chinook_1
-- SELECT artist.name FROM artist WHERE artist.name LIKE '%a%'	chinook_1
-- SELECT track.name FROM track WHERE track.name LIKE '%you%'	chinook_1
-- SELECT track.name FROM track WHERE track.name LIKE '%you%'	chinook_1
-- SELECT AVG( track.unitprice ) FROM track	chinook_1
-- SELECT AVG( track.unitprice ) FROM track	chinook_1
-- SELECT MAX( track.milliseconds ) , MIN( track.milliseconds ) FROM track	chinook_1
-- SELECT MAX( track.milliseconds ) , MIN( track.milliseconds ) FROM track	chinook_1
-- SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'luisg@embraer.com.br'	chinook_1
-- SELECT customer.firstname , customer.lastname FROM customer WHERE customer.email = 'luisg@embraer.com.br'	chinook_1
-- SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
-- SELECT COUNT( * ) FROM customer WHERE customer.email LIKE '%gmail.com%'	chinook_1
-- SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
-- SELECT COUNT( DISTINCT employee.city ) FROM employee	chinook_1
-- SELECT employee.phone FROM employee	chinook_1
-- SELECT employee.phone FROM employee	chinook_1
-- SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
-- SELECT album.title FROM album ORDER BY album.title ASC	chinook_1
-- SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
-- SELECT employee.birthdate FROM employee WHERE employee.city = 'Edmonton'	chinook_1
-- SELECT DISTINCT track.unitprice FROM track	chinook_1
-- SELECT DISTINCT track.unitprice FROM track	chinook_1
-- SELECT MIN( apartments.bathroom_count ) , MAX( apartments.bathroom_count ) FROM apartments	apartment_rentals
-- SELECT MIN( apartments.bathroom_count ) , MAX( apartments.bathroom_count ) FROM apartments	apartment_rentals
-- SELECT AVG( apartments.bedroom_count ) FROM apartments	apartment_rentals
-- SELECT AVG( apartments.bedroom_count ) FROM apartments	apartment_rentals
-- SELECT apartments.apt_number , apartments.room_count FROM apartments	apartment_rentals
-- SELECT apartments.apt_number , apartments.room_count FROM apartments	apartment_rentals
-- SELECT AVG( apartments.room_count ) FROM apartments WHERE apartments.apt_type_code = 'Studio'	apartment_rentals
-- SELECT AVG( apartments.room_count ) FROM apartments WHERE apartments.apt_type_code = 'Studio'	apartment_rentals
-- SELECT apartments.apt_number FROM apartments WHERE apartments.apt_type_code = 'Flat'	apartment_rentals
-- SELECT apartments.apt_number FROM apartments WHERE apartments.apt_type_code = 'Flat'	apartment_rentals
-- SELECT guests.guest_first_name , guests.guest_last_name FROM guests	apartment_rentals
-- SELECT guests.guest_first_name , guests.guest_last_name FROM guests	apartment_rentals
-- SELECT guests.date_of_birth FROM guests WHERE guests.gender_code = 'Male'	apartment_rentals
-- SELECT guests.date_of_birth FROM guests WHERE guests.gender_code = 'Male'	apartment_rentals
-- SELECT apartments.apt_number FROM apartments ORDER BY apartments.room_count ASC	apartment_rentals
-- SELECT apartments.apt_number FROM apartments ORDER BY apartments.room_count ASC	apartment_rentals
-- SELECT apartments.apt_number FROM apartments ORDER BY apartments.bedroom_count DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_number FROM apartments ORDER BY apartments.bedroom_count DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code , COUNT( * ) FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
-- SELECT apartments.apt_type_code , COUNT( * ) FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) ASC	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY AVG( apartments.room_count ) DESC LIMIT 3	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY AVG( apartments.room_count ) DESC LIMIT 3	apartment_rentals
-- SELECT apartments.apt_type_code , apartments.bathroom_count , apartments.bedroom_count FROM apartments GROUP BY apartments.apt_type_code ORDER BY SUM( apartments.room_count ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code , apartments.bathroom_count , apartments.bedroom_count FROM apartments GROUP BY apartments.apt_type_code ORDER BY SUM( apartments.room_count ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments WHERE apartments.bathroom_count > 1 GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code FROM apartments WHERE apartments.bathroom_count > 1 GROUP BY apartments.apt_type_code ORDER BY COUNT( * ) DESC LIMIT 1	apartment_rentals
-- SELECT apartments.apt_type_code , MAX( apartments.room_count ) , MIN( apartments.room_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
-- SELECT apartments.apt_type_code , MAX( apartments.room_count ) , MIN( apartments.room_count ) FROM apartments GROUP BY apartments.apt_type_code	apartment_rentals
-- SELECT guests.gender_code , COUNT( * ) FROM guests GROUP BY guests.gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
-- SELECT guests.gender_code , COUNT( * ) FROM guests GROUP BY guests.gender_code ORDER BY COUNT( * ) DESC	apartment_rentals
-- SELECT AVG( player.weight ) FROM player	soccer_1
-- SELECT MAX( player.weight ) , MIN( player.weight ) FROM player	soccer_1
-- SELECT COUNT( * ) FROM accounts	customers_and_invoices
-- SELECT COUNT( * ) FROM accounts	customers_and_invoices
-- SELECT COUNT( DISTINCT accounts.customer_id ) FROM accounts	customers_and_invoices
-- SELECT COUNT( DISTINCT accounts.customer_id ) FROM accounts	customers_and_invoices
-- SELECT accounts.account_id , accounts.date_account_opened , accounts.account_name , accounts.other_account_details FROM accounts	customers_and_invoices
-- SELECT accounts.account_id , accounts.date_account_opened , accounts.account_name , accounts.other_account_details FROM accounts	customers_and_invoices
-- SELECT COUNT( * ) , accounts.customer_id FROM accounts GROUP BY accounts.customer_id	customers_and_invoices
-- SELECT COUNT( * ) , accounts.customer_id FROM accounts GROUP BY accounts.customer_id	customers_and_invoices
-- SELECT COUNT( * ) FROM customers	customers_and_invoices
-- SELECT COUNT( * ) FROM customers	customers_and_invoices
-- SELECT customers.gender , COUNT( * ) FROM customers GROUP BY customers.gender	customers_and_invoices
-- SELECT customers.gender , COUNT( * ) FROM customers GROUP BY customers.gender	customers_and_invoices
-- SELECT DISTINCT products.product_color FROM products	customers_and_invoices
-- SELECT DISTINCT products.product_color FROM products	customers_and_invoices
-- SELECT DISTINCT products.product_color FROM products	customers_and_invoices
-- SELECT DISTINCT products.product_color FROM products	customers_and_invoices
-- SELECT COUNT( * ) FROM invoices	customers_and_invoices
-- SELECT COUNT( * ) FROM invoices	customers_and_invoices
-- SELECT invoices.order_id , COUNT( * ) FROM invoices GROUP BY invoices.order_id	customers_and_invoices
-- SELECT invoices.order_id , COUNT( * ) FROM invoices GROUP BY invoices.order_id	customers_and_invoices
-- SELECT roles.role_code FROM roles	cre_Doc_Control_Systems
-- SELECT roles.role_description FROM roles WHERE roles.role_code = 'ED'	cre_Doc_Control_Systems
-- SELECT COUNT( * ) FROM employees	cre_Doc_Control_Systems
-- SELECT documents.document_id , documents.receipt_date FROM documents	cre_Doc_Control_Systems
-- SELECT COUNT( * ) FROM documents WHERE documents.document_status_code = 'done'	cre_Doc_Control_Systems
-- SELECT documents.document_type_code FROM documents WHERE documents.document_id = 2	cre_Doc_Control_Systems
-- SELECT documents.document_id FROM documents WHERE documents.document_status_code = 'done' AND documents.document_type_code = 'paper'	cre_Doc_Control_Systems
-- SELECT documents.receipt_date FROM documents WHERE documents.document_id = 3	cre_Doc_Control_Systems
-- SELECT movie.title FROM movie WHERE movie.director = 'steven spielberg'	movie_1
-- SELECT movie.title FROM movie WHERE movie.director = 'Steven Spielberg'	movie_1
-- SELECT movie.title FROM movie WHERE movie.director = 'James Cameron' AND movie.year > 2000	movie_1
-- SELECT movie.title FROM movie WHERE movie.director = 'James Cameron' AND movie.year > 2000	movie_1
-- SELECT COUNT( * ) FROM movie WHERE movie.year<2000	movie_1
-- SELECT COUNT( * ) FROM movie WHERE movie.year<2000	movie_1
-- SELECT movie.director FROM movie WHERE movie.title = 'Avatar'	movie_1
-- SELECT movie.director FROM movie WHERE movie.title = 'Avatar'	movie_1
-- SELECT COUNT( * ) FROM reviewer	movie_1
-- SELECT COUNT( * ) FROM reviewer	movie_1
-- SELECT reviewer.rid FROM reviewer WHERE reviewer.name LIKE '%Mike%'	movie_1
-- SELECT reviewer.rid FROM reviewer WHERE reviewer.name LIKE '%Mike%'	movie_1
-- SELECT reviewer.rid FROM reviewer WHERE reviewer.name = 'Daniel Lewis'	movie_1
-- SELECT reviewer.rid FROM reviewer WHERE reviewer.name = 'Daniel Lewis'	movie_1
-- SELECT COUNT( * ) FROM rating WHERE rating.stars > 3	movie_1
-- SELECT COUNT( * ) FROM rating WHERE rating.stars > 3	movie_1
-- SELECT MAX( rating.stars ) , MIN( rating.stars ) FROM rating	movie_1
-- SELECT MAX( rating.stars ) , MIN( rating.stars ) FROM rating	movie_1
-- SELECT movie.title FROM movie WHERE movie.year = (SELECT MAX( movie.year ) FROM movie)	movie_1
-- SELECT movie.title FROM movie WHERE movie.year = (SELECT MAX( movie.year ) FROM movie)	movie_1
-- SELECT movie.title FROM movie WHERE movie.year > (SELECT MAX( movie.year ) FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
-- SELECT movie.title FROM movie WHERE movie.year > (SELECT MAX( movie.year ) FROM movie WHERE movie.director = 'Steven Spielberg')	movie_1
-- SELECT movie.title , movie.director FROM movie JOIN movie ON movie.director = movie.director WHERE movie.title != movie.title ORDER BY movie.director , movie.title ASC	movie_1
-- SELECT movie.title , movie.director FROM movie JOIN movie ON movie.director = movie.director WHERE movie.title != movie.title ORDER BY movie.director , movie.title ASC	movie_1
-- SELECT movie.title , movie.year FROM movie JOIN movie ON movie.director = movie.director WHERE movie.title != movie.title	movie_1
-- SELECT movie.title , movie.year FROM movie JOIN movie ON movie.director = movie.director WHERE movie.title != movie.title	movie_1
-- SELECT movie.director FROM movie GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
-- SELECT movie.director FROM movie GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
-- SELECT movie.director FROM movie WHERE movie.director != 'NULL' GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
-- SELECT movie.director FROM movie WHERE movie.director != 'NULL' GROUP BY movie.director HAVING COUNT( * ) = 1	movie_1
-- SELECT rating.mid , AVG( rating.stars ) FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 2	movie_1
-- SELECT rating.mid , AVG( rating.stars ) FROM rating GROUP BY rating.mid HAVING COUNT( * ) >= 2	movie_1
-- SELECT rating.rid FROM rating EXCEPT SELECT rating.rid FROM rating WHERE rating.stars = 4	movie_1
-- SELECT rating.rid FROM rating EXCEPT SELECT rating.rid FROM rating WHERE rating.stars = 4	movie_1
-- SELECT rating.rid FROM rating WHERE rating.stars != 4	movie_1
-- SELECT rating.rid FROM rating WHERE rating.stars != 4	movie_1
-- SELECT movie.title FROM movie WHERE movie.director = 'James Cameron' OR movie.year<1980	movie_1
-- SELECT movie.title FROM movie WHERE movie.director = 'James Cameron' OR movie.year<1980	movie_1
-- SELECT COUNT( * ) FROM journalist	news_report
-- SELECT journalist.name FROM journalist ORDER BY journalist.years_working ASC	news_report
-- SELECT journalist.nationality , journalist.age FROM journalist	news_report
-- SELECT journalist.name FROM journalist WHERE journalist.nationality = 'England' OR journalist.nationality = 'Wales'	news_report
-- SELECT AVG( journalist.years_working ) FROM journalist	news_report
-- SELECT journalist.nationality FROM journalist ORDER BY journalist.years_working DESC LIMIT 1	news_report
-- SELECT journalist.nationality , COUNT( * ) FROM journalist GROUP BY journalist.nationality	news_report
-- SELECT journalist.nationality FROM journalist GROUP BY journalist.nationality ORDER BY COUNT( * ) DESC LIMIT 1	news_report
-- SELECT journalist.nationality FROM journalist WHERE journalist.years_working > 10 INTERSECT SELECT journalist.nationality FROM journalist WHERE journalist.years_working<3	news_report
-- SELECT event.date , event.name , event.venue FROM event ORDER BY event.event_attendance DESC	news_report
-- SELECT AVG( event.event_attendance ) , MAX( event.event_attendance ) FROM event	news_report
-- SELECT event.venue , event.name FROM event ORDER BY event.event_attendance DESC LIMIT 2	news_report
-- SELECT restaurant.resname FROM restaurant	restaurant_1
-- SELECT restaurant.address FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
-- SELECT restaurant.rating FROM restaurant WHERE restaurant.resname = 'Subway'	restaurant_1
-- SELECT restaurant.resname , restaurant.rating FROM restaurant ORDER BY restaurant.rating DESC LIMIT 1	restaurant_1
-- SELECT student.age FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
-- SELECT student.sex FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
-- SELECT student.fname , student.lname FROM student WHERE student.major = 600	restaurant_1
-- SELECT student.city_code FROM student WHERE student.fname = 'Linda' AND student.lname = 'Smith'	restaurant_1
-- SELECT COUNT( * ) FROM student WHERE student.advisor = 1121	restaurant_1
-- SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor ORDER BY COUNT( student.advisor ) DESC LIMIT 1	restaurant_1
-- SELECT student.major , COUNT( * ) FROM student GROUP BY student.major ORDER BY COUNT( student.major ) ASC LIMIT 1	restaurant_1
-- SELECT student.major , COUNT( * ) FROM student GROUP BY student.major HAVING COUNT( student.major ) BETWEEN 2 and 30	restaurant_1
-- SELECT student.fname , student.lname FROM student WHERE student.age > 18 AND student.major = 600	restaurant_1
-- SELECT student.fname , student.lname FROM student WHERE student.age > 18 AND student.major != 600 AND student.sex = 'f'	restaurant_1
-- SELECT COUNT( * ) FROM customers	customer_deliveries
-- SELECT COUNT( DISTINCT customers.payment_method ) FROM customers	customer_deliveries
-- SELECT trucks.truck_details FROM trucks ORDER BY trucks.truck_details ASC	customer_deliveries
-- SELECT products.product_name FROM products ORDER BY products.product_price DESC LIMIT 1	customer_deliveries
-- SELECT customers.customer_email , customers.customer_name FROM customers WHERE customers.payment_method = 'Visa'	customer_deliveries
-- SELECT customers.customer_name , customers.customer_phone , customers.customer_email FROM customers ORDER BY customers.date_became_customer ASC	customer_deliveries
-- SELECT customers.customer_name FROM customers ORDER BY customers.date_became_customer ASC LIMIT 5	customer_deliveries
-- SELECT customers.payment_method FROM customers GROUP BY customers.payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customer_deliveries
-- SELECT COUNT( * ) FROM authors	icfp_1
-- SELECT COUNT( * ) FROM authors	icfp_1
-- SELECT COUNT( * ) FROM papers	icfp_1
-- SELECT COUNT( * ) FROM papers	icfp_1
-- SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
-- SELECT papers.title FROM papers WHERE papers.title LIKE '%ML%'	icfp_1
-- SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
-- SELECT papers.title FROM papers WHERE papers.title LIKE '%Database%'	icfp_1
-- SELECT authors.fname FROM authors WHERE authors.lname = 'Ueno'	icfp_1
-- SELECT authors.fname FROM authors WHERE authors.lname = 'Ueno'	icfp_1
-- SELECT authors.lname FROM authors WHERE authors.fname = 'Amal'	icfp_1
-- SELECT authors.lname FROM authors WHERE authors.fname = 'Amal'	icfp_1
-- SELECT authors.fname FROM authors ORDER BY authors.fname ASC	icfp_1
-- SELECT authors.fname FROM authors ORDER BY authors.fname ASC	icfp_1
-- SELECT authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
-- SELECT authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
-- SELECT authors.fname , authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
-- SELECT authors.fname , authors.lname FROM authors ORDER BY authors.lname ASC	icfp_1
-- SELECT COUNT( DISTINCT actor.last_name ) FROM actor	sakila_1
-- SELECT COUNT( DISTINCT actor.last_name ) FROM actor	sakila_1
-- SELECT actor.first_name FROM actor GROUP BY actor.first_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT actor.first_name FROM actor GROUP BY actor.first_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT actor.first_name , actor.last_name FROM actor GROUP BY actor.first_name , actor.last_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT actor.first_name , actor.last_name FROM actor GROUP BY actor.first_name , actor.last_name ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT address.district FROM address GROUP BY address.district HAVING COUNT( * ) >= 2	sakila_1
-- SELECT address.district FROM address GROUP BY address.district HAVING COUNT( * ) >= 2	sakila_1
-- SELECT address.phone , address.postal_code FROM address WHERE address.address = '1031 Daugavpils Parkway'	sakila_1
-- SELECT address.phone , address.postal_code FROM address WHERE address.address = '1031 Daugavpils Parkway'	sakila_1
-- SELECT COUNT( * ) FROM address WHERE address.district = 'California'	sakila_1
-- SELECT COUNT( * ) FROM address WHERE address.district = 'California'	sakila_1
-- SELECT COUNT( * ) FROM customer WHERE customer.active = '1'	sakila_1
-- SELECT COUNT( * ) FROM customer WHERE customer.active = '1'	sakila_1
-- SELECT film.title , film.rental_rate FROM film ORDER BY film.rental_rate DESC LIMIT 1	sakila_1
-- SELECT film.title , film.rental_rate FROM film ORDER BY film.rental_rate DESC LIMIT 1	sakila_1
-- SELECT inventory.store_id FROM inventory GROUP BY inventory.store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT inventory.store_id FROM inventory GROUP BY inventory.store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT SUM( payment.amount ) FROM payment	sakila_1
-- SELECT SUM( payment.amount ) FROM payment	sakila_1
-- SELECT COUNT( DISTINCT film.language_id ) FROM film	sakila_1
-- SELECT COUNT( DISTINCT film.language_id ) FROM film	sakila_1
-- SELECT film.title FROM film WHERE film.rating = 'R'	sakila_1
-- SELECT film.title FROM film WHERE film.rating = 'R'	sakila_1
-- SELECT COUNT( * ) FROM store	sakila_1
-- SELECT COUNT( * ) FROM store	sakila_1
-- SELECT COUNT( DISTINCT film.rating ) FROM film	sakila_1
-- SELECT COUNT( DISTINCT film.rating ) FROM film	sakila_1
-- SELECT film.title FROM film WHERE film.special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT film.title FROM film WHERE film.special_features LIKE '%Deleted Scenes%'	sakila_1
-- SELECT COUNT( * ) FROM inventory WHERE inventory.store_id = 1	sakila_1
-- SELECT COUNT( * ) FROM inventory WHERE inventory.store_id = 1	sakila_1
-- SELECT payment.payment_date FROM payment ORDER BY payment.payment_date ASC LIMIT 1	sakila_1
-- SELECT payment.payment_date FROM payment ORDER BY payment.payment_date ASC LIMIT 1	sakila_1
-- SELECT film.title FROM film WHERE film.length > 100 OR film.rating = 'PG,' EXCEPT SELECT film.title FROM film WHERE film.replacement_cost > 200	sakila_1
-- SELECT film.title FROM film WHERE film.length > 100 OR film.rating = 'PG' EXCEPT SELECT film.title FROM film WHERE film.replacement_cost > 200	sakila_1
-- SELECT customer.store_id FROM customer GROUP BY customer.store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT customer.store_id FROM customer GROUP BY customer.store_id ORDER BY COUNT( * ) DESC LIMIT 1	sakila_1
-- SELECT payment.amount FROM payment ORDER BY payment.amount DESC LIMIT 1	sakila_1
-- SELECT payment.amount FROM payment ORDER BY payment.amount DESC LIMIT 1	sakila_1
-- SELECT COUNT( * ) FROM bank	loan_1
-- SELECT COUNT( * ) FROM bank	loan_1
-- SELECT SUM( bank.no_of_customers ) FROM bank	loan_1
-- SELECT SUM( bank.no_of_customers ) FROM bank	loan_1
-- SELECT SUM( bank.no_of_customers ) FROM bank WHERE bank.city = 'New York City'	loan_1
-- SELECT SUM( bank.no_of_customers ) FROM bank WHERE bank.city = 'New York City'	loan_1
-- SELECT AVG( bank.no_of_customers ) FROM bank WHERE bank.state = 'Utah'	loan_1
-- SELECT AVG( bank.no_of_customers ) FROM bank WHERE bank.state = 'Utah'	loan_1
-- SELECT AVG( bank.no_of_customers ) FROM bank	loan_1
-- SELECT AVG( bank.no_of_customers ) FROM bank	loan_1
-- SELECT bank.city , bank.state FROM bank WHERE bank.bname = 'morningside'	loan_1
-- SELECT bank.city , bank.state FROM bank WHERE bank.bname = 'morningside'	loan_1
-- SELECT bank.bname FROM bank WHERE bank.state = 'New York'	loan_1
-- SELECT bank.bname FROM bank WHERE bank.state = 'New York'	loan_1
-- SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC	loan_1
-- SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC	loan_1
-- SELECT customer.state , customer.acc_type , customer.credit_score FROM customer WHERE customer.no_of_loans = 0	loan_1
-- SELECT customer.state , customer.acc_type , customer.credit_score FROM customer WHERE customer.no_of_loans = 0	loan_1
-- SELECT COUNT( DISTINCT bank.city ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT bank.city ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT bank.state ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT bank.state ) FROM bank	loan_1
-- SELECT COUNT( DISTINCT customer.acc_type ) FROM customer	loan_1
-- SELECT COUNT( DISTINCT customer.acc_type ) FROM customer	loan_1
-- SELECT customer.cust_name , customer.acc_bal FROM customer WHERE customer.cust_name LIKE '%a%'	loan_1
-- SELECT customer.cust_name , customer.acc_bal FROM customer WHERE customer.cust_name LIKE '%a%'	loan_1
-- SELECT SUM( customer.acc_bal ) FROM customer WHERE customer.state = 'Utah' OR customer.state = 'Texas'	loan_1
-- SELECT SUM( customer.acc_bal ) FROM customer WHERE customer.state = 'Utah' OR customer.state = 'Texas'	loan_1
-- SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'saving' INTERSECT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'checking'	loan_1
-- SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'savings' INTERSECT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'checking'	loan_1
-- SELECT customer.cust_name FROM customer EXCEPT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'saving'	loan_1
-- SELECT customer.cust_name FROM customer EXCEPT SELECT customer.cust_name FROM customer WHERE customer.acc_type = 'saving'	loan_1
-- SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
-- SELECT customer.cust_name FROM customer WHERE customer.credit_score<(SELECT AVG( customer.credit_score ) FROM customer)	loan_1
-- SELECT bank.bname FROM bank ORDER BY bank.no_of_customers DESC LIMIT 1	loan_1
-- SELECT bank.bname FROM bank ORDER BY bank.no_of_customers DESC LIMIT 1	loan_1
-- SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
-- SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1	loan_1
-- SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
-- SELECT customer.cust_name , customer.acc_type , customer.acc_bal FROM customer ORDER BY customer.credit_score DESC LIMIT 1	loan_1
-- SELECT bank.state FROM bank GROUP BY bank.state ORDER BY SUM( bank.no_of_customers ) DESC LIMIT 1	loan_1
-- SELECT bank.state FROM bank GROUP BY bank.state ORDER BY SUM( bank.no_of_customers ) DESC LIMIT 1	loan_1
-- SELECT AVG( customer.acc_bal ) , customer.acc_type FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
-- SELECT AVG( customer.acc_bal ) , customer.acc_type FROM customer WHERE customer.credit_score<50 GROUP BY customer.acc_type	loan_1
-- SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
-- SELECT SUM( customer.acc_bal ) , customer.state FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state	loan_1
-- SELECT COUNT( * ) FROM addresses WHERE addresses.zip_postcode = '197'	behavior_monitoring
-- SELECT DISTINCT detention.detention_type_code FROM detention	behavior_monitoring
-- SELECT detention.detention_summary FROM detention	behavior_monitoring
-- SELECT students.cell_mobile_number , students.email_address FROM students	behavior_monitoring
-- SELECT students.email_address FROM students WHERE students.first_name = 'Emma' AND students.last_name = 'Rohan'	behavior_monitoring
-- SELECT teachers.gender FROM teachers WHERE teachers.last_name = 'Medhurst'	behavior_monitoring
-- SELECT teachers.first_name FROM teachers WHERE teachers.email_address LIKE '%man%'	behavior_monitoring
-- SELECT addresses.city FROM addresses ORDER BY addresses.city ASC	behavior_monitoring
-- SELECT teachers.first_name , teachers.last_name FROM teachers ORDER BY teachers.last_name ASC	behavior_monitoring
-- SELECT assets.asset_id , assets.asset_details , assets.asset_make , assets.asset_model FROM assets	assets_maintenance
-- SELECT assets.asset_acquired_date FROM assets ORDER BY assets.asset_acquired_date ASC LIMIT 1	assets_maintenance
-- SELECT DISTINCT assets.asset_model FROM assets	assets_maintenance
-- SELECT assets.asset_make , assets.asset_model , assets.asset_details FROM assets ORDER BY assets.asset_disposed_date ASC	assets_maintenance
-- SELECT parts.part_id , parts.part_name FROM parts ORDER BY parts.chargeable_amount ASC LIMIT 1	assets_maintenance
-- SELECT staff.gender FROM staff GROUP BY staff.gender ORDER BY COUNT( * ) DESC LIMIT 1	assets_maintenance
-- SELECT station.local_authority , station.services FROM station	station_weather
-- SELECT train.train_number , train.name FROM train ORDER BY train.time ASC	station_weather
-- SELECT train.time , train.train_number FROM train WHERE train.destination = 'Chennai' ORDER BY train.time ASC	station_weather
-- SELECT COUNT( * ) FROM train WHERE train.name LIKE '%Express%'	station_weather
-- SELECT train.train_number , train.time FROM train WHERE train.origin = 'Chennai' AND train.destination = 'Guruvayur'	station_weather
-- SELECT train.origin , COUNT( * ) FROM train GROUP BY train.origin	station_weather
-- SELECT COUNT( DISTINCT station.services ) FROM station	station_weather
-- SELECT train.origin FROM train GROUP BY train.origin HAVING COUNT( * ) > 1	station_weather
-- SELECT COUNT( DISTINCT class.prof_num ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( DISTINCT class.prof_num ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
-- SELECT department.school_code FROM department WHERE department.dept_name = 'accounting'	college_1
-- SELECT department.school_code FROM department WHERE department.dept_name = 'accounting'	college_1
-- SELECT course.crs_credit , course.crs_description FROM course WHERE course.crs_code = 'CIS-220'	college_1
-- SELECT course.crs_credit , course.crs_description FROM course WHERE course.crs_code = 'CIS-220'	college_1
-- SELECT department.dept_address FROM department WHERE department.dept_name = 'history'	college_1
-- SELECT department.dept_address FROM department WHERE department.dept_name = 'history'	college_1
-- SELECT COUNT( DISTINCT department.dept_address ) FROM department WHERE department.school_code = 'BUS'	college_1
-- SELECT COUNT( DISTINCT department.dept_address ) FROM department WHERE department.school_code = 'BUS'	college_1
-- SELECT COUNT( DISTINCT department.dept_address ) , department.school_code FROM department GROUP BY department.school_code	college_1
-- SELECT COUNT( DISTINCT department.dept_address ) , department.school_code FROM department GROUP BY department.school_code	college_1
-- SELECT course.crs_credit , course.crs_description FROM course WHERE course.crs_code = 'QM-261'	college_1
-- SELECT course.crs_credit , course.crs_description FROM course WHERE course.crs_code = 'QM-261'	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) , department.school_code FROM department GROUP BY department.school_code	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) , department.school_code FROM department GROUP BY department.school_code	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) , department.school_code FROM department GROUP BY department.school_code HAVING COUNT( DISTINCT department.dept_name )<5	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) , department.school_code FROM department GROUP BY department.school_code HAVING COUNT( DISTINCT department.dept_name )<5	college_1
-- SELECT COUNT( * ) , class.crs_code FROM class GROUP BY class.crs_code	college_1
-- SELECT COUNT( * ) , class.crs_code FROM class GROUP BY class.crs_code	college_1
-- SELECT SUM( course.crs_credit ) , course.dept_code FROM course GROUP BY course.dept_code	college_1
-- SELECT SUM( course.crs_credit ) , course.dept_code FROM course GROUP BY course.dept_code	college_1
-- SELECT COUNT( * ) , class.class_room FROM class GROUP BY class.class_room HAVING COUNT( * ) >= 2	college_1
-- SELECT COUNT( * ) , class.class_room FROM class GROUP BY class.class_room HAVING COUNT( * ) >= 2	college_1
-- SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
-- SELECT employee.emp_jobcode , COUNT( * ) FROM employee GROUP BY employee.emp_jobcode ORDER BY COUNT( * ) DESC LIMIT 1	college_1
-- SELECT COUNT( * ) , professor.dept_code FROM professor WHERE professor.prof_high_degree = 'Ph.D.' GROUP BY professor.dept_code	college_1
-- SELECT COUNT( * ) , professor.dept_code FROM professor WHERE professor.prof_high_degree = 'Ph.D.' GROUP BY professor.dept_code	college_1
-- SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT COUNT( * ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT SUM( student.stu_hrs ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT SUM( student.stu_hrs ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT MAX( student.stu_gpa ) , AVG( student.stu_gpa ) , MIN( student.stu_gpa ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT MAX( student.stu_gpa ) , AVG( student.stu_gpa ) , MIN( student.stu_gpa ) , student.dept_code FROM student GROUP BY student.dept_code	college_1
-- SELECT COUNT( DISTINCT department.school_code ) FROM department	college_1
-- SELECT COUNT( DISTINCT department.school_code ) FROM department	college_1
-- SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT class.class_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT class.crs_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT class.crs_code ) FROM class	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) FROM department	college_1
-- SELECT COUNT( DISTINCT department.dept_name ) FROM department	college_1
-- SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( DISTINCT class.class_section ) FROM class WHERE class.crs_code = 'ACCT-211'	college_1
-- SELECT COUNT( * ) FROM employee	college_1
-- SELECT COUNT( * ) FROM employee	college_1
-- SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D.'	college_1
-- SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D.'	college_1
-- SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
-- SELECT department.dept_name FROM department ORDER BY department.dept_name ASC	college_1
-- SELECT class.class_code FROM class WHERE class.class_room = 'KLR209'	college_1
-- SELECT class.class_code FROM class WHERE class.class_room = 'KLR209'	college_1
-- SELECT employee.emp_fname FROM employee WHERE employee.emp_jobcode = 'PROF' ORDER BY employee.emp_dob ASC	college_1
-- SELECT employee.emp_fname FROM employee WHERE employee.emp_jobcode = (SELECT employee.emp_jobcode FROM employee ORDER BY employee.emp_jobcode ASC LIMIT employee.emp_dob) ORDER BY employee.emp_dob ASC	college_1
-- SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob ASC LIMIT 1	college_1
-- SELECT employee.emp_fname , employee.emp_lname FROM employee ORDER BY employee.emp_dob ASC LIMIT 1	college_1
-- SELECT student.stu_fname , student.stu_lname , student.stu_gpa FROM student WHERE student.stu_gpa > 3 ORDER BY student.stu_dob DESC LIMIT 1	college_1
-- SELECT student.stu_fname , student.stu_lname , student.stu_gpa FROM student WHERE student.stu_gpa > 3 ORDER BY student.stu_dob DESC LIMIT 1	college_1
-- SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'Ph.D.' OR professor.prof_high_degree = 'MA'	college_1
-- SELECT COUNT( * ) FROM professor WHERE professor.prof_high_degree = 'yes' OR professor.prof_high_degree = 'Ph.D.'	college_1
-- SELECT student.stu_gpa , student.stu_phone , student.stu_fname FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
-- SELECT student.stu_gpa , student.stu_phone , student.stu_fname FROM student ORDER BY student.stu_gpa DESC LIMIT 5	college_1
-- SELECT student.stu_fname , student.stu_gpa FROM student WHERE student.stu_gpa<(SELECT AVG( student.stu_gpa ) FROM student)	college_1
-- SELECT student.stu_fname , student.stu_gpa FROM student WHERE student.stu_gpa<(SELECT AVG( student.stu_gpa ) FROM student)	college_1
-- SELECT COUNT( * ) FROM club	sports_competition
-- SELECT COUNT( * ) FROM club	sports_competition
-- SELECT DISTINCT club.region FROM club ORDER BY club.region ASC	sports_competition
-- SELECT DISTINCT club.region FROM club ORDER BY club.region ASC	sports_competition
-- SELECT competition.competition_type , competition.country FROM competition	sports_competition
-- SELECT competition.competition_type , competition.country FROM competition	sports_competition
-- SELECT DISTINCT competition.year FROM competition WHERE competition.competition_type != 'Tournament'	sports_competition
-- SELECT DISTINCT competition.year FROM competition WHERE competition.competition_type != 'tournament'	sports_competition
-- SELECT club.name FROM club ORDER BY club.start_year ASC	sports_competition
-- SELECT club.name FROM club ORDER BY club.start_year ASC	sports_competition
-- SELECT club.name FROM club ORDER BY club.name DESC	sports_competition
-- SELECT club.name FROM club ORDER BY club.name DESC	sports_competition
-- SELECT player.position , AVG( player.points ) FROM player GROUP BY player.position	sports_competition
-- SELECT player.position , AVG( player.points ) FROM player GROUP BY player.position	sports_competition
-- SELECT player.position FROM player GROUP BY player.name HAVING AVG( player.points ) >= 20	sports_competition
-- SELECT player.position FROM player GROUP BY player.name HAVING AVG( player.points ) >= 20	sports_competition
-- SELECT competition.competition_type , COUNT( * ) FROM competition GROUP BY competition.competition_type	sports_competition
-- SELECT competition.competition_type , COUNT( * ) FROM competition GROUP BY competition.competition_type	sports_competition
-- SELECT competition.competition_type FROM competition GROUP BY competition.competition_type ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition.competition_type FROM competition GROUP BY competition.competition_type ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition.competition_type FROM competition GROUP BY competition.competition_type HAVING COUNT( * ) <= 5	sports_competition
-- SELECT competition.competition_type FROM competition GROUP BY competition.competition_type HAVING COUNT( * ) <= 5	sports_competition
-- SELECT player.position FROM player WHERE player.points > 20 INTERSECT SELECT player.position FROM player WHERE player.points<10	sports_competition
-- SELECT player.position FROM player WHERE player.points > 20 INTERSECT SELECT player.position FROM player WHERE player.points<10	sports_competition
-- SELECT SUM( player.points ) FROM player	sports_competition
-- SELECT SUM( player.points ) FROM player	sports_competition
-- SELECT COUNT( DISTINCT player.position ) FROM player	sports_competition
-- SELECT COUNT( DISTINCT player.position ) FROM player	sports_competition
-- SELECT player.name FROM player WHERE player.points > (SELECT AVG( player.points ) FROM player)	sports_competition
-- SELECT player.name FROM player WHERE player.points > (SELECT AVG( player.points ) FROM player)	sports_competition
-- SELECT COUNT( * ) , player.position FROM player WHERE player.points<30 GROUP BY player.position	sports_competition
-- SELECT COUNT( * ) , player.position FROM player WHERE player.points<30 GROUP BY player.position	sports_competition
-- SELECT competition.country FROM competition WHERE competition.competition_type = 'Tournament' GROUP BY competition.country ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition.country FROM competition WHERE competition.competition_type = 'tournament' GROUP BY competition.country ORDER BY COUNT( * ) DESC LIMIT 1	sports_competition
-- SELECT competition.country FROM competition WHERE competition.competition_type = 'Friendly' INTERSECT SELECT competition.country FROM competition WHERE competition.competition_type = 'Tournament'	sports_competition
-- SELECT competition.country FROM competition WHERE competition.competition_type = 'friendly' INTERSECT SELECT competition.country FROM competition WHERE competition.competition_type = 'tournament'	sports_competition
-- SELECT competition.country FROM competition EXCEPT SELECT competition.country FROM competition WHERE competition.competition_type = 'Friendly'	sports_competition
-- SELECT competition.country FROM competition EXCEPT SELECT competition.country FROM competition WHERE competition.competition_type = 'friendly'	sports_competition
-- SELECT SUM( furniture.num_of_component ) FROM furniture	manufacturer
-- SELECT furniture.name , furniture.furniture_id FROM furniture ORDER BY furniture.market_rate DESC LIMIT 1	manufacturer
-- SELECT SUM( furniture.market_rate ) FROM furniture ORDER BY furniture.market_rate DESC LIMIT 2	manufacturer
-- SELECT furniture.num_of_component , furniture.name FROM furniture WHERE furniture.num_of_component > 10	manufacturer
-- SELECT furniture.name , furniture.num_of_component FROM furniture ORDER BY furniture.market_rate ASC LIMIT 1	manufacturer
-- SELECT manufacturer.open_year , manufacturer.name FROM manufacturer ORDER BY manufacturer.num_of_shops DESC LIMIT 1	manufacturer
-- SELECT AVG( manufacturer.num_of_factories ) FROM manufacturer WHERE manufacturer.num_of_shops > 20	manufacturer
-- SELECT manufacturer.name , manufacturer.manufacturer_id FROM manufacturer ORDER BY manufacturer.open_year ASC	manufacturer
-- SELECT manufacturer.name , manufacturer.open_year FROM manufacturer WHERE manufacturer.num_of_shops > 10 OR manufacturer.num_of_factories<10	manufacturer
-- SELECT MAX( manufacturer.num_of_shops ) , AVG( manufacturer.num_of_factories ) FROM manufacturer WHERE manufacturer.open_year<1990	manufacturer
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.salary<6000	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.salary<6000	hr_1
-- SELECT employees.first_name , employees.department_id FROM employees WHERE employees.last_name = 'McEwen'	hr_1
-- SELECT employees.first_name , employees.department_id FROM employees WHERE employees.last_name = 'McEwen'	hr_1
-- SELECT * FROM employees WHERE employees.department_id = 'null'	hr_1
-- SELECT * FROM employees WHERE employees.department_id = 'null'	hr_1
-- SELECT * FROM departments WHERE departments.department_name = 'Marketing'	hr_1
-- SELECT * FROM departments WHERE departments.department_name = 'Marketing'	hr_1
-- SELECT employees.phone_number FROM employees WHERE employees.salary BETWEEN 8000 and 12000	hr_1
-- SELECT employees.phone_number FROM employees WHERE employees.salary BETWEEN 8000 and 12000	hr_1
-- SELECT * FROM employees WHERE employees.salary BETWEEN 8000 and 12000 AND employees.commission_pct != 'null' OR employees.department_id != 40	hr_1
-- SELECT * FROM employees WHERE employees.salary BETWEEN 8000 and 12000 AND employees.commission_pct != 'null' OR employees.department_id != 40	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.commission_pct = 'null'	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.commission_pct = 'null'	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.first_name LIKE '%m%'	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary FROM employees WHERE employees.first_name LIKE '%m%'	hr_1
-- SELECT employees.job_id , employees.hire_date FROM employees WHERE employees.hire_date >= 'November 5th, 2007' AND employees.hire_date <= '2009'	hr_1
-- SELECT employees.job_id , employees.hire_date FROM employees WHERE employees.hire_date<(SELECT MAX( employees.hire_date ) FROM employees)	hr_1
-- SELECT employees.first_name , employees.last_name FROM employees WHERE employees.department_id = 70 OR employees.department_id = 90	hr_1
-- SELECT employees.first_name , employees.last_name FROM employees WHERE employees.department_id = 70 OR employees.department_id = 90	hr_1
-- SELECT employees.salary , employees.manager_id FROM employees WHERE employees.manager_id != 'null'	hr_1
-- SELECT employees.salary , employees.manager_id FROM employees WHERE employees.manager_id != 'null'	hr_1
-- SELECT * FROM employees WHERE employees.hire_date<'2002-06-21'	hr_1
-- SELECT * FROM employees WHERE employees.hire_date<'2002'	hr_1
-- SELECT * FROM employees WHERE employees.first_name LIKE '%D%' OR employees.first_name LIKE '%S%' ORDER BY employees.salary DESC	hr_1
-- SELECT * FROM employees WHERE employees.first_name LIKE '%D%' OR employees.first_name LIKE '%S%' ORDER BY employees.salary DESC	hr_1
-- SELECT * FROM employees WHERE employees.hire_date > (SELECT AVG( employees.hire_date ) FROM employees)	hr_1
-- SELECT * FROM employees WHERE employees.hire_date > (SELECT AVG( * ) FROM employees INTERSECT SELECT AVG( employees.hire_date ) FROM employees)	hr_1
-- SELECT jobs.job_title FROM jobs WHERE jobs.min_salary > 9000	hr_1
-- SELECT jobs.job_title FROM jobs WHERE jobs.min_salary > 9000	hr_1
-- SELECT jobs.job_title , jobs.max_salary FROM jobs WHERE jobs.max_salary BETWEEN 12000 and 18000	hr_1
-- SELECT jobs.job_title , jobs.min_salary FROM jobs WHERE jobs.max_salary BETWEEN 12000 and 18000	hr_1
-- SELECT employees.email FROM employees WHERE employees.commission_pct = 'null' AND employees.salary BETWEEN 7000 and 12000 AND employees.department_id = 50	hr_1
-- SELECT employees.email FROM employees WHERE employees.commission_pct = 'null' AND employees.salary BETWEEN 7000 and 12000 AND employees.department_id = 50	hr_1
-- SELECT employees.department_id FROM employees WHERE employees.commission_pct != 'null' GROUP BY employees.department_id	hr_1
-- SELECT employees.department_id FROM employees GROUP BY employees.department_id HAVING COUNT( employees.commission_pct ) > 10	hr_1
-- SELECT DISTINCT employees.department_id FROM employees GROUP BY employees.department_id , employees.manager_id HAVING COUNT( employees.employee_id ) >= 4	hr_1
-- SELECT DISTINCT employees.department_id FROM employees GROUP BY employees.department_id , employees.manager_id HAVING COUNT( employees.employee_id ) >= 4	hr_1
-- SELECT employees.department_id , AVG( employees.salary ) FROM employees WHERE employees.commission_pct != 'null' GROUP BY employees.department_id	hr_1
-- SELECT employees.department_id , AVG( employees.salary ) FROM employees WHERE employees.commission_pct != 'null' GROUP BY employees.department_id	hr_1
-- SELECT locations.country_id , COUNT( * ) FROM locations GROUP BY locations.country_id	hr_1
-- SELECT locations.country_id , COUNT( * ) FROM locations GROUP BY locations.country_id	hr_1
-- SELECT employees.first_name , employees.last_name FROM employees WHERE employees.salary > (SELECT employees.salary FROM employees WHERE employees.employee_id = 163)	hr_1
-- SELECT employees.first_name , employees.last_name FROM employees WHERE employees.salary > (SELECT employees.salary FROM employees WHERE employees.employee_id = 163)	hr_1
-- SELECT MIN( employees.salary ) , employees.department_id FROM employees GROUP BY employees.department_id	hr_1
-- SELECT MIN( employees.salary ) , employees.department_id FROM employees GROUP BY employees.department_id	hr_1
-- SELECT employees.first_name , employees.last_name , employees.department_id FROM employees WHERE employees.salary IN (SELECT MIN( employees.salary ) FROM employees GROUP BY employees.department_id)	hr_1
-- SELECT employees.first_name , employees.last_name , employees.department_id FROM employees WHERE employees.salary IN (SELECT MIN( employees.salary ) FROM employees GROUP BY employees.department_id)	hr_1
-- SELECT employees.employee_id FROM employees WHERE employees.salary > (SELECT AVG( employees.salary ) FROM employees)	hr_1
-- SELECT employees.employee_id FROM employees WHERE employees.salary > (SELECT AVG( employees.salary ) FROM employees)	hr_1
-- SELECT employees.employee_id , employees.salary FROM employees WHERE employees.manager_id = (SELECT employees.employee_id FROM employees WHERE employees.first_name = 'Payam')	hr_1
-- SELECT employees.employee_id , employees.salary FROM employees WHERE employees.manager_id = (SELECT employees.employee_id FROM employees WHERE employees.first_name = 'Payam')	hr_1
-- SELECT * FROM departments WHERE departments.department_name = 'Marketing'	hr_1
-- SELECT * FROM departments WHERE departments.department_name = 'Marketing'	hr_1
-- SELECT DISTINCT employees.department_id FROM employees GROUP BY employees.department_id , employees.manager_id HAVING COUNT( employees.employee_id ) >= 4	hr_1
-- SELECT DISTINCT employees.department_id FROM employees GROUP BY employees.department_id , employees.manager_id HAVING COUNT( employees.employee_id ) >= 4	hr_1
-- SELECT employees.job_id FROM employees GROUP BY employees.job_id HAVING AVG( employees.salary ) > 8000	hr_1
-- SELECT employees.job_id FROM employees GROUP BY employees.job_id HAVING AVG( employees.salary ) > 8000	hr_1
-- SELECT * FROM employees WHERE employees.salary >= (SELECT MIN( employees.salary ) FROM employees) AND employees.salary <= 2500	hr_1
-- SELECT * FROM employees WHERE employees.salary >= (SELECT MIN( employees.salary ) FROM employees) AND employees.salary <= 2500	hr_1
-- SELECT employees.first_name , employees.last_name , employees.hire_date FROM employees WHERE employees.department_id = (SELECT employees.department_id FROM employees WHERE employees.first_name = 'Clara')	hr_1
-- SELECT employees.first_name , employees.last_name , employees.hire_date FROM employees WHERE employees.department_id = (SELECT employees.department_id FROM employees WHERE employees.first_name = 'Clara')	hr_1
-- SELECT employees.first_name , employees.last_name , employees.hire_date FROM employees WHERE employees.department_id = (SELECT employees.department_id FROM employees WHERE employees.first_name = 'Clara') AND employees.first_name != 'Clara'	hr_1
-- SELECT employees.first_name , employees.last_name , employees.hire_date FROM employees WHERE employees.department_id = (SELECT employees.department_id FROM employees WHERE employees.first_name = 'Clara') AND employees.first_name != 'Clara'	hr_1
-- SELECT employees.employee_id , employees.first_name , employees.last_name FROM employees WHERE employees.department_id IN (SELECT employees.department_id FROM employees WHERE employees.first_name LIKE '%t%')	hr_1
-- SELECT employees.employee_id , employees.first_name , employees.last_name FROM employees WHERE employees.department_id IN (SELECT employees.department_id FROM employees WHERE employees.first_name LIKE '%t%')	hr_1
-- SELECT employees.department_id FROM employees	hr_1
-- SELECT employees.department_id FROM employees	hr_1
-- SELECT employees.employee_id , employees.job_id FROM employees WHERE employees.salary<(SELECT MIN( employees.salary ) FROM employees WHERE employees.job_id = 'MK_MAN')	hr_1
-- SELECT employees.employee_id , employees.job_id FROM employees WHERE employees.salary<(SELECT MIN( employees.salary ) FROM employees WHERE employees.job_id = 'MK_MAN')	hr_1
-- SELECT employees.employee_id , employees.first_name , employees.last_name , employees.job_id FROM employees WHERE employees.salary > (SELECT MAX( employees.salary ) FROM employees WHERE employees.job_id = 'PU_MAN')	hr_1
-- SELECT employees.employee_id , employees.first_name , employees.last_name , employees.job_id FROM employees WHERE employees.salary > (SELECT MAX( employees.salary ) FROM employees WHERE employees.job_id = 'PU_MAN')	hr_1
-- SELECT employees.department_id , SUM( employees.salary ) FROM employees GROUP BY employees.department_id HAVING COUNT( * ) >= 2	hr_1
-- SELECT employees.department_id , SUM( employees.salary ) FROM employees GROUP BY employees.department_id HAVING COUNT( * ) >= 2	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary , employees.department_id , MAX( employees.salary ) FROM employees GROUP BY employees.department_id	hr_1
-- SELECT employees.first_name , employees.last_name , employees.salary , employees.department_id , MAX( employees.salary ) FROM employees GROUP BY employees.department_id	hr_1
-- SELECT song.song_name , song.releasedate FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
-- SELECT song.song_name , song.releasedate FROM song ORDER BY song.releasedate DESC LIMIT 1	music_1
-- SELECT files.f_id FROM files ORDER BY files.duration DESC LIMIT 1	music_1
-- SELECT files.f_id FROM files ORDER BY files.duration DESC LIMIT 1	music_1
-- SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
-- SELECT song.song_name FROM song WHERE song.languages = 'English'	music_1
-- SELECT files.f_id FROM files WHERE files.formats = 'mp3'	music_1
-- SELECT files.f_id FROM files WHERE files.formats = 'mp3'	music_1
-- SELECT COUNT( * ) FROM files WHERE files.duration = 'How many songs have 4'	music_1
-- SELECT COUNT( * ) FROM artist WHERE artist.country = 'Bangladesh'	music_1
-- SELECT COUNT( * ) FROM artist WHERE artist.country = 't'	music_1
-- SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT COUNT( * ) , artist.gender FROM artist GROUP BY artist.gender	music_1
-- SELECT COUNT( * ) , artist.gender FROM artist GROUP BY artist.gender	music_1
-- SELECT AVG( song.rating ) , song.languages FROM song GROUP BY song.languages	music_1
-- SELECT AVG( song.rating ) , song.languages FROM song GROUP BY song.languages	music_1
-- SELECT COUNT( * ) , files.formats FROM files GROUP BY files.formats	music_1
-- SELECT COUNT( * ) , files.formats FROM files GROUP BY files.formats	music_1
-- SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN( song.resolution ) FROM song WHERE song.languages = 'English')	music_1
-- SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN( song.resolution ) FROM song WHERE song.languages = 'English')	music_1
-- SELECT song.song_name FROM song WHERE song.rating<(SELECT MAX( song.rating ) FROM song WHERE song.genre_is = 'blues')	music_1
-- SELECT song.song_name FROM song WHERE song.rating<(SELECT MAX( song.rating ) FROM song WHERE song.genre_is = 'blues')	music_1
-- SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
-- SELECT genre.g_name , genre.rating FROM genre ORDER BY genre.g_name ASC	music_1
-- SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
-- SELECT song.song_name FROM song ORDER BY song.resolution ASC	music_1
-- SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT song.artist_name FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT song.artist_name FROM song WHERE song.resolution > 500 GROUP BY song.languages ORDER BY COUNT( * ) DESC LIMIT 1	music_1
-- SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.gender = 'Male'	music_1
-- SELECT artist.artist_name FROM artist WHERE artist.country = 't' AND artist.gender = 'male'	music_1
-- SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
-- SELECT song.song_name FROM song WHERE song.genre_is = 'modern' OR song.languages = 'English'	music_1
-- SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'Bangla'	music_1
-- SELECT AVG( song.rating ) , AVG( song.resolution ) FROM song WHERE song.languages = 'bangla'	music_1
-- SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
-- SELECT song.song_name FROM song WHERE song.rating<(SELECT MIN( song.rating ) FROM song WHERE song.languages = 'English')	music_1
-- SELECT song.f_id FROM song WHERE song.resolution > (SELECT MAX( song.resolution ) FROM song WHERE song.rating<8)	music_1
-- SELECT song.f_id FROM song WHERE song.resolution > (SELECT MAX( song.resolution ) FROM song WHERE song.rating<8)	music_1
-- SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song WHERE song.genre_is = 'modern')	music_1
-- SELECT song.f_id FROM song WHERE song.resolution > (SELECT AVG( song.resolution ) FROM song WHERE song.genre_is = 'modern')	music_1
-- SELECT song.f_id , song.genre_is , song.artist_name FROM song WHERE song.languages = 'English' ORDER BY song.rating ASC	music_1
-- SELECT song.f_id , song.genre_is , song.artist_name FROM song WHERE song.languages = 'English' ORDER BY song.rating ASC	music_1
-- SELECT DISTINCT song.artist_name FROM song WHERE song.languages = 'English' EXCEPT SELECT DISTINCT song.artist_name FROM song WHERE song.rating > 8	music_1
-- SELECT DISTINCT song.artist_name FROM song WHERE song.languages = 'English' EXCEPT SELECT DISTINCT song.artist_name FROM song WHERE song.rating > 8	music_1
-- SELECT COUNT( * ) FROM park WHERE park.state = 'NY'	baseball_1
-- SELECT COUNT( * ) FROM park WHERE park.state = 'NY'	baseball_1
-- SELECT player.bats FROM player GROUP BY player.bats ORDER BY COUNT( * ) ASC LIMIT 3	baseball_1
-- SELECT player.bats FROM player GROUP BY player.bats ORDER BY COUNT( * ) ASC LIMIT 3	baseball_1
-- SELECT player.name_first , player.name_first FROM player WHERE player.death_city = 'empty'	baseball_1
-- SELECT COUNT( * ) FROM player WHERE player.birth_country = 'USA' AND player.bats = 'R'	baseball_1
-- SELECT COUNT( * ) FROM player WHERE player.birth_country = 'USA' AND player.bats = 'R'	baseball_1
-- SELECT player.name_first , player.name_first FROM player, manager_award WHERE player_award.year = 1961 INTERSECT SELECT player.name_first , player.name_first FROM player, player_award WHERE player_award.year = 1961	baseball_1
-- SELECT player.name_first , player.name_first FROM player WHERE player.weight > 220 OR player.height<75	baseball_1
-- SELECT player.name_first , player.name_first FROM player WHERE player.weight > 220 OR player.height<75	baseball_1
-- SELECT COUNT( * ) FROM postseason WHERE postseason.losses = 1885 AND postseason.ties = 1	baseball_1
-- SELECT COUNT( * ) FROM postseason WHERE postseason.losses = 1885 AND postseason.ties = 1	baseball_1
-- SELECT COUNT( * ) FROM team JOIN team ON team.park = team.park WHERE player.name_last = 'Boston Red Stockings'	baseball_1
-- SELECT manager_award_vote.points_max FROM salary WHERE salary.salary = 2001 ORDER BY manager_award.notes DESC LIMIT 3	baseball_1
-- SELECT salary.salary FROM salary WHERE salary.year = 2001 ORDER BY salary.salary DESC LIMIT 3	baseball_1
-- SELECT salary.salary FROM salary WHERE salary.year = 2010 UNION SELECT salary.salary FROM salary WHERE salary.year = 2001	baseball_1
-- SELECT salary.salary FROM salary WHERE salary.year = 2010 UNION SELECT salary.salary FROM salary WHERE salary.year = 2001	baseball_1
-- SELECT COUNT( * ) FROM park WHERE park.city = 'Atlanta'	baseball_1
-- SELECT COUNT( * ) FROM park WHERE park.city = 'Atlanta'	baseball_1
-- SELECT park.city FROM park GROUP BY park.park_alias HAVING COUNT( * ) > 2	baseball_1
-- SELECT park.city FROM park GROUP BY park.city HAVING COUNT( * ) > 2	baseball_1
-- SELECT park.city FROM park HAVING COUNT( * ) BETWEEN 2 and 4	baseball_1
-- SELECT park.city FROM park HAVING COUNT( * ) BETWEEN 2 and 4	baseball_1
-- SELECT photos.id , photos.color , photos.name FROM photos	mountain_photos
-- SELECT MAX( mountain.height ) , AVG( mountain.height ) FROM mountain	mountain_photos
-- SELECT AVG( mountain.prominence ) FROM mountain WHERE mountain.country = 'Morocco'	mountain_photos
-- SELECT mountain.name , mountain.height , mountain.prominence FROM mountain WHERE mountain.range != 'Aberdare Range'	mountain_photos
-- SELECT channel.name FROM channel WHERE channel.owner != 'CCTV'	program_share
-- SELECT channel.name FROM channel WHERE channel.owner != 'CCTV'	program_share
-- SELECT channel.name FROM channel ORDER BY channel.rating_in_percent DESC	program_share
-- SELECT channel.name FROM channel ORDER BY channel.rating_in_percent DESC	program_share
-- SELECT channel.owner FROM channel ORDER BY channel.rating_in_percent DESC LIMIT 1	program_share
-- SELECT channel.owner FROM channel ORDER BY channel.rating_in_percent DESC LIMIT 1	program_share
-- SELECT COUNT( * ) FROM program	program_share
-- SELECT COUNT( * ) FROM program	program_share
-- SELECT program.name FROM program ORDER BY program.launch ASC	program_share
-- SELECT program.name FROM program ORDER BY program.launch ASC	program_share
-- SELECT program.name , program.origin , program.owner FROM program	program_share
-- SELECT program.name , program.origin , program.owner FROM program	program_share
-- SELECT program.name FROM program ORDER BY program.launch DESC LIMIT 1	program_share
-- SELECT program.name FROM program ORDER BY program.launch DESC LIMIT 1	program_share
-- SELECT SUM( channel.share_in_percent ) FROM channel WHERE channel.owner = 'CCTV'	program_share
-- SELECT SUM( channel.share_in_percent ) FROM channel WHERE channel.owner = 'CCTV'	program_share
-- SELECT COUNT( * ) , broadcast.time_of_day FROM broadcast GROUP BY broadcast.time_of_day	program_share
-- SELECT COUNT( * ) , broadcast.time_of_day FROM broadcast GROUP BY broadcast.time_of_day	program_share
-- SELECT COUNT( DISTINCT broadcast.program_id ) FROM broadcast WHERE broadcast.time_of_day = 'night'	program_share
-- SELECT COUNT( DISTINCT broadcast.program_id ) FROM broadcast WHERE broadcast.time_of_day = 'Night'	program_share
-- SELECT program.origin FROM program ORDER BY program.origin ASC	program_share
-- SELECT program.origin FROM program ORDER BY program.origin ASC	program_share
-- SELECT COUNT( DISTINCT channel.owner ) FROM channel	program_share
-- SELECT COUNT( DISTINCT channel.owner ) FROM channel	program_share
-- SELECT program.name FROM program WHERE program.origin != 'Beijing'	program_share
-- SELECT program.name FROM program WHERE program.origin != 'Beijing'	program_share
-- SELECT channel.name FROM channel WHERE channel.owner = 'CCTV' OR channel.owner = 'HBS'	program_share
-- SELECT channel.name FROM channel WHERE channel.owner = 'CCTV' OR channel.owner = 'HBS'	program_share
-- SELECT SUM( channel.rating_in_percent ) , channel.owner FROM channel GROUP BY channel.owner	program_share
-- SELECT SUM( channel.rating_in_percent ) , channel.owner FROM channel GROUP BY channel.owner	program_share
-- SELECT COUNT( * ) FROM courses	e_learning
-- SELECT COUNT( * ) FROM courses	e_learning
-- SELECT courses.course_description FROM courses WHERE courses.course_name = 'database'	e_learning
-- SELECT courses.course_description FROM courses WHERE courses.course_name = 'database'	e_learning
-- SELECT students.login_name FROM students WHERE students.family_name = 'Ward'	e_learning
-- SELECT students.login_name FROM students WHERE students.family_name = 'Ward'	e_learning
-- SELECT students.date_of_latest_logon FROM students WHERE students.family_name = 'Jaskolski' OR students.family_name = 'Langosh'	e_learning
-- SELECT students.date_of_latest_logon FROM students WHERE students.family_name = 'Jaskolski' OR students.family_name = 'Langosh'	e_learning
-- SELECT COUNT( * ) FROM students WHERE students.personal_name LIKE '%son%'	e_learning
-- SELECT COUNT( * ) FROM students WHERE students.personal_name LIKE '%son%'	e_learning
-- SELECT subjects.subject_name FROM subjects	e_learning
-- SELECT subjects.subject_name FROM subjects	e_learning
-- SELECT students.personal_name , students.family_name FROM students ORDER BY students.family_name ASC	e_learning
-- SELECT students.personal_name , students.family_name FROM students ORDER BY students.family_name ASC	e_learning
-- SELECT payments.payment_method_code , payments.date_payment_made , payments.amount_payment FROM payments ORDER BY payments.date_payment_made ASC	insurance_policies
-- SELECT payments.payment_method_code , payments.date_payment_made , payments.amount_payment FROM payments ORDER BY payments.date_payment_made ASC	insurance_policies
-- SELECT claims.amount_settled , claims.amount_claimed FROM claims ORDER BY claims.amount_claimed DESC LIMIT 1	insurance_policies
-- SELECT claims.amount_settled , claims.amount_claimed FROM claims ORDER BY claims.amount_claimed DESC LIMIT 1	insurance_policies
-- SELECT claims.amount_settled , claims.amount_claimed FROM claims ORDER BY claims.amount_settled ASC LIMIT 1	insurance_policies
-- SELECT claims.amount_settled , claims.amount_claimed FROM claims ORDER BY claims.amount_settled ASC LIMIT 1	insurance_policies
-- SELECT claims.date_claim_made , claims.date_claim_settled FROM claims WHERE claims.amount_claimed > (SELECT AVG( claims.amount_claimed ) FROM claims)	insurance_policies
-- SELECT claims.date_claim_made , claims.date_claim_settled FROM claims WHERE claims.amount_claimed > (SELECT AVG( claims.amount_claimed ) FROM claims)	insurance_policies
-- SELECT claims.date_claim_made FROM claims WHERE claims.amount_settled <= (SELECT AVG( claims.amount_settled ) FROM claims)	insurance_policies
-- SELECT claims.date_claim_made FROM claims WHERE claims.amount_settled <= (SELECT AVG( claims.amount_settled ) FROM claims)	insurance_policies
-- SELECT claims.date_claim_made FROM claims ORDER BY claims.date_claim_made ASC LIMIT 1	insurance_policies
-- SELECT claims.date_claim_made FROM claims ORDER BY claims.date_claim_made ASC LIMIT 1	insurance_policies
-- SELECT SUM( settlements.amount_settled ) FROM settlements	insurance_policies
-- SELECT SUM( settlements.amount_settled ) FROM settlements	insurance_policies
-- SELECT settlements.date_claim_made , settlements.date_claim_settled FROM settlements	insurance_policies
-- SELECT settlements.date_claim_made , settlements.date_claim_settled FROM settlements	insurance_policies
-- SELECT payments.payment_method_code FROM payments GROUP BY payments.payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_policies
-- SELECT payments.payment_method_code FROM payments GROUP BY payments.payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	insurance_policies
-- SELECT payments.payment_method_code FROM payments GROUP BY payments.payment_method_code ORDER BY COUNT( * ) ASC LIMIT 1	insurance_policies
-- SELECT payments.payment_method_code FROM payments GROUP BY payments.payment_method_code ORDER BY COUNT( * ) ASC LIMIT 1	insurance_policies
-- SELECT SUM( payments.amount_payment ) FROM payments	insurance_policies
-- SELECT SUM( payments.amount_payment ) FROM payments	insurance_policies
-- SELECT DISTINCT customers.customer_details FROM customers	insurance_policies
-- SELECT DISTINCT customers.customer_details FROM customers	insurance_policies
-- SELECT COUNT( * ) FROM settlements	insurance_policies
-- SELECT COUNT( * ) FROM settlements	insurance_policies
-- SELECT payments.payment_id , payments.date_payment_made , payments.amount_payment FROM payments WHERE payments.payment_method_code = 'Visa'	insurance_policies
-- SELECT payments.payment_id , payments.date_payment_made , payments.amount_payment FROM payments WHERE payments.payment_method_code = 'Visa'	insurance_policies
-- SELECT SUM( claims.amount_claimed ) FROM claims	insurance_policies
-- SELECT SUM( claims.amount_claimed ) FROM claims	insurance_policies
-- SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( department.departmentid ) DESC LIMIT 1	hospital_1
-- SELECT department.name FROM department GROUP BY department.departmentid ORDER BY COUNT( department.departmentid ) DESC LIMIT 1	hospital_1
-- SELECT department.head FROM department GROUP BY department.departmentid ORDER BY COUNT( department.departmentid ) ASC LIMIT 1	hospital_1
-- SELECT department.head FROM department GROUP BY department.departmentid ORDER BY COUNT( department.departmentid ) ASC LIMIT 1	hospital_1
-- SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
-- SELECT appointment.appointmentid FROM appointment ORDER BY appointment.start DESC LIMIT 1	hospital_1
-- SELECT COUNT( stay.patient ) FROM stay WHERE stay.room = 112	hospital_1
-- SELECT COUNT( stay.patient ) FROM stay WHERE stay.room = 112	hospital_1
-- SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.staystart DESC LIMIT 1	hospital_1
-- SELECT stay.patient FROM stay WHERE stay.room = 111 ORDER BY stay.staystart DESC LIMIT 1	hospital_1
-- SELECT DISTINCT room.blockcode FROM room WHERE room.unavailable = (SELECT MAX( room.unavailable ) FROM room)	hospital_1
-- SELECT DISTINCT room.blockcode FROM room WHERE room.unavailable = (SELECT MAX( room.unavailable ) FROM room)	hospital_1
-- SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
-- SELECT COUNT( DISTINCT room.roomtype ) FROM room	hospital_1
-- SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
-- SELECT physician.name FROM physician WHERE physician.position LIKE '%senior%'	hospital_1
-- SELECT undergoes.patient FROM undergoes ORDER BY undergoes.dateundergoes ASC LIMIT 1	hospital_1
-- SELECT undergoes.patient FROM undergoes ORDER BY undergoes.dateundergoes ASC LIMIT 1	hospital_1
-- SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
-- SELECT DISTINCT nurse.name FROM nurse ORDER BY nurse.name ASC	hospital_1
-- SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
-- SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC	hospital_1
-- SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
-- SELECT MAX( procedures.cost ) , MIN( procedures.cost ) , AVG( procedures.cost ) FROM procedures	hospital_1
-- SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
-- SELECT procedures.name , procedures.cost FROM procedures ORDER BY procedures.cost DESC	hospital_1
-- SELECT procedures.name FROM procedures ORDER BY procedures.cost ASC LIMIT 3	hospital_1
-- SELECT procedures.name FROM procedures ORDER BY procedures.cost ASC LIMIT 3	hospital_1
-- SELECT COUNT( * ) FROM appointment	hospital_1
-- SELECT COUNT( * ) FROM appointment	hospital_1
-- SELECT COUNT( * ) FROM ship	ship_mission
-- SELECT COUNT( * ) FROM ship	ship_mission
-- SELECT ship.name FROM ship ORDER BY ship.tonnage ASC	ship_mission
-- SELECT ship.name FROM ship ORDER BY ship.tonnage ASC	ship_mission
-- SELECT ship.type , ship.nationality FROM ship	ship_mission
-- SELECT ship.type , ship.nationality FROM ship	ship_mission
-- SELECT ship.name FROM ship WHERE ship.nationality != 'United States'	ship_mission
-- SELECT ship.name FROM ship WHERE ship.nationality != 'United States'	ship_mission
-- SELECT ship.name FROM ship WHERE ship.nationality = 'United States' OR ship.nationality = 'United Kingdom'	ship_mission
-- SELECT ship.name FROM ship WHERE ship.nationality = 't' AND ship.nationality NOT IN (SELECT AVG( ship.nationality ) FROM ship)	ship_mission
-- SELECT ship.name FROM ship ORDER BY ship.tonnage DESC LIMIT 1	ship_mission
-- SELECT ship.name FROM ship ORDER BY ship.tonnage DESC LIMIT 1	ship_mission
-- SELECT ship.type , COUNT( * ) FROM ship GROUP BY ship.type	ship_mission
-- SELECT ship.type , COUNT( * ) FROM ship GROUP BY ship.type	ship_mission
-- SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT( * ) DESC LIMIT 1	ship_mission
-- SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT( * ) DESC LIMIT 1	ship_mission
-- SELECT ship.nationality FROM ship GROUP BY ship.nationality HAVING COUNT( * ) > 2	ship_mission
-- SELECT ship.nationality FROM ship GROUP BY ship.nationality HAVING COUNT( * ) > 2	ship_mission
-- SELECT ship.type , AVG( ship.tonnage ) FROM ship GROUP BY ship.type	ship_mission
-- SELECT ship.type , AVG( ship.tonnage ) FROM ship GROUP BY ship.type	ship_mission
-- SELECT ship.type FROM ship WHERE ship.tonnage > 6000 INTERSECT SELECT ship.type FROM ship WHERE ship.tonnage<4000	ship_mission
-- SELECT ship.type FROM ship WHERE ship.tonnage > 6000 INTERSECT SELECT ship.type FROM ship WHERE ship.tonnage<4000	ship_mission
-- SELECT COUNT( * ) FROM list	student_1
-- SELECT COUNT( * ) FROM list	student_1
-- SELECT list.lastname FROM list WHERE list.classroom = 111	student_1
-- SELECT list.lastname FROM list WHERE list.classroom = 111	student_1
-- SELECT list.firstname FROM list WHERE list.classroom = 108	student_1
-- SELECT list.firstname FROM list WHERE list.classroom = 108	student_1
-- SELECT DISTINCT list.firstname FROM list WHERE list.classroom = 107	student_1
-- SELECT DISTINCT list.firstname FROM list WHERE list.classroom = 107	student_1
-- SELECT DISTINCT list.classroom , list.grade FROM list	student_1
-- SELECT DISTINCT list.classroom , list.grade FROM list	student_1
-- SELECT DISTINCT list.grade FROM list WHERE list.classroom = 103	student_1
-- SELECT DISTINCT list.grade FROM list WHERE list.classroom = 103	student_1
-- SELECT DISTINCT list.grade FROM list WHERE list.classroom = 105	student_1
-- SELECT DISTINCT list.grade FROM list WHERE list.classroom = 105	student_1
-- SELECT DISTINCT list.classroom FROM list WHERE list.grade = 4	student_1
-- SELECT DISTINCT list.classroom FROM list WHERE list.grade = 4	student_1
-- SELECT DISTINCT list.classroom FROM list WHERE list.grade = 5	student_1
-- SELECT DISTINCT list.classroom FROM list WHERE list.grade = 5	student_1
-- SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
-- SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110	student_1
-- SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
-- SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109	student_1
-- SELECT DISTINCT teachers.firstname , teachers.lastname FROM teachers	student_1
-- SELECT DISTINCT teachers.firstname , teachers.lastname FROM teachers	student_1
-- SELECT DISTINCT list.firstname , list.lastname FROM list	student_1
-- SELECT DISTINCT list.firstname , list.lastname FROM list	student_1
-- SELECT list.grade , COUNT( DISTINCT list.classroom ) , COUNT( * ) FROM list GROUP BY list.grade	student_1
-- SELECT list.grade , COUNT( DISTINCT list.classroom ) , COUNT( * ) FROM list GROUP BY list.grade	student_1
-- SELECT list.classroom , COUNT( DISTINCT list.grade ) FROM list GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( DISTINCT list.grade ) FROM list GROUP BY list.classroom	student_1
-- SELECT list.classroom FROM list GROUP BY list.classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
-- SELECT list.classroom FROM list GROUP BY list.classroom ORDER BY COUNT( * ) DESC LIMIT 1	student_1
-- SELECT list.classroom , COUNT( * ) FROM list GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( * ) FROM list GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = '0' GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = '0' GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = '4' GROUP BY list.classroom	student_1
-- SELECT list.classroom , COUNT( * ) FROM list WHERE list.grade = '4' GROUP BY list.classroom	student_1
-- SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
-- SELECT COUNT( * ) , list.classroom FROM list GROUP BY list.classroom	student_1
-- SELECT COUNT( * ) FROM company WHERE company.headquarters = 't'	company_employee
-- SELECT company.name FROM company ORDER BY company.sales_in_billion ASC	company_employee
-- SELECT company.headquarters , company.industry FROM company	company_employee
-- SELECT company.name FROM company WHERE company.industry = 'banking' OR company.industry = 'retailing'	company_employee
-- SELECT MAX( company.market_value_in_billion ) , MIN( company.market_value_in_billion ) FROM company	company_employee
-- SELECT company.headquarters FROM company ORDER BY company.sales_in_billion DESC LIMIT 1	company_employee
-- SELECT company.headquarters , COUNT( * ) FROM company GROUP BY company.headquarters	company_employee
-- SELECT company.headquarters FROM company GROUP BY company.headquarters ORDER BY COUNT( * ) DESC LIMIT 1	company_employee
-- SELECT company.headquarters FROM company GROUP BY company.headquarters HAVING COUNT( * ) >= 2	company_employee
-- SELECT company.headquarters FROM company WHERE company.industry = 'banking' INTERSECT SELECT company.headquarters FROM company WHERE company.industry = 'oil and gas'	company_employee
-- SELECT company.name FROM company WHERE company.sales_in_billion > 200 ORDER BY company.sales_in_billion , company.profits_in_billion ASC	company_employee
-- SELECT COUNT( * ) FROM film	film_rank
-- SELECT COUNT( * ) FROM film	film_rank
-- SELECT DISTINCT film.director FROM film	film_rank
-- SELECT DISTINCT film.director FROM film	film_rank
-- SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
-- SELECT AVG( film.gross_in_dollar ) FROM film	film_rank
-- SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
-- SELECT MAX( market.number_cities ) , MIN( market.number_cities ) FROM market	film_rank
-- SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
-- SELECT COUNT( * ) FROM market WHERE market.number_cities<300	film_rank
-- SELECT market.country FROM market ORDER BY market.country ASC	film_rank
-- SELECT market.country FROM market ORDER BY market.country ASC	film_rank
-- SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
-- SELECT market.country FROM market ORDER BY market.number_cities DESC	film_rank
-- SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
-- SELECT film.studio , COUNT( * ) FROM film GROUP BY film.studio	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio ORDER BY COUNT( * ) DESC LIMIT 1	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio HAVING COUNT( * ) >= 2	film_rank
-- SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
-- SELECT film.studio FROM film WHERE film.director = 'Nicholas Meyer' INTERSECT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
-- SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
-- SELECT film.title , film.studio FROM film WHERE film.studio LIKE '%Universal%'	film_rank
-- SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
-- SELECT film.studio FROM film EXCEPT SELECT film.studio FROM film WHERE film.director = 'Walter Hill'	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) >= 4500000	film_rank
-- SELECT film.studio FROM film GROUP BY film.studio HAVING AVG( film.gross_in_dollar ) >= 4500000	film_rank
-- SELECT COUNT( * ) FROM roles	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM roles	cre_Doc_Tracking_DB
-- SELECT roles.role_code , roles.role_name , roles.role_description FROM roles	cre_Doc_Tracking_DB
-- SELECT roles.role_code , roles.role_name , roles.role_description FROM roles	cre_Doc_Tracking_DB
-- SELECT roles.role_name , roles.role_description FROM roles WHERE roles.role_code = 'MG'	cre_Doc_Tracking_DB
-- SELECT roles.role_name , roles.role_description FROM roles WHERE roles.role_code = 'MG'	cre_Doc_Tracking_DB
-- SELECT roles.role_description FROM roles WHERE roles.role_name = 'Proof Reader'	cre_Doc_Tracking_DB
-- SELECT roles.role_description FROM roles WHERE roles.role_name = 'Proof Reader'	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM employees	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM employees	cre_Doc_Tracking_DB
-- SELECT employees.employee_name , employees.role_code , employees.date_of_birth FROM employees WHERE employees.employee_name = 'Armani'	cre_Doc_Tracking_DB
-- SELECT employees.employee_name , employees.role_code , employees.date_of_birth FROM employees WHERE employees.employee_name = 'Armani'	cre_Doc_Tracking_DB
-- SELECT employees.employee_id FROM employees WHERE employees.employee_name = 'Ebba'	cre_Doc_Tracking_DB
-- SELECT employees.employee_id FROM employees WHERE employees.employee_name = 'Ebba'	cre_Doc_Tracking_DB
-- SELECT employees.employee_name FROM employees WHERE employees.role_code = 'HR'	cre_Doc_Tracking_DB
-- SELECT employees.employee_name FROM employees WHERE employees.role_code = 'HR'	cre_Doc_Tracking_DB
-- SELECT employees.role_code , COUNT( * ) FROM employees GROUP BY employees.role_code	cre_Doc_Tracking_DB
-- SELECT employees.role_code , COUNT( * ) FROM employees GROUP BY employees.role_code	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code HAVING COUNT( * ) >= 3	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code HAVING COUNT( * ) >= 3	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT employees.role_code FROM employees GROUP BY employees.role_code ORDER BY COUNT( * ) ASC LIMIT 1	cre_Doc_Tracking_DB
-- SELECT COUNT( * ) FROM club	club_1
-- SELECT COUNT( * ) FROM club	club_1
-- SELECT club.clubname FROM club	club_1
-- SELECT club.clubname FROM club	club_1
-- SELECT COUNT( * ) FROM student	club_1
-- SELECT COUNT( * ) FROM student	club_1
-- SELECT DISTINCT student.fname FROM student	club_1
-- SELECT DISTINCT student.fname FROM student	club_1
-- SELECT club.clubdesc FROM club WHERE club.clubname = 'Tennis Club'	club_1
-- SELECT club.clubdesc FROM club WHERE club.clubname = 'Tennis Club'	club_1
-- SELECT club.clubdesc FROM club WHERE club.clubname = 'Pen and Paper Gaming'	club_1
-- SELECT club.clubdesc FROM club WHERE club.clubname = 'Pen and Paper Gaming'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Tennis Club'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Tennis Club'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Pen and Paper Gaming'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Pen and Paper Gaming'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Hopkins Student Enterprises'	club_1
-- SELECT club.clublocation FROM club WHERE club.clubname = 'Hopkins Student Enterprises'	club_1
-- SELECT club.clubname FROM club WHERE club.clublocation = 'AKW'	club_1
-- SELECT club.clubname FROM club WHERE club.clublocation = 'AKW'	club_1
-- SELECT COUNT( * ) FROM club WHERE club.clublocation = 'HHH'	club_1
-- SELECT COUNT( * ) FROM club WHERE club.clublocation = 'HHH'	club_1
-- SELECT SUM( grants.grant_amount ) , grants.organisation_id FROM grants GROUP BY grants.organisation_id	tracking_grants_for_research
-- SELECT SUM( grants.grant_amount ) , grants.organisation_id FROM grants GROUP BY grants.organisation_id	tracking_grants_for_research
-- SELECT documents.grant_id , COUNT( * ) FROM documents GROUP BY documents.grant_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_grants_for_research
-- SELECT documents.grant_id , COUNT( * ) FROM documents GROUP BY documents.grant_id ORDER BY COUNT( * ) DESC LIMIT 1	tracking_grants_for_research
-- SELECT projects.project_details FROM projects WHERE projects.organisation_id IN (SELECT projects.organisation_id FROM projects GROUP BY projects.organisation_id ORDER BY COUNT( * ) DESC LIMIT 1)	tracking_grants_for_research
-- SELECT projects.project_details FROM projects WHERE projects.organisation_id IN (SELECT projects.organisation_id FROM projects GROUP BY projects.organisation_id ORDER BY COUNT( * ) DESC LIMIT 1)	tracking_grants_for_research
-- SELECT COUNT( * ) FROM tasks	tracking_grants_for_research
-- SELECT COUNT( * ) FROM tasks	tracking_grants_for_research
-- SELECT COUNT( * ) FROM person WHERE person.gender = 'females'	network_2
-- SELECT COUNT( * ) FROM person WHERE person.gender = 'females'	network_2
-- SELECT AVG( person.age ) FROM person	network_2
-- SELECT AVG( person.age ) FROM person	network_2
-- SELECT COUNT( DISTINCT person.city ) FROM person	network_2
-- SELECT COUNT( DISTINCT person.city ) FROM person	network_2
-- SELECT COUNT( DISTINCT person.job ) FROM person	network_2
-- SELECT COUNT( DISTINCT person.job ) FROM person	network_2
-- SELECT person.name FROM person WHERE person.age = (SELECT MAX( person.age ) FROM person)	network_2
-- SELECT person.name FROM person WHERE person.age = (SELECT MAX( person.age ) FROM person)	network_2
-- SELECT person.name FROM person WHERE person.job = 'student' AND person.age = (SELECT MAX( person.age ) FROM person WHERE person.job = 'student')	network_2
-- SELECT person.name FROM person WHERE person.job = 'student' AND person.age = (SELECT MAX( person.age ) FROM person WHERE person.job = 'student')	network_2
-- SELECT person.name FROM person WHERE person.gender = 'male' AND person.age = (SELECT MIN( person.age ) FROM person WHERE person.gender = 'male')	network_2
-- SELECT person.name FROM person WHERE person.gender = 'male' AND person.age = (SELECT MIN( person.age ) FROM person WHERE person.gender = 'male')	network_2
-- SELECT person.age FROM person WHERE person.job = 'doctor' AND person.name = 'Zach'	network_2
-- SELECT person.age FROM person WHERE person.job = 'doctor' AND person.name = 'Zach'	network_2
-- SELECT person.name FROM person WHERE person.age<30	network_2
-- SELECT person.name FROM person WHERE person.age<30	network_2
-- SELECT COUNT( * ) FROM person WHERE person.age > 30 AND person.job = 'engineer'	network_2
-- SELECT COUNT( * ) FROM person WHERE person.age > 30 AND person.job = 'engineers'	network_2
-- SELECT AVG( person.age ) , person.gender FROM person GROUP BY person.gender	network_2
-- SELECT AVG( person.age ) , person.gender FROM person GROUP BY person.gender	network_2
-- SELECT AVG( person.age ) , person.job FROM person GROUP BY person.job	network_2
-- SELECT AVG( person.age ) , person.job FROM person GROUP BY person.job	network_2
-- SELECT AVG( person.age ) , person.job FROM person WHERE person.gender = 'male' GROUP BY person.job	network_2
-- SELECT AVG( person.age ) , person.job FROM person WHERE person.gender = 'male' GROUP BY person.job	network_2
-- SELECT MIN( person.age ) , person.job FROM person GROUP BY person.job	network_2
-- SELECT MIN( person.age ) , person.job FROM person GROUP BY person.job	network_2
-- SELECT COUNT( * ) , person.gender FROM person WHERE person.age<40 GROUP BY person.gender	network_2
-- SELECT COUNT( * ) , person.gender FROM person WHERE person.age<40 GROUP BY person.gender	network_2
-- SELECT person.name FROM person WHERE person.age > (SELECT MIN( person.age ) FROM person WHERE person.job = 'engineer') ORDER BY person.age ASC	network_2
-- SELECT person.name FROM person WHERE person.age > (SELECT MIN( person.age ) FROM person WHERE person.job = 'engineer') ORDER BY person.age ASC	network_2
-- SELECT COUNT( * ) FROM person WHERE person.age > (SELECT MAX( person.age ) FROM person WHERE person.job = 'engineers')	network_2
-- SELECT COUNT( * ) FROM person WHERE person.age > (SELECT MAX( person.age ) FROM person WHERE person.job = 'engineer')	network_2
-- SELECT person.name , person.job FROM person ORDER BY person.name ASC	network_2
-- SELECT person.name , person.job FROM person ORDER BY person.name ASC	network_2
-- SELECT person.name FROM person ORDER BY person.age DESC	network_2
-- SELECT person.name FROM person ORDER BY person.age DESC	network_2
-- SELECT person.name FROM person WHERE person.gender = 'males' ORDER BY person.age ASC	network_2
-- SELECT person.name FROM person WHERE person.gender = 'male' ORDER BY person.age ASC	network_2
-- SELECT person.name FROM person WHERE person.age<30	network_2
-- SELECT person.name FROM person WHERE person.age<30	network_2
-- SELECT person.name FROM person WHERE person.age<30	network_2
-- SELECT COUNT( * ) FROM member	decoration_competition
-- SELECT member.name FROM member ORDER BY member.name ASC	decoration_competition
-- SELECT member.name , member.country FROM member	decoration_competition
-- SELECT member.name FROM member WHERE member.country = 'United States' OR member.country = 'Canada'	decoration_competition
-- SELECT member.country , COUNT( * ) FROM member GROUP BY member.country	decoration_competition
-- SELECT member.country FROM member GROUP BY member.country ORDER BY COUNT( * ) DESC LIMIT 1	decoration_competition
-- SELECT member.country FROM member GROUP BY member.country HAVING COUNT( * ) > 2	decoration_competition
-- SELECT college.leader_name , college.college_location FROM college	decoration_competition
-- SELECT documents.document_name , documents.access_count FROM documents ORDER BY documents.document_name ASC	document_management
-- SELECT documents.document_name , documents.access_count FROM documents ORDER BY documents.document_name ASC	document_management
-- SELECT documents.document_name , documents.access_count FROM documents ORDER BY documents.access_count DESC LIMIT 1	document_management
-- SELECT documents.document_name , documents.access_count FROM documents ORDER BY documents.access_count DESC LIMIT 1	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * ) > 4	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * ) > 4	document_management
-- SELECT SUM( documents.access_count ) FROM documents GROUP BY documents.document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT SUM( documents.access_count ) FROM documents GROUP BY documents.document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT AVG( documents.access_count ) FROM documents	document_management
-- SELECT AVG( documents.access_count ) FROM documents	document_management
-- SELECT documents.document_type_code FROM documents WHERE documents.document_name = 'David CV'	document_management
-- SELECT documents.document_type_code FROM documents WHERE documents.document_name = 'David CV'	document_management
-- SELECT documents.document_name FROM documents WHERE documents.document_type_code = (SELECT documents.document_structure_code FROM documents GROUP BY documents.document_structure_code ORDER BY COUNT( * ) DESC LIMIT 3)	document_management
-- SELECT documents.document_name FROM documents GROUP BY documents.document_type_code ORDER BY COUNT( * ) DESC LIMIT 3	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING SUM( documents.access_count ) > 10000	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING SUM( documents.access_count ) > 10000	document_management
-- SELECT users.user_name , users.password FROM users GROUP BY users.role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT users.user_name , users.password FROM users GROUP BY users.role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT documents.document_name FROM documents WHERE documents.document_name LIKE '%CV%'	document_management
-- SELECT documents.document_name FROM documents WHERE documents.document_name LIKE '%CV%'	document_management
-- SELECT COUNT( * ) FROM users WHERE users.user_login = 1	document_management
-- SELECT COUNT( * ) FROM users WHERE users.user_login = 1	document_management
-- SELECT users.role_code FROM users WHERE users.user_login = 1 GROUP BY users.role_code ORDER BY COUNT( * ) DESC LIMIT 1	document_management
-- SELECT AVG( documents.access_count ) FROM documents GROUP BY documents.document_structure_code ORDER BY COUNT( * ) ASC LIMIT 1	document_management
-- SELECT AVG( documents.access_count ) FROM documents GROUP BY documents.document_structure_code ORDER BY COUNT( * ) ASC LIMIT 1	document_management
-- SELECT images.image_name , images.image_url FROM images ORDER BY images.image_name ASC	document_management
-- SELECT images.image_name , images.image_url FROM images ORDER BY images.image_name ASC	document_management
-- SELECT COUNT( * ) , users.role_code FROM users GROUP BY users.role_code	document_management
-- SELECT COUNT( * ) , users.role_code FROM users GROUP BY users.role_code	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * ) > 2	document_management
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * ) > 2	document_management
-- SELECT COUNT( * ) FROM companies	company_office
-- SELECT COUNT( * ) FROM companies	company_office
-- SELECT companies.name FROM companies ORDER BY companies.market_value_billion DESC	company_office
-- SELECT companies.name FROM companies ORDER BY companies.market_value_billion DESC	company_office
-- SELECT companies.name FROM companies WHERE companies.headquarters != 'USA'	company_office
-- SELECT companies.name FROM companies WHERE companies.headquarters != 'USA'	company_office
-- SELECT companies.name , companies.assets_billion FROM companies ORDER BY companies.name ASC	company_office
-- SELECT companies.name , companies.assets_billion FROM companies ORDER BY companies.name ASC	company_office
-- SELECT AVG( companies.profits_billion ) FROM companies	company_office
-- SELECT AVG( companies.profits_billion ) FROM companies	company_office
-- SELECT MAX( companies.sales_billion ) , MIN( companies.sales_billion ) FROM companies WHERE companies.industry != 'Banking'	company_office
-- SELECT MAX( companies.sales_billion ) , MIN( companies.sales_billion ) FROM companies WHERE companies.industry != 'Banking'	company_office
-- SELECT COUNT( DISTINCT companies.industry ) FROM companies	company_office
-- SELECT COUNT( DISTINCT companies.industry ) FROM companies	company_office
-- SELECT buildings.name FROM buildings ORDER BY buildings.height DESC	company_office
-- SELECT buildings.name FROM buildings ORDER BY buildings.height DESC	company_office
-- SELECT buildings.stories FROM buildings ORDER BY buildings.height DESC LIMIT 1	company_office
-- SELECT buildings.stories FROM buildings ORDER BY buildings.height DESC LIMIT 1	company_office
-- SELECT buildings.name FROM buildings WHERE buildings.status = 'on-hold' ORDER BY buildings.stories ASC	company_office
-- SELECT buildings.name FROM buildings WHERE buildings.status = 'on-hold' ORDER BY buildings.stories ASC	company_office
-- SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry	company_office
-- SELECT companies.industry , COUNT( * ) FROM companies GROUP BY companies.industry	company_office
-- SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC	company_office
-- SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC	company_office
-- SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
-- SELECT companies.industry FROM companies GROUP BY companies.industry ORDER BY COUNT( * ) DESC LIMIT 1	company_office
-- SELECT companies.industry FROM companies WHERE companies.headquarters = 'USA' INTERSECT SELECT companies.industry FROM companies WHERE companies.headquarters = 'China'	company_office
-- SELECT companies.industry FROM companies WHERE companies.headquarters = 'USA' INTERSECT SELECT companies.industry FROM companies WHERE companies.headquarters = 'China'	company_office
-- SELECT COUNT( * ) FROM companies WHERE companies.industry = 'Banking' OR companies.industry = 'Conglomerate'	company_office
-- SELECT COUNT( * ) FROM companies WHERE companies.industry = 'Banking' OR companies.industry = 'Conglomerate'	company_office
-- SELECT companies.headquarters FROM companies GROUP BY companies.headquarters HAVING COUNT( * ) > 2	company_office
-- SELECT companies.headquarters FROM companies GROUP BY companies.headquarters HAVING COUNT( * ) > 2	company_office
-- SELECT COUNT( * ) FROM products	solvency_ii
-- SELECT products.product_name FROM products ORDER BY products.product_price ASC	solvency_ii
-- SELECT products.product_name , products.product_type_code FROM products	solvency_ii
-- SELECT products.product_price FROM products WHERE products.product_name = 'Dining' OR products.product_name = 'Trading Policy'	solvency_ii
-- SELECT AVG( products.product_price ) FROM products	solvency_ii
-- SELECT products.product_name FROM products ORDER BY products.product_price DESC LIMIT 1	solvency_ii
-- SELECT products.product_type_code , COUNT( * ) FROM products GROUP BY products.product_type_code	solvency_ii
-- SELECT products.product_type_code FROM products GROUP BY products.product_type_code ORDER BY COUNT( * ) DESC LIMIT 1	solvency_ii
-- SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING COUNT( * ) >= 2	solvency_ii
-- SELECT products.product_type_code FROM products WHERE products.product_price > 4500 INTERSECT SELECT products.product_type_code FROM products WHERE products.product_price<3000	solvency_ii
-- SELECT COUNT( * ) FROM artwork	entertainment_awards
-- SELECT artwork.name FROM artwork ORDER BY artwork.name ASC	entertainment_awards
-- SELECT artwork.name FROM artwork WHERE artwork.type != 'Program Talent Show'	entertainment_awards
-- SELECT artwork.type , COUNT( * ) FROM artwork GROUP BY artwork.type	entertainment_awards
-- SELECT artwork.type FROM artwork GROUP BY artwork.type ORDER BY COUNT( * ) DESC LIMIT 1	entertainment_awards
-- SELECT COUNT( * ) FROM premises	customers_campaigns_ecommerce
-- SELECT DISTINCT premises.premises_type FROM premises	customers_campaigns_ecommerce
-- SELECT premises.premises_type , premises.premise_details FROM premises ORDER BY premises.premises_type ASC	customers_campaigns_ecommerce
-- SELECT premises.premises_type , COUNT( * ) FROM premises GROUP BY premises.premises_type	customers_campaigns_ecommerce
-- SELECT COUNT( * ) FROM course	college_3
-- SELECT COUNT( * ) FROM course	college_3
-- SELECT COUNT( * ) FROM course WHERE course.credits > 2	college_3
-- SELECT COUNT( * ) FROM course WHERE course.credits > 2	college_3
-- SELECT course.cname FROM course WHERE course.credits = 1	college_3
-- SELECT course.cname FROM course WHERE course.credits = 1	college_3
-- SELECT course.cname FROM course WHERE course.days = 'MTW'	college_3
-- SELECT course.cname FROM course WHERE course.days = 'MTW'	college_3
-- SELECT COUNT( * ) FROM department WHERE department.division = 'AS'	college_3
-- SELECT COUNT( * ) FROM department WHERE department.division = 'AS'	college_3
-- SELECT department.dphone FROM department WHERE department.room = 268	college_3
-- SELECT department.dphone FROM department WHERE department.room = 268	college_3
-- SELECT DISTINCT student.fname FROM student WHERE student.fname LIKE '%a%'	college_3
-- SELECT DISTINCT student.fname FROM student WHERE student.fname LIKE '%a%'	college_3
-- SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.sex = 'm' AND faculty.building = 'NEB'	college_3
-- SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.sex = 'm' AND faculty.building = 'NEB'	college_3
-- SELECT faculty.room FROM faculty WHERE faculty.rank = 'professor' AND faculty.building = 'NEB'	college_3
-- SELECT faculty.room FROM faculty WHERE faculty.rank = 'professors' AND faculty.building = 'NEB'	college_3
-- SELECT department.dname FROM department WHERE department.building = 'Mergenthaler'	college_3
-- SELECT department.dname FROM department WHERE department.building = 'Mergenthaler'	college_3
-- SELECT * FROM course ORDER BY course.credits ASC	college_3
-- SELECT * FROM course ORDER BY course.credits ASC	college_3
-- SELECT course.cname FROM course ORDER BY course.credits ASC	college_3
-- SELECT course.cname FROM course ORDER BY course.credits ASC	college_3
-- SELECT student.fname FROM student ORDER BY student.age DESC	college_3
-- SELECT student.fname FROM student ORDER BY student.age DESC	college_3
-- SELECT student.lname FROM student WHERE student.sex = 'f' ORDER BY student.age DESC	college_3
-- SELECT student.lname FROM student WHERE student.sex = 'f' ORDER BY student.age DESC	college_3
-- SELECT faculty.lname FROM faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC	college_3
-- SELECT faculty.lname FROM faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC	college_3
-- SELECT faculty.fname FROM faculty WHERE faculty.rank = 'Professor' ORDER BY faculty.fname ASC	college_3
-- SELECT faculty.fname FROM faculty WHERE faculty.rank = 'professors,' ORDER BY faculty.fname ASC	college_3
-- SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
-- SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	college_3
-- SELECT course.cname FROM course WHERE course.credits = 3 UNION SELECT course.cname FROM course WHERE course.credits = 1 AND course.hours = 4	college_3
-- SELECT course.cname FROM course WHERE course.credits = 3 UNION SELECT course.cname FROM course WHERE course.credits = 1 AND course.hours = 4	college_3
-- SELECT department.dname FROM department WHERE department.division = 'AS' UNION SELECT department.dname FROM department WHERE department.division = 'EN' AND department.building = 'NEB'	college_3
-- SELECT department.dname FROM department WHERE department.division = 'AS,' UNION SELECT department.dname FROM department WHERE department.division = 'EN' AND department.building = 'NEB'	college_3
-- SELECT products.product_id , products.product_type_code FROM products ORDER BY products.product_price ASC LIMIT 1	department_store
-- SELECT products.product_id , products.product_type_code FROM products ORDER BY products.product_price ASC LIMIT 1	department_store
-- SELECT COUNT( DISTINCT products.product_type_code ) FROM products	department_store
-- SELECT COUNT( DISTINCT products.product_type_code ) FROM products	department_store
-- SELECT customers.payment_method_code , COUNT( * ) FROM customers GROUP BY customers.payment_method_code	department_store
-- SELECT customers.payment_method_code , COUNT( * ) FROM customers GROUP BY customers.payment_method_code	department_store
-- SELECT products.product_type_code , AVG( products.product_price ) FROM products GROUP BY products.product_type_code	department_store
-- SELECT products.product_type_code , AVG( products.product_price ) FROM products GROUP BY products.product_type_code	department_store
-- SELECT products.product_type_code , MAX( products.product_price ) , MIN( products.product_price ) FROM products GROUP BY products.product_type_code	department_store
-- SELECT products.product_type_code , MAX( products.product_price ) , MIN( products.product_price ) FROM products GROUP BY products.product_type_code	department_store
-- SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING AVG( products.product_price ) > (SELECT AVG( products.product_price ) FROM products)	department_store
-- SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING AVG( products.product_price ) > (SELECT AVG( products.product_price ) FROM products)	department_store
-- SELECT products.product_name , products.product_id FROM products WHERE products.product_price BETWEEN 600 and 700	department_store
-- SELECT products.product_name , products.product_id FROM products WHERE products.product_price BETWEEN 600 and 700	department_store
-- SELECT customers.customer_name , customers.customer_id FROM customers WHERE customers.customer_address LIKE '%TN%'	department_store
-- SELECT customers.customer_name , customers.customer_id FROM customers WHERE customers.customer_address LIKE '%TN%'	department_store
-- SELECT suppliers.supplier_name , suppliers.supplier_name FROM suppliers ORDER BY suppliers.supplier_name ASC	department_store
-- SELECT products.product_id , products.product_name FROM products WHERE products.product_price<600 OR products.product_price > 900	department_store
-- SELECT products.product_id , products.product_name FROM products WHERE products.product_price<600 OR products.product_price > 900	department_store
-- SELECT MAX( customers.customer_code ) , MIN( customers.customer_code ) FROM customers	department_store
-- SELECT MAX( customers.customer_code ) , MIN( customers.customer_code ) FROM customers	department_store
-- SELECT MAX( products.product_price ) , MIN( products.product_price ) , products.product_type_code FROM products GROUP BY products.product_type_code ORDER BY products.product_type_code ASC	department_store
-- SELECT MAX( products.product_price ) , MIN( products.product_price ) , products.product_type_code FROM products GROUP BY products.product_type_code ORDER BY products.product_type_code ASC	department_store
-- SELECT customers.customer_id , customers.customer_name FROM customers WHERE customers.customer_address LIKE '%WY%' AND customers.payment_method_code != 'credit card'	department_store
-- SELECT customers.customer_id , customers.customer_name FROM customers WHERE customers.customer_address LIKE '%WY%' AND customers.payment_method_code != 'credit card'	department_store
-- SELECT AVG( products.product_price ) FROM products WHERE products.product_type_code = 'clothes'	department_store
-- SELECT AVG( products.product_price ) FROM products WHERE products.product_type_code = 'clothes'	department_store
-- SELECT products.product_name FROM products WHERE products.product_type_code = 'hardware' ORDER BY products.product_price DESC LIMIT 1	department_store
-- SELECT products.product_name FROM products WHERE products.product_type_code = 'hardware' ORDER BY products.product_price DESC LIMIT 1	department_store
-- SELECT COUNT( * ) FROM aircraft	aircraft
-- SELECT COUNT( * ) FROM aircraft	aircraft
-- SELECT aircraft.description FROM aircraft	aircraft
-- SELECT aircraft.description FROM aircraft	aircraft
-- SELECT AVG( airport.international_passengers ) FROM airport	aircraft
-- SELECT AVG( airport.international_passengers ) FROM airport	aircraft
-- SELECT airport.international_passengers , airport.domestic_passengers FROM airport WHERE airport.airport_name = 'Heathrow'	aircraft
-- SELECT airport.international_passengers , airport.domestic_passengers FROM airport WHERE airport.airport_name = 'London Heathrow'	aircraft
-- SELECT SUM( airport.domestic_passengers ) FROM airport WHERE airport.airport_name LIKE '%London%'	aircraft
-- SELECT SUM( airport.domestic_passengers ) FROM airport WHERE airport.airport_name LIKE '%London%'	aircraft
-- SELECT MAX( airport.transit_passengers ) , MIN( airport.transit_passengers ) FROM airport	aircraft
-- SELECT MAX( airport.transit_passengers ) , MIN( airport.transit_passengers ) FROM airport	aircraft
-- SELECT pilot.name FROM pilot WHERE pilot.age >= 25	aircraft
-- SELECT pilot.name FROM pilot WHERE pilot.age >= 25	aircraft
-- SELECT pilot.name FROM pilot ORDER BY pilot.name ASC	aircraft
-- SELECT pilot.name FROM pilot ORDER BY pilot.name ASC	aircraft
-- SELECT pilot.name FROM pilot WHERE pilot.age <= 30 ORDER BY pilot.name DESC	aircraft
-- SELECT pilot.name FROM pilot WHERE pilot.age <= 30 ORDER BY pilot.name DESC	aircraft
-- SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
-- SELECT pilot.name FROM pilot ORDER BY pilot.age DESC	aircraft
-- SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
-- SELECT * FROM airport ORDER BY airport.international_passengers DESC LIMIT 1	aircraft
-- SELECT organizations.organization_id FROM organizations EXCEPT SELECT organizations.parent_organization_id FROM organizations	local_govt_and_lot
-- SELECT MAX( residents.date_moved_in ) FROM residents	local_govt_and_lot
-- SELECT residents.other_details FROM residents WHERE residents.other_details LIKE '%Miss%'	local_govt_and_lot
-- SELECT DISTINCT residents.date_moved_in FROM residents	local_govt_and_lot
-- SELECT COUNT( * ) FROM school	school_player
-- SELECT COUNT( * ) FROM school	school_player
-- SELECT school.location FROM school ORDER BY school.enrollment ASC	school_player
-- SELECT school.location FROM school ORDER BY school.enrollment ASC	school_player
-- SELECT school.location FROM school ORDER BY school.founded DESC	school_player
-- SELECT school.location FROM school ORDER BY school.founded DESC	school_player
-- SELECT school.enrollment FROM school WHERE school.denomination != 'Catholic'	school_player
-- SELECT school.enrollment FROM school WHERE school.denomination != 'Catholic'	school_player
-- SELECT AVG( school.enrollment ) FROM school	school_player
-- SELECT AVG( school.enrollment ) FROM school	school_player
-- SELECT player.team FROM player ORDER BY player.team ASC	school_player
-- SELECT player.team FROM player ORDER BY player.team ASC	school_player
-- SELECT COUNT( DISTINCT player.position ) FROM player	school_player
-- SELECT COUNT( DISTINCT player.position ) FROM player	school_player
-- SELECT player.team FROM player ORDER BY player.age DESC LIMIT 1	school_player
-- SELECT player.team FROM player ORDER BY player.age DESC LIMIT 1	school_player
-- SELECT player.team FROM player ORDER BY player.age DESC LIMIT 5	school_player
-- SELECT player.team FROM player ORDER BY player.age DESC LIMIT 5	school_player
-- SELECT school.denomination , COUNT( * ) FROM school GROUP BY school.denomination	school_player
-- SELECT school.denomination , COUNT( * ) FROM school GROUP BY school.denomination	school_player
-- SELECT school.denomination , COUNT( * ) FROM school GROUP BY school.denomination ORDER BY COUNT( * ) DESC	school_player
-- SELECT school.denomination , COUNT( * ) FROM school GROUP BY school.denomination ORDER BY COUNT( * ) DESC	school_player
-- SELECT school.school_colors FROM school ORDER BY school.enrollment DESC LIMIT 1	school_player
-- SELECT school.school_colors FROM school ORDER BY school.enrollment DESC LIMIT 1	school_player
-- SELECT school.denomination FROM school WHERE school.founded<1890 INTERSECT SELECT school.denomination FROM school WHERE school.founded > 1900	school_player
-- SELECT school.denomination FROM school WHERE school.founded<1890 INTERSECT SELECT school.denomination FROM school WHERE school.founded > 1900	school_player
-- SELECT school.denomination FROM school GROUP BY school.denomination HAVING COUNT( * ) > 1	school_player
-- SELECT school.denomination FROM school GROUP BY school.denomination HAVING COUNT( * ) > 1	school_player
-- SELECT DISTINCT district.district_name FROM district ORDER BY district.city_area DESC	store_product
-- SELECT DISTINCT district.district_name FROM district ORDER BY district.city_area DESC	store_product
-- SELECT product.max_page_size FROM product GROUP BY product.max_page_size HAVING COUNT( * ) > 3	store_product
-- SELECT product.max_page_size FROM product GROUP BY product.max_page_size HAVING COUNT( * ) > 3	store_product
-- SELECT district.district_name , district.city_population FROM district WHERE district.city_population BETWEEN 200000 and 2000000	store_product
-- SELECT district.district_name , district.city_population FROM district WHERE district.city_population >= 200,000 AND district.city_population <= 2,000,000	store_product
-- SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000	store_product
-- SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000	store_product
-- SELECT district.district_name FROM district ORDER BY district.city_population DESC LIMIT 1	store_product
-- SELECT district.district_name FROM district ORDER BY district.city_population DESC LIMIT 1	store_product
-- SELECT district.district_name FROM district ORDER BY district.city_area ASC LIMIT 1	store_product
-- SELECT district.district_name FROM district ORDER BY district.city_area ASC LIMIT 1	store_product
-- SELECT SUM( district.city_population ) FROM district ORDER BY district.city_area DESC LIMIT 3	store_product
-- SELECT SUM( district.city_population ) FROM district ORDER BY district.city_area DESC LIMIT 3	store_product
-- SELECT store.type , COUNT( * ) FROM store GROUP BY store.type	store_product
-- SELECT store.type , COUNT( * ) FROM store GROUP BY store.type	store_product
-- SELECT AVG( product.pages_per_minute_color ) FROM product	store_product
-- SELECT AVG( product.pages_per_minute_color ) FROM product	store_product
-- SELECT product.product FROM product WHERE product.max_page_size = 'A4' AND product.pages_per_minute_color<5	store_product
-- SELECT product.product FROM product WHERE product.max_page_size = 'A4' AND product.pages_per_minute_color<5	store_product
-- SELECT product.product FROM product WHERE product.max_page_size = 'A4' OR product.pages_per_minute_color<5	store_product
-- SELECT product.product FROM product WHERE product.max_page_size = 'A4' OR product.pages_per_minute_color<5	store_product
-- SELECT product.product FROM product WHERE product.product LIKE '%Scanner%'	store_product
-- SELECT product.product FROM product WHERE product.product LIKE '%Scanner%'	store_product
-- SELECT product.max_page_size FROM product GROUP BY product.max_page_size ORDER BY COUNT( * ) DESC LIMIT 1	store_product
-- SELECT product.max_page_size FROM product GROUP BY product.max_page_size ORDER BY COUNT( * ) DESC LIMIT 1	store_product
-- SELECT product.product FROM product WHERE product.product != (SELECT product.max_page_size FROM product GROUP BY product.max_page_size ORDER BY COUNT( * ) DESC LIMIT 1)	store_product
-- SELECT product.product FROM product WHERE product.product != (SELECT product.max_page_size FROM product GROUP BY product.max_page_size ORDER BY COUNT( * ) DESC LIMIT 1)	store_product
-- SELECT SUM( district.city_population ) FROM district WHERE district.city_area > (SELECT AVG( district.city_area ) FROM district)	store_product
-- SELECT SUM( district.city_population ) FROM district WHERE district.city_area > (SELECT AVG( district.city_area ) FROM district)	store_product
-- SELECT SUM( college.enr ) FROM college	soccer_2
-- SELECT SUM( college.enr ) FROM college	soccer_2
-- SELECT AVG( college.enr ) FROM college	soccer_2
-- SELECT AVG( college.enr ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM college	soccer_2
-- SELECT COUNT( * ) FROM player WHERE player.hs > 1000	soccer_2
-- SELECT COUNT( * ) FROM player WHERE player.hs > 1000	soccer_2
-- SELECT COUNT( * ) FROM college WHERE college.enr > 15000	soccer_2
-- SELECT COUNT( * ) FROM college WHERE college.enr > 15000	soccer_2
-- SELECT AVG( player.hs ) FROM player	soccer_2
-- SELECT AVG( player.hs ) FROM player	soccer_2
-- SELECT player.pname , player.hs FROM player WHERE player.hs<1500	soccer_2
-- SELECT player.pname , player.hs FROM player WHERE player.hs<1500	soccer_2
-- SELECT COUNT( DISTINCT tryout.cname ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT tryout.cname ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT tryout.ppos ) FROM tryout	soccer_2
-- SELECT COUNT( DISTINCT tryout.ppos ) FROM tryout	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE tryout.decision = 'yes'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE tryout.decision = 'yes'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE tryout.ppos = 'goalie'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE tryout.ppos = 'goalie'	soccer_2
-- SELECT AVG( player.hs ) , MAX( player.hs ) , MIN( player.hs ) FROM player	soccer_2
-- SELECT AVG( player.hs ) , MAX( player.hs ) , MIN( player.hs ) FROM player	soccer_2
-- SELECT AVG( college.enr ) FROM college WHERE college.state = 'FL'	soccer_2
-- SELECT player.pname FROM player WHERE player.hs BETWEEN 500 and 1500	soccer_2
-- SELECT player.pname FROM player WHERE player.hs BETWEEN 500 and 1500	soccer_2
-- SELECT DISTINCT player.pname FROM player WHERE player.pname LIKE '%a%'	soccer_2
-- SELECT DISTINCT player.pname FROM player WHERE player.pname LIKE '%a%'	soccer_2
-- SELECT college.cname , college.enr FROM college WHERE college.enr > 10000 AND college.state = 'LA'	soccer_2
-- SELECT college.cname , college.enr FROM college WHERE college.state = 't' AND college.enr > 10000	soccer_2
-- SELECT * FROM college ORDER BY college.enr ASC	soccer_2
-- SELECT * FROM college ORDER BY college.enr ASC	soccer_2
-- SELECT college.cname FROM college WHERE college.enr > 18000 ORDER BY college.cname ASC	soccer_2
-- SELECT college.cname FROM college WHERE college.enr > 18000 ORDER BY college.cname ASC	soccer_2
-- SELECT player.pname FROM player WHERE player.ycard = 'yes' ORDER BY player.hs DESC	soccer_2
-- SELECT player.pname FROM player WHERE player.ycard = 'yes' ORDER BY player.hs DESC	soccer_2
-- SELECT DISTINCT tryout.cname FROM tryout ORDER BY tryout.cname ASC	soccer_2
-- SELECT DISTINCT tryout.cname FROM tryout ORDER BY tryout.cname ASC	soccer_2
-- SELECT tryout.ppos FROM tryout GROUP BY tryout.ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
-- SELECT tryout.ppos FROM tryout GROUP BY tryout.ppos ORDER BY COUNT( * ) DESC LIMIT 1	soccer_2
-- SELECT COUNT( * ) , tryout.cname FROM tryout GROUP BY tryout.cname ORDER BY COUNT( * ) DESC	soccer_2
-- SELECT COUNT( * ) , tryout.cname FROM tryout GROUP BY tryout.cname ORDER BY COUNT( * ) DESC	soccer_2
-- SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
-- SELECT college.cname FROM college ORDER BY college.enr DESC LIMIT 3	soccer_2
-- SELECT college.cname , college.state , MIN( college.enr ) FROM college GROUP BY college.state	soccer_2
-- SELECT college.cname , college.state , MIN( college.enr ) FROM college GROUP BY college.state	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.decision = 'yes' AND tryout.ppos = 'goalie'	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.decision = 'yes' AND tryout.ppos = 'goalie'	soccer_2
-- SELECT college.cname FROM college WHERE college.enr > 15000 AND college.state = 'LA' UNION SELECT college.cname FROM college WHERE college.enr<13000 AND college.state = 'AZ'	soccer_2
-- SELECT college.cname FROM college WHERE college.enr<13,000 AND college.state = 'AZ' UNION SELECT college.cname FROM college WHERE college.enr > 15,000 AND college.state = 'LA'	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goalie' INTERSECT SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'mid'	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goal' INTERSECT SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'mid'	soccer_2
-- SELECT COUNT( * ) FROM tryout WHERE tryout.ppos = 'yes' AND tryout.ppos = 'mid'	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'mid' EXCEPT SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goalie'	soccer_2
-- SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'mid' EXCEPT SELECT tryout.cname FROM tryout WHERE tryout.ppos = 'goalies'	soccer_2
-- SELECT DISTINCT college.state FROM college WHERE college.enr<(SELECT MAX( college.enr ) FROM college)	soccer_2
-- SELECT DISTINCT college.state FROM college WHERE college.enr<(SELECT MAX( college.enr ) FROM college)	soccer_2
-- SELECT DISTINCT college.cname FROM college WHERE college.enr > (SELECT MIN( college.enr ) FROM college WHERE college.state = 'FL')	soccer_2
-- SELECT college.cname FROM college WHERE college.enr > (SELECT MAX( college.enr ) FROM college WHERE college.state = 'FL')	soccer_2
-- SELECT college.cname FROM college WHERE college.enr > (SELECT MAX( college.enr ) FROM college WHERE college.state = 't')	soccer_2
-- SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr > (SELECT AVG( college.enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr > (SELECT AVG( college.enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr<(SELECT AVG( college.enr ) FROM college)	soccer_2
-- SELECT COUNT( DISTINCT college.state ) FROM college WHERE college.enr<(SELECT AVG( college.enr ) FROM college)	soccer_2
-- SELECT COUNT( * ) FROM device	device
-- SELECT COUNT( * ) FROM device	device
-- SELECT device.carrier FROM device ORDER BY device.carrier ASC	device
-- SELECT device.carrier FROM device ORDER BY device.carrier ASC	device
-- SELECT device.carrier FROM device WHERE device.software_platform != 'Android'	device
-- SELECT device.carrier FROM device WHERE device.software_platform != 'Android'	device
-- SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC	device
-- SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC	device
-- SELECT AVG( stock.quantity ) FROM stock	device
-- SELECT AVG( stock.quantity ) FROM stock	device
-- SELECT shop.shop_name , shop.location FROM shop ORDER BY shop.shop_name ASC	device
-- SELECT shop.shop_name , shop.location FROM shop ORDER BY shop.shop_name ASC	device
-- SELECT COUNT( DISTINCT device.software_platform ) FROM device	device
-- SELECT COUNT( DISTINCT device.software_platform ) FROM device	device
-- SELECT shop.open_date , shop.open_year FROM shop WHERE shop.shop_name = 'Apple'	device
-- SELECT shop.open_date , shop.open_year FROM shop WHERE shop.shop_name = 'Apple'	device
-- SELECT shop.shop_name FROM shop ORDER BY shop.open_year DESC LIMIT 1	device
-- SELECT shop.shop_name FROM shop ORDER BY shop.open_year DESC LIMIT 1	device
-- SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform	device
-- SELECT device.software_platform , COUNT( * ) FROM device GROUP BY device.software_platform	device
-- SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
-- SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC	device
-- SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
-- SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT( * ) DESC LIMIT 1	device
-- SELECT shop.location FROM shop WHERE shop.open_year > 2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
-- SELECT shop.location FROM shop WHERE shop.open_year > 2012 INTERSECT SELECT shop.location FROM shop WHERE shop.open_year<2008	device
-- SELECT COUNT( * ) FROM bookings	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM bookings	cre_Drama_Workshop_Groups
-- SELECT bookings.order_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT bookings.order_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT bookings.planned_delivery_date , bookings.actual_delivery_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT bookings.planned_delivery_date , bookings.actual_delivery_date FROM bookings	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM customers	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM customers	cre_Drama_Workshop_Groups
-- SELECT customers.customer_phone , customers.customer_email_address FROM customers WHERE customers.customer_name = 'Harold'	cre_Drama_Workshop_Groups
-- SELECT customers.customer_phone , customers.customer_email_address FROM customers WHERE customers.customer_name = 'Harold'	cre_Drama_Workshop_Groups
-- SELECT MIN( invoices.order_quantity ) , AVG( invoices.order_quantity ) , MAX( invoices.order_quantity ) FROM invoices	cre_Drama_Workshop_Groups
-- SELECT MIN( invoices.order_item_id ) , AVG( invoices.order_item_id ) , MAX( invoices.order_item_id ) FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT invoices.payment_method_code FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT invoices.payment_method_code FROM invoices	cre_Drama_Workshop_Groups
-- SELECT DISTINCT products.product_description FROM products WHERE products.product_description > (SELECT AVG( products.product_description ) FROM products)	cre_Drama_Workshop_Groups
-- SELECT DISTINCT products.other_product_service_details FROM products WHERE products.other_product_service_details > (SELECT AVG( products.other_product_service_details ) FROM products)	cre_Drama_Workshop_Groups
-- SELECT products.product_description FROM products ORDER BY products.product_description DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT products.product_description FROM products ORDER BY products.product_description DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT products.product_description FROM products ORDER BY products.product_description ASC	cre_Drama_Workshop_Groups
-- SELECT products.other_product_service_details FROM products ORDER BY products.other_product_service_details ASC	cre_Drama_Workshop_Groups
-- SELECT performers.customer_email_address FROM performers WHERE performers.customer_name = 'Ashley'	cre_Drama_Workshop_Groups
-- SELECT performers.customer_email_address FROM performers WHERE performers.customer_email_address = 'Ashley'	cre_Drama_Workshop_Groups
-- SELECT invoices.payment_method_code , COUNT( * ) FROM invoices GROUP BY invoices.payment_method_code	cre_Drama_Workshop_Groups
-- SELECT invoices.payment_method_code , COUNT( * ) FROM invoices GROUP BY invoices.payment_method_code	cre_Drama_Workshop_Groups
-- SELECT invoices.payment_method_code FROM invoices GROUP BY invoices.payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT invoices.payment_method_code FROM invoices GROUP BY invoices.payment_method_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT products.product_description , AVG( products.product_price ) FROM products GROUP BY products.product_description	cre_Drama_Workshop_Groups
-- SELECT products.product_name , AVG( products.product_price ) FROM products GROUP BY products.product_name	cre_Drama_Workshop_Groups
-- SELECT products.product_description FROM products GROUP BY products.product_description HAVING AVG( products.product_price )<1000000	cre_Drama_Workshop_Groups
-- SELECT products.product_description FROM products GROUP BY products.product_description HAVING AVG( products.product_price )<1000000	cre_Drama_Workshop_Groups
-- SELECT bookings.status_code FROM bookings GROUP BY bookings.status_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT bookings.status_code FROM bookings GROUP BY bookings.status_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT AVG( invoices.order_item_id ) FROM invoices WHERE invoices.payment_method_code = 'MasterCard'	cre_Drama_Workshop_Groups
-- SELECT AVG( invoices.order_item_id ) FROM invoices WHERE invoices.payment_method_code = 'MasterCard'	cre_Drama_Workshop_Groups
-- SELECT invoices.product_id FROM invoices GROUP BY invoices.product_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT invoices.product_id FROM invoices GROUP BY invoices.product_id ORDER BY COUNT( * ) DESC LIMIT 1	cre_Drama_Workshop_Groups
-- SELECT COUNT( * ) FROM band	music_2
-- SELECT COUNT( * ) FROM band	music_2
-- SELECT DISTINCT albums.label FROM albums	music_2
-- SELECT DISTINCT albums.label FROM albums	music_2
-- SELECT * FROM albums WHERE albums.year = 2012	music_2
-- SELECT * FROM albums WHERE albums.year = 2012	music_2
-- SELECT COUNT( * ) FROM songs	music_2
-- SELECT COUNT( * ) FROM songs	music_2
-- SELECT COUNT( DISTINCT albums.label ) FROM albums	music_2
-- SELECT COUNT( DISTINCT albums.label ) FROM albums	music_2
-- SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT albums.label FROM albums GROUP BY albums.label ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
-- SELECT songs.title FROM songs WHERE songs.title LIKE '%the%'	music_2
-- SELECT DISTINCT instruments.instrument FROM instruments	music_2
-- SELECT DISTINCT instruments.instrument FROM instruments	music_2
-- SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
-- SELECT COUNT( * ) FROM instruments WHERE instruments.instrument = 'drums'	music_2
-- SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT vocals.type FROM vocals GROUP BY vocals.type ORDER BY COUNT( * ) DESC LIMIT 1	music_2
-- SELECT DISTINCT vocals.type FROM vocals	music_2
-- SELECT DISTINCT vocals.type FROM vocals	music_2
-- SELECT * FROM albums WHERE albums.year = 2010	music_2
-- SELECT * FROM albums WHERE albums.year = 2010	music_2
-- SELECT manufacturers.founder FROM manufacturers WHERE manufacturers.name = 'Sony'	manufactory_1
-- SELECT manufacturers.founder FROM manufacturers WHERE manufacturers.name = 'Sony'	manufactory_1
-- SELECT manufacturers.headquarter FROM manufacturers WHERE manufacturers.founder = 'James'	manufactory_1
-- SELECT manufacturers.headquarter FROM manufacturers WHERE manufacturers.founder = 'James'	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter FROM manufacturers ORDER BY manufacturers.revenue DESC	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter FROM manufacturers ORDER BY manufacturers.revenue DESC	manufactory_1
-- SELECT AVG( manufacturers.revenue ) , MAX( manufacturers.revenue ) , SUM( manufacturers.revenue ) FROM manufacturers	manufactory_1
-- SELECT AVG( manufacturers.revenue ) , MAX( manufacturers.revenue ) , SUM( manufacturers.revenue ) FROM manufacturers	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE manufacturers.founder = 'Andy'	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE manufacturers.founder = 'Andy'	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin'	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin'	manufactory_1
-- SELECT DISTINCT manufacturers.headquarter FROM manufacturers	manufactory_1
-- SELECT DISTINCT manufacturers.headquarter FROM manufacturers	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE manufacturers.headquarter = 'Tokyo' OR manufacturers.headquarter = 'Beijing'	manufactory_1
-- SELECT COUNT( * ) FROM manufacturers WHERE manufacturers.headquarter = 'Tokyo' OR manufacturers.headquarter = 'Beijing'	manufactory_1
-- SELECT manufacturers.founder FROM manufacturers WHERE manufacturers.name LIKE '%S%'	manufactory_1
-- SELECT manufacturers.founder FROM manufacturers WHERE manufacturers.name LIKE '%S%'	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue BETWEEN 100 and 150	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue BETWEEN 100 and 150	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Tokyo' OR manufacturers.headquarter = 'Taiwan'	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Tokyo' OR manufacturers.headquarter = 'Taiwan'	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter , manufacturers.founder FROM manufacturers ORDER BY manufacturers.revenue DESC LIMIT 1	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter , manufacturers.founder FROM manufacturers ORDER BY manufacturers.revenue DESC LIMIT 1	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter , manufacturers.revenue FROM manufacturers ORDER BY manufacturers.revenue DESC	manufactory_1
-- SELECT manufacturers.name , manufacturers.headquarter , manufacturers.revenue FROM manufacturers ORDER BY manufacturers.revenue DESC	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue > (SELECT AVG( manufacturers.revenue ) FROM manufacturers)	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue > (SELECT AVG( manufacturers.revenue ) FROM manufacturers)	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue<(SELECT MIN( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin')	manufactory_1
-- SELECT manufacturers.name FROM manufacturers WHERE manufacturers.revenue<(SELECT MIN( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin')	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.revenue > (SELECT MIN( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin')	manufactory_1
-- SELECT SUM( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.revenue > (SELECT MIN( manufacturers.revenue ) FROM manufacturers WHERE manufacturers.headquarter = 'Austin')	manufactory_1
-- SELECT SUM( manufacturers.revenue ) , manufacturers.founder FROM manufacturers GROUP BY manufacturers.founder	manufactory_1
-- SELECT SUM( manufacturers.revenue ) , manufacturers.founder FROM manufacturers GROUP BY manufacturers.founder	manufactory_1
-- SELECT manufacturers.name , MAX( manufacturers.revenue ) , manufacturers.headquarter FROM manufacturers GROUP BY manufacturers.headquarter	manufactory_1
-- SELECT manufacturers.name , MAX( manufacturers.revenue ) , manufacturers.headquarter FROM manufacturers GROUP BY manufacturers.headquarter	manufactory_1
-- SELECT SUM( manufacturers.revenue ) , manufacturers.name FROM manufacturers GROUP BY manufacturers.name	manufactory_1
-- SELECT SUM( manufacturers.revenue ) , manufacturers.name FROM manufacturers GROUP BY manufacturers.name	manufactory_1
-- SELECT products.name FROM products	manufactory_1
-- SELECT products.name FROM products	manufactory_1
-- SELECT products.name , products.price FROM products	manufactory_1
-- SELECT products.name , products.price FROM products	manufactory_1
-- SELECT products.name FROM products WHERE products.price <= 200	manufactory_1
-- SELECT products.name FROM products WHERE products.price <= 200	manufactory_1
-- SELECT * FROM products WHERE products.price BETWEEN 60 and 120	manufactory_1
-- SELECT * FROM products WHERE products.price BETWEEN 60 and 120	manufactory_1
-- SELECT AVG( products.price ) FROM products	manufactory_1
-- SELECT AVG( products.price ) FROM products	manufactory_1
-- SELECT AVG( products.price ) FROM products WHERE products.manufacturer = 2	manufactory_1
-- SELECT AVG( products.price ) FROM products WHERE products.manufacturer = 2	manufactory_1
-- SELECT COUNT( * ) FROM products WHERE products.price >= 180	manufactory_1
-- SELECT COUNT( * ) FROM products WHERE products.price >= 180	manufactory_1
-- SELECT products.name , products.price FROM products WHERE products.price >= 180 ORDER BY products.price , products.name ASC	manufactory_1
-- SELECT products.name , products.price FROM products WHERE products.price >= 180 ORDER BY products.price , products.name ASC	manufactory_1
-- SELECT AVG( products.price ) , products.manufacturer FROM products GROUP BY products.manufacturer	manufactory_1
-- SELECT AVG( products.price ) , products.manufacturer FROM products GROUP BY products.manufacturer	manufactory_1
-- SELECT products.name , products.price FROM products ORDER BY products.price ASC LIMIT 1	manufactory_1
-- SELECT products.name , products.price FROM products ORDER BY products.price ASC LIMIT 1	manufactory_1
-- SELECT products.code , products.name , MIN( products.price ) FROM products GROUP BY products.name	manufactory_1
-- SELECT products.code , products.name , MIN( products.price ) FROM products GROUP BY products.name	manufactory_1
-- SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
-- SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported > '1978-06-26'	tracking_software_problems
-- SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
-- SELECT problems.problem_id FROM problems WHERE problems.date_problem_reported<'1978-06-26'	tracking_software_problems
-- SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
-- SELECT DISTINCT product.product_name FROM product ORDER BY product.product_name ASC	tracking_software_problems
-- SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
-- SELECT DISTINCT product.product_name FROM product ORDER BY product.product_id ASC	tracking_software_problems
-- SELECT COUNT( * ) FROM branch WHERE branch.membership_amount > (SELECT AVG( branch.membership_amount ) FROM branch)	shop_membership
-- SELECT COUNT( * ) FROM branch WHERE branch.membership_amount > (SELECT AVG( branch.membership_amount ) FROM branch)	shop_membership
-- SELECT branch.name , branch.address_road , branch.city FROM branch ORDER BY branch.open_year ASC	shop_membership
-- SELECT branch.name , branch.address_road , branch.city FROM branch ORDER BY branch.open_year ASC	shop_membership
-- SELECT branch.name FROM branch ORDER BY branch.membership_amount DESC LIMIT 3	shop_membership
-- SELECT branch.name FROM branch ORDER BY branch.membership_amount DESC LIMIT 3	shop_membership
-- SELECT DISTINCT branch.city FROM branch WHERE branch.membership_amount >= 100	shop_membership
-- SELECT DISTINCT branch.city FROM branch WHERE branch.membership_amount >= 100	shop_membership
-- SELECT branch.open_year FROM branch GROUP BY branch.open_year HAVING COUNT( * ) >= 2	shop_membership
-- SELECT branch.open_year FROM branch GROUP BY branch.open_year HAVING COUNT( * ) >= 2	shop_membership
-- SELECT MIN( branch.membership_amount ) , MAX( branch.membership_amount ) FROM branch WHERE branch.open_year = 2011 OR branch.city = 'London'	shop_membership
-- SELECT MIN( branch.membership_amount ) , MAX( branch.membership_amount ) FROM branch WHERE branch.open_year = 2011 OR branch.city = 'London'	shop_membership
-- SELECT branch.city , COUNT( * ) FROM branch WHERE branch.open_year<2010 GROUP BY branch.city	shop_membership
-- SELECT branch.city , COUNT( * ) FROM branch WHERE branch.open_year<2010 GROUP BY branch.city	shop_membership
-- SELECT COUNT( DISTINCT member.level ) FROM member	shop_membership
-- SELECT COUNT( DISTINCT member.level ) FROM member	shop_membership
-- SELECT member.card_number , member.name , member.hometown FROM member ORDER BY member.level DESC	shop_membership
-- SELECT member.card_number , member.name , member.hometown FROM member ORDER BY member.level DESC	shop_membership
-- SELECT member.level FROM member GROUP BY member.level ORDER BY COUNT( * ) DESC LIMIT 1	shop_membership
-- SELECT member.level FROM member GROUP BY member.level ORDER BY COUNT( * ) DESC LIMIT 1	shop_membership
-- SELECT branch.city FROM branch WHERE branch.open_year = 2001 AND branch.membership_amount > 100	shop_membership
-- SELECT branch.city FROM branch WHERE branch.open_year = 2001 AND branch.membership_amount > 100	shop_membership
-- SELECT branch.city FROM branch EXCEPT SELECT branch.city FROM branch WHERE branch.membership_amount > 100	shop_membership
-- SELECT branch.city FROM branch EXCEPT SELECT branch.city FROM branch WHERE branch.membership_amount > 100	shop_membership
-- SELECT member.card_number FROM member WHERE member.hometown LIKE '%Kentucky%'	shop_membership
-- SELECT member.card_number FROM member WHERE member.hometown LIKE '%Kentucky%'	shop_membership
-- SELECT COUNT( * ) FROM student	voter_2
-- SELECT COUNT( * ) FROM student	voter_2
-- SELECT MAX( student.age ) FROM student	voter_2
-- SELECT MAX( student.age ) FROM student	voter_2
-- SELECT student.lname FROM student WHERE student.major = 50	voter_2
-- SELECT student.lname FROM student WHERE student.major = 50	voter_2
-- SELECT student.fname FROM student WHERE student.age > 22	voter_2
-- SELECT student.fname FROM student WHERE student.age > 22	voter_2
-- SELECT student.major FROM student WHERE student.sex = 'm'	voter_2
-- SELECT student.major FROM student WHERE student.sex = 'm'	voter_2
-- SELECT AVG( student.age ) FROM student WHERE student.sex = 'F'	voter_2
-- SELECT AVG( student.age ) FROM student WHERE student.sex = 'f'	voter_2
-- SELECT MAX( student.age ) , MIN( student.age ) FROM student WHERE student.major = 600	voter_2
-- SELECT MAX( student.age ) , MIN( student.age ) FROM student WHERE student.major = 600	voter_2
-- SELECT student.advisor FROM student WHERE student.city_code = 'BAL'	voter_2
-- SELECT student.advisor FROM student WHERE student.city_code = 'BAL'	voter_2
-- SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	voter_2
-- SELECT student.advisor , COUNT( * ) FROM student GROUP BY student.advisor	voter_2
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT student.major FROM student GROUP BY student.major HAVING COUNT( * )<3	voter_2
-- SELECT student.major FROM student GROUP BY student.major HAVING COUNT( * )<3	voter_2
-- SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.major FROM student WHERE student.sex = 'f' GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.major FROM student WHERE student.sex = 'f' GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	voter_2
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) > 2	voter_2
-- SELECT COUNT( * ) FROM products	products_gen_characteristics
-- SELECT COUNT( * ) FROM products	products_gen_characteristics
-- SELECT COUNT( * ) FROM characteristics	products_gen_characteristics
-- SELECT COUNT( * ) FROM characteristics	products_gen_characteristics
-- SELECT products.product_name , products.typical_buying_price FROM products	products_gen_characteristics
-- SELECT products.product_name , products.typical_buying_price FROM products	products_gen_characteristics
-- SELECT DISTINCT characteristics.characteristic_name FROM characteristics	products_gen_characteristics
-- SELECT DISTINCT characteristics.characteristic_name FROM characteristics	products_gen_characteristics
-- SELECT products.product_name FROM products WHERE products.product_category_code = 'Spices'	products_gen_characteristics
-- SELECT products.product_name FROM products WHERE products.product_category_code = 'Spices'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE products.product_category_code = 'Seeds'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE products.product_category_code = 'Seeds'	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE products.product_category_code = 'Spices' AND products.typical_buying_price > 1000	products_gen_characteristics
-- SELECT COUNT( * ) FROM products WHERE products.product_category_code = 'Spices' AND products.typical_buying_price > 1000	products_gen_characteristics
-- SELECT products.product_category_code , products.typical_buying_price FROM products WHERE products.product_name = 'cumin'	products_gen_characteristics
-- SELECT products.product_category_code , products.typical_buying_price FROM products WHERE products.product_name = 'cumin'	products_gen_characteristics
-- SELECT products.product_category_code FROM products WHERE products.product_name = 'flax'	products_gen_characteristics
-- SELECT products.product_category_code FROM products WHERE products.product_name = 'flax'	products_gen_characteristics
-- SELECT COUNT( * ) FROM event	swimming
-- SELECT event.name FROM event ORDER BY event.year DESC	swimming
-- SELECT event.name FROM event ORDER BY event.year DESC LIMIT 1	swimming
-- SELECT COUNT( * ) FROM stadium	swimming
-- SELECT stadium.name FROM stadium ORDER BY stadium.capacity DESC LIMIT 1	swimming
-- SELECT stadium.name FROM stadium WHERE stadium.capacity<(SELECT AVG( stadium.capacity ) FROM stadium)	swimming
-- SELECT stadium.country FROM stadium GROUP BY stadium.country ORDER BY COUNT( * ) DESC LIMIT 1	swimming
-- SELECT stadium.country FROM stadium GROUP BY stadium.country HAVING COUNT( * ) <= 3	swimming
-- SELECT stadium.country FROM stadium WHERE stadium.capacity > 60000 INTERSECT SELECT stadium.country FROM stadium WHERE stadium.capacity<50000	swimming
-- SELECT COUNT( DISTINCT stadium.city ) FROM stadium WHERE stadium.opening_year<2006	swimming
-- SELECT stadium.country , COUNT( * ) FROM stadium GROUP BY stadium.country	swimming
-- SELECT stadium.country FROM stadium EXCEPT SELECT stadium.country FROM stadium WHERE stadium.opening_year > 2006	swimming
-- SELECT COUNT( * ) FROM stadium WHERE stadium.country != 'Russia'	swimming
-- SELECT swimmer.name FROM swimmer ORDER BY swimmer.meter_100 ASC	swimming
-- SELECT COUNT( DISTINCT swimmer.nationality ) FROM swimmer	swimming
-- SELECT swimmer.nationality , COUNT( * ) FROM swimmer GROUP BY swimmer.nationality HAVING COUNT( * ) > 1	swimming
-- SELECT swimmer.meter_200 , swimmer.meter_300 FROM swimmer WHERE swimmer.nationality = 'Australia'	swimming
-- SELECT * FROM swimmer	swimming
-- SELECT AVG( stadium.capacity ) FROM stadium WHERE stadium.opening_year = 2005	swimming
-- SELECT COUNT( * ) FROM railway	railway
-- SELECT railway.builder FROM railway ORDER BY railway.builder ASC	railway
-- SELECT railway.wheels , railway.location FROM railway	railway
-- SELECT MAX( manager.level ) FROM manager WHERE manager.country != 'Australia'	railway
-- SELECT AVG( manager.age ) FROM manager	railway
-- SELECT manager.name FROM manager ORDER BY manager.level ASC	railway
-- SELECT train.name , train.arrival FROM train	railway
-- SELECT manager.name FROM manager ORDER BY manager.age DESC LIMIT 1	railway
-- SELECT railway.builder , COUNT( * ) FROM railway GROUP BY railway.builder	railway
-- SELECT railway.builder FROM railway GROUP BY railway.builder ORDER BY COUNT( * ) DESC LIMIT 1	railway
-- SELECT railway.location , COUNT( * ) FROM railway GROUP BY railway.location	railway
-- SELECT railway.location FROM railway GROUP BY railway.location HAVING COUNT( * ) > 1	railway
-- SELECT manager.country FROM manager WHERE manager.age > 50 INTERSECT SELECT manager.country FROM manager WHERE manager.age<46	railway
-- SELECT DISTINCT manager.country FROM manager	railway
-- SELECT manager.working_year_starts FROM manager ORDER BY manager.level DESC	railway
-- SELECT manager.country FROM manager WHERE manager.age > 50 OR manager.age<46	railway
-- SELECT COUNT( * ) FROM addresses WHERE addresses.country = 'USA'	customers_and_products_contacts
-- SELECT DISTINCT addresses.city FROM addresses	customers_and_products_contacts
-- SELECT addresses.state_province_county , COUNT( * ) FROM addresses GROUP BY addresses.state_province_county	customers_and_products_contacts
-- SELECT products.product_type_code FROM products GROUP BY products.product_type_code HAVING COUNT( * ) >= 2	customers_and_products_contacts
-- SELECT customers.customer_name , customers.customer_phone , customers.payment_method_code FROM customers ORDER BY customers.customer_number DESC	customers_and_products_contacts
-- SELECT MIN( products.product_price ) , MAX( products.product_price ) , AVG( products.product_price ) FROM products	customers_and_products_contacts
-- SELECT COUNT( * ) FROM products WHERE products.product_price > (SELECT AVG( products.product_price ) FROM products)	customers_and_products_contacts
-- SELECT products.product_type_code , products.product_name FROM products WHERE products.product_price > 1000 OR products.product_price<500	customers_and_products_contacts
-- SELECT dorm.dorm_name FROM dorm WHERE dorm.gender = 'f'	dorm_1
-- SELECT dorm.dorm_name FROM dorm WHERE dorm.gender = 'f'	dorm_1
-- SELECT dorm.dorm_name FROM dorm WHERE dorm.student_capacity > 300	dorm_1
-- SELECT dorm.dorm_name FROM dorm WHERE dorm.student_capacity > 300	dorm_1
-- SELECT COUNT( * ) FROM student WHERE student.sex = 'f' AND student.age<25	dorm_1
-- SELECT COUNT( * ) FROM student WHERE student.sex = 'f' AND student.age<25	dorm_1
-- SELECT student.fname FROM student WHERE student.age > 20	dorm_1
-- SELECT student.fname FROM student WHERE student.age > 20	dorm_1
-- SELECT student.fname FROM student WHERE student.city_code = 'PHL' AND student.age BETWEEN 20 and 25	dorm_1
-- SELECT student.fname FROM student WHERE student.city_code = 'PHL' AND student.age BETWEEN 20 and 25	dorm_1
-- SELECT COUNT( * ) FROM dorm	dorm_1
-- SELECT COUNT( * ) FROM dorm	dorm_1
-- SELECT SUM( dorm.student_capacity ) FROM dorm	dorm_1
-- SELECT SUM( dorm.student_capacity ) FROM dorm	dorm_1
-- SELECT COUNT( * ) FROM student	dorm_1
-- SELECT COUNT( * ) FROM student	dorm_1
-- SELECT AVG( student.age ) , student.city_code FROM student GROUP BY student.city_code	dorm_1
-- SELECT AVG( student.age ) , student.city_code FROM student GROUP BY student.city_code	dorm_1
-- SELECT AVG( dorm.student_capacity ) , SUM( dorm.student_capacity ) FROM dorm WHERE dorm.gender = 'X'	dorm_1
-- SELECT AVG( dorm.student_capacity ) , SUM( dorm.student_capacity ) FROM dorm WHERE dorm.gender = 'X'	dorm_1
-- SELECT COUNT( DISTINCT dorm.gender ) FROM dorm	dorm_1
-- SELECT COUNT( DISTINCT dorm.gender ) FROM dorm	dorm_1
-- SELECT dorm.student_capacity , dorm.gender FROM dorm WHERE dorm.dorm_name LIKE '%Donor%'	dorm_1
-- SELECT dorm.student_capacity , dorm.gender FROM dorm WHERE dorm.dorm_name LIKE '%Donor%'	dorm_1
-- SELECT dorm.dorm_name , dorm.gender FROM dorm WHERE dorm.student_capacity > 300 OR dorm.student_capacity<100	dorm_1
-- SELECT dorm.dorm_name , dorm.gender FROM dorm WHERE dorm.student_capacity > 300 OR dorm.student_capacity<100	dorm_1
-- SELECT COUNT( DISTINCT student.major ) , COUNT( DISTINCT student.city_code ) FROM student	dorm_1
-- SELECT COUNT( DISTINCT student.major ) , COUNT( DISTINCT student.city_code ) FROM student	dorm_1
-- SELECT student.lname FROM student WHERE student.sex = 'F' AND student.city_code = 'BAL' UNION SELECT student.lname FROM student WHERE student.sex = 'm' AND student.age<20	dorm_1
-- SELECT student.lname FROM student WHERE student.sex = 'f' AND student.city_code = 'BAL' UNION SELECT student.lname FROM student WHERE student.sex = 'm' AND student.age<20	dorm_1
-- SELECT dorm.dorm_name FROM dorm ORDER BY dorm.student_capacity DESC LIMIT 1	dorm_1
-- SELECT dorm.dorm_name FROM dorm ORDER BY dorm.student_capacity DESC LIMIT 1	dorm_1
-- SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	dorm_1
-- SELECT student.city_code FROM student GROUP BY student.city_code ORDER BY COUNT( * ) DESC LIMIT 1	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.age<(SELECT AVG( student.age ) FROM student)	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.age<(SELECT AVG( student.age ) FROM student)	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.city_code != 'HKG' ORDER BY student.age ASC	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.city_code != 'HKG' ORDER BY student.age ASC	dorm_1
-- SELECT COUNT( * ) , SUM( dorm.student_capacity ) , dorm.gender FROM dorm GROUP BY dorm.gender	dorm_1
-- SELECT COUNT( * ) , SUM( dorm.student_capacity ) , dorm.gender FROM dorm GROUP BY dorm.gender	dorm_1
-- SELECT AVG( student.age ) , MAX( student.age ) , student.sex FROM student GROUP BY student.sex	dorm_1
-- SELECT AVG( student.age ) , MAX( student.age ) , student.sex FROM student GROUP BY student.sex	dorm_1
-- SELECT COUNT( * ) , student.major FROM student GROUP BY student.major	dorm_1
-- SELECT COUNT( * ) , student.major FROM student GROUP BY student.major	dorm_1
-- SELECT COUNT( * ) , AVG( student.age ) , student.city_code FROM student GROUP BY student.city_code	dorm_1
-- SELECT COUNT( * ) , AVG( student.age ) , student.city_code FROM student GROUP BY student.city_code	dorm_1
-- SELECT COUNT( * ) , AVG( student.age ) , student.city_code FROM student WHERE student.sex = 'm' GROUP BY student.city_code	dorm_1
-- SELECT COUNT( * ) , AVG( student.age ) , student.city_code FROM student WHERE student.sex = 'm' GROUP BY student.city_code	dorm_1
-- SELECT COUNT( * ) , student.city_code FROM student GROUP BY student.city_code HAVING COUNT( * ) > 1	dorm_1
-- SELECT COUNT( * ) , student.city_code FROM student GROUP BY student.city_code HAVING COUNT( * ) > 1	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.major != (SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1)	dorm_1
-- SELECT student.fname , student.lname FROM student WHERE student.major != (SELECT student.major FROM student GROUP BY student.major ORDER BY COUNT( * ) DESC LIMIT 1)	dorm_1
-- SELECT COUNT( * ) , student.sex FROM student WHERE student.age > (SELECT AVG( student.age ) FROM student) GROUP BY student.sex	dorm_1
-- SELECT COUNT( * ) , student.sex FROM student WHERE student.age > (SELECT AVG( student.age ) FROM student) GROUP BY student.sex	dorm_1
-- SELECT COUNT( * ) FROM customers	customer_complaints
-- SELECT COUNT( * ) FROM customers	customer_complaints
-- SELECT customers.email_address , customers.phone_number FROM customers ORDER BY customers.email_address , customers.phone_number ASC	customer_complaints
-- SELECT customers.email_address , customers.phone_number FROM customers ORDER BY customers.email_address , customers.phone_number ASC	customer_complaints
-- SELECT customers.town_city FROM customers WHERE customers.customer_type_code = 'Good Credit Rating' GROUP BY customers.town_city ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT customers.town_city FROM customers WHERE customers.customer_type_code = 'Good Credit Rating' GROUP BY customers.town_city ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT products.product_description FROM products WHERE products.product_name = 'Chocolate'	customer_complaints
-- SELECT products.product_description FROM products WHERE products.product_name = 'Chocolate'	customer_complaints
-- SELECT products.product_name , products.product_category_code FROM products ORDER BY products.product_price DESC LIMIT 1	customer_complaints
-- SELECT products.product_name , products.product_category_code FROM products ORDER BY products.product_price DESC LIMIT 1	customer_complaints
-- SELECT AVG( products.product_price ) , products.product_category_code FROM products GROUP BY products.product_category_code	customer_complaints
-- SELECT AVG( products.product_price ) , products.product_category_code FROM products GROUP BY products.product_category_code	customer_complaints
-- SELECT complaints.complaint_status_code FROM complaints GROUP BY complaints.complaint_status_code HAVING COUNT( * ) > 3	customer_complaints
-- SELECT complaints.complaint_status_code FROM complaints GROUP BY complaints.complaint_status_code HAVING COUNT( * ) > 3	customer_complaints
-- SELECT staff.last_name FROM staff WHERE staff.email_address LIKE '%wrau%'	customer_complaints
-- SELECT staff.last_name FROM staff WHERE staff.email_address LIKE '%wrau%'	customer_complaints
-- SELECT COUNT( * ) FROM customers GROUP BY customers.customer_type_code ORDER BY COUNT( * ) DESC LIMIT 1	customer_complaints
-- SELECT COUNT( * ) FROM customers GROUP BY customers.customer_type_code ORDER BY COUNT( * ) DESC LIMIT 1	customer_complaints
-- SELECT COUNT( DISTINCT complaints.complaint_type_code ) FROM complaints	customer_complaints
-- SELECT COUNT( DISTINCT complaints.complaint_type_code ) FROM complaints	customer_complaints
-- SELECT customers.address_line_1 , customers.address_line_2 FROM customers WHERE customers.email_address = 'vbogisich@example.org'	customer_complaints
-- SELECT customers.address_line_1 , customers.address_line_2 FROM customers WHERE customers.email_address = 'vbogisich@example.org'	customer_complaints
-- SELECT complaints.complaint_status_code , COUNT( * ) FROM complaints WHERE complaints.complaint_type_code = 'Product Failure' GROUP BY complaints.complaint_status_code	customer_complaints
-- SELECT complaints.complaint_status_code , COUNT( * ) FROM complaints WHERE complaints.complaint_type_code = 'Product Failure' GROUP BY complaints.complaint_status_code	customer_complaints
-- SELECT customers.state FROM customers GROUP BY customers.state ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT customers.state FROM customers GROUP BY customers.state ORDER BY COUNT( * ) ASC LIMIT 1	customer_complaints
-- SELECT COUNT( * ) FROM submission	workshop_paper
-- SELECT COUNT( * ) FROM submission	workshop_paper
-- SELECT submission.author FROM submission ORDER BY submission.scores ASC	workshop_paper
-- SELECT submission.author FROM submission ORDER BY submission.scores ASC	workshop_paper
-- SELECT submission.author , submission.college FROM submission	workshop_paper
-- SELECT submission.author , submission.college FROM submission	workshop_paper
-- SELECT submission.author FROM submission WHERE submission.college = 'Florida' OR submission.college = 'Temple'	workshop_paper
-- SELECT submission.author FROM submission WHERE submission.college = 'Florida' OR submission.college = 'Temple'	workshop_paper
-- SELECT AVG( submission.scores ) FROM submission	workshop_paper
-- SELECT AVG( submission.scores ) FROM submission	workshop_paper
-- SELECT submission.author FROM submission ORDER BY submission.scores DESC LIMIT 1	workshop_paper
-- SELECT submission.author FROM submission ORDER BY submission.scores DESC LIMIT 1	workshop_paper
-- SELECT submission.college , COUNT( * ) FROM submission GROUP BY submission.college	workshop_paper
-- SELECT submission.college , COUNT( * ) FROM submission GROUP BY submission.college	workshop_paper
-- SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
-- SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT( * ) DESC LIMIT 1	workshop_paper
-- SELECT submission.college FROM submission WHERE submission.scores > 90 INTERSECT SELECT submission.college FROM submission WHERE submission.scores<80	workshop_paper
-- SELECT submission.college FROM submission WHERE submission.scores > 90 INTERSECT SELECT submission.college FROM submission WHERE submission.scores<80	workshop_paper
-- SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
-- SELECT workshop.date , workshop.venue FROM workshop ORDER BY workshop.venue ASC	workshop_paper
-- SELECT COUNT( * ) FROM investors	tracking_share_transactions
-- SELECT investors.investor_details FROM investors	tracking_share_transactions
-- SELECT DISTINCT lots.lot_details FROM lots	tracking_share_transactions
-- SELECT MAX( transactions.amount_of_transaction ) FROM transactions	tracking_share_transactions
-- SELECT transactions.date_of_transaction , transactions.share_count FROM transactions	tracking_share_transactions
-- SELECT SUM( transactions.share_count ) FROM transactions	tracking_share_transactions
-- SELECT transactions.transaction_id FROM transactions WHERE transactions.transaction_type_code = 'PUR'	tracking_share_transactions
-- SELECT transactions.date_of_transaction FROM transactions WHERE transactions.transaction_type_code = 'SALE'	tracking_share_transactions
-- SELECT AVG( transactions.amount_of_transaction ) FROM transactions WHERE transactions.transaction_type_code = 'SALE'	tracking_share_transactions
-- SELECT MIN( transactions.amount_of_transaction ) FROM transactions WHERE transactions.transaction_type_code = 'PUR' AND transactions.share_count > 50	tracking_share_transactions
-- SELECT MAX( transactions.share_count ) FROM transactions WHERE transactions.amount_of_transaction<10000	tracking_share_transactions
-- SELECT transactions.date_of_transaction FROM transactions WHERE transactions.share_count > 100 OR transactions.amount_of_transaction > 1000	tracking_share_transactions
-- SELECT COUNT( DISTINCT transactions.transaction_type_code ) FROM transactions	tracking_share_transactions
-- SELECT lots.lot_details , lots.investor_id FROM lots	tracking_share_transactions
-- SELECT transactions.transaction_type_code , AVG( transactions.amount_of_transaction ) FROM transactions GROUP BY transactions.transaction_type_code	tracking_share_transactions
-- SELECT transactions.transaction_type_code , MAX( transactions.share_count ) , MIN( transactions.share_count ) FROM transactions GROUP BY transactions.transaction_type_code	tracking_share_transactions
-- SELECT transactions.investor_id , AVG( transactions.share_count ) FROM transactions GROUP BY transactions.investor_id	tracking_share_transactions
-- SELECT transactions.investor_id , AVG( transactions.share_count ) FROM transactions GROUP BY transactions.investor_id ORDER BY AVG( transactions.share_count ) ASC	tracking_share_transactions
-- SELECT transactions.investor_id , AVG( transactions.amount_of_transaction ) FROM transactions GROUP BY transactions.investor_id	tracking_share_transactions
-- SELECT transactions.investor_id , COUNT( * ) FROM transactions WHERE transactions.transaction_type_code = 'SALE' GROUP BY transactions.investor_id	tracking_share_transactions
-- SELECT transactions.investor_id , COUNT( * ) FROM transactions GROUP BY transactions.investor_id	tracking_share_transactions
-- SELECT transactions.transaction_type_code FROM transactions GROUP BY transactions.transaction_type_code ORDER BY COUNT( * ) ASC LIMIT 1	tracking_share_transactions
-- SELECT transactions.transaction_type_code FROM transactions GROUP BY transactions.transaction_type_code ORDER BY COUNT( * ) DESC LIMIT 1	tracking_share_transactions
-- SELECT transactions.date_of_transaction FROM transactions WHERE transactions.share_count >= 100 OR transactions.amount_of_transaction >= 100	tracking_share_transactions
-- SELECT COUNT( * ) FROM hotels	cre_Theme_park
-- SELECT COUNT( * ) FROM hotels	cre_Theme_park
-- SELECT hotels.price_range FROM hotels	cre_Theme_park
-- SELECT hotels.price_range FROM hotels	cre_Theme_park
-- SELECT DISTINCT locations.location_name FROM locations	cre_Theme_park
-- SELECT DISTINCT locations.location_name FROM locations	cre_Theme_park
-- SELECT staff.name , staff.other_details FROM staff	cre_Theme_park
-- SELECT staff.name , staff.other_details FROM staff	cre_Theme_park
-- SELECT visitors.tourist_details FROM visitors	cre_Theme_park
-- SELECT visitors.tourist_details FROM visitors	cre_Theme_park
-- SELECT hotels.price_range FROM hotels WHERE hotels.star_rating_code = '5'	cre_Theme_park
-- SELECT hotels.price_range FROM hotels WHERE hotels.star_rating_code = '5'	cre_Theme_park
-- SELECT AVG( hotels.price_range ) FROM hotels WHERE hotels.star_rating_code = '5' AND hotels.pets_allowed_yn = 1	cre_Theme_park
-- SELECT AVG( hotels.price_range ) FROM hotels WHERE hotels.star_rating_code = '5' AND hotels.pets_allowed_yn = 1	cre_Theme_park
-- SELECT locations.address FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
-- SELECT locations.address FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
-- SELECT locations.other_details FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
-- SELECT locations.other_details FROM locations WHERE locations.location_name = 'UK Gallery'	cre_Theme_park
-- SELECT locations.location_name FROM locations WHERE locations.location_name LIKE '%film%'	cre_Theme_park
-- SELECT locations.location_name FROM locations WHERE locations.location_name LIKE '%film%'	cre_Theme_park
-- SELECT COUNT( DISTINCT photos.name ) FROM photos	cre_Theme_park
-- SELECT COUNT( DISTINCT photos.name ) FROM photos	cre_Theme_park
-- SELECT DISTINCT visits.visit_date FROM visits	cre_Theme_park
-- SELECT DISTINCT visits.visit_date FROM visits	cre_Theme_park
-- SELECT hotels.star_rating_code , AVG( hotels.price_range ) FROM hotels GROUP BY hotels.star_rating_code	cre_Theme_park
-- SELECT hotels.star_rating_code , AVG( hotels.price_range ) FROM hotels GROUP BY hotels.star_rating_code	cre_Theme_park
-- SELECT hotels.pets_allowed_yn , AVG( hotels.price_range ) FROM hotels GROUP BY hotels.pets_allowed_yn	cre_Theme_park
-- SELECT hotels.pets_allowed_yn , AVG( hotels.price_range ) FROM hotels GROUP BY hotels.pets_allowed_yn	cre_Theme_park
-- SELECT hotels.hotel_id , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC	cre_Theme_park
-- SELECT hotels.hotel_id , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC	cre_Theme_park
-- SELECT hotels.other_hotel_details FROM hotels ORDER BY hotels.price_range DESC LIMIT 3	cre_Theme_park
-- SELECT hotels.other_hotel_details FROM hotels ORDER BY hotels.price_range DESC LIMIT 3	cre_Theme_park
-- SELECT hotels.other_hotel_details , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC LIMIT 3	cre_Theme_park
-- SELECT hotels.other_hotel_details , hotels.star_rating_code FROM hotels ORDER BY hotels.price_range ASC LIMIT 3	cre_Theme_park
-- SELECT student.stuid FROM student WHERE student.city_code = 'CHI'	game_1
-- SELECT student.stuid FROM student WHERE student.city_code = 'CHI'	game_1
-- SELECT student.stuid FROM student WHERE student.advisor = 1121	game_1
-- SELECT student.stuid FROM student WHERE student.advisor = 1121	game_1
-- SELECT student.fname FROM student WHERE student.major = 600	game_1
-- SELECT student.fname FROM student WHERE student.major = 600	game_1
-- SELECT student.major , AVG( student.age ) , MIN( student.age ) , MAX( student.age ) FROM student GROUP BY student.major	game_1
-- SELECT AVG( student.age ) , MIN( student.age ) , MAX( student.age ) FROM student GROUP BY student.major	game_1
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) >= 2	game_1
-- SELECT student.advisor FROM student GROUP BY student.advisor HAVING COUNT( * ) >= 2	game_1
-- SELECT customers.customer_name FROM customers	customers_and_addresses
-- SELECT customers.customer_name FROM customers	customers_and_addresses
-- SELECT COUNT( * ) FROM customers	customers_and_addresses
-- SELECT COUNT( * ) FROM customers	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method = 'Cash'	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method = 'Cash'	customers_and_addresses
-- SELECT customers.date_became_customer FROM customers WHERE customers.customer_id BETWEEN 10 and 20	customers_and_addresses
-- SELECT customers.date_became_customer FROM customers WHERE customers.customer_id BETWEEN 10 and 20	customers_and_addresses
-- SELECT customers.payment_method FROM customers GROUP BY customers.payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customers_and_addresses
-- SELECT customers.payment_method FROM customers GROUP BY customers.payment_method ORDER BY COUNT( * ) DESC LIMIT 1	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method = (SELECT customers.payment_method FROM customers GROUP BY customers.payment_method ORDER BY COUNT( * ) DESC LIMIT 1)	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method = (SELECT customers.payment_method FROM customers GROUP BY customers.payment_method ORDER BY COUNT( * ) DESC LIMIT 1)	customers_and_addresses
-- SELECT DISTINCT customers.payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT customers.payment_method FROM customers	customers_and_addresses
-- SELECT DISTINCT products.product_details FROM products	customers_and_addresses
-- SELECT DISTINCT products.product_details FROM products	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.customer_name LIKE '%Alex%'	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.customer_name LIKE '%Alex%'	customers_and_addresses
-- SELECT products.product_details FROM products WHERE products.product_details LIKE '%Latte%' OR products.product_details LIKE '%Americano%'	customers_and_addresses
-- SELECT products.product_details FROM products WHERE products.product_details LIKE '%Latte%' OR products.product_details LIKE '%Americano%'	customers_and_addresses
-- SELECT DISTINCT addresses.city FROM addresses	customers_and_addresses
-- SELECT DISTINCT addresses.city FROM addresses	customers_and_addresses
-- SELECT addresses.city FROM addresses WHERE addresses.zip_postcode = 255	customers_and_addresses
-- SELECT addresses.city FROM addresses WHERE addresses.zip_postcode = 255	customers_and_addresses
-- SELECT addresses.state_province_county , addresses.country FROM addresses WHERE addresses.zip_postcode LIKE '%4%'	customers_and_addresses
-- SELECT addresses.state_province_county , addresses.country FROM addresses WHERE addresses.zip_postcode LIKE '%4%'	customers_and_addresses
-- SELECT addresses.country FROM addresses GROUP BY addresses.country HAVING COUNT( addresses.address_id ) > 4	customers_and_addresses
-- SELECT addresses.country FROM addresses GROUP BY addresses.country HAVING COUNT( addresses.address_id ) > 4	customers_and_addresses
-- SELECT addresses.address_content FROM addresses WHERE addresses.city = 'East Julianaside,' AND addresses.state_province_county = 'East Julianaside,' UNION SELECT addresses.address_content FROM addresses WHERE addresses.city = 'Gleasonmouth,' AND addresses.state_province_county = 'Arizona'	customers_and_addresses
-- SELECT addresses.address_content FROM addresses WHERE addresses.city = 'East Julianaside,' AND addresses.state_province_county = 'East Julianaside,' UNION SELECT addresses.address_content FROM addresses WHERE addresses.city = 'Gleasonmouth,' AND addresses.state_province_county = 'Arizona'	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method != 'Cash'	customers_and_addresses
-- SELECT customers.customer_name FROM customers WHERE customers.payment_method != 'Cash'	customers_and_addresses
-- SELECT COUNT( * ) FROM artist	music_4
-- SELECT COUNT( * ) FROM artist	music_4
-- SELECT artist.age FROM artist	music_4
-- SELECT artist.age FROM artist	music_4
-- SELECT AVG( artist.age ) FROM artist	music_4
-- SELECT AVG( artist.age ) FROM artist	music_4
-- SELECT artist.famous_title FROM artist WHERE artist.artist = 'Triumfall'	music_4
-- SELECT artist.famous_title FROM artist WHERE artist.artist = 'Triumfall'	music_4
-- SELECT DISTINCT artist.famous_release_date FROM artist	music_4
-- SELECT DISTINCT artist.famous_release_date FROM artist	music_4
-- SELECT MAX( volume.weeks_on_top ) , MIN( volume.weeks_on_top ) FROM volume	music_4
-- SELECT MAX( volume.weeks_on_top ) , MIN( volume.weeks_on_top ) FROM volume	music_4
-- SELECT volume.song FROM volume WHERE volume.weeks_on_top > 1	music_4
-- SELECT volume.song FROM volume WHERE volume.weeks_on_top > 1	music_4
-- SELECT volume.song FROM volume ORDER BY volume.song ASC	music_4
-- SELECT volume.song FROM volume ORDER BY volume.song ASC	music_4
-- SELECT COUNT( DISTINCT volume.artist_id ) FROM volume	music_4
-- SELECT COUNT( DISTINCT volume.artist_id ) FROM volume	music_4
-- SELECT artist.famous_title , artist.age FROM artist ORDER BY artist.age DESC	music_4
-- SELECT artist.famous_title , artist.age FROM artist ORDER BY artist.age DESC	music_4
-- SELECT artist.famous_release_date FROM artist ORDER BY artist.age DESC LIMIT 1	music_4
-- SELECT artist.famous_release_date FROM artist ORDER BY artist.age DESC LIMIT 1	music_4
-- SELECT volume.song FROM volume ORDER BY volume.weeks_on_top DESC LIMIT 1	music_4
-- SELECT volume.song FROM volume ORDER BY volume.weeks_on_top DESC LIMIT 1	music_4
-- SELECT volume.issue_date FROM volume ORDER BY volume.weeks_on_top ASC LIMIT 1	music_4
-- SELECT volume.issue_date FROM volume ORDER BY volume.weeks_on_top ASC LIMIT 1	music_4
-- SELECT COUNT( DISTINCT volume.artist_id ) FROM volume	music_4
-- SELECT COUNT( DISTINCT volume.artist_id ) FROM volume	music_4
-- SELECT country.name FROM country WHERE country.languages != 'German'	roller_coaster
-- SELECT COUNT( DISTINCT captain.rank ) FROM captain	ship_1
-- SELECT COUNT( DISTINCT captain.rank ) FROM captain	ship_1
-- SELECT COUNT( * ) , captain.rank FROM captain GROUP BY captain.rank	ship_1
-- SELECT COUNT( * ) , captain.rank FROM captain GROUP BY captain.rank	ship_1
-- SELECT COUNT( * ) , captain.rank FROM captain WHERE captain.age<50 GROUP BY captain.rank	ship_1
-- SELECT COUNT( * ) , captain.rank FROM captain WHERE captain.age<50 GROUP BY captain.rank	ship_1
-- SELECT captain.name FROM captain ORDER BY captain.age DESC	ship_1
-- SELECT captain.name FROM captain ORDER BY captain.age DESC	ship_1
-- SELECT captain.name , captain.class , captain.rank FROM captain	ship_1
-- SELECT captain.name , captain.class , captain.rank FROM captain	ship_1
-- SELECT captain.rank FROM captain GROUP BY captain.rank ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT captain.rank FROM captain GROUP BY captain.rank ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT( * ) > 2	ship_1
-- SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT( * ) > 2	ship_1
-- SELECT captain.name FROM captain WHERE captain.rank = 'Midshipman' OR captain.rank = 'Lieutenant'	ship_1
-- SELECT captain.name FROM captain WHERE captain.rank = 'Midshipman' OR captain.rank = 'Lieutenant'	ship_1
-- SELECT AVG( captain.age ) , MIN( captain.age ) , captain.class FROM captain GROUP BY captain.class	ship_1
-- SELECT AVG( captain.age ) , MIN( captain.age ) , captain.class FROM captain GROUP BY captain.class	ship_1
-- SELECT captain.rank FROM captain WHERE captain.class = 'Cutter' INTERSECT SELECT captain.rank FROM captain WHERE captain.class = 'Armed schooner'	ship_1
-- SELECT captain.rank FROM captain WHERE captain.class = 'Cutter' INTERSECT SELECT captain.rank FROM captain WHERE captain.class = 'Armed schooner'	ship_1
-- SELECT captain.rank FROM captain EXCEPT SELECT captain.rank FROM captain WHERE captain.class = 'Third-rate ship of the line'	ship_1
-- SELECT captain.rank FROM captain EXCEPT SELECT captain.rank FROM captain WHERE captain.class = 'Third-rate ship of the line'	ship_1
-- SELECT captain.name FROM captain ORDER BY captain.age ASC LIMIT 1	ship_1
-- SELECT captain.name FROM captain ORDER BY captain.age ASC LIMIT 1	ship_1
-- SELECT COUNT( * ) FROM ship	ship_1
-- SELECT COUNT( * ) FROM ship	ship_1
-- SELECT ship.name , ship.type , ship.flag FROM ship ORDER BY ship.built_year DESC LIMIT 1	ship_1
-- SELECT ship.name , ship.type , ship.flag FROM ship ORDER BY ship.built_year DESC LIMIT 1	ship_1
-- SELECT COUNT( * ) , ship.flag FROM ship GROUP BY ship.flag	ship_1
-- SELECT COUNT( * ) , ship.flag FROM ship GROUP BY ship.flag	ship_1
-- SELECT ship.flag FROM ship GROUP BY ship.flag ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT ship.flag FROM ship GROUP BY ship.flag ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT ship.name FROM ship ORDER BY ship.built_year , ship.class ASC	ship_1
-- SELECT ship.name FROM ship ORDER BY ship.built_year , ship.class ASC	ship_1
-- SELECT ship.type FROM ship WHERE ship.flag = 'Panama' INTERSECT SELECT ship.type FROM ship WHERE ship.flag = 'Malta'	ship_1
-- SELECT ship.type FROM ship WHERE ship.flag = 'Panama' INTERSECT SELECT ship.type FROM ship WHERE ship.flag = 'Malta'	ship_1
-- SELECT ship.built_year FROM ship GROUP BY ship.built_year ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT ship.built_year FROM ship GROUP BY ship.built_year ORDER BY COUNT( * ) DESC LIMIT 1	ship_1
-- SELECT match.match_id FROM match WHERE match.competition = '1994 FIFA World Cup qualification'	city_record
-- SELECT match.match_id FROM match WHERE match.competition = '1994 FIFA World Cup qualification'	city_record
-- SELECT city.city FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
-- SELECT city.city FROM city ORDER BY city.regional_population DESC LIMIT 3	city_record
-- SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
-- SELECT city.city , city.gdp FROM city ORDER BY city.gdp ASC LIMIT 1	city_record
-- SELECT city.city FROM city WHERE city.regional_population > 10000000	city_record
-- SELECT city.city FROM city WHERE city.regional_population > 10000000	city_record
-- SELECT city.city FROM city WHERE city.regional_population > 8000000 OR city.regional_population<5000000	city_record
-- SELECT city.city FROM city WHERE city.regional_population > 8000000 OR city.regional_population<5000000	city_record
-- SELECT COUNT( * ) , match.competition FROM match GROUP BY match.competition	city_record
-- SELECT COUNT( * ) , match.competition FROM match GROUP BY match.competition	city_record
-- SELECT match.venue FROM match ORDER BY match.date DESC	city_record
-- SELECT match.venue FROM match ORDER BY match.date DESC	city_record
-- SELECT city.gdp FROM city ORDER BY city.regional_population DESC LIMIT 1	city_record
-- SELECT city.gdp FROM city ORDER BY city.regional_population DESC LIMIT 1	city_record
-- SELECT individuals.individual_first_name , individuals.individual_middle_name , individuals.individual_last_name FROM individuals ORDER BY individuals.individual_last_name ASC	e_government
-- SELECT individuals.individual_first_name , individuals.individual_middle_name , individuals.individual_last_name FROM individuals ORDER BY individuals.individual_last_name ASC	e_government
-- SELECT DISTINCT forms.form_type_code FROM forms	e_government
-- SELECT DISTINCT forms.form_type_code FROM forms	e_government
-- SELECT parties.payment_method_code , parties.party_phone FROM parties WHERE parties.party_email = 'enrico09@example.com'	e_government
-- SELECT parties.payment_method_code , parties.party_phone FROM parties WHERE parties.party_email = 'enrico09@example.com'	e_government
-- SELECT organizations.organization_name FROM organizations ORDER BY organizations.date_formed ASC	e_government
-- SELECT organizations.organization_name FROM organizations ORDER BY organizations.date_formed ASC	e_government
-- SELECT organizations.organization_name FROM organizations ORDER BY organizations.date_formed DESC LIMIT 1	e_government
-- SELECT organizations.organization_name FROM organizations ORDER BY organizations.date_formed DESC LIMIT 1	e_government
-- SELECT COUNT( * ) FROM services	e_government
-- SELECT COUNT( * ) FROM services	e_government
-- SELECT addresses.town_city FROM addresses UNION SELECT addresses.state_province_county FROM addresses	e_government
-- SELECT addresses.town_city FROM addresses UNION SELECT addresses.state_province_county FROM addresses	e_government
-- SELECT COUNT( * ) FROM addresses WHERE addresses.state_province_county = 'Colorado'	e_government
-- SELECT COUNT( * ) FROM addresses WHERE addresses.state_province_county = 'Colorado'	e_government
-- SELECT parties.payment_method_code FROM parties GROUP BY parties.payment_method_code HAVING COUNT( * ) > 3	e_government
-- SELECT parties.payment_method_code FROM parties GROUP BY parties.payment_method_code HAVING COUNT( * ) > 3	e_government
-- SELECT organizations.organization_name FROM organizations WHERE organizations.organization_name LIKE '%Party%'	e_government
-- SELECT organizations.organization_name FROM organizations WHERE organizations.organization_name LIKE '%Party%'	e_government
-- SELECT COUNT( DISTINCT parties.payment_method_code ) FROM parties	e_government
-- SELECT COUNT( DISTINCT parties.payment_method_code ) FROM parties	e_government
-- SELECT addresses.state_province_county FROM addresses WHERE addresses.line_1_number_building LIKE '%6862 Kaitlyn Knolls%'	e_government
-- SELECT addresses.state_province_county FROM addresses WHERE addresses.line_1_number_building LIKE '%6862 Kaitlyn Knolls%'	e_government
-- SELECT COUNT( * ) FROM driver	school_bus
-- SELECT driver.name , driver.home_city , driver.age FROM driver	school_bus
-- SELECT driver.party , COUNT( * ) FROM driver GROUP BY driver.party	school_bus
-- SELECT driver.name FROM driver ORDER BY driver.age DESC	school_bus
-- SELECT DISTINCT driver.home_city FROM driver	school_bus
-- SELECT driver.home_city FROM driver GROUP BY driver.home_city ORDER BY COUNT( * ) DESC LIMIT 1	school_bus
-- SELECT driver.party FROM driver WHERE driver.home_city = 'Hartford' AND driver.age > 40	school_bus
-- SELECT driver.home_city FROM driver WHERE driver.age > 40 GROUP BY driver.home_city HAVING COUNT( * ) >= 2	school_bus
-- SELECT driver.home_city FROM driver EXCEPT SELECT driver.home_city FROM driver WHERE driver.age > 40	school_bus
-- SELECT school.type FROM school GROUP BY school.type HAVING COUNT( * ) = 2	school_bus
-- SELECT COUNT( * ) FROM driver WHERE driver.home_city = 'Hartford' OR driver.age<40	school_bus
-- SELECT driver.name FROM driver WHERE driver.home_city = 'Hartford' AND driver.age<40	school_bus
-- SELECT COUNT( * ) FROM flight WHERE flight.velocity > 200	flight_company
-- SELECT flight.vehicle_flight_number , flight.date , flight.pilot FROM flight ORDER BY flight.altitude ASC	flight_company
-- SELECT airport.id , airport.country , airport.city , airport.name FROM airport ORDER BY airport.name ASC	flight_company
-- SELECT AVG( flight.velocity ) FROM flight WHERE flight.pilot = 'Thompson'	flight_company
-- SELECT airport.name FROM airport WHERE airport.country != 'Iceland'	flight_company
-- SELECT airport.name FROM airport WHERE airport.name LIKE '%international%'	flight_company
-- SELECT COUNT( * ) , airport.country FROM airport GROUP BY airport.country	flight_company
-- SELECT airport.country FROM airport GROUP BY airport.country HAVING COUNT( * ) > 2	flight_company
-- SELECT flight.pilot FROM flight GROUP BY flight.pilot ORDER BY COUNT( * ) DESC LIMIT 1	flight_company
-- SELECT COUNT( * ) FROM accounts	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM accounts	cre_Docs_and_Epenses
-- SELECT accounts.account_id , accounts.account_details FROM accounts	cre_Docs_and_Epenses
-- SELECT accounts.account_id , accounts.account_details FROM accounts	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM statements	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM statements	cre_Docs_and_Epenses
-- SELECT statements.statement_id , statements.statement_details FROM statements	cre_Docs_and_Epenses
-- SELECT statements.statement_id , statements.statement_details FROM statements	cre_Docs_and_Epenses
-- SELECT accounts.statement_id , COUNT( * ) FROM accounts GROUP BY accounts.statement_id	cre_Docs_and_Epenses
-- SELECT accounts.statement_id , COUNT( * ) FROM accounts GROUP BY accounts.statement_id	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM documents	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM documents	cre_Docs_and_Epenses
-- SELECT documents.document_type_code , documents.document_name , documents.document_description FROM documents WHERE documents.document_name = 'Noel CV' OR documents.document_name = 'King Book'	cre_Docs_and_Epenses
-- SELECT documents.document_type_code , documents.document_name , documents.document_description FROM documents WHERE documents.document_name = 'Noel CV' OR documents.document_name = 'King Book'	cre_Docs_and_Epenses
-- SELECT documents.document_id , documents.document_name FROM documents	cre_Docs_and_Epenses
-- SELECT documents.document_id , documents.document_name FROM documents	cre_Docs_and_Epenses
-- SELECT documents.document_name , documents.document_id FROM documents WHERE documents.document_type_code = 'BK'	cre_Docs_and_Epenses
-- SELECT documents.document_name , documents.document_id FROM documents WHERE documents.document_type_code = 'BK'	cre_Docs_and_Epenses
-- SELECT COUNT( * ) , documents.project_id FROM documents WHERE documents.document_type_code = 'BK' GROUP BY documents.project_id	cre_Docs_and_Epenses
-- SELECT COUNT( * ) , documents.project_id FROM documents WHERE documents.document_type_code = 'BK' GROUP BY documents.project_id	cre_Docs_and_Epenses
-- SELECT documents.project_id , COUNT( * ) FROM documents GROUP BY documents.project_id	cre_Docs_and_Epenses
-- SELECT documents.project_id , COUNT( * ) FROM documents GROUP BY documents.project_id	cre_Docs_and_Epenses
-- SELECT documents.project_id FROM documents GROUP BY documents.project_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Docs_and_Epenses
-- SELECT documents.project_id FROM documents GROUP BY documents.project_id ORDER BY COUNT( * ) ASC LIMIT 1	cre_Docs_and_Epenses
-- SELECT documents.project_id FROM documents GROUP BY documents.project_id HAVING COUNT( * ) >= 2	cre_Docs_and_Epenses
-- SELECT documents.project_id FROM documents GROUP BY documents.project_id HAVING COUNT( * ) >= 2	cre_Docs_and_Epenses
-- SELECT documents.document_type_code , COUNT( * ) FROM documents GROUP BY documents.document_type_code	cre_Docs_and_Epenses
-- SELECT documents.document_type_code , COUNT( * ) FROM documents GROUP BY documents.document_type_code	cre_Docs_and_Epenses
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Docs_and_Epenses
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code ORDER BY COUNT( * ) DESC LIMIT 1	cre_Docs_and_Epenses
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * )<3	cre_Docs_and_Epenses
-- SELECT documents.document_type_code FROM documents GROUP BY documents.document_type_code HAVING COUNT( * )<3	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM projects	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM projects	cre_Docs_and_Epenses
-- SELECT projects.project_id , projects.project_details FROM projects	cre_Docs_and_Epenses
-- SELECT projects.project_id , projects.project_details FROM projects	cre_Docs_and_Epenses
-- SELECT MAX( accounts.account_details ) FROM accounts UNION SELECT accounts.account_details FROM accounts WHERE accounts.account_details LIKE '%5%'	cre_Docs_and_Epenses
-- SELECT MAX( accounts.account_details ) FROM accounts UNION SELECT accounts.account_details FROM accounts WHERE accounts.account_details LIKE '%5%'	cre_Docs_and_Epenses
-- SELECT COUNT( * ) FROM scientists	scientist_1
-- SELECT COUNT( * ) FROM scientists	scientist_1
-- SELECT SUM( projects.hours ) FROM projects	scientist_1
-- SELECT SUM( projects.hours ) FROM projects	scientist_1
-- SELECT COUNT( DISTINCT projects.name ) FROM projects	scientist_1
-- SELECT COUNT( DISTINCT projects.name ) FROM projects	scientist_1
-- SELECT AVG( projects.hours ) FROM projects	scientist_1
-- SELECT AVG( projects.hours ) FROM projects	scientist_1
-- SELECT projects.name FROM projects ORDER BY projects.hours DESC LIMIT 1	scientist_1
-- SELECT projects.name FROM projects ORDER BY projects.hours DESC LIMIT 1	scientist_1
-- SELECT projects.name FROM projects WHERE projects.hours > (SELECT AVG( projects.hours ) FROM projects)	scientist_1
-- SELECT projects.name FROM projects WHERE projects.hours > (SELECT AVG( projects.hours ) FROM projects)	scientist_1
-- SELECT projects.name FROM projects WHERE projects.hours BETWEEN 100 and 300	scientist_1
-- SELECT projects.name FROM projects WHERE projects.hours BETWEEN 100 and 300	scientist_1
-- SELECT scientists.name FROM scientists ORDER BY scientists.name ASC	scientist_1
-- SELECT scientists.name FROM scientists ORDER BY scientists.name ASC	scientist_1
-- SELECT wine.name FROM wine ORDER BY wine.score ASC LIMIT 1	wine_1
-- SELECT wine.name FROM wine ORDER BY wine.score ASC LIMIT 1	wine_1
-- SELECT wine.winery FROM wine ORDER BY wine.score ASC LIMIT 1	wine_1
-- SELECT wine.winery FROM wine ORDER BY wine.score ASC LIMIT 1	wine_1
-- SELECT wine.name FROM wine WHERE wine.year = '2008'	wine_1
-- SELECT wine.name FROM wine WHERE wine.year = '2008'	wine_1
-- SELECT wine.grape , wine.appelation FROM wine	wine_1
-- SELECT wine.grape , wine.appelation FROM wine	wine_1
-- SELECT wine.name , wine.score FROM wine	wine_1
-- SELECT wine.name , wine.score FROM wine	wine_1
-- SELECT appellations.area , appellations.county FROM appellations	wine_1
-- SELECT appellations.area , appellations.county FROM appellations	wine_1
-- SELECT wine.price FROM wine WHERE wine.year<2010	wine_1
-- SELECT wine.price FROM wine WHERE wine.year<2010	wine_1
-- SELECT wine.name FROM wine WHERE wine.score > 90	wine_1
-- SELECT wine.name FROM wine WHERE wine.score > 90	wine_1
-- SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
-- SELECT COUNT( * ) FROM wine WHERE wine.winery = 'Robert Biale'	wine_1
-- SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa'	wine_1
-- SELECT COUNT( * ) FROM appellations WHERE appellations.county = 'Napa'	wine_1
-- SELECT COUNT( * ) , wine.grape FROM wine GROUP BY wine.grape	wine_1
-- SELECT COUNT( * ) , wine.grape FROM wine GROUP BY wine.grape	wine_1
-- SELECT AVG( wine.price ) , wine.year FROM wine GROUP BY wine.year	wine_1
-- SELECT AVG( wine.price ) , wine.year FROM wine GROUP BY wine.year	wine_1
-- SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MIN( wine.price ) FROM wine WHERE wine.winery = 'John Anthony')	wine_1
-- SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MIN( wine.price ) FROM wine WHERE wine.winery = 'John Anthony')	wine_1
-- SELECT DISTINCT wine.name FROM wine ORDER BY wine.name ASC	wine_1
-- SELECT DISTINCT wine.name FROM wine ORDER BY wine.name ASC	wine_1
-- SELECT DISTINCT wine.name FROM wine ORDER BY wine.price ASC	wine_1
-- SELECT DISTINCT wine.name FROM wine ORDER BY wine.price ASC	wine_1
-- SELECT DISTINCT wine.name FROM wine WHERE wine.year<2000 OR wine.year > 2010	wine_1
-- SELECT DISTINCT wine.name FROM wine WHERE wine.year<2000 OR wine.year > 2010	wine_1
-- SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 and 100	wine_1
-- SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 and 100	wine_1
-- SELECT AVG( wine.price ) , AVG( wine.cases ) FROM wine WHERE wine.year = 2009 AND wine.grape = 'Zinfandel'	wine_1
-- SELECT AVG( wine.price ) , AVG( wine.cases ) FROM wine WHERE wine.year = 2009 AND wine.grape = 'Zinfandel'	wine_1
-- SELECT MAX( wine.price ) , MAX( wine.score ) FROM wine WHERE wine.appelation = 'St. Helena'	wine_1
-- SELECT MAX( wine.price ) , MAX( wine.score ) FROM wine WHERE wine.appelation = 'St. Helena'	wine_1
-- SELECT MAX( wine.price ) , MAX( wine.score ) , wine.year FROM wine GROUP BY wine.year	wine_1
-- SELECT MAX( wine.price ) , MAX( wine.score ) , wine.year FROM wine GROUP BY wine.year	wine_1
-- SELECT AVG( wine.price ) , AVG( wine.score ) , wine.appelation FROM wine GROUP BY wine.appelation	wine_1
-- SELECT AVG( wine.price ) , AVG( wine.score ) , wine.appelation FROM wine GROUP BY wine.appelation	wine_1
-- SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT( * ) >= 4	wine_1
-- SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT( * ) >= 4	wine_1
-- SELECT wine.name FROM wine WHERE wine.year<(SELECT MIN( wine.year ) FROM wine WHERE wine.winery = 'Brander')	wine_1
-- SELECT wine.name FROM wine WHERE wine.year<(SELECT MIN( wine.year ) FROM wine WHERE wine.winery = 'Brander')	wine_1
-- SELECT wine.name FROM wine WHERE wine.price > (SELECT MAX( wine.price ) FROM wine WHERE wine.year = 2006)	wine_1
-- SELECT wine.name FROM wine WHERE wine.price > (SELECT MAX( wine.price ) FROM wine WHERE wine.year = 2006)	wine_1
-- SELECT wine.grape , wine.winery , wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year ASC	wine_1
-- SELECT wine.grape , wine.winery , wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year ASC	wine_1
-- SELECT wine.grape , wine.appelation , wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name ASC	wine_1
-- SELECT wine.grape , wine.appelation , wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name ASC	wine_1
-- SELECT COUNT( * ) FROM station	train_station
-- SELECT station.name , station.location , station.number_of_platforms FROM station	train_station
-- SELECT DISTINCT station.location FROM station	train_station
-- SELECT station.name , station.total_passengers FROM station WHERE station.location != 'London'	train_station
-- SELECT station.name , station.main_services FROM station ORDER BY station.total_passengers DESC LIMIT 3	train_station
-- SELECT AVG( station.total_passengers ) , MAX( station.total_passengers ) FROM station WHERE station.location = 'London' OR station.location = 'Glasgow'	train_station
-- SELECT station.location , SUM( station.number_of_platforms ) , SUM( station.total_passengers ) FROM station GROUP BY station.location	train_station
-- SELECT DISTINCT station.location FROM station WHERE station.number_of_platforms >= 15 AND station.total_passengers > 25	train_station
-- SELECT station.location FROM station EXCEPT SELECT station.location FROM station WHERE station.number_of_platforms >= 15	train_station
-- SELECT station.location FROM station GROUP BY station.location ORDER BY COUNT( * ) DESC LIMIT 1	train_station
-- SELECT train.name , train.time , train.service FROM train	train_station
-- SELECT COUNT( * ) FROM train	train_station
-- SELECT train.name , train.service FROM train ORDER BY train.time ASC	train_station
-- SELECT station.location FROM station GROUP BY station.location HAVING COUNT( * ) = 1	train_station
-- SELECT station.name , station.location FROM station ORDER BY station.annual_entry_exit , station.annual_interchanges ASC	train_station
-- SELECT vehicles.vehicle_id FROM vehicles	driving_school
-- SELECT vehicles.vehicle_id FROM vehicles	driving_school
-- SELECT COUNT( * ) FROM vehicles	driving_school
-- SELECT COUNT( * ) FROM vehicles	driving_school
-- SELECT vehicles.vehicle_details FROM vehicles WHERE vehicles.vehicle_id = 1	driving_school
-- SELECT vehicles.vehicle_details FROM vehicles WHERE vehicles.vehicle_id = 1	driving_school
-- SELECT staff.first_name , staff.middle_name , staff.last_name FROM staff	driving_school
-- SELECT staff.first_name , staff.middle_name , staff.last_name FROM staff	driving_school
-- SELECT staff.date_of_birth FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.date_of_birth FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.date_joined_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.date_joined_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.date_left_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.date_left_staff FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT COUNT( * ) FROM staff WHERE staff.first_name = 'Ludie'	driving_school
-- SELECT COUNT( * ) FROM staff WHERE staff.first_name = 'Ludie'	driving_school
-- SELECT staff.nickname FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT staff.nickname FROM staff WHERE staff.first_name = 'Janessa' AND staff.last_name = 'Sawayn'	driving_school
-- SELECT COUNT( * ) FROM staff	driving_school
-- SELECT COUNT( * ) FROM staff	driving_school
-- SELECT COUNT( * ) FROM addresses WHERE addresses.state_province_county = 'Georgia'	driving_school
-- SELECT COUNT( * ) FROM addresses WHERE addresses.state_province_county = 'Georgia'	driving_school
-- SELECT customers.first_name , customers.last_name FROM customers	driving_school
-- SELECT customers.first_name , customers.last_name FROM customers	driving_school
-- SELECT customers.email_address , customers.date_of_birth FROM customers WHERE customers.first_name = 'Carole'	driving_school
-- SELECT customers.email_address , customers.date_of_birth FROM customers WHERE customers.first_name = 'Carole'	driving_school
-- SELECT customers.phone_number , customers.email_address FROM customers WHERE customers.amount_outstanding > 2000	driving_school
-- SELECT customers.phone_number , customers.email_address FROM customers WHERE customers.amount_outstanding > 2000	driving_school
-- SELECT customers.customer_status_code , customers.cell_mobile_phone_number , customers.email_address FROM customers WHERE customers.first_name = 'Marina' OR customers.last_name = 'Kohler'	driving_school
-- SELECT customers.customer_status_code , customers.cell_mobile_phone_number , customers.email_address FROM customers WHERE customers.first_name = 'Marina' OR customers.last_name = 'Kohler'	driving_school
-- SELECT customers.date_of_birth FROM customers WHERE customers.customer_status_code = 'Good Customer'	driving_school
-- SELECT customers.date_of_birth FROM customers WHERE customers.customer_status_code = 'Good Customer'	driving_school
-- SELECT customers.date_became_customer FROM customers WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
-- SELECT customers.date_became_customer FROM customers WHERE customers.first_name = 'Carole' AND customers.last_name = 'Bernhard'	driving_school
-- SELECT COUNT( * ) FROM customers	driving_school
-- SELECT COUNT( * ) FROM customers	driving_school
-- SELECT customers.customer_status_code , COUNT( * ) FROM customers GROUP BY customers.customer_status_code	driving_school
-- SELECT customers.customer_status_code , COUNT( * ) FROM customers GROUP BY customers.customer_status_code	driving_school
-- SELECT customers.customer_status_code FROM customers GROUP BY customers.customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
-- SELECT customers.customer_status_code FROM customers GROUP BY customers.customer_status_code ORDER BY COUNT( * ) ASC LIMIT 1	driving_school
-- SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
-- SELECT MAX( customers.amount_outstanding ) , MIN( customers.amount_outstanding ) , AVG( customers.amount_outstanding ) FROM customers	driving_school
-- SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
-- SELECT customers.first_name , customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 and 3000	driving_school
-- SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
-- SELECT COUNT( * ) FROM lessons WHERE lessons.lesson_status_code = 'cancelled'	driving_school
-- SELECT COUNT( * ) FROM faculty	activity_1
-- SELECT COUNT( * ) FROM faculty	activity_1
-- SELECT DISTINCT faculty.rank FROM faculty	activity_1
-- SELECT DISTINCT faculty.rank FROM faculty	activity_1
-- SELECT DISTINCT faculty.building FROM faculty	activity_1
-- SELECT DISTINCT faculty.building FROM faculty	activity_1
-- SELECT faculty.rank , faculty.fname , faculty.lname FROM faculty	activity_1
-- SELECT faculty.rank , faculty.fname , faculty.lname FROM faculty	activity_1
-- SELECT faculty.fname , faculty.lname , faculty.phone FROM faculty WHERE faculty.sex = 'f'	activity_1
-- SELECT faculty.fname , faculty.lname , faculty.phone FROM faculty WHERE faculty.sex = 'f'	activity_1
-- SELECT faculty.facid FROM faculty WHERE faculty.sex = 'm'	activity_1
-- SELECT faculty.facid FROM faculty WHERE faculty.sex = 'm'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE faculty.sex = 'f' AND faculty.rank = 'Professors'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE faculty.sex = 'f' AND faculty.rank = 'Professors'	activity_1
-- SELECT faculty.phone , faculty.room , faculty.building FROM faculty WHERE faculty.fname = 'Jerry' AND faculty.lname = 'Prince'	activity_1
-- SELECT faculty.phone , faculty.room , faculty.building FROM faculty WHERE faculty.fname = 'Jerry' AND faculty.lname = 'Prince'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE faculty.rank = 'Professors' AND faculty.building = 'NEB'	activity_1
-- SELECT COUNT( * ) FROM faculty WHERE faculty.rank = 'Professors' AND faculty.building = 'NEB'	activity_1
-- SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.rank = 'instructors'	activity_1
-- SELECT faculty.fname , faculty.lname FROM faculty WHERE faculty.rank = 'instructors'	activity_1
-- SELECT faculty.building , COUNT( * ) FROM faculty GROUP BY faculty.building	activity_1
-- SELECT faculty.building , COUNT( * ) FROM faculty GROUP BY faculty.building	activity_1
-- SELECT faculty.building FROM faculty GROUP BY faculty.building ORDER BY COUNT( * ) DESC LIMIT 1	activity_1
-- SELECT faculty.building FROM faculty GROUP BY faculty.building ORDER BY COUNT( * ) DESC LIMIT 1	activity_1
-- SELECT faculty.building FROM faculty WHERE faculty.rank = 'professors' GROUP BY faculty.building HAVING COUNT( * ) >= 10	activity_1
-- SELECT faculty.building FROM faculty WHERE faculty.rank = 'professors' GROUP BY faculty.building HAVING COUNT( DISTINCT * ) = 2	activity_1
-- SELECT faculty.rank , COUNT( * ) FROM faculty GROUP BY faculty.rank	activity_1
-- SELECT faculty.rank , COUNT( * ) FROM faculty GROUP BY faculty.rank	activity_1
-- SELECT faculty.rank , faculty.sex , COUNT( * ) FROM faculty GROUP BY faculty.rank , faculty.sex	activity_1
-- SELECT faculty.rank , faculty.sex , COUNT( * ) FROM faculty GROUP BY faculty.rank , faculty.sex	activity_1
-- SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	activity_1
-- SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT( * ) ASC LIMIT 1	activity_1
-- SELECT faculty.sex , COUNT( * ) FROM faculty WHERE faculty.rank = 'm' GROUP BY faculty.sex	activity_1
-- SELECT faculty.sex , COUNT( * ) FROM faculty WHERE faculty.rank = 'assistant professors' ORDER BY faculty.sex ASC	activity_1
-- SELECT activity.activity_name FROM activity	activity_1
-- SELECT activity.activity_name FROM activity	activity_1
-- SELECT COUNT( * ) FROM activity	activity_1
-- SELECT COUNT( * ) FROM activity	activity_1
-- SELECT participates_in.stuid FROM activity JOIN activity ON activity.actid = activity.actid WHERE activity.activity_name = 'Canoeing' INTERSECT SELECT participates_in.stuid FROM activity JOIN activity ON activity.actid = activity.actid WHERE activity.activity_name = 'Kayaking'	activity_1
-- SELECT participates_in.stuid FROM activity JOIN activity ON activity.actid = activity.actid WHERE activity.activity_name = 'Canoeing' INTERSECT SELECT participates_in.stuid FROM activity JOIN activity ON activity.actid = activity.actid WHERE activity.activity_name = 'Kayaking'	activity_1
-- SELECT airports.name FROM airports WHERE airports.city = 'Goroka'	flight_4
-- SELECT airports.name FROM airports WHERE airports.city = 'Goroka'	flight_4
-- SELECT airports.name , airports.city , airports.country , airports.elevation FROM airports WHERE airports.city = 'New York'	flight_4
-- SELECT airports.name , airports.city , airports.country , airports.elevation FROM airports WHERE airports.city = 'New York'	flight_4
-- SELECT COUNT( * ) FROM airlines	flight_4
-- SELECT COUNT( * ) FROM airlines	flight_4
-- SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'Russia'	flight_4
-- SELECT COUNT( * ) FROM airlines WHERE airlines.country = 'Russia'	flight_4
-- SELECT MAX( airports.elevation ) FROM airports WHERE airports.country = 'Iceland'	flight_4
-- SELECT MAX( airports.elevation ) FROM airports WHERE airports.country = 'Iceland'	flight_4
-- SELECT airports.name FROM airports WHERE airports.country = 'Cuba' OR airports.country = 'Argentina'	flight_4
-- SELECT airports.name FROM airports WHERE airports.country = 'Cuba' OR airports.country = 'Argentina'	flight_4
-- SELECT airlines.country FROM airlines WHERE airlines.name LIKE '%Orbit%'	flight_4
-- SELECT airlines.country FROM airlines WHERE airlines.name LIKE '%Orbit%'	flight_4
-- SELECT airports.name FROM airports WHERE airports.elevation >= -50 AND airports.elevation <= 50	flight_4
-- SELECT airports.name FROM airports WHERE airports.elevation >= -50 AND airports.elevation <= 50	flight_4
-- SELECT airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
-- SELECT airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
-- SELECT COUNT( * ) FROM airports WHERE airports.name LIKE '%International%'	flight_4
-- SELECT COUNT( * ) FROM airports WHERE airports.name LIKE '%Inter%'	flight_4
-- SELECT COUNT( DISTINCT airports.city ) FROM airports WHERE airports.country = 'Greenland'	flight_4
-- SELECT COUNT( DISTINCT airports.city ) FROM airports WHERE airports.country = 'Greenland'	flight_4
-- SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
-- SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1	flight_4
-- SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
-- SELECT airports.name , airports.city , airports.country FROM airports ORDER BY airports.elevation DESC LIMIT 1	flight_4
-- SELECT airlines.country FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT airlines.country FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT airlines.country FROM airlines WHERE airlines.active = 'y' GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT airlines.country FROM airlines WHERE airlines.active = 'y' GROUP BY airlines.country ORDER BY COUNT( * ) DESC LIMIT 1	flight_4
-- SELECT airlines.country , COUNT( * ) FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT airlines.country , COUNT( * ) FROM airlines GROUP BY airlines.country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , airports.country FROM airports GROUP BY airports.country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , airports.country FROM airports GROUP BY airports.country ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , airports.city FROM airports WHERE airports.country = 'United States' GROUP BY airports.city ORDER BY COUNT( * ) DESC	flight_4
-- SELECT COUNT( * ) , airports.city FROM airports WHERE airports.country = 'yes' GROUP BY airports.city ORDER BY COUNT( * ) DESC	flight_4
-- SELECT airports.city FROM airports WHERE airports.country = 'United States' GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
-- SELECT airports.city FROM airports WHERE airports.country = 'United States' GROUP BY airports.city HAVING COUNT( * ) > 3	flight_4
-- SELECT COUNT( * ) FROM airports WHERE airports.city NOT IN (SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 3)	flight_4
-- SELECT COUNT( * ) FROM airports WHERE airports.city NOT IN (SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) > 3)	flight_4
-- SELECT airports.city , COUNT( * ) FROM airports GROUP BY airports.city HAVING COUNT( * ) > 1	flight_4
-- SELECT airports.city , COUNT( * ) FROM airports GROUP BY airports.city HAVING COUNT( * ) > 1	flight_4
-- SELECT airports.city FROM airports GROUP BY airports.city ORDER BY COUNT( * ) ASC HAVING COUNT( * ) > 2	flight_4
-- SELECT airports.city FROM airports GROUP BY airports.city ORDER BY COUNT( * ) ASC HAVING COUNT( * ) > 2	flight_4
-- SELECT AVG( airports.elevation ) , airports.country FROM airports GROUP BY airports.country	flight_4
-- SELECT AVG( airports.elevation ) , airports.country FROM airports GROUP BY airports.country	flight_4
-- SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
-- SELECT airports.city FROM airports GROUP BY airports.city HAVING COUNT( * ) = 2	flight_4
-- SELECT orders.order_id FROM orders ORDER BY orders.date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT orders.order_id FROM orders ORDER BY orders.date_order_placed DESC LIMIT 1	tracking_orders
-- SELECT orders.order_id , orders.customer_id FROM orders ORDER BY orders.date_order_placed ASC LIMIT 1	tracking_orders
-- SELECT orders.order_id , orders.customer_id FROM orders ORDER BY orders.date_order_placed ASC LIMIT 1	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_tracking_number = '3452'	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_tracking_number = '3452'	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_date > '2000-01-01'	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_date > '2000-01-01'	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_date = (SELECT MAX( shipments.shipment_date ) FROM shipments)	tracking_orders
-- SELECT shipments.order_id FROM shipments WHERE shipments.shipment_date = (SELECT MAX( shipments.shipment_date ) FROM shipments)	tracking_orders
-- SELECT DISTINCT products.product_name FROM products ORDER BY products.product_name ASC	tracking_orders
-- SELECT DISTINCT products.product_name FROM products ORDER BY products.product_name ASC	tracking_orders
-- SELECT DISTINCT orders.order_id FROM orders ORDER BY orders.date_order_placed ASC	tracking_orders
-- SELECT DISTINCT orders.order_id FROM orders ORDER BY orders.date_order_placed ASC	tracking_orders
-- SELECT invoices.invoice_number FROM invoices WHERE invoices.invoice_date<'1989-09-03' OR invoices.invoice_date > '2007-12-25'	tracking_orders
-- SELECT invoices.invoice_number FROM invoices WHERE invoices.invoice_date<'1989-09-03' OR invoices.invoice_date > '2007-12-25'	tracking_orders
-- SELECT DISTINCT invoices.invoice_details FROM invoices WHERE invoices.invoice_date<'1989-09-03' OR invoices.invoice_date > '2007-12-25'	tracking_orders
-- SELECT DISTINCT invoices.invoice_details FROM invoices WHERE invoices.invoice_date<'1989-09-03' OR invoices.invoice_date > '2007-12-25'	tracking_orders
-- SELECT COUNT( * ) FROM architect WHERE architect.gender = 'female'	architecture
-- SELECT architect.name , architect.nationality , architect.id FROM architect WHERE architect.gender = 'male' ORDER BY architect.name ASC	architecture
-- SELECT AVG( bridge.length_feet ) FROM bridge	architecture
-- SELECT mill.name , mill.built_year FROM mill WHERE mill.type = 'Grondzeiler'	architecture
-- SELECT mill.name FROM mill WHERE mill.location != 'Donceel'	architecture
-- SELECT bridge.location FROM bridge WHERE bridge.name = 'Kolob Arch' OR bridge.name = 'Rainbow Bridge'	architecture
-- SELECT mill.name FROM mill WHERE mill.name LIKE '%Moulin%'	architecture
-- SELECT mill.type , COUNT( * ) FROM mill GROUP BY mill.type ORDER BY COUNT( * ) DESC LIMIT 1	architecture
-- SELECT movie.title , movie.year , movie.director FROM movie ORDER BY movie.budget_million ASC	culture_company
-- SELECT movie.title , movie.year , movie.director FROM movie ORDER BY movie.budget_million ASC	culture_company
-- SELECT COUNT( DISTINCT movie.director ) FROM movie	culture_company
-- SELECT COUNT( DISTINCT movie.director ) FROM movie	culture_company
-- SELECT movie.title , movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC LIMIT 1	culture_company
-- SELECT movie.title , movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC LIMIT 1	culture_company
-- SELECT movie.director FROM movie WHERE movie.year = 2000 INTERSECT SELECT movie.director FROM movie WHERE movie.year = 1999	culture_company
-- SELECT movie.director FROM movie WHERE movie.year = 2000 INTERSECT SELECT movie.director FROM movie WHERE movie.year = 1999	culture_company
-- SELECT movie.director FROM movie WHERE movie.year = 1999 OR movie.year = 2000	culture_company
-- SELECT movie.director FROM movie WHERE movie.year = 1999 OR movie.year = 2000	culture_company
-- SELECT AVG( movie.budget_million ) , MAX( movie.budget_million ) , MIN( movie.budget_million ) FROM movie WHERE movie.year<2000	culture_company
-- SELECT AVG( movie.budget_million ) , MAX( movie.budget_million ) , MIN( movie.budget_million ) FROM movie WHERE movie.year<2000	culture_company
