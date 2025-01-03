SELECT count(*) FROM farm	farm
SELECT count(*) FROM farm	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT Hosts FROM farm_competition WHERE Theme != 'Aliens'	farm
SELECT Hosts FROM farm_competition WHERE Theme != 'Aliens'	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC	farm
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
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID	farm
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition)	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition)	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Census_Ranking FROM city WHERE Status != "Village"	farm
SELECT Census_Ranking FROM city WHERE Status != "Village"	farm
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
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%"	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%"	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto")	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto")	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10)	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10)	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city != "San Francisco"	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city != "San Francisco"	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose"	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose"	bike_1
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
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id	bike_1
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id	bike_1
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
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12	bike_1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto"	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto"	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id	bike_1
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
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID	musical
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera"	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera"	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT distinct(catalog_entry_name) FROM catalog_contents	product_catalog
SELECT distinct(catalog_entry_name) FROM catalog_contents	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green"	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green"	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5	product_catalog
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%"	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%"	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8"	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8"	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT count(*) FROM catalog_contents	product_catalog
SELECT count(*) FROM catalog_contents	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8	product_catalog
SELECT count(DISTINCT allergy) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergy) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food"	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food"	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat"	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat"	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal"	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal"	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT count(*) FROM Student	allergy_1
SELECT count(*) FROM Student	allergy_1
SELECT Fname ,  Lname FROM Student	allergy_1
SELECT Fname ,  Lname FROM Student	allergy_1
SELECT count(DISTINCT advisor) FROM Student	allergy_1
SELECT count(DISTINCT advisor) FROM Student	allergy_1
SELECT DISTINCT Major FROM Student	allergy_1
SELECT DISTINCT Major FROM Student	allergy_1
SELECT DISTINCT city_code FROM Student	allergy_1
SELECT DISTINCT city_code FROM Student	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F'	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F'	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M'	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M'	allergy_1
SELECT count(*) FROM Student WHERE age  =  18	allergy_1
SELECT count(*) FROM Student WHERE age  =  18	allergy_1
SELECT StuID FROM Student WHERE age  >  20	allergy_1
SELECT StuID FROM Student WHERE age  >  20	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim"	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim"	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI"	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI"	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student)	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student)	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student)	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student)	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat"	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat"	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy	allergy_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs"	allergy_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs"	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal")	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal")	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat"	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat"	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal")	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal")	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy")	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy")	allergy_1
SELECT count(*) FROM editor	journal_committee
SELECT Name FROM editor ORDER BY Age ASC	journal_committee
SELECT Name ,  Age FROM editor	journal_committee
SELECT Name FROM editor WHERE Age  >  25	journal_committee
SELECT Name FROM editor WHERE Age  =  24 OR Age  =  25	journal_committee
SELECT Name FROM editor ORDER BY Age ASC LIMIT 1	journal_committee
SELECT Age ,  COUNT(*) FROM editor GROUP BY Age	journal_committee
SELECT Age FROM editor GROUP BY Age ORDER BY COUNT(*) DESC LIMIT 1	journal_committee
SELECT DISTINCT Theme FROM journal	journal_committee
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID	journal_committee
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID	journal_committee
SELECT T2.Name ,  T2.age ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID ORDER BY T3.Theme ASC	journal_committee
SELECT T2.Name FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID WHERE T3.Sales  >  3000	journal_committee
SELECT T1.editor_id ,  T1.Name ,  COUNT(*) FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.editor_id	journal_committee
SELECT T1.Name FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.Name HAVING COUNT(*)  >=  2	journal_committee
SELECT Name FROM editor WHERE editor_id NOT IN (SELECT editor_id FROM journal_committee)	journal_committee
SELECT date ,  theme ,  sales FROM journal EXCEPT SELECT T1.date ,  T1.theme ,  T1.sales FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID	journal_committee
SELECT avg(T1.sales) FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID WHERE T2.work_type  =  'Photo'	journal_committee
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
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT'	race_track
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT'	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race)	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race)	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id	race_track
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1	race_track
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
SELECT address ,  num_of_staff FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM happy_hour)	coffee_shop
SELECT t1.address ,  t1.shop_id FROM shop AS t1 JOIN happy_hour AS t2 ON t1.shop_id  =  t2.shop_id WHERE MONTH  =  'May'	coffee_shop
SELECT shop_id ,  count(*) FROM happy_hour GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING count(*)  >  2	coffee_shop
SELECT customer_phone FROM available_policies	insurance_fnol
SELECT customer_phone FROM available_policies	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance"	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance"	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2	insurance_fnol
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application"	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%"	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%"	insurance_fnol
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1	university_basketball
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1	university_basketball
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson'	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson'	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match)	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match)	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university)	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university)	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT * FROM basketball_match	university_basketball
SELECT * FROM basketball_match	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC	university_basketball
SELECT count(*) FROM country	match_season
SELECT count(*) FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT DISTINCT POSITION FROM match_season	match_season
SELECT DISTINCT POSITION FROM match_season	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA"	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA"	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke"	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke"	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT count(DISTINCT Team) FROM match_season	match_season
SELECT count(DISTINCT Team) FROM match_season	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT Name FROM Team	match_season
SELECT Name FROM Team	match_season
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country	match_season
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia"	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia"	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke"	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke"	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner"	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner"	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name	match_season
SELECT player FROM match_season ORDER BY College ASC	match_season
SELECT player FROM match_season ORDER BY College ASC	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"	match_season
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
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany"	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany"	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda"	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda"	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT count(*) FROM election	election_representative
SELECT Votes FROM election ORDER BY Votes DESC	election_representative
SELECT Date ,  Vote_Percent FROM election	election_representative
SELECT min(Vote_Percent) ,  max(Vote_Percent) FROM election	election_representative
SELECT Name ,  Party FROM representative	election_representative
SELECT Name FROM Representative WHERE Party != "Republican"	election_representative
SELECT Lifespan FROM representative WHERE State  =  "New York" OR State  =  "Indiana"	election_representative
SELECT T2.Name ,  T1.Date FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE Votes  >  10000	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes DESC	election_representative
SELECT T2.Party FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes ASC LIMIT 1	election_representative
SELECT T2.Lifespan FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY Vote_Percent DESC	election_representative
SELECT avg(T1.Votes) FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE T2.Party  =  "Republican"	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	election_representative
SELECT Party FROM representative GROUP BY Party HAVING COUNT(*)  >=  3	election_representative
SELECT State FROM representative GROUP BY State HAVING COUNT(*)  >=  2	election_representative
SELECT Name FROM representative WHERE Representative_ID NOT IN (SELECT Representative_ID FROM election)	election_representative
SELECT Party FROM representative WHERE State  =  "New York" INTERSECT SELECT Party FROM representative WHERE State  =  "Pennsylvania"	election_representative
SELECT count(DISTINCT Party) FROM representative	election_representative
SELECT count(*) FROM game WHERE season  >  2007	game_injury
SELECT Date FROM game ORDER BY home_team DESC	game_injury
SELECT season ,  home_team ,  away_team FROM game	game_injury
SELECT max(home_games) ,  min(home_games) ,  avg(home_games) FROM stadium	game_injury
SELECT average_attendance FROM stadium WHERE capacity_percentage  >  100	game_injury
SELECT player ,  number_of_matches ,  SOURCE FROM injury_accident WHERE injury != 'Knee problem'	game_injury
SELECT T1.season FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id WHERE T2.player  =  'Walter Samuel'	game_injury
SELECT T1.id ,  T1.score ,  T1.date FROM game AS T1 JOIN injury_accident AS T2 ON T2.game_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.season ,  T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.injury  =  'Foot injury' OR T3.injury  =  'Knee problem'	game_injury
SELECT count(DISTINCT SOURCE) FROM injury_accident	game_injury
SELECT count(*) FROM game WHERE id NOT IN ( SELECT game_id FROM injury_accident )	game_injury
SELECT count(DISTINCT T1.injury) FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id  =  T2.id WHERE T2.season  >  2010	game_injury
SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Walter Samuel' INTERSECT SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Thiago Motta'	game_injury
SELECT name ,  average_attendance ,  total_attendance FROM stadium EXCEPT SELECT T2.name ,  T2.average_attendance ,  T2.total_attendance FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id	game_injury
SELECT name FROM stadium WHERE name LIKE "%Bank%"	game_injury
SELECT T1.id ,  count(*) FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id GROUP BY T1.id	game_injury
SELECT T1.date ,  T2.player FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id ORDER BY T1.season DESC	game_injury
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
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID	performance_attendance
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T2.Name ASC	performance_attendance
SELECT T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID WHERE T2.Role  =  "Violin"	performance_attendance
SELECT T2.Name ,  T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T3.Attendance DESC	performance_attendance
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM member_attendance)	performance_attendance
SELECT count(*) FROM debate	debate
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC	debate
SELECT Date ,  Venue FROM debate	debate
SELECT Date FROM debate WHERE Num_of_Audience  >  150	debate
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36	debate
SELECT Party FROM people ORDER BY Age ASC LIMIT 1	debate
SELECT Party ,  COUNT(*) FROM people GROUP BY Party	debate
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	debate
SELECT DISTINCT Venue FROM debate	debate
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID	debate
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Negative  =  T3.People_ID ORDER BY T3.Name ASC	debate
SELECT T3.Name FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID WHERE T2.Num_of_Audience  >  200	debate
SELECT T2.Name ,  COUNT(*) FROM debate_people AS T1 JOIN people AS T2 ON T1.Affirmative  =  T2.People_ID GROUP BY T2.Name	debate
SELECT T2.Name FROM debate_people AS T1 JOIN people AS T2 ON T1.Negative  =  T2.People_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2	debate
SELECT Name FROM people WHERE People_id NOT IN (SELECT Affirmative FROM debate_people)	debate
SELECT count(*) FROM Accounts	customers_and_invoices
SELECT count(*) FROM Accounts	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts	customers_and_invoices
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan'	customers_and_invoices
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan'	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling"	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling"	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900"	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900"	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_and_invoices
SELECT count(*) FROM Customers	customers_and_invoices
SELECT count(*) FROM Customers	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender	customers_and_invoices
SELECT count(*) FROM Financial_transactions	customers_and_invoices
SELECT count(*) FROM Financial_transactions	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions	customers_and_invoices
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id WHERE T2.account_name  =  "337"	customers_and_invoices
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id WHERE T2.account_name  =  "337"	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions)	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions)	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type	customers_and_invoices
SELECT T2.account_name ,  T1.account_id ,  count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id	customers_and_invoices
SELECT T2.account_name ,  T1.account_id ,  count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.account_id ,  T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id HAVING count(*)  >=  4	customers_and_invoices
SELECT T1.account_id ,  T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id HAVING count(*)  >=  4	customers_and_invoices
SELECT DISTINCT product_size FROM Products	customers_and_invoices
SELECT DISTINCT product_size FROM Products	customers_and_invoices
SELECT DISTINCT product_color FROM Products	customers_and_invoices
SELECT DISTINCT product_color FROM Products	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number	customers_and_invoices
SELECT T2.invoice_number ,  T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T2.invoice_number ,  T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT count(*) FROM Invoices	customers_and_invoices
SELECT count(*) FROM Invoices	customers_and_invoices
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id	customers_and_invoices
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id	customers_and_invoices
SELECT T2.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id GROUP BY T2.order_id HAVING count(*)  >  2	customers_and_invoices
SELECT T2.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id GROUP BY T2.order_id HAVING count(*)  >  2	customers_and_invoices
SELECT T2.customer_last_name ,  T1.customer_id ,  T2.phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T2.customer_last_name ,  T1.customer_id ,  T2.phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id	customers_and_invoices
SELECT T2.product_name ,  sum(T1.product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T2.product_name	customers_and_invoices
SELECT T2.product_name ,  sum(T1.product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T2.product_name	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id	customers_and_invoices
SELECT T2.product_name ,  count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T3.order_id  =  T1.order_id GROUP BY T2.product_name	customers_and_invoices
SELECT T2.product_name ,  count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T3.order_id  =  T1.order_id GROUP BY T2.product_name	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )	customers_and_invoices
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
SELECT T2.name ,  count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id	theme_gallery
SELECT T2.name ,  count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id	theme_gallery
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1	theme_gallery
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)	theme_gallery
SELECT T1.theme ,  T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.ticket_price  >  (SELECT avg(ticket_price) FROM exhibition)	theme_gallery
SELECT T1.theme ,  T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.ticket_price  >  (SELECT avg(ticket_price) FROM exhibition)	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT T2.theme ,  T1.date ,  T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T2.year  =  2004	theme_gallery
SELECT T2.theme ,  T1.date ,  T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T2.year  =  2004	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004	theme_gallery
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  <  100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  500	theme_gallery
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  <  100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  500	theme_gallery
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  100 OR T2.ticket_price  <  10	theme_gallery
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  100 OR T2.ticket_price  <  10	theme_gallery
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id JOIN artist AS T3 ON T3.artist_id  =  T2.artist_id GROUP BY T3.artist_id HAVING avg(T1.attendance)  >  200	theme_gallery
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id JOIN artist AS T3 ON T3.artist_id  =  T2.artist_id GROUP BY T3.artist_id HAVING avg(T1.attendance)  >  200	theme_gallery
SELECT count(*) FROM player	riding_club
SELECT Player_name FROM player ORDER BY Votes ASC	riding_club
SELECT Gender ,  Occupation FROM player	riding_club
SELECT Player_name ,  residence FROM player WHERE Occupation != "Researcher"	riding_club
SELECT Sponsor_name FROM player WHERE Residence  =  "Brandon" OR Residence  =  "Birtle"	riding_club
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1	riding_club
SELECT Occupation ,  COUNT(*) FROM player GROUP BY Occupation	riding_club
SELECT Occupation FROM player GROUP BY Occupation ORDER BY COUNT(*) DESC LIMIT 1	riding_club
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*)  >=  2	riding_club
SELECT T3.Player_name ,  T2.coach_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID	riding_club
SELECT T3.Player_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID WHERE T2.Rank  =  1	riding_club
SELECT T3.Player_name ,  T3.gender FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID WHERE T1.Starting_year  >  2011	riding_club
SELECT T3.Player_name ,  T2.coach_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID ORDER BY T3.Votes DESC	riding_club
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM player_coach)	riding_club
SELECT Residence FROM player WHERE gender  =  "M" INTERSECT SELECT Residence FROM player WHERE gender  =  "F"	riding_club
SELECT T1.club_id ,  T1.club_name, count(*) FROM club AS T1 JOIN coach AS T2 ON T1.club_id  =  T2.club_id GROUP BY T1.club_id	riding_club
SELECT T1.club_id ,  T1.gold FROM match_result AS T1 JOIN coach AS T2 ON T1.club_id  =  T2.club_id GROUP BY T1.club_id ORDER BY count(*) DESC LIMIT 1	riding_club
SELECT sum(T2.balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T1.name != 'Brown'	small_bank_1
SELECT sum(T2.balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T1.name != 'Brown'	small_bank_1
SELECT count(*) FROM accounts	small_bank_1
SELECT count(*) FROM accounts	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT T1.custid ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT max(balance) FROM checking)	small_bank_1
SELECT T1.custid ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT max(balance) FROM checking)	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name LIKE '%ee%'	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name LIKE '%ee%'	small_bank_1
SELECT T2.balance ,  T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T1.name  =  'Brown'	small_bank_1
SELECT T2.balance ,  T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T1.name  =  'Brown'	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM savings))	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM savings))	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance LIMIT 1	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance LIMIT 1	small_bank_1
SELECT T1.name ,  T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT T1.name ,  T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1	small_bank_1
SELECT count(*) ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name	small_bank_1
SELECT count(*) ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name	small_bank_1
SELECT sum(T2.balance) ,  T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name	small_bank_1
SELECT sum(T2.balance) ,  T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM checking)	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM checking)	small_bank_1
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance DESC LIMIT 1	small_bank_1
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance DESC LIMIT 1	small_bank_1
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T1.balance + T2.balance	small_bank_1
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T1.balance + T2.balance	small_bank_1
SELECT T2.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1	small_bank_1
SELECT T2.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance DESC	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance DESC	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T2.balance  >  T3.balance	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T2.balance  >  T3.balance	small_bank_1
SELECT T1.name ,  T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  <  T2.balance	small_bank_1
SELECT T1.name ,  T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  <  T2.balance	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T2.balance DESC LIMIT 3	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T2.balance DESC LIMIT 3	small_bank_1
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
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton"	wrestler
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton"	wrestler
SELECT T2.Name ,  T1.Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID	wrestler
SELECT T2.Name ,  T1.Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID	wrestler
SELECT T2.Name ,  T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC	wrestler
SELECT T2.Name ,  T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID WHERE T2.Days_held  >  50	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID WHERE T2.Days_held  >  50	wrestler
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
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination)	wrestler
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination)	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin"	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin"	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
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
SELECT name FROM building WHERE building_id NOT IN (SELECT building_id FROM institution)	protein_institute
SELECT name FROM building EXCEPT SELECT T1.name FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  =  2003	protein_institute
SELECT T1.name ,  count(*) FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id GROUP BY T1.building_id	protein_institute
SELECT T1.name ,  T1.height_feet FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  >  1880 GROUP BY T1.building_id HAVING count(*)  >=  2	protein_institute
SELECT DISTINCT TYPE FROM institution	protein_institute
SELECT T1.institution ,  count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id GROUP BY T1.institution_id	protein_institute
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id WHERE T1.founded  >  1880 OR T1.type  =  'Private'	protein_institute
SELECT T2.protein_name ,  T1.institution FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id	protein_institute
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id JOIN building AS T3 ON T3.building_id  =  T1.building_id WHERE T3.floors  >=  20	protein_institute
SELECT count(*) FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM protein)	protein_institute
SELECT T1.good_or_bad_customer FROM customers AS T1 JOIN discount_coupons AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.coupon_amount  =  500	products_for_hire
SELECT T1.customer_id ,  T1.first_name ,  count(*) FROM Customers AS T1 JOIN bookings AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id	products_for_hire
SELECT customer_id ,  sum(amount_paid) FROM Payments GROUP BY customer_id ORDER BY sum(amount_paid) DESC LIMIT 1	products_for_hire
SELECT T1.booking_id ,  T1.amount_of_refund FROM Bookings AS T1 JOIN Payments AS T2 ON T1.booking_id  =  T2.booking_id GROUP BY T1.booking_id ORDER BY count(*) DESC LIMIT 1	products_for_hire
SELECT product_id FROM products_booked GROUP BY product_id HAVING count(*)  =  3	products_for_hire
SELECT T2.product_description FROM products_booked AS T1 JOIN products_for_hire AS T2 ON T1.product_id  =  T2.product_id WHERE T1.booked_amount  =  102.76	products_for_hire
SELECT T3.booking_start_date ,   T3.booking_end_date FROM Products_for_hire AS T1 JOIN products_booked AS T2 ON T1.product_id  =  T2.product_id JOIN bookings AS T3 ON T2.booking_id  =  T3.booking_id WHERE T1.product_name  =  'Book collection A'	products_for_hire
SELECT T2.product_name FROM view_product_availability AS T1 JOIN products_for_hire AS T2 ON T1.product_id  =  T2.product_id WHERE T1.available_yn  =  1	products_for_hire
SELECT count(DISTINCT product_type_code) FROM products_for_hire	products_for_hire
SELECT first_name ,  last_name ,  gender_mf FROM customers WHERE good_or_bad_customer  =  'good' ORDER BY last_name	products_for_hire
SELECT avg(amount_due) FROM payments	products_for_hire
SELECT max(booked_count) ,  min(booked_count) ,  avg(booked_count) FROM products_booked	products_for_hire
SELECT DISTINCT payment_type_code FROM payments	products_for_hire
SELECT daily_hire_cost FROM Products_for_hire WHERE product_name LIKE '%Book%'	products_for_hire
SELECT count(*) FROM Products_for_hire WHERE product_id NOT IN ( SELECT product_id FROM products_booked WHERE booked_amount  >  200 )	products_for_hire
SELECT T1.coupon_amount FROM Discount_Coupons AS T1 JOIN customers AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.good_or_bad_customer  =  'good' INTERSECT SELECT T1.coupon_amount FROM Discount_Coupons AS T1 JOIN customers AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.good_or_bad_customer  =  'bad'	products_for_hire
SELECT payment_date FROM payments WHERE amount_paid  >  300 OR payment_type_code  =  'Check'	products_for_hire
SELECT product_name ,  product_description FROM products_for_hire WHERE product_type_code  =  'Cutlery' AND daily_hire_cost  <  20	products_for_hire
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
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year	gas_company
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT T2.company ,  count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id GROUP BY T1.company_id	gas_company
SELECT T2.company ,  count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id GROUP BY T1.company_id	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company)	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company)	gas_company
SELECT T3.manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.company  =  'ExxonMobil'	gas_company
SELECT T3.manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.company  =  'ExxonMobil'	gas_company
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.market_value  >  100	gas_company
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.market_value  >  100	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT T3.location ,  T3.Representative_Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id ORDER BY T2.Assets_billion DESC LIMIT 3	gas_company
SELECT T3.location ,  T3.Representative_Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id ORDER BY T2.Assets_billion DESC LIMIT 3	gas_company
SELECT count(*) FROM pilot	pilot_record
SELECT Pilot_name FROM pilot ORDER BY Rank ASC	pilot_record
SELECT POSITION ,  Team FROM pilot	pilot_record
SELECT DISTINCT POSITION FROM pilot WHERE Age  >  30	pilot_record
SELECT Pilot_name FROM pilot WHERE Team  =  "Bradley" OR Team  =  "Fordham"	pilot_record
SELECT Join_Year FROM pilot ORDER BY Rank ASC LIMIT 1	pilot_record
SELECT Nationality ,  COUNT(*) FROM pilot GROUP BY Nationality	pilot_record
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	pilot_record
SELECT POSITION FROM pilot WHERE Join_Year  <  2000 INTERSECT SELECT POSITION FROM pilot WHERE Join_Year  >  2005	pilot_record
SELECT T3.Pilot_name ,  T2.Model FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID	pilot_record
SELECT T3.Pilot_name ,  T2.Fleet_Series FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID ORDER BY T3.Rank	pilot_record
SELECT T2.Fleet_Series FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID WHERE T3.Age  <  34	pilot_record
SELECT T2.Pilot_name ,  COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_ID  =  T2.pilot_ID GROUP BY T2.Pilot_name	pilot_record
SELECT T2.Pilot_name ,  COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_ID  =  T2.pilot_ID GROUP BY T2.Pilot_name HAVING COUNT(*)  >  1	pilot_record
SELECT Pilot_name FROM pilot WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilot_record)	pilot_record
SELECT dname FROM department ORDER BY mgr_start_date	company_1
SELECT Dependent_name FROM dependent WHERE relationship  =  'Spouse'	company_1
SELECT count(*) FROM dependent WHERE sex  =  'F'	company_1
SELECT t1.dname FROM department AS t1 JOIN dept_locations AS t2 ON t1.dnumber  =  t2.dnumber WHERE t2.dlocation  =  'Houston'	company_1
SELECT fname ,  lname FROM employee WHERE salary  >  30000	company_1
SELECT count(*) ,  sex FROM employee WHERE salary  <  50000 GROUP BY sex	company_1
SELECT fname ,  lname ,  address FROM employee ORDER BY Bdate	company_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000	formula_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000	formula_1
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000	formula_1
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000	formula_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1	formula_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1	formula_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009	formula_1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis"	formula_1
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis"	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017	formula_1
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017	formula_1
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000	formula_1
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5	formula_1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30	formula_1
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh"	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh"	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	entrepreneur
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85	entrepreneur
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85	entrepreneur
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones"	entrepreneur
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones"	entrepreneur
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC	entrepreneur
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested	entrepreneur
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1	entrepreneur
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1	entrepreneur
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
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange")	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange")	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University"	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University"	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University"	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University"	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1	csu_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University"	csu_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University"	csu_1
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University"	csu_1
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University"	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000	csu_1
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
SELECT t1.name ,  t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id ORDER BY t2.support_rate DESC LIMIT 1	candidate_poll
SELECT t1.name ,  t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id ORDER BY t2.support_rate DESC LIMIT 1	candidate_poll
SELECT t1.name ,  t1.sex ,  min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex	candidate_poll
SELECT t1.name ,  t1.sex ,  min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex	candidate_poll
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex ORDER BY avg(t2.unsure_rate) DESC LIMIT 1	candidate_poll
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex ORDER BY avg(t2.unsure_rate) DESC LIMIT 1	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate)	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate)	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t2.support_rate  <  t2.oppose_rate	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t2.support_rate  <  t2.oppose_rate	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t1.sex  =  'F' ORDER BY t1.name	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t1.sex  =  'F' ORDER BY t1.name	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT * FROM people	candidate_poll
SELECT * FROM people	candidate_poll
SELECT count(*) FROM county_public_safety	county_public_safety
SELECT count(*) FROM county_public_safety	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC	county_public_safety
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT T1.Name ,  T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID	county_public_safety
SELECT T1.Name ,  T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID	county_public_safety
SELECT T1.White ,  T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID	county_public_safety
SELECT T1.White ,  T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000)	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000)	county_public_safety
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID WHERE T1.White  >  90	county_public_safety
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID WHERE T1.White  >  90	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West"	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West"	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100)	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100)	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT T1.cmi_details FROM Customer_Master_Index AS T1 JOIN CMI_Cross_References AS T2 ON T1.master_customer_id  =  T2.master_customer_id WHERE T2.source_system_code  =  'Tax'	local_govt_mdm
SELECT T1.cmi_cross_ref_id ,  T1.source_system_code FROM CMI_Cross_References AS T1 JOIN Council_Tax AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id GROUP BY T1.cmi_cross_ref_id HAVING count(*)  >=  1	local_govt_mdm
SELECT T2.cmi_cross_ref_id ,  T2.master_customer_id ,  count(*) FROM Business_Rates AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id GROUP BY T2.cmi_cross_ref_id	local_govt_mdm
SELECT T1.source_system_code ,  T2.council_tax_id FROM CMI_Cross_References AS T1 JOIN Benefits_Overpayments AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id ORDER BY T2.council_tax_id	local_govt_mdm
SELECT T1.source_system_code ,  T1.master_customer_id ,  T2.council_tax_id FROM CMI_Cross_References AS T1 JOIN Parking_Fines AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id	local_govt_mdm
SELECT T1.council_tax_id FROM Rent_Arrears AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id JOIN Customer_Master_Index AS T3 ON T3.master_customer_id  =  T2.master_customer_id WHERE T3.cmi_details != 'Schmidt ,  Kertzmann and Lubowitz'	local_govt_mdm
SELECT T1.electoral_register_id FROM Electoral_Register AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id WHERE T2.source_system_code  =  'Electoral' OR T2.source_system_code  =  'Tax'	local_govt_mdm
SELECT count(DISTINCT source_system_code) FROM CMI_cross_references	local_govt_mdm
SELECT * FROM customer_master_index ORDER BY cmi_details DESC	local_govt_mdm
SELECT council_tax_id ,  cmi_cross_ref_id FROM parking_fines	local_govt_mdm
SELECT count(*) FROM rent_arrears	local_govt_mdm
SELECT DISTINCT T2.source_system_code FROM customer_master_index AS T1 JOIN cmi_cross_references AS T2 ON T1.master_customer_id  =  T2.master_customer_id WHERE T1.cmi_details  =  'Gottlieb ,  Becker and Wyman'	local_govt_mdm
SELECT cmi_cross_ref_id FROM cmi_cross_references EXCEPT SELECT cmi_cross_ref_id FROM parking_fines	local_govt_mdm
SELECT DISTINCT source_system_code FROM cmi_cross_references WHERE source_system_code LIKE '%en%'	local_govt_mdm
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
SELECT count(DISTINCT region_id) FROM affected_region	storm_record
SELECT count(DISTINCT region_id) FROM affected_region	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)	storm_record
SELECT T1.region_name ,  count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id	storm_record
SELECT T1.region_name ,  count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id	storm_record
SELECT T1.name ,  count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id	storm_record
SELECT T1.name ,  count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id	storm_record
SELECT T1.name ,  T1.max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1	storm_record
SELECT T1.name ,  T1.max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)	storm_record
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10	storm_record
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T3.number_deaths  >=  10	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T3.number_deaths  >=  10	storm_record
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.region_name  =  'Denmark'	storm_record
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.region_name  =  'Denmark'	storm_record
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*)  >=  2	storm_record
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*)  >=  2	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id ORDER BY T3.Number_Deaths DESC LIMIT 1	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id ORDER BY T3.Number_Deaths DESC LIMIT 1	storm_record
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Afghanistan' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Albania'	storm_record
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Afghanistan' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Albania'	storm_record
SELECT count(*) FROM journalist	news_report
SELECT Name FROM journalist ORDER BY Years_working ASC	news_report
SELECT Nationality ,  Age FROM journalist	news_report
SELECT Name FROM journalist WHERE Nationality  =  "England" OR Nationality  =  "Wales"	news_report
SELECT avg(Years_working) FROM journalist	news_report
SELECT Nationality FROM journalist ORDER BY Years_working DESC LIMIT 1	news_report
SELECT Nationality ,  COUNT(*) FROM journalist GROUP BY Nationality	news_report
SELECT Nationality FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	news_report
SELECT Nationality FROM journalist WHERE Years_working  >  10 INTERSECT SELECT Nationality FROM journalist WHERE Years_working  <  3	news_report
SELECT Date ,  Name ,  venue FROM event ORDER BY Event_Attendance DESC	news_report
SELECT T3.Name ,  T2.Date FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID	news_report
SELECT T3.Name ,  T2.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID ORDER BY T2.Event_Attendance ASC	news_report
SELECT T3.Name ,  COUNT(*) FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID GROUP BY T3.Name	news_report
SELECT T3.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID GROUP BY T3.Name HAVING COUNT(*)  >  1	news_report
SELECT Name FROM journalist WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_report)	news_report
SELECT avg(Event_Attendance) ,  max(Event_Attendance) FROM event	news_report
SELECT avg(t1.age) ,  avg(Years_working) ,  t2.work_type FROM journalist AS t1 JOIN news_report AS t2 ON t1.journalist_id  =  t2.journalist_id GROUP BY t2.work_type	news_report
SELECT venue ,  name FROM event ORDER BY Event_Attendance DESC LIMIT 2	news_report
SELECT actual_order_id FROM actual_orders WHERE order_status_code  =  'Success'	customer_deliveries
SELECT t1.product_name ,   t1.product_price FROM products AS t1 JOIN regular_order_products AS t2 ON t1.product_id  =  t2.product_id GROUP BY t2.product_id ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT count(*) FROM customers	customer_deliveries
SELECT count(DISTINCT payment_method) FROM customers	customer_deliveries
SELECT truck_details FROM trucks ORDER BY truck_licence_number	customer_deliveries
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1	customer_deliveries
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id WHERE t3.state_province_county  =  'California'	customer_deliveries
SELECT customer_email ,  customer_name FROM customers WHERE payment_method  =  'Visa'	customer_deliveries
SELECT t1.customer_name ,  t1.customer_phone FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id WHERE t3.state_province_county  =  'California'	customer_deliveries
SELECT state_province_county FROM addresses WHERE address_id NOT IN (SELECT employee_address_id FROM Employees)	customer_deliveries
SELECT customer_name ,  customer_phone ,  customer_email FROM Customers ORDER BY date_became_customer	customer_deliveries
SELECT customer_name FROM Customers ORDER BY date_became_customer LIMIT 5	customer_deliveries
SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT route_name FROM Delivery_Routes ORDER BY route_name	customer_deliveries
SELECT t1.route_name FROM Delivery_Routes AS t1 JOIN Delivery_Route_Locations AS t2 ON t1.route_id  =  t2.route_id GROUP BY t1.route_id ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT t2.state_province_county ,  count(*) FROM customer_addresses AS t1 JOIN addresses AS t2 ON t1.address_id  =  t2.address_id GROUP BY t2.state_province_county	customer_deliveries
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia'	sakila_1
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia'	sakila_1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3	sakila_1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30	sakila_1
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT sum(amount) FROM payment	sakila_1
SELECT sum(amount) FROM payment	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1	sakila_1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF'	sakila_1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF'	sakila_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id	sakila_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id	sakila_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1	sakila_1
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK'	sakila_1
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK'	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA'	sakila_1
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA'	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1	sakila_1
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1	sakila_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS'	sakila_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS'	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE T1.first_name  =  'Elsa'	sakila_1
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE T1.first_name  =  'Elsa'	sakila_1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT count(*) FROM ASSESSMENT_NOTES	behavior_monitoring
SELECT date_of_notes FROM Assessment_Notes	behavior_monitoring
SELECT count(*) FROM ADDRESSES WHERE zip_postcode  =  "197"	behavior_monitoring
SELECT count(DISTINCT incident_type_code) FROM Behavior_Incident	behavior_monitoring
SELECT DISTINCT detention_type_code FROM Detention	behavior_monitoring
SELECT date_incident_start ,  date_incident_end FROM Behavior_Incident WHERE incident_type_code  =  "NOISE"	behavior_monitoring
SELECT detention_summary FROM Detention	behavior_monitoring
SELECT cell_mobile_number ,  email_address FROM STUDENTS	behavior_monitoring
SELECT email_address FROM Students WHERE first_name  =  "Emma" AND last_name  =  "Rohan"	behavior_monitoring
SELECT count(DISTINCT student_id) FROM Students_in_Detention	behavior_monitoring
SELECT gender FROM TEACHERS WHERE last_name  =  "Medhurst"	behavior_monitoring
SELECT incident_type_description FROM Ref_Incident_Type WHERE incident_type_code  =  "VIOLENCE"	behavior_monitoring
SELECT max(monthly_rental) ,  min(monthly_rental) FROM Student_Addresses	behavior_monitoring
SELECT first_name FROM Teachers WHERE email_address LIKE '%man%'	behavior_monitoring
SELECT * FROM Assessment_Notes ORDER BY date_of_notes ASC	behavior_monitoring
SELECT city FROM Addresses ORDER BY city	behavior_monitoring
SELECT first_name ,  last_name FROM Teachers ORDER BY last_name	behavior_monitoring
SELECT * FROM Student_Addresses ORDER BY monthly_rental DESC	behavior_monitoring
SELECT T1.student_id ,  T2.first_name FROM Assessment_Notes AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.teacher_id ,  T2.first_name FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 3	behavior_monitoring
SELECT T1.student_id ,  T2.last_name FROM Behavior_Incident AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.teacher_id ,  T2.last_name FROM Detention AS T1 JOIN Teachers AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T1.detention_type_code  =  "AFTER" GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.student_id ,  T2.first_name FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY AVG(monthly_rental) DESC LIMIT 1	behavior_monitoring
SELECT T2.address_id ,  T1.city FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id  =  T2.address_id GROUP BY T2.address_id ORDER BY AVG(monthly_rental) DESC LIMIT 1	behavior_monitoring
SELECT T1.incident_type_code ,  T2.incident_type_description FROM Behavior_Incident AS T1 JOIN Ref_Incident_Type AS T2 ON T1.incident_type_code  =  T2.incident_type_code GROUP BY T1.incident_type_code ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.detention_type_code ,  T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code  =  T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1	behavior_monitoring
SELECT T1.date_of_notes FROM Assessment_Notes AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.first_name  =  "Fanny"	behavior_monitoring
SELECT T1.text_of_notes FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.last_name  =  "Schuster"	behavior_monitoring
SELECT T1.date_incident_start ,  date_incident_end FROM Behavior_Incident AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.last_name  =  "Fahey"	behavior_monitoring
SELECT T1.datetime_detention_start ,  datetime_detention_end FROM Detention AS T1 JOIN Teachers AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.last_name  =  "Schultz"	behavior_monitoring
SELECT T2.address_id ,  T1.zip_postcode FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id  =  T2.address_id ORDER BY monthly_rental DESC LIMIT 1	behavior_monitoring
SELECT T2.cell_mobile_number FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id ORDER BY T1.monthly_rental ASC LIMIT 1	behavior_monitoring
SELECT T2.monthly_rental FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id  =  T2.address_id WHERE T1.state_province_county  =  "Texas"	behavior_monitoring
SELECT T2.first_name ,  T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.address_id WHERE T1.state_province_county  =  "Wisconsin"	behavior_monitoring
SELECT T1.line_1 ,  avg(T2.monthly_rental) FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id  =  T2.address_id GROUP BY T2.address_id	behavior_monitoring
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id  =  T2.address_id WHERE T2.first_name  =  "Lyla"	behavior_monitoring
SELECT T2.email_address FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id  =  T2.address_id WHERE T1.zip_postcode  =  "918"	behavior_monitoring
SELECT count(*) FROM STUDENTS WHERE student_id NOT IN ( SELECT student_id FROM Behavior_Incident )	behavior_monitoring
SELECT last_name FROM Teachers EXCEPT SELECT T1.last_name FROM Teachers AS T1 JOIN Detention AS T2 ON T1.teacher_id  =  T2.teacher_id	behavior_monitoring
SELECT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.address_id INTERSECT SELECT T1.line_1 FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id  =  T2.address_id	behavior_monitoring
SELECT local_authority ,  services FROM station	station_weather
SELECT train_number ,  name FROM train ORDER BY TIME	station_weather
SELECT TIME ,  train_number FROM train WHERE destination  =  'Chennai' ORDER BY TIME	station_weather
SELECT count(*) FROM train WHERE name LIKE "%Express%"	station_weather
SELECT train_number ,  TIME FROM train WHERE origin  =  'Chennai' AND destination  =  'Guruvayur'	station_weather
SELECT origin ,  count(*) FROM train GROUP BY origin	station_weather
SELECT t1.name FROM train AS t1 JOIN route AS t2 ON t1.id  =  t2.train_id GROUP BY t2.train_id ORDER BY count(*) DESC LIMIT 1	station_weather
SELECT count(*) ,  t1.network_name ,  t1.services FROM station AS t1 JOIN route AS t2 ON t1.id  =  t2.station_id GROUP BY t2.station_id	station_weather
SELECT avg(high_temperature) ,  day_of_week FROM weekly_weather GROUP BY day_of_week	station_weather
SELECT max(t1.low_temperature) ,  avg(t1.precipitation) FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id  =  t2.id WHERE t2.network_name  =  "Amersham"	station_weather
SELECT t3.name ,  t3.time FROM station AS t1 JOIN route AS t2 ON t1.id  =  t2.station_id JOIN train AS t3 ON t2.train_id  =  t3.id WHERE t1.local_authority  =  "Chiltern"	station_weather
SELECT count(DISTINCT services) FROM station	station_weather
SELECT t2.id ,  t2.local_authority FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id  =  t2.id GROUP BY t1.station_id ORDER BY avg(high_temperature) DESC LIMIT 1	station_weather
SELECT t2.id ,  t2.local_authority FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id  =  t2.id GROUP BY t1.station_id HAVING max(t1.precipitation)  >  50	station_weather
SELECT min(low_temperature) ,  max(wind_speed_mph) FROM weekly_weather	station_weather
SELECT origin FROM train GROUP BY origin HAVING count(*)  >  1	station_weather
SELECT count(*) FROM club	sports_competition
SELECT count(*) FROM club	sports_competition
SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
SELECT avg(Gold) FROM club_rank	sports_competition
SELECT avg(Gold) FROM club_rank	sports_competition
SELECT Competition_type ,  Country FROM competition	sports_competition
SELECT Competition_type ,  Country FROM competition	sports_competition
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
SELECT max(Silver) ,  min(Silver) FROM club_rank	sports_competition
SELECT max(Silver) ,  min(Silver) FROM club_rank	sports_competition
SELECT count(*) FROM club_rank WHERE Total  <  10	sports_competition
SELECT count(*) FROM club_rank WHERE Total  <  10	sports_competition
SELECT name FROM club ORDER BY Start_year ASC	sports_competition
SELECT name FROM club ORDER BY Start_year ASC	sports_competition
SELECT name FROM club ORDER BY name DESC	sports_competition
SELECT name FROM club ORDER BY name DESC	sports_competition
SELECT T1.name ,  T2.Player_id FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID	sports_competition
SELECT T1.name ,  T2.Player_id FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID	sports_competition
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T2.Position  =  "Right Wing"	sports_competition
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T2.Position  =  "Right Wing"	sports_competition
SELECT avg(T2.Points) FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T1.name  =  "AIB"	sports_competition
SELECT avg(T2.Points) FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T1.name  =  "AIB"	sports_competition
SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
SELECT name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)	sports_competition
SELECT name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)	sports_competition
SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
SELECT sum(Points) FROM player	sports_competition
SELECT sum(Points) FROM player	sports_competition
SELECT count(DISTINCT POSITION) FROM player	sports_competition
SELECT count(DISTINCT POSITION) FROM player	sports_competition
SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
SELECT T1.first_name ,  T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id	hr_1
SELECT T1.first_name ,  T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
SELECT * FROM employees WHERE department_id  =  "null"	hr_1
SELECT * FROM employees WHERE department_id  =  "null"	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
SELECT employee_id ,  MAX(end_date) FROM job_history GROUP BY employee_id	hr_1
SELECT employee_id ,  MAX(end_date) FROM job_history GROUP BY employee_id	hr_1
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
SELECT job_id FROM job_history WHERE end_date - start_date  > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT job_id FROM job_history WHERE end_date - start_date  > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT T1.employee_id ,  T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id JOIN countries AS T4 ON T3.country_id  =  T4.country_id	hr_1
SELECT T1.employee_id ,  T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id JOIN countries AS T4 ON T3.country_id  =  T4.country_id	hr_1
SELECT T2.department_name ,  COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T2.department_name	hr_1
SELECT T2.department_name ,  COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T2.department_name	hr_1
SELECT * FROM  job_history AS T1 JOIN employees AS T2 ON T1.employee_id  =  T2.employee_id WHERE T2.salary  >=  12000	hr_1
SELECT * FROM  job_history AS T1 JOIN employees AS T2 ON T1.employee_id  =  T2.employee_id WHERE T2.salary  >=  12000	hr_1
SELECT job_title ,  AVG(salary) FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id  =  T2.job_id GROUP BY T2.job_title	hr_1
SELECT job_title ,  AVG(salary) FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id  =  T2.job_id GROUP BY T2.job_title	hr_1
SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
SELECT DISTINCT T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id	hr_1
SELECT DISTINCT T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id	hr_1
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T1.employee_id  =  T2.manager_id	hr_1
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T1.employee_id  =  T2.manager_id	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
SELECT T1.employee_id ,  T2.job_title FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id  =  T2.job_id WHERE T1.department_id = 80	hr_1
SELECT T1.employee_id ,  T2.job_title FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id  =  T2.job_id WHERE T1.department_id = 80	hr_1
SELECT T1.first_name ,  T1.job_id FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  'Finance'	hr_1
SELECT T1.first_name ,  T1.job_id FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  'Finance'	hr_1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_history)	hr_1
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_history)	hr_1
SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
SELECT T1.first_name ,  T1.last_name ,  T2.department_name ,  T3.city ,  T3.state_province FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id	hr_1
SELECT T1.first_name ,  T1.last_name ,  T2.department_name ,  T3.city ,  T3.state_province FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id	hr_1
SELECT T1.first_name ,  T1.last_name ,  T3.city FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id WHERE T1.first_name LIKE '%z%'	hr_1
SELECT T1.first_name ,  T1.last_name ,  T3.city FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id WHERE T1.first_name LIKE '%z%'	hr_1
SELECT T1.department_name ,  T2.city ,  T2.state_province FROM departments AS T1 JOIN locations AS T2 ON T2.location_id  =  T1.location_id	hr_1
SELECT T1.department_name ,  T2.city ,  T2.state_province FROM departments AS T1 JOIN locations AS T2 ON T2.location_id  =  T1.location_id	hr_1
SELECT T1.first_name ,  T1.last_name , T1.employee_id ,  T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id JOIN countries AS T4 ON T3.country_id  =  T4.country_id	hr_1
SELECT T1.first_name ,  T1.last_name , T1.employee_id ,  T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id JOIN countries AS T4 ON T3.country_id  =  T4.country_id	hr_1
SELECT department_name ,  COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY department_name	hr_1
SELECT department_name ,  COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY department_name	hr_1
SELECT first_name ,  last_name ,  salary FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN  locations AS T3 ON T2.location_id  =  T3.location_id WHERE  T3.city  =  'London'	hr_1
SELECT first_name ,  last_name ,  salary FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN  locations AS T3 ON T2.location_id  =  T3.location_id WHERE  T3.city  =  'London'	hr_1
SELECT T1.name_full ,  T1.college_id FROM college AS T1 JOIN player_college AS T2 ON T1.college_id  =  T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_full ,  T1.college_id FROM college AS T1 JOIN player_college AS T2 ON T1.college_id  =  T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT avg(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings'	baseball_1
SELECT avg(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings'	baseball_1
SELECT name_first ,  name_last FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id WHERE YEAR  =  1998	baseball_1
SELECT name_first ,  name_last FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id WHERE YEAR  =  1998	baseball_1
SELECT T1.name_first , T1.name_last ,  T1.player_id ,   count(*) FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_first , T1.name_last ,  T1.player_id ,   count(*) FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT yearid ,  count(*) FROM hall_of_fame GROUP BY yearid;	baseball_1
SELECT yearid ,  count(*) FROM hall_of_fame GROUP BY yearid;	baseball_1
SELECT YEAR ,  avg(attendance) FROM home_game GROUP BY YEAR;	baseball_1
SELECT YEAR ,  avg(attendance) FROM home_game GROUP BY YEAR;	baseball_1
SELECT T2.team_id ,  T2.rank FROM home_game AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id WHERE T1.year  =  2014 GROUP BY T1.team_id ORDER BY avg(T1.attendance) DESC LIMIT 1;	baseball_1
SELECT T2.team_id ,  T2.rank FROM home_game AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id WHERE T1.year  =  2014 GROUP BY T1.team_id ORDER BY avg(T1.attendance) DESC LIMIT 1;	baseball_1
SELECT T1.name_first ,  T1.name_last ,  T2.player_id FROM player AS T1 JOIN manager_award AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_first ,  T1.name_last ,  T2.player_id FROM player AS T1 JOIN manager_award AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
SELECT T1.name_first ,  T1.name_last ,  T1.player_id FROM player AS T1 JOIN player_award AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 3;	baseball_1
SELECT T1.name_first ,  T1.name_last ,  T1.player_id FROM player AS T1 JOIN player_award AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 3;	baseball_1
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
SELECT avg(T1.height) FROM player AS T1 JOIN player_college AS T2 ON T1.player_id  =  T2.player_id JOIN college AS T3 ON T3.college_id  =  T2.college_id WHERE T3.name_full  =  'Yale University';	baseball_1
SELECT avg(T1.height) FROM player AS T1 JOIN player_college AS T2 ON T1.player_id  =  T2.player_id JOIN college AS T3 ON T3.college_id  =  T2.college_id WHERE T3.name_full  =  'Yale University';	baseball_1
SELECT T1.name ,  T1.team_id ,  max(T2.salary) FROM team AS T1 JOIN salary AS T2 ON T1.team_id  =  T2.team_id GROUP BY T1.team_id;	baseball_1
SELECT T1.name ,  T1.team_id ,  max(T2.salary) FROM team AS T1 JOIN salary AS T2 ON T1.team_id  =  T2.team_id GROUP BY T1.team_id;	baseball_1
SELECT T1.name ,  T1.team_id FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.salary) ASC LIMIT 1;	baseball_1
SELECT T1.name ,  T1.team_id FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.salary) ASC LIMIT 1;	baseball_1
SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year  =  1960 INTERSECT SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year  =  1961	baseball_1
SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year  =  1960 INTERSECT SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year  =  1961	baseball_1
SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
SELECT max(T1.wins) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings';	baseball_1
SELECT max(T1.wins) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings';	baseball_1
SELECT count(*) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' AND T1.year = 2009;	baseball_1
SELECT count(*) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' AND T1.year = 2009;	baseball_1
SELECT T2.name ,  T1.team_id_winner FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T1.year  =  2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T2.name ,  T1.team_id_winner FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T1.year  =  2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT count(*) ,  T1.year FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' GROUP BY T1.year	baseball_1
SELECT count(*) ,  T1.year FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' GROUP BY T1.year	baseball_1
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
SELECT sum(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2010	baseball_1
SELECT sum(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2010	baseball_1
SELECT count(*) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2000	baseball_1
SELECT count(*) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2000	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year = 1907 AND T2.park_name = 'Columbia Park';	baseball_1
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year = 1907 AND T2.park_name = 'Columbia Park';	baseball_1
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year  =  2000 AND T2.city  =  'Atlanta';	baseball_1
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year  =  2000 AND T2.city  =  'Atlanta';	baseball_1
SELECT sum(T1.attendance) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' AND T1.year BETWEEN 2000 AND 2010;	baseball_1
SELECT sum(T1.attendance) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' AND T1.year BETWEEN 2000 AND 2010;	baseball_1
SELECT sum(T1.salary) FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.name_first  =  'Len' AND T2.name_last = 'Barker' AND T1.year BETWEEN 1985 AND 1990;	baseball_1
SELECT sum(T1.salary) FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.name_first  =  'Len' AND T2.name_last = 'Barker' AND T1.year BETWEEN 1985 AND 1990;	baseball_1
SELECT T2.name_first ,  T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2007 AND T3.name = 'Washington Nationals'	baseball_1
SELECT T2.name_first ,  T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2007 AND T3.name = 'Washington Nationals'	baseball_1
SELECT sum(T1.games) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 1990 AND 2000;	baseball_1
SELECT sum(T1.games) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 1990 AND 2000;	baseball_1
SELECT T2.name FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T1.year = 1980 ORDER BY T1.attendance ASC LIMIT 1;	baseball_1
SELECT T2.name FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T1.year = 1980 ORDER BY T1.attendance ASC LIMIT 1;	baseball_1
SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
SELECT count(*) FROM team_franchise WHERE active = 'Y';	baseball_1
SELECT count(*) FROM team_franchise WHERE active = 'Y';	baseball_1
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT T2.park_name FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year = 2008 ORDER BY T1.attendance DESC LIMIT 1;	baseball_1
SELECT T2.park_name FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year = 2008 ORDER BY T1.attendance DESC LIMIT 1;	baseball_1
SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
SELECT count(*) FROM program	program_share
SELECT count(*) FROM program	program_share
SELECT name FROM program ORDER BY launch	program_share
SELECT name FROM program ORDER BY launch	program_share
SELECT name ,  origin ,  OWNER FROM program	program_share
SELECT name ,  origin ,  OWNER FROM program	program_share
SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Morning'	program_share
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Morning'	program_share
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Morning' INTERSECT SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Night'	program_share
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Morning' INTERSECT SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id  =  t2.channel_id WHERE t2.time_of_day  =  'Night'	program_share
SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning"	program_share
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning"	program_share
SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning" INTERSECT SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Night"	program_share
SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning" INTERSECT SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Night"	program_share
SELECT origin FROM program ORDER BY origin	program_share
SELECT origin FROM program ORDER BY origin	program_share
SELECT count(DISTINCT OWNER) FROM channel	program_share
SELECT count(DISTINCT OWNER) FROM channel	program_share
SELECT name FROM program WHERE origin != 'Beijing'	program_share
SELECT name FROM program WHERE origin != 'Beijing'	program_share
SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id GROUP BY t2.program_id ORDER BY count(*) DESC LIMIT 1	program_share
SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id GROUP BY t2.program_id ORDER BY count(*) DESC LIMIT 1	program_share
SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id GROUP BY T1.Claim_id HAVING count(*)  >  2 UNION SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id WHERE T1.Amount_Claimed  =  ( SELECT max(Amount_Claimed) FROM Claims )	insurance_policies
SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id GROUP BY T1.Claim_id HAVING count(*)  >  2 UNION SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id WHERE T1.Amount_Claimed  =  ( SELECT max(Amount_Claimed) FROM Claims )	insurance_policies
SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2 EXCEPT SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id JOIN Claims AS T3 ON T2.policy_id  =  T3.policy_id	insurance_policies
SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2 EXCEPT SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id JOIN Claims AS T3 ON T2.policy_id  =  T3.policy_id	insurance_policies
SELECT Payment_Method_Code ,  Date_Payment_Made ,  Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC	insurance_policies
SELECT Payment_Method_Code ,  Date_Payment_Made ,  Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Claims WHERE Amount_Claimed  >  ( SELECT avg(Amount_Claimed) FROM Claims )	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Claims WHERE Amount_Claimed  >  ( SELECT avg(Amount_Claimed) FROM Claims )	insurance_policies
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled  <=  ( SELECT avg(Amount_Settled) FROM Claims )	insurance_policies
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled  <=  ( SELECT avg(Amount_Settled) FROM Claims )	insurance_policies
SELECT T1.Claim_id ,  count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id	insurance_policies
SELECT T1.Claim_id ,  count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id	insurance_policies
SELECT T1.claim_id ,  T1.date_claim_made ,  count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT T1.claim_id ,  T1.date_claim_made ,  count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT count(*) ,  T1.claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id ORDER BY T1.Date_Claim_Settled DESC LIMIT 1	insurance_policies
SELECT count(*) ,  T1.claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id  =  T2.claim_id GROUP BY T1.claim_id ORDER BY T1.Date_Claim_Settled DESC LIMIT 1	insurance_policies
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1	insurance_policies
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1	insurance_policies
SELECT sum(Amount_Settled) FROM Settlements	insurance_policies
SELECT sum(Amount_Settled) FROM Settlements	insurance_policies
SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.Customer_id GROUP BY T1.customer_id HAVING count(*)  >  1	insurance_policies
SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.Customer_id GROUP BY T1.customer_id HAVING count(*)  >  1	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Settlements	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Settlements	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT sum(Amount_Payment) FROM Payments	insurance_policies
SELECT sum(Amount_Payment) FROM Payments	insurance_policies
SELECT DISTINCT customer_details FROM Customers	insurance_policies
SELECT DISTINCT customer_details FROM Customers	insurance_policies
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT count(*) FROM Settlements	insurance_policies
SELECT count(*) FROM Settlements	insurance_policies
SELECT Payment_ID ,  Date_Payment_Made ,  Amount_Payment FROM Payments WHERE Payment_Method_Code  =  'Visa'	insurance_policies
SELECT Payment_ID ,  Date_Payment_Made ,  Amount_Payment FROM Payments WHERE Payment_Method_Code  =  'Visa'	insurance_policies
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id  =  T2.customer_id	insurance_policies
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id  =  T2.customer_id	insurance_policies
SELECT T1.claim_id ,  T1.date_claim_made ,  T1.Date_Claim_Settled FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id GROUP BY T1.claim_id HAVING count(*)  =  1	insurance_policies
SELECT T1.claim_id ,  T1.date_claim_made ,  T1.Date_Claim_Settled FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id GROUP BY T1.claim_id HAVING count(*)  =  1	insurance_policies
SELECT sum(Amount_Claimed) FROM Claims	insurance_policies
SELECT sum(Amount_Claimed) FROM Claims	insurance_policies
SELECT count(*) FROM ship	ship_mission
SELECT count(*) FROM ship	ship_mission
SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
SELECT TYPE ,  Nationality FROM ship	ship_mission
SELECT TYPE ,  Nationality FROM ship	ship_mission
SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
SELECT T1.Code ,  T1.Fate ,  T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID	ship_mission
SELECT T1.Code ,  T1.Fate ,  T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID	ship_mission
SELECT T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID WHERE T1.Launched_Year  >  1928	ship_mission
SELECT T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID WHERE T1.Launched_Year  >  1928	ship_mission
SELECT DISTINCT T1.Fate FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID WHERE T2.Nationality  =  "United States"	ship_mission
SELECT DISTINCT T1.Fate FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID WHERE T2.Nationality  =  "United States"	ship_mission
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)	ship_mission
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)	ship_mission
SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
SELECT count(*) FROM company WHERE Headquarters  =  'USA'	company_employee
SELECT Name FROM company ORDER BY Sales_in_Billion ASC	company_employee
SELECT Headquarters ,  Industry FROM company	company_employee
SELECT Name FROM company WHERE Industry  =  "Banking" OR Industry  =  "Retailing"	company_employee
SELECT max(Market_Value_in_Billion) ,  min(Market_Value_in_Billion) FROM company	company_employee
SELECT Headquarters FROM company ORDER BY Sales_in_Billion DESC LIMIT 1	company_employee
SELECT Headquarters ,  COUNT(*) FROM company GROUP BY Headquarters	company_employee
SELECT Headquarters FROM company GROUP BY Headquarters ORDER BY COUNT(*) DESC LIMIT 1	company_employee
SELECT Headquarters FROM company GROUP BY Headquarters HAVING COUNT(*)  >=  2	company_employee
SELECT Headquarters FROM company WHERE Industry  =  "Banking" INTERSECT SELECT Headquarters FROM company WHERE Industry  =  "Oil and gas"	company_employee
SELECT T3.Name ,  T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID JOIN company AS T3 ON T1.Company_ID  =  T3.Company_ID	company_employee
SELECT T3.Name ,  T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID JOIN company AS T3 ON T1.Company_ID  =  T3.Company_ID ORDER BY T1.Year_working	company_employee
SELECT T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID JOIN company AS T3 ON T1.Company_ID  =  T3.Company_ID WHERE T3.Sales_in_Billion  >  200	company_employee
SELECT T3.Name ,  COUNT(*) FROM employment AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID JOIN company AS T3 ON T1.Company_ID  =  T3.Company_ID GROUP BY T3.Name	company_employee
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM employment)	company_employee
SELECT name FROM company WHERE Sales_in_Billion  >  200 ORDER BY Sales_in_Billion ,  Profits_in_Billion DESC	company_employee
SELECT count(*) FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT calendar_date ,  day_Number FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT calendar_date ,  day_Number FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_code ,  document_type_name FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_code ,  document_type_name FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_name ,  document_type_description FROM Ref_document_types WHERE document_type_code  =  "RV"	cre_Doc_Tracking_DB
SELECT document_type_name ,  document_type_description FROM Ref_document_types WHERE document_type_code  =  "RV"	cre_Doc_Tracking_DB
SELECT document_type_code FROM Ref_document_types WHERE document_type_name  =  "Paper"	cre_Doc_Tracking_DB
SELECT document_type_code FROM Ref_document_types WHERE document_type_name  =  "Paper"	cre_Doc_Tracking_DB
SELECT count(*) FROM All_documents WHERE document_type_code  =  "CV" OR document_type_code  =  "BK"	cre_Doc_Tracking_DB
SELECT count(*) FROM All_documents WHERE document_type_code  =  "CV" OR document_type_code  =  "BK"	cre_Doc_Tracking_DB
SELECT date_stored FROM All_documents WHERE Document_name  =  "Marry CV"	cre_Doc_Tracking_DB
SELECT date_stored FROM All_documents WHERE Document_name  =  "Marry CV"	cre_Doc_Tracking_DB
SELECT T2.day_Number ,  T1.Date_Stored FROM All_documents AS T1 JOIN Ref_calendar AS T2 ON T1.date_stored  =  T2.calendar_date	cre_Doc_Tracking_DB
SELECT T2.day_Number ,  T1.Date_Stored FROM All_documents AS T1 JOIN Ref_calendar AS T2 ON T1.date_stored  =  T2.calendar_date	cre_Doc_Tracking_DB
SELECT T2.document_type_name FROM All_documents AS T1 JOIN Ref_document_types AS T2 ON T1.document_type_code  =  T2.document_type_code WHERE T1.document_name  =  "How to read a book"	cre_Doc_Tracking_DB
SELECT T2.document_type_name FROM All_documents AS T1 JOIN Ref_document_types AS T2 ON T1.document_type_code  =  T2.document_type_code WHERE T1.document_name  =  "How to read a book"	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_locations	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_code ,  location_name FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_code ,  location_name FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_name ,  location_description FROM Ref_locations WHERE location_code  =  "x"	cre_Doc_Tracking_DB
SELECT location_name ,  location_description FROM Ref_locations WHERE location_code  =  "x"	cre_Doc_Tracking_DB
SELECT location_code FROM Ref_locations WHERE location_name  =  "Canada"	cre_Doc_Tracking_DB
SELECT location_code FROM Ref_locations WHERE location_name  =  "Canada"	cre_Doc_Tracking_DB
SELECT count(*) FROM ROLES	cre_Doc_Tracking_DB
SELECT count(*) FROM ROLES	cre_Doc_Tracking_DB
SELECT role_code ,  role_name ,  role_description FROM ROLES	cre_Doc_Tracking_DB
SELECT role_code ,  role_name ,  role_description FROM ROLES	cre_Doc_Tracking_DB
SELECT role_name ,  role_description FROM ROLES WHERE role_code  =  "MG"	cre_Doc_Tracking_DB
SELECT role_name ,  role_description FROM ROLES WHERE role_code  =  "MG"	cre_Doc_Tracking_DB
SELECT role_description FROM ROLES WHERE role_name  =  "Proof Reader"	cre_Doc_Tracking_DB
SELECT role_description FROM ROLES WHERE role_name  =  "Proof Reader"	cre_Doc_Tracking_DB
SELECT count(*) FROM Employees	cre_Doc_Tracking_DB
SELECT count(*) FROM Employees	cre_Doc_Tracking_DB
SELECT employee_name ,  role_code ,  date_of_birth FROM Employees WHERE employee_Name  =  'Armani'	cre_Doc_Tracking_DB
SELECT employee_name ,  role_code ,  date_of_birth FROM Employees WHERE employee_Name  =  'Armani'	cre_Doc_Tracking_DB
SELECT employee_ID FROM Employees WHERE employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT employee_ID FROM Employees WHERE employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT employee_name FROM Employees WHERE role_code  =  "HR"	cre_Doc_Tracking_DB
SELECT employee_name FROM Employees WHERE role_code  =  "HR"	cre_Doc_Tracking_DB
SELECT role_code ,  count(*) FROM Employees GROUP BY role_code	cre_Doc_Tracking_DB
SELECT role_code ,  count(*) FROM Employees GROUP BY role_code	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT T2.role_name ,  T2.role_description FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T1.employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT T2.role_name ,  T2.role_description FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T1.employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT T1.employee_name FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T2.role_name  =  "Editor"	cre_Doc_Tracking_DB
SELECT T1.employee_name FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T2.role_name  =  "Editor"	cre_Doc_Tracking_DB
SELECT T1.employee_id FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T2.role_name  =  "Human Resource" OR T2.role_name  =  "Manager"	cre_Doc_Tracking_DB
SELECT T1.employee_id FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T2.role_name  =  "Human Resource" OR T2.role_name  =  "Manager"	cre_Doc_Tracking_DB
SELECT DISTINCT location_code FROM Document_locations	cre_Doc_Tracking_DB
SELECT DISTINCT location_code FROM Document_locations	cre_Doc_Tracking_DB
SELECT T3.location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id  =  T2.document_id JOIN Ref_locations AS T3 ON T2.location_code  =  T3.location_code WHERE T1.document_name  =  "Robin CV"	cre_Doc_Tracking_DB
SELECT T3.location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id  =  T2.document_id JOIN Ref_locations AS T3 ON T2.location_code  =  T3.location_code WHERE T1.document_name  =  "Robin CV"	cre_Doc_Tracking_DB
SELECT location_code ,  date_in_location_from ,  date_in_locaton_to FROM Document_locations	cre_Doc_Tracking_DB
SELECT location_code ,  date_in_location_from ,  date_in_locaton_to FROM Document_locations	cre_Doc_Tracking_DB
SELECT T1.date_in_location_from ,  T1.date_in_locaton_to FROM Document_locations AS T1 JOIN All_documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Robin CV"	cre_Doc_Tracking_DB
SELECT T1.date_in_location_from ,  T1.date_in_locaton_to FROM Document_locations AS T1 JOIN All_documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Robin CV"	cre_Doc_Tracking_DB
SELECT location_code ,  count(*) FROM Document_locations GROUP BY location_code	cre_Doc_Tracking_DB
SELECT location_code ,  count(*) FROM Document_locations GROUP BY location_code	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT T2.location_name ,  T1.location_code FROM Document_locations AS T1 JOIN Ref_locations AS T2 ON T1.location_code  =  T2.location_code GROUP BY T1.location_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT T2.location_name ,  T1.location_code FROM Document_locations AS T1 JOIN Ref_locations AS T2 ON T1.location_code  =  T2.location_code GROUP BY T1.location_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT T2.employee_name ,  T3.employee_name FROM Documents_to_be_destroyed AS T1 JOIN Employees AS T2 ON T1.Destruction_Authorised_by_Employee_ID = T2.employee_id JOIN Employees AS T3 ON T1.Destroyed_by_Employee_ID = T3.employee_id;	cre_Doc_Tracking_DB
SELECT T2.employee_name ,  T3.employee_name FROM Documents_to_be_destroyed AS T1 JOIN Employees AS T2 ON T1.Destruction_Authorised_by_Employee_ID = T2.employee_id JOIN Employees AS T3 ON T1.Destroyed_by_Employee_ID = T3.employee_id;	cre_Doc_Tracking_DB
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT T1.grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id WHERE T2.sent_date  <  '1986-08-26 20:49:27' INTERSECT SELECT grant_amount FROM grants WHERE grant_end_date  >  '1989-03-16 18:27:16'	tracking_grants_for_research
SELECT T1.grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id WHERE T2.sent_date  <  '1986-08-26 20:49:27' INTERSECT SELECT grant_amount FROM grants WHERE grant_end_date  >  '1989-03-16 18:27:16'	tracking_grants_for_research
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Paper' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Patent'	tracking_grants_for_research
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Paper' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Patent'	tracking_grants_for_research
SELECT sum(grant_amount) FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id  =  T2.organisation_id JOIN organisation_Types AS T3 ON T2.organisation_type  =  T3.organisation_type WHERE T3.organisation_type_description  =  'Research'	tracking_grants_for_research
SELECT sum(grant_amount) FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id  =  T2.organisation_id JOIN organisation_Types AS T3 ON T2.organisation_type  =  T3.organisation_type WHERE T3.organisation_type_description  =  'Research'	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'	tracking_grants_for_research
SELECT T2.organisation_id ,  T2.organisation_details FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id  =  T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.grant_amount)  >  6000	tracking_grants_for_research
SELECT T2.organisation_id ,  T2.organisation_details FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id  =  T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.grant_amount)  >  6000	tracking_grants_for_research
SELECT T1.organisation_type ,  T1.organisation_id FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_type ,  T1.organisation_id FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_type FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_type ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_type FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_type ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.sent_date FROM documents AS T1 JOIN Grants AS T2 ON T1.grant_id  =  T2.grant_id JOIN Organisations AS T3 ON T2.organisation_id  =  T3.organisation_id JOIN organisation_Types AS T4 ON T3.organisation_type  =  T4.organisation_type WHERE T2.grant_amount  >  5000 AND T4.organisation_type_description  =  'Research'	tracking_grants_for_research
SELECT T1.sent_date FROM documents AS T1 JOIN Grants AS T2 ON T1.grant_id  =  T2.grant_id JOIN Organisations AS T3 ON T2.organisation_id  =  T3.organisation_id JOIN organisation_Types AS T4 ON T3.organisation_type  =  T4.organisation_type WHERE T2.grant_amount  >  5000 AND T4.organisation_type_description  =  'Research'	tracking_grants_for_research
SELECT T1.response_received_date FROM Documents AS T1 JOIN Document_Types AS T2 ON T1.document_type_code  =  T2.document_type_code JOIN Grants AS T3 ON T1.grant_id  =  T3.grant_id WHERE T2.document_description  =  'Regular' OR T3.grant_amount  >  100	tracking_grants_for_research
SELECT T1.response_received_date FROM Documents AS T1 JOIN Document_Types AS T2 ON T1.document_type_code  =  T2.document_type_code JOIN Grants AS T3 ON T1.grant_id  =  T3.grant_id WHERE T2.document_description  =  'Regular' OR T3.grant_amount  >  100	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code  =  'researcher' )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code  =  'researcher' )	tracking_grants_for_research
SELECT T1.task_details ,  T1.task_id ,  T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id WHERE T2.project_details  =  'omnis' UNION SELECT T1.task_details ,  T1.task_id ,  T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id JOIN Project_outcomes AS T3 ON T2.project_id  =  T3.project_id GROUP BY T2.project_id HAVING count(*)  >  2	tracking_grants_for_research
SELECT T1.task_details ,  T1.task_id ,  T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id WHERE T2.project_details  =  'omnis' UNION SELECT T1.task_details ,  T1.task_id ,  T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id JOIN Project_outcomes AS T3 ON T2.project_id  =  T3.project_id GROUP BY T2.project_id HAVING count(*)  >  2	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT count(DISTINCT role_code) FROM Project_Staff	tracking_grants_for_research
SELECT count(DISTINCT role_code) FROM Project_Staff	tracking_grants_for_research
SELECT sum(grant_amount) ,  organisation_id FROM Grants GROUP BY organisation_id	tracking_grants_for_research
SELECT sum(grant_amount) ,  organisation_id FROM Grants GROUP BY organisation_id	tracking_grants_for_research
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id JOIN Research_outcomes AS T3 ON T2.outcome_code  =  T3.outcome_code WHERE T3.outcome_description LIKE '%Published%'	tracking_grants_for_research
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id JOIN Research_outcomes AS T3 ON T2.outcome_code  =  T3.outcome_code WHERE T3.outcome_description LIKE '%Published%'	tracking_grants_for_research
SELECT T1.project_id ,  count(*) FROM Project_Staff AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) ASC	tracking_grants_for_research
SELECT T1.project_id ,  count(*) FROM Project_Staff AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) ASC	tracking_grants_for_research
SELECT role_description FROM Staff_Roles WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT role_description FROM Staff_Roles WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1	tracking_grants_for_research
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1	tracking_grants_for_research
SELECT T1.project_details ,  T1.project_id FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.project_details ,  T1.project_id FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )	tracking_grants_for_research
SELECT T1.organisation_id ,  T1.organisation_type ,  T1.organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_id ,  T1.organisation_type ,  T1.organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.role_description ,  T2.staff_id FROM Staff_Roles AS T1 JOIN Project_Staff AS T2 ON T1.role_code  =  T2.role_code JOIN Project_outcomes AS T3 ON T2.project_id  =  T3.project_id GROUP BY T2.staff_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.role_description ,  T2.staff_id FROM Staff_Roles AS T1 JOIN Project_Staff AS T2 ON T1.role_code  =  T2.role_code JOIN Project_outcomes AS T3 ON T2.project_id  =  T3.project_id GROUP BY T2.staff_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial%'	tracking_grants_for_research
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial%'	tracking_grants_for_research
SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code  =  T3.document_type_code WHERE T3.document_description  =  'Regular' INTERSECT SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code  =  T3.document_type_code WHERE T3.document_description  =  'Initial Application'	tracking_grants_for_research
SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code  =  T3.document_type_code WHERE T3.document_description  =  'Regular' INTERSECT SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code  =  T3.document_type_code WHERE T3.document_description  =  'Initial Application'	tracking_grants_for_research
SELECT grant_id ,  count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT grant_id ,  count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_type_description FROM organisation_Types AS T1 JOIN Organisations AS T2 ON T1.organisation_type  =  T2.organisation_type WHERE T2.organisation_details  =  'quo'	tracking_grants_for_research
SELECT T1.organisation_type_description FROM organisation_Types AS T1 JOIN Organisations AS T2 ON T1.organisation_type  =  T2.organisation_type WHERE T2.organisation_details  =  'quo'	tracking_grants_for_research
SELECT organisation_details FROM Organisations AS T1 JOIN organisation_Types AS T2 ON T1.organisation_type  =  T2.organisation_type WHERE T2.organisation_type_description  =  'Sponsor' ORDER BY organisation_details	tracking_grants_for_research
SELECT organisation_details FROM Organisations AS T1 JOIN organisation_Types AS T2 ON T1.organisation_type  =  T2.organisation_type WHERE T2.organisation_type_description  =  'Sponsor' ORDER BY organisation_details	tracking_grants_for_research
SELECT count(*) FROM Project_outcomes WHERE outcome_code  =  'Patent'	tracking_grants_for_research
SELECT count(*) FROM Project_outcomes WHERE outcome_code  =  'Patent'	tracking_grants_for_research
SELECT count(*) FROM Project_Staff WHERE role_code  =  'leader' OR date_from  <  '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT count(*) FROM Project_Staff WHERE role_code  =  'leader' OR date_from  <  '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1	tracking_grants_for_research
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1	tracking_grants_for_research
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code JOIN Projects AS T3 ON T2.project_id  =  T3.project_id WHERE T3.project_details  =  'sint'	tracking_grants_for_research
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code JOIN Projects AS T3 ON T2.project_id  =  T3.project_id WHERE T3.project_details  =  'sint'	tracking_grants_for_research
SELECT T1.organisation_id ,  count(*) FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_id ,  count(*) FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC	tracking_grants_for_research
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC	tracking_grants_for_research
SELECT count(*) FROM Tasks	tracking_grants_for_research
SELECT count(*) FROM Tasks	tracking_grants_for_research
SELECT count(*) ,  T1.project_details FROM Projects AS T1 JOIN Tasks AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id	tracking_grants_for_research
SELECT count(*) ,  T1.project_details FROM Projects AS T1 JOIN Tasks AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id	tracking_grants_for_research
SELECT role_code FROM Project_Staff WHERE date_from  >  '2003-04-19 15:06:20' AND date_to  <  '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT role_code FROM Project_Staff WHERE date_from  >  '2003-04-19 15:06:20' AND date_to  <  '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code	tracking_grants_for_research
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code	tracking_grants_for_research
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT homepage FROM journal WHERE name  =  "PVLDB";	academic
SELECT homepage FROM author WHERE name  =  "H. V. Jagadish";	academic
SELECT abstract FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT YEAR FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT YEAR FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT title FROM publication WHERE YEAR  >  2000;	academic
SELECT homepage FROM conference WHERE name  =  "VLDB";	academic
SELECT keyword FROM keyword;	academic
SELECT name FROM organization;	academic
SELECT name FROM organization WHERE continent  =  "North America";	academic
SELECT homepage FROM organization WHERE name  =  "University of Michigan";	academic
SELECT reference_num FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT reference_num FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT citation_num FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT citation_num FROM publication WHERE title  =  "Making database systems usable";	academic
SELECT title FROM publication WHERE citation_num  >  200;	academic
SELECT t1.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB" AND t4.year  =  2010;	academic
SELECT t1.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB" AND t4.year  >  2010;	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB" AND t4.year  =  2002;	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB" AND t4.year  <  2002;	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB" AND t4.year  <  2002 AND t4.year  >  1995;	academic
SELECT t3.name FROM DOMAIN AS t3 JOIN domain_journal AS t1 ON t3.did  =  t1.did JOIN journal AS t2 ON t2.jid  =  t1.jid WHERE t2.name  =  "PVLDB";	academic
SELECT t1.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB";	academic
SELECT t2.name FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t2.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t2.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t2.name FROM domain_author AS t3 JOIN author AS t1 ON t3.aid  =  t1.aid JOIN DOMAIN AS t2 ON t2.did  =  t3.did WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t1.name FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t3.title  =  "Making database systems usable";	academic
SELECT t1.name FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t2.title  =  "Making database systems usable";	academic
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB";	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB";	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  >  2000;	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  >  2000;	academic
SELECT t4.title FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "PVLDB";	academic
SELECT t4.title FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "VLDB";	academic
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish" AND t3.year  >  2000;	academic
SELECT t4.title FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "PVLDB" AND t4.year  >  2000;	academic
SELECT t4.title FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "VLDB" AND t4.year  >  2000;	academic
SELECT t2.name FROM domain_conference AS t3 JOIN conference AS t1 ON t3.cid  =  t1.cid JOIN DOMAIN AS t2 ON t2.did  =  t3.did WHERE t1.name  =  "VLDB";	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB";	academic
SELECT t1.keyword FROM DOMAIN AS t3 JOIN domain_keyword AS t2 ON t3.did  =  t2.did JOIN keyword AS t1 ON t1.kid  =  t2.kid WHERE t3.name  =  "Databases";	academic
SELECT t3.title FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t2.pid WHERE t1.keyword  =  "Natural Language";	academic
SELECT t1.keyword FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t3.pid WHERE t2.title  =  "Making database systems usable";	academic
SELECT t1.keyword FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish";	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t2.name  =  "VLDB";	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t3.name  =  "PVLDB";	academic
SELECT t1.keyword FROM organization AS t6 JOIN author AS t2 ON t6.oid  =  t2.oid JOIN writes AS t4 ON t4.aid  =  t2.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN publication_keyword AS t3 ON t5.pid  =  t3.pid JOIN keyword AS t1 ON t3.kid  =  t1.kid WHERE t6.name  =  "University of Michigan";	academic
SELECT t5.title FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t5 ON t5.pid  =  t3.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.keyword  =  "User Study";	academic
SELECT t4.title FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.kid JOIN publication AS t4 ON t4.pid  =  t2.pid JOIN journal AS t3 ON t4.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t1.keyword  =  "Keyword search";	academic
SELECT t4.title FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t4 ON t4.pid  =  t3.pid JOIN conference AS t2 ON t4.cid  =  t2.cid WHERE t2.name  =  "VLDB" AND t1.keyword  =  "Information Retrieval";	academic
SELECT t2.name FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t1.keyword  =  "Relational Database";	academic
SELECT t2.name FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases";	academic
SELECT t2.name FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases" AND t2.continent  =  "North America";	academic
SELECT t1.name FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid WHERE t2.name  =  "University of Michigan";	academic
SELECT t1.name FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases" AND t2.name  =  "University of Michigan";	academic
SELECT t4.title FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan";	academic
SELECT t4.title FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan" AND t4.year  >  2000;	academic
SELECT t5.title FROM organization AS t3 JOIN author AS t1 ON t3.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN conference AS t2 ON t5.cid  =  t2.cid WHERE t2.name  =  "VLDB" AND t3.name  =  "University of Michigan";	academic
SELECT t5.title FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN journal AS t3 ON t5.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t2.name  =  "University of Michigan";	academic
SELECT t5.title FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN journal AS t3 ON t5.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t2.name  =  "University of Michigan" AND t5.year  >  2000;	academic
SELECT t3.title FROM DOMAIN AS t2 JOIN domain_publication AS t1 ON t2.did  =  t1.did JOIN publication AS t3 ON t3.pid  =  t1.pid WHERE t2.name  =  "Databases" AND t3.citation_num  >  200;	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.citation_num  >  200;	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.citation_num  >  200;	academic
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish" AND t3.citation_num  >  200;	academic
SELECT t4.title FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "PVLDB" AND t4.citation_num  >  200;	academic
SELECT t4.title FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "VLDB" AND t4.citation_num  >  200;	academic
SELECT title FROM publication WHERE citation_num  >  200 AND YEAR  >  2000;	academic
SELECT t3.title FROM DOMAIN AS t2 JOIN domain_publication AS t1 ON t2.did  =  t1.did JOIN publication AS t3 ON t3.pid  =  t1.pid WHERE t2.name  =  "Databases" AND t3.citation_num  >  200 AND t3.year  >  2000;	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.citation_num  >  200 AND t2.year  >  2000;	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.citation_num  >  200 AND t2.year  >  2000;	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t3.title )  ,  t3.year FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish" GROUP BY t3.year;	academic
SELECT COUNT ( DISTINCT t1.name ) FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t3.title  =  "Making database systems usable";	academic
SELECT YEAR  ,  SUM ( citation_num ) FROM publication WHERE title  =  "Making database systems usable" GROUP BY YEAR;	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t3 JOIN cite AS t1 ON t3.pid  =  t1.cited JOIN publication AS t2 ON t2.pid  =  t1.citing WHERE t3.title  =  "Making database systems usable" AND t2.year  <  2010;	academic
SELECT COUNT ( DISTINCT t3.title ) FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB";	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB";	academic
SELECT COUNT ( DISTINCT title ) FROM publication WHERE YEAR  >  2000;	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  >  2000;	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  >  2000;	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "PVLDB";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "VLDB";	academic
SELECT COUNT ( DISTINCT t3.title ) FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish" AND t3.year  >  2000;	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "PVLDB" AND t4.year  >  2000;	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t2.name  =  "VLDB" AND t4.year  >  2000;	academic
SELECT COUNT ( DISTINCT keyword ) FROM keyword;	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM DOMAIN AS t3 JOIN domain_keyword AS t2 ON t3.did  =  t2.did JOIN keyword AS t1 ON t1.kid  =  t2.kid WHERE t3.name  =  "Databases";	academic
SELECT COUNT ( DISTINCT t3.title ) FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t2.pid WHERE t1.keyword  =  "Natural Language";	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t3.pid WHERE t2.title  =  "Making database systems usable";	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t2.name  =  "VLDB";	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t3.name  =  "PVLDB";	academic
SELECT COUNT ( DISTINCT t1.keyword ) FROM organization AS t6 JOIN author AS t2 ON t6.oid  =  t2.oid JOIN writes AS t4 ON t4.aid  =  t2.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN publication_keyword AS t3 ON t5.pid  =  t3.pid JOIN keyword AS t1 ON t3.kid  =  t1.kid WHERE t6.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.title ) FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t5 ON t5.pid  =  t3.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.keyword  =  "User Study";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.kid JOIN publication AS t4 ON t4.pid  =  t2.pid JOIN journal AS t3 ON t4.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t1.keyword  =  "Keyword search";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid  =  t1.kid JOIN publication AS t4 ON t4.pid  =  t3.pid JOIN conference AS t2 ON t4.cid  =  t2.cid WHERE t2.name  =  "VLDB" AND t1.keyword  =  "Information Retrieval";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t1.keyword  =  "Relational Database";	academic
SELECT SUM ( t3.citation_num ) FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t2.pid WHERE t1.keyword  =  "Natural Language";	academic
SELECT COUNT ( DISTINCT name ) FROM organization;	academic
SELECT COUNT ( DISTINCT name ) FROM organization WHERE continent  =  "North America";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases" AND t2.continent  =  "North America";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM domain_author AS t6 JOIN author AS t1 ON t6.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t6.did JOIN domain_publication AS t2 ON t3.did  =  t2.did JOIN organization AS t5 ON t5.oid  =  t1.oid JOIN publication AS t4 ON t4.pid  =  t2.pid WHERE t3.name  =  "Databases" AND t5.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t4.title ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan" AND t4.year  >  2000;	academic
SELECT COUNT ( DISTINCT t5.title ) FROM organization AS t3 JOIN author AS t1 ON t3.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN conference AS t2 ON t5.cid  =  t2.cid WHERE t2.name  =  "VLDB" AND t3.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.title ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN journal AS t3 ON t5.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t2.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.title ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t4 ON t4.aid  =  t1.aid JOIN publication AS t5 ON t4.pid  =  t5.pid JOIN journal AS t3 ON t5.jid  =  t3.jid WHERE t3.name  =  "PVLDB" AND t2.name  =  "University of Michigan" AND t5.year  >  2000;	academic
SELECT SUM ( t4.citation_num ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid WHERE t2.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM domain_author AS t4 JOIN author AS t1 ON t4.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t4.did JOIN organization AS t2 ON t2.oid  =  t1.oid WHERE t3.name  =  "Databases" AND t2.name  =  "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB";	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  <  2000;	academic
SELECT COUNT ( DISTINCT t2.title ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  <  2000;	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB";	academic
SELECT t2.citation_num FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB";	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  =  2005;	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  <  2005;	academic
SELECT t2.year  ,  SUM ( t2.citation_num ) FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" GROUP BY t2.year;	academic
SELECT COUNT ( DISTINCT t2.title )  ,  t2.year FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" GROUP BY t2.year;	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB";	academic
SELECT t2.citation_num FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB";	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  =  2005;	academic
SELECT SUM ( t2.citation_num ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  <  2005;	academic
SELECT t2.year  ,  SUM ( t2.citation_num ) FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" GROUP BY t2.year;	academic
SELECT COUNT ( DISTINCT t2.title )  ,  t2.year FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" GROUP BY t2.year;	academic
SELECT t2.name FROM writes AS t4 JOIN author AS t2 ON t4.aid  =  t2.aid JOIN publication AS t7 ON t4.pid  =  t7.pid JOIN writes AS t5 ON t5.pid  =  t7.pid JOIN writes AS t6 ON t6.pid  =  t7.pid JOIN author AS t1 ON t5.aid  =  t1.aid JOIN author AS t3 ON t6.aid  =  t3.aid WHERE t1.name  =  "H. V. Jagadish" AND t3.name  =  "Divesh Srivastava";	academic
SELECT t2.name FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" AND t5.year  >  2000;	academic
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Divesh Srivastava";	academic
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Yunyao Li" AND t5.year  >  2005;	academic
SELECT t6.title FROM publication AS t6 JOIN journal AS t4 ON t6.jid  =  t4.jid JOIN writes AS t3 ON t3.pid  =  t6.pid JOIN writes AS t5 ON t5.pid  =  t6.pid JOIN author AS t1 ON t5.aid  =  t1.aid JOIN author AS t2 ON t3.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Yunyao Li" AND t4.name  =  "PVLDB";	academic
SELECT t6.title FROM publication AS t6 JOIN journal AS t4 ON t6.jid  =  t4.jid JOIN writes AS t3 ON t3.pid  =  t6.pid JOIN writes AS t5 ON t5.pid  =  t6.pid JOIN author AS t1 ON t5.aid  =  t1.aid JOIN author AS t2 ON t3.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Yunyao Li" AND t4.name  =  "PVLDB" AND t6.year  >  2005;	academic
SELECT t2.name FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Divesh Srivastava" AND t5.year  <  2000;	academic
SELECT t2.name FROM publication AS t7 JOIN cite AS t5 ON t7.pid  =  t5.citing JOIN publication AS t6 ON t6.pid  =  t5.cited JOIN writes AS t3 ON t3.pid  =  t7.pid JOIN writes AS t4 ON t4.pid  =  t6.pid JOIN author AS t2 ON t3.aid  =  t2.aid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t5.title ) FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Divesh Srivastava";	academic
SELECT COUNT ( DISTINCT t5.title ) FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Divesh Srivastava" AND t5.year  <  2000;	academic
SELECT COUNT ( DISTINCT t7.title ) FROM writes AS t4 JOIN author AS t2 ON t4.aid  =  t2.aid JOIN publication AS t7 ON t4.pid  =  t7.pid JOIN writes AS t5 ON t5.pid  =  t7.pid JOIN writes AS t6 ON t6.pid  =  t7.pid JOIN author AS t1 ON t5.aid  =  t1.aid JOIN author AS t3 ON t6.aid  =  t3.aid WHERE t2.name  =  "Cong Yu" AND t1.name  =  "H. V. Jagadish" AND t3.name  =  "Yunyao Li";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publication AS t7 JOIN cite AS t5 ON t7.pid  =  t5.citing JOIN publication AS t6 ON t6.pid  =  t5.cited JOIN writes AS t3 ON t3.pid  =  t7.pid JOIN writes AS t4 ON t4.pid  =  t6.pid JOIN author AS t2 ON t3.aid  =  t2.aid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish";	academic
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "H. V. Jagadish" AND t1.name  =  "Divesh Srivastava" AND t5.citation_num  >  200;	academic
SELECT t2.name FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t1.keyword  =  "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;	academic
SELECT t2.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t1.keyword  =  "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;	academic
SELECT t2.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t1.keyword  =  "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;	academic
SELECT t3.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t1.keyword  =  "Relational Database" GROUP BY t3.name ORDER BY COUNT ( DISTINCT t2.title ) DESC LIMIT 1;	academic
SELECT t3.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t1.keyword  =  "Relational Database" GROUP BY t3.name ORDER BY COUNT ( DISTINCT t2.title ) DESC LIMIT 1;	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t2.name  =  "VLDB" GROUP BY t1.keyword ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t3.name  =  "PVLDB" GROUP BY t1.keyword ORDER BY COUNT ( DISTINCT t2.title ) DESC LIMIT 1;	academic
SELECT t1.keyword FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" GROUP BY t1.keyword ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;	academic
SELECT t1.name FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan" GROUP BY t1.name ORDER BY SUM ( t4.citation_num ) DESC LIMIT 1;	academic
SELECT t1.name FROM DOMAIN AS t4 JOIN domain_publication AS t2 ON t4.did  =  t2.did JOIN publication AS t5 ON t5.pid  =  t2.pid JOIN writes AS t3 ON t3.pid  =  t5.pid JOIN author AS t1 ON t3.aid  =  t1.aid JOIN organization AS t6 ON t6.oid  =  t1.oid WHERE t4.name  =  "Databases" AND t6.name  =  "University of Michigan" GROUP BY t1.name ORDER BY SUM ( t5.citation_num ) DESC LIMIT 1;	academic
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid  =  t2.aid JOIN publication AS t5 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t5.pid JOIN author AS t1 ON t4.aid  =  t1.aid WHERE t2.name  =  "Divesh Srivastava" AND t1.name  =  "H. V. Jagadish" ORDER BY t5.citation_num DESC LIMIT 1;	academic
SELECT t2.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" GROUP BY t2.name HAVING COUNT ( DISTINCT t4.title )  >  10;	academic
SELECT t2.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t4.title ) DESC LIMIT 1;	academic
SELECT t2.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" GROUP BY t2.name HAVING COUNT ( DISTINCT t4.title )  >  10;	academic
SELECT t2.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t1.name  =  "H. V. Jagadish" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t4.title ) DESC LIMIT 1;	academic
SELECT title FROM publication ORDER BY citation_num DESC LIMIT 1;	academic
SELECT t3.title FROM DOMAIN AS t2 JOIN domain_publication AS t1 ON t2.did  =  t1.did JOIN publication AS t3 ON t3.pid  =  t1.pid WHERE t2.name  =  "Databases" ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.aid  =  t1.aid JOIN publication AS t3 ON t2.pid  =  t3.pid WHERE t1.name  =  "H. V. Jagadish" ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT title FROM publication WHERE YEAR  >  2000 ORDER BY citation_num DESC LIMIT 1;	academic
SELECT t3.title FROM DOMAIN AS t2 JOIN domain_publication AS t1 ON t2.did  =  t1.did JOIN publication AS t3 ON t3.pid  =  t1.pid WHERE t2.name  =  "Databases" AND t3.year  >  2000 ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid  =  t1.jid WHERE t1.name  =  "PVLDB" AND t2.year  >  2000 ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid  =  t1.cid WHERE t1.name  =  "VLDB" AND t2.year  >  2000 ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t1.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB" GROUP BY t1.name HAVING COUNT ( DISTINCT t4.title )  >  10;	academic
SELECT t1.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid  =  t2.jid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "PVLDB" GROUP BY t1.name ORDER BY COUNT ( DISTINCT t4.title ) DESC LIMIT 1;	academic
SELECT t2.name FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t1.keyword  =  "Relational Database" GROUP BY t2.name HAVING COUNT ( DISTINCT t3.title )  >  10;	academic
SELECT t2.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t1.keyword  =  "Relational Database" GROUP BY t2.name HAVING COUNT ( DISTINCT t3.title )  >  60;	academic
SELECT t3.name FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t1.keyword  =  "Relational Database" GROUP BY t3.name HAVING COUNT ( DISTINCT t2.title )  >  60;	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t4.pid JOIN conference AS t2 ON t3.cid  =  t2.cid WHERE t2.name  =  "VLDB" GROUP BY t1.keyword HAVING COUNT ( DISTINCT t3.title )  >  100;	academic
SELECT t1.keyword FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid  =  t1.kid JOIN publication AS t2 ON t2.pid  =  t4.pid JOIN journal AS t3 ON t2.jid  =  t3.jid WHERE t3.name  =  "PVLDB" GROUP BY t1.keyword HAVING COUNT ( DISTINCT t2.title )  >  100;	academic
SELECT t1.keyword FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid  =  t1.kid JOIN publication AS t3 ON t3.pid  =  t5.pid JOIN writes AS t4 ON t4.pid  =  t3.pid JOIN author AS t2 ON t4.aid  =  t2.aid WHERE t2.name  =  "H. V. Jagadish" GROUP BY t1.keyword HAVING COUNT ( DISTINCT t3.title )  >  10;	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB" GROUP BY t1.name HAVING COUNT ( DISTINCT t4.title )  >  10;	academic
SELECT t1.name FROM publication AS t4 JOIN conference AS t2 ON t4.cid  =  t2.cid JOIN writes AS t3 ON t3.pid  =  t4.pid JOIN author AS t1 ON t3.aid  =  t1.aid WHERE t2.name  =  "VLDB" GROUP BY t1.name ORDER BY COUNT ( DISTINCT t4.title ) DESC LIMIT 1;	academic
SELECT t1.name FROM organization AS t2 JOIN author AS t1 ON t2.oid  =  t1.oid JOIN writes AS t3 ON t3.aid  =  t1.aid JOIN publication AS t4 ON t3.pid  =  t4.pid WHERE t2.name  =  "University of Michigan" GROUP BY t1.name HAVING SUM ( t4.citation_num )  >  5000;	academic
SELECT t1.name FROM domain_author AS t6 JOIN author AS t1 ON t6.aid  =  t1.aid JOIN DOMAIN AS t3 ON t3.did  =  t6.did JOIN organization AS t5 ON t5.oid  =  t1.oid JOIN writes AS t2 ON t2.aid  =  t1.aid JOIN publication AS t4 ON t2.pid  =  t4.pid WHERE t3.name  =  "Databases" AND t5.name  =  "University of Michigan" GROUP BY t1.name HAVING SUM ( t4.citation_num )  >  5000;	academic
SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT avg(access_count) FROM documents	document_management
SELECT avg(access_count) FROM documents	document_management
SELECT t2.document_structure_description FROM documents AS t1 JOIN document_structures AS t2 ON t1.document_structure_code  =  t2.document_structure_code GROUP BY t1.document_structure_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT t2.document_structure_description FROM documents AS t1 JOIN document_structures AS t2 ON t1.document_structure_code  =  t2.document_structure_code GROUP BY t1.document_structure_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
SELECT t2.section_title FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code WHERE t1.document_name  =  "David CV"	document_management
SELECT t2.section_title FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code WHERE t1.document_name  =  "David CV"	document_management
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_sections)	document_management
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_sections)	document_management
SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT avg(t1.access_count) FROM documents AS t1 JOIN document_functional_areas AS t2 ON t1.document_code  =  t2.document_code JOIN functional_areas AS t3 ON t2.functional_area_code  =  t3.functional_area_code WHERE t3.functional_area_description  =  "Acknowledgement"	document_management
SELECT avg(t1.access_count) FROM documents AS t1 JOIN document_functional_areas AS t2 ON t1.document_code  =  t2.document_code JOIN functional_areas AS t3 ON t2.functional_area_code  =  t3.functional_area_code WHERE t3.functional_area_description  =  "Acknowledgement"	document_management
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code JOIN document_sections_images AS t3 ON t2.section_id  =  t3.section_id	document_management
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code JOIN document_sections_images AS t3 ON t2.section_id  =  t3.section_id	document_management
SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code GROUP BY t1.document_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code GROUP BY t1.document_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
SELECT count(*) FROM users WHERE user_login  =  1	document_management
SELECT count(*) FROM users WHERE user_login  =  1	document_management
SELECT role_description FROM ROLES WHERE role_code  =  (SELECT role_code FROM users WHERE user_login  =  1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT role_description FROM ROLES WHERE role_code  =  (SELECT role_code FROM users WHERE user_login  =  1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
SELECT count(*) FROM Products	solvency_ii
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	solvency_ii
SELECT Product_Name ,  Product_Type_Code FROM Products	solvency_ii
SELECT Product_Price FROM Products WHERE Product_Name  =  "Dining" OR Product_Name  =  "Trading Policy"	solvency_ii
SELECT avg(Product_Price) FROM Products	solvency_ii
SELECT Product_Name FROM Products ORDER BY Product_Price DESC LIMIT 1	solvency_ii
SELECT Product_Type_Code ,  COUNT(*) FROM Products GROUP BY Product_Type_Code	solvency_ii
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	solvency_ii
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code HAVING COUNT(*)  >=  2	solvency_ii
SELECT Product_Type_Code FROM Products WHERE Product_Price  >  4500 INTERSECT SELECT Product_Type_Code FROM Products WHERE Product_Price  <  3000	solvency_ii
SELECT T1.Product_Name ,  COUNT(*) FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name	solvency_ii
SELECT T1.Product_Name ,  COUNT(*) FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name ORDER BY COUNT(*) DESC	solvency_ii
SELECT T1.Product_Name FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name HAVING COUNT(*)  >=  2	solvency_ii
SELECT T1.Product_Name FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name HAVING COUNT(*)  >=  2 ORDER BY T1.Product_Name	solvency_ii
SELECT Product_Name FROM Products WHERE Product_ID NOT IN (SELECT Product_ID FROM Products_in_Events)	solvency_ii
SELECT count(*) FROM premises	customers_campaigns_ecommerce
SELECT DISTINCT premises_type FROM premises	customers_campaigns_ecommerce
SELECT premises_type ,  premise_details FROM premises ORDER BY premises_type	customers_campaigns_ecommerce
SELECT premises_type ,  count(*) FROM premises GROUP BY premises_type	customers_campaigns_ecommerce
SELECT product_category ,  count(*) FROM mailshot_campaigns GROUP BY product_category	customers_campaigns_ecommerce
SELECT customer_name ,  customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM mailshot_customers)	customers_campaigns_ecommerce
SELECT T1.customer_name ,  T1.customer_phone FROM customers AS T1 JOIN mailshot_customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.outcome_code  =  'No Response'	customers_campaigns_ecommerce
SELECT outcome_code ,  count(*) FROM mailshot_customers GROUP BY outcome_code	customers_campaigns_ecommerce
SELECT T2.customer_name FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE outcome_code  =  'Order' GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_campaigns_ecommerce
SELECT T2.customer_name FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_campaigns_ecommerce
SELECT T2.customer_name ,  T2.payment_method FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.outcome_code  =  'Order' INTERSECT SELECT T2.customer_name ,  T2.payment_method FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.outcome_code  =  'No Response'	customers_campaigns_ecommerce
SELECT T2.premises_type ,  T1.address_type_code FROM customer_addresses AS T1 JOIN premises AS T2 ON T1.premise_id  =  T2.premise_id	customers_campaigns_ecommerce
SELECT DISTINCT address_type_code FROM customer_addresses	customers_campaigns_ecommerce
SELECT order_shipping_charges ,  customer_id FROM customer_orders WHERE order_status_code  =  'Cancelled' OR order_status_code  =  'Paid'	customers_campaigns_ecommerce
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE shipping_method_code  =  'FedEx' AND order_status_code  =  'Paid'	customers_campaigns_ecommerce
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3	department_store
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3	department_store
SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
SELECT count(DISTINCT product_type_code) FROM products	department_store
SELECT count(DISTINCT product_type_code) FROM products	department_store
SELECT T1.address_details FROM addresses AS T1 JOIN customer_addresses AS T2 ON T1.address_id  =  T2.address_id WHERE T2.customer_id  =  10	department_store
SELECT T1.address_details FROM addresses AS T1 JOIN customer_addresses AS T2 ON T1.address_id  =  T2.address_id WHERE T2.customer_id  =  10	department_store
SELECT T1.staff_id ,  T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Department Manager"	department_store
SELECT T1.staff_id ,  T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Department Manager"	department_store
SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT T1.customer_name ,  T1.customer_phone ,  T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT T1.customer_name ,  T1.customer_phone ,  T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
SELECT count(*) FROM department_stores AS T1 JOIN department_store_chain AS T2 ON T1.dept_store_chain_id  =  T2.dept_store_chain_id WHERE T2.dept_store_chain_name  =  "South"	department_store
SELECT count(*) FROM department_stores AS T1 JOIN department_store_chain AS T2 ON T1.dept_store_chain_id  =  T2.dept_store_chain_id WHERE T2.dept_store_chain_name  =  "South"	department_store
SELECT T1.staff_name ,  T2.job_title_code FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id ORDER BY T2.date_assigned_to DESC LIMIT 1	department_store
SELECT T1.staff_name ,  T2.job_title_code FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id ORDER BY T2.date_assigned_to DESC LIMIT 1	department_store
SELECT T2.product_type_code ,  T2.product_name ,  T2.product_price FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id  =  T2.product_id WHERE T1.supplier_id  =  3	department_store
SELECT T2.product_type_code ,  T2.product_name ,  T2.product_price FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id  =  T2.product_id WHERE T1.supplier_id  =  3	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "Pending" ORDER BY T2.customer_id	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "Pending" ORDER BY T2.customer_id	department_store
SELECT T1.customer_name ,  T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "New" INTERSECT SELECT T1.customer_name ,  T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "Pending"	department_store
SELECT T1.customer_name ,  T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "New" INTERSECT SELECT T1.customer_name ,  T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  "Pending"	department_store
SELECT T1.product_id FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id  =  T2.product_id WHERE T1.supplier_id  =  2 AND T2.product_price  >  (SELECT avg(product_price) FROM products)	department_store
SELECT T1.product_id FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id  =  T2.product_id WHERE T1.supplier_id  =  2 AND T2.product_price  >  (SELECT avg(product_price) FROM products)	department_store
SELECT T2.dept_store_id ,  T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id  =  T2.dept_store_id WHERE T1.department_name  =  "marketing" INTERSECT SELECT T2.dept_store_id ,  T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id  =  T2.dept_store_id WHERE T1.department_name  =  "managing"	department_store
SELECT T2.dept_store_id ,  T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id  =  T2.dept_store_id WHERE T1.department_name  =  "marketing" INTERSECT SELECT T2.dept_store_id ,  T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id  =  T2.dept_store_id WHERE T1.department_name  =  "managing"	department_store
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1	department_store
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1	department_store
SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
SELECT T1.staff_id ,  T1.staff_name FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id ORDER BY date_assigned_to - date_assigned_from LIMIT 1	department_store
SELECT T1.staff_id ,  T1.staff_name FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id ORDER BY date_assigned_to - date_assigned_from LIMIT 1	department_store
SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date  >  (SELECT min(order_date) FROM Customer_Orders WHERE order_status_code  =  "Cancelled")	department_store
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date  >  (SELECT min(order_date) FROM Customer_Orders WHERE order_status_code  =  "Cancelled")	department_store
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to  <  (SELECT max(date_assigned_to) FROM Staff_Department_Assignments WHERE job_title_code  =  'Clerical Staff')	department_store
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to  <  (SELECT max(date_assigned_to) FROM Staff_Department_Assignments WHERE job_title_code  =  'Clerical Staff')	department_store
SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.date_assigned_from LIKE "2016%"	department_store
SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.date_assigned_from LIKE "2016%"	department_store
SELECT T1.staff_name FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T2.staff_id HAVING COUNT (*)  >  1	department_store
SELECT T1.staff_name FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T2.staff_id HAVING COUNT (*)  >  1	department_store
SELECT T1.supplier_name ,  T1.supplier_phone FROM Suppliers AS T1 JOIN supplier_addresses AS T2 ON T1.supplier_id  =  T2.supplier_id JOIN addresses AS T3 ON T2.address_id  =  T3.address_id ORDER BY T3.address_details	department_store
SELECT T1.supplier_name ,  T1.supplier_phone FROM Suppliers AS T1 JOIN supplier_addresses AS T2 ON T1.supplier_id  =  T2.supplier_id JOIN addresses AS T3 ON T2.address_id  =  T3.address_id ORDER BY T3.address_details	department_store
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers	department_store
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers	department_store
SELECT product_id FROM Order_Items GROUP BY product_id HAVING count(*)  >  3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(total_amount_purchased)  >  80000	department_store
SELECT product_id FROM Order_Items GROUP BY product_id HAVING count(*)  >  3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(total_amount_purchased)  >  80000	department_store
SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased)  >  50000 OR avg(total_amount_purchased)  <  30000	department_store
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased)  >  50000 OR avg(total_amount_purchased)  <  30000	department_store
SELECT avg(total_amount_purchased) ,  avg(total_value_purchased) FROM Product_Suppliers WHERE supplier_id  =  (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT avg(total_amount_purchased) ,  avg(total_value_purchased) FROM Product_Suppliers WHERE supplier_id  =  (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT max(customer_code) ,  min(customer_code) FROM Customers	department_store
SELECT max(customer_code) ,  min(customer_code) FROM Customers	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T2.order_id  =  T3.order_id JOIN products AS T4 ON T3.product_id  =  T4.product_id WHERE T4.product_name  =  "keyboard"	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T2.order_id  =  T3.order_id JOIN products AS T4 ON T3.product_id  =  T4.product_id WHERE T4.product_name  =  "keyboard"	department_store
SELECT DISTINCT T1.supplier_name ,  T1.supplier_phone FROM suppliers AS T1 JOIN product_suppliers AS T2 ON T1.supplier_id  =  T2.supplier_id JOIN products AS T3 ON T2.product_id  =  T3.product_id WHERE T3.product_name  =  "red jeans"	department_store
SELECT DISTINCT T1.supplier_name ,  T1.supplier_phone FROM suppliers AS T1 JOIN product_suppliers AS T2 ON T1.supplier_id  =  T2.supplier_id JOIN products AS T3 ON T2.product_id  =  T3.product_id WHERE T3.product_name  =  "red jeans"	department_store
SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
SELECT order_id ,  customer_id FROM customer_orders WHERE order_status_code  =   "Cancelled" ORDER BY order_date	department_store
SELECT order_id ,  customer_id FROM customer_orders WHERE order_status_code  =   "Cancelled" ORDER BY order_date	department_store
SELECT DISTINCT T3.product_name FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id  =  T2.order_id JOIN products AS T3 ON T2.product_id  =  T3.product_id GROUP BY T3.product_id HAVING COUNT (DISTINCT T1.customer_id)  >=  2	department_store
SELECT DISTINCT T3.product_name FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id  =  T2.order_id JOIN products AS T3 ON T2.product_id  =  T3.product_id GROUP BY T3.product_id HAVING COUNT (DISTINCT T1.customer_id)  >=  2	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.customer_id HAVING COUNT (DISTINCT T3.product_id)  >=  3	department_store
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.customer_id HAVING COUNT (DISTINCT T3.product_id)  >=  3	department_store
SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Sales Person" EXCEPT SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Clerical Staff"	department_store
SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Sales Person" EXCEPT SELECT T1.staff_name ,  T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Clerical Staff"	department_store
SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
SELECT T1.property_id ,  count(*) FROM properties AS T1 JOIN residents AS T2 ON T1.property_id  =  T2.property_id GROUP BY T1.property_id	local_govt_and_lot
SELECT DISTINCT T1.service_type_code FROM services AS T1 JOIN organizations AS T2 ON T1.organization_id  =  T2.organization_id WHERE T2.organization_details  =  'Denesik and Sons Party'	local_govt_and_lot
SELECT T1.resident_id ,  T1.other_details ,  count(*) FROM Residents AS T1 JOIN Residents_Services AS T2 ON T1.resident_id  =  T2.resident_id GROUP BY T1.resident_id ORDER BY count(*) DESC	local_govt_and_lot
SELECT T1.service_id ,  T1.service_details ,  count(*) FROM Services AS T1 JOIN Residents_Services AS T2 ON T1.service_id  =  T2.service_id GROUP BY T1.service_id ORDER BY count(*) DESC LIMIT 1	local_govt_and_lot
SELECT T1.thing_id ,  T1.type_of_Thing_Code ,  T2.organization_details FROM Things AS T1 JOIN Organizations AS T2 ON T1.organization_id  =  T2.organization_id	local_govt_and_lot
SELECT T1.customer_id ,  T1.customer_details FROM Customers AS T1 JOIN Customer_Events AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  3	local_govt_and_lot
SELECT T2.date_moved_in ,  T1.customer_id ,  T1.customer_details FROM Customers AS T1 JOIN Customer_Events AS T2 ON T1.customer_id  =  T2.customer_id	local_govt_and_lot
SELECT T1.Customer_Event_ID  ,  T1.property_id FROM Customer_Events AS T1 JOIN Customer_Event_Notes AS T2 ON T1.Customer_Event_ID  =  T2.Customer_Event_ID GROUP BY T1.customer_event_id HAVING count(*) BETWEEN 1 AND 3	local_govt_and_lot
SELECT DISTINCT T2.thing_id ,  T2.Type_of_Thing_Code FROM Timed_Status_of_Things AS T1 JOIN Things AS T2 ON T1.thing_id  =  T2.thing_id WHERE T1.Status_of_Thing_Code  =  'Close' OR T1.Date_and_Date  <  '2017-06-19 02:59:21'	local_govt_and_lot
SELECT count(DISTINCT T2.Location_Code) FROM Things AS T1 JOIN Timed_Locations_of_Things AS T2 ON T1.thing_id  =  T2.thing_id WHERE T1.service_details  =  'Unsatisfied'	local_govt_and_lot
SELECT count(DISTINCT Status_of_Thing_Code) FROM Timed_Status_of_Things	local_govt_and_lot
SELECT organization_id FROM organizations EXCEPT SELECT parent_organization_id FROM organizations	local_govt_and_lot
SELECT max(date_moved_in) FROM Residents	local_govt_and_lot
SELECT other_details FROM Residents WHERE other_details LIKE '%Miss%'	local_govt_and_lot
SELECT customer_event_id ,  date_moved_in ,  property_id FROM customer_events	local_govt_and_lot
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_events )	local_govt_and_lot
SELECT DISTINCT date_moved_in FROM residents	local_govt_and_lot
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t3.district_name  =  "Khanewal District"	store_product
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t3.district_name  =  "Khanewal District"	store_product
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id WHERE district_id  =  (SELECT district_id FROM district ORDER BY city_population DESC LIMIT 1)	store_product
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id WHERE district_id  =  (SELECT district_id FROM district ORDER BY city_population DESC LIMIT 1)	store_product
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.store_name  =  "Blackville"	store_product
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.store_name  =  "Blackville"	store_product
SELECT t3.headquartered_city ,  count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city	store_product
SELECT t3.headquartered_city ,  count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city	store_product
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1	store_product
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1	store_product
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT t1.product FROM product AS t1 JOIN store_product AS t2 ON t1.product_id  =  t2.product_id JOIN store AS t3 ON t2.store_id  =  t3.store_id WHERE t3.store_name  =  "Miramichi"	store_product
SELECT t1.product FROM product AS t1 JOIN store_product AS t2 ON t1.product_id  =  t2.product_id JOIN store AS t3 ON t2.store_id  =  t3.store_id WHERE t3.store_name  =  "Miramichi"	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "City Mall" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "Village Store"	store_product
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "City Mall" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "Village Store"	store_product
SELECT release_year FROM movie WHERE title  =  "The Imitation Game";	imdb
SELECT release_year FROM movie WHERE title  =  "The Imitation Game";	imdb
SELECT birth_year FROM actor WHERE name  =  "Benedict Cumberbatch";	imdb
SELECT birth_year FROM actor WHERE name  =  "Benedict Cumberbatch";	imdb
SELECT nationality FROM actor WHERE name  =  "Christoph Waltz";	imdb
SELECT nationality FROM actor WHERE name  =  "Christoph Waltz";	imdb
SELECT title FROM movie WHERE release_year  =  2015;	imdb
SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
SELECT name FROM actor WHERE birth_city  =  "Tehran";	imdb
SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
SELECT name FROM actor WHERE nationality  =  "Afghanistan";	imdb
SELECT name FROM actor WHERE birth_year  =  1984;	imdb
SELECT birth_year FROM actor WHERE name  =  "actor_name0";	imdb
SELECT birth_year FROM actor WHERE name  =  "actor_name0";	imdb
SELECT birth_city FROM director WHERE name  =  "director_name0";	imdb
SELECT birth_city FROM director WHERE name  =  "director_name0";	imdb
SELECT nationality FROM director WHERE name  =  "director_name0";	imdb
SELECT budget FROM movie WHERE title  =  "Finding Nemo";	imdb
SELECT t3.title FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Steven Spielberg" AND t3.release_year  >  2006;	imdb
SELECT t2.name FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.title  =  "James Bond";	imdb
SELECT t2.name FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.title  =  "James Bond";	imdb
SELECT t2.name FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.title  =  "James Bond";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t2.role  =  "Alan Turing" AND t3.title  =  "The Imitation Game";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t2.role  =  "Alan Turing" AND t3.title  =  "The Imitation Game";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t2.role  =  "Alan Turing" AND t3.title  =  "The Imitation Game";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t2.role  =  "Alan Turing" AND t3.title  =  "The Imitation Game";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t2.role  =  "Alan Turing" AND t3.title  =  "The Imitation Game";	imdb
SELECT t2.genre FROM genre AS t2 JOIN classification AS t1 ON t2.gid  =  t1.gid JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.title  =  "Jurassic Park";	imdb
SELECT t2.name FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.release_year  =  2015 AND t3.title  =  "Joy";	imdb
SELECT t1.title FROM written_by AS t3 JOIN movie AS t1 ON t3.msid  =  t1.mid JOIN writer AS t2 ON t3.wid  =  t2.wid WHERE t2.name  =  "Matt Damon";	imdb
SELECT t2.title FROM movie AS t2 JOIN made_by AS t3 ON t2.mid  =  t3.msid JOIN producer AS t1 ON t1.pid  =  t3.pid JOIN written_by AS t5 ON t5.msid  =  t2.mid JOIN writer AS t4 ON t5.wid  =  t4.wid WHERE t1.name  =  "Woody Allen" AND t4.name  =  "Woody Allen";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Robin Wright";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Robin Wright";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Robin Wright";	imdb
SELECT budget FROM movie WHERE release_year  =  2007 AND title  =  "Juno";	imdb
SELECT t3.title FROM genre AS t2 JOIN classification AS t1 ON t2.gid  =  t1.gid JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.genre  =  "Sci-Fi" AND t3.release_year  =  2010;	imdb
SELECT t3.title FROM genre AS t2 JOIN classification AS t1 ON t2.gid  =  t1.gid JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.genre  =  "Sci-Fi" AND t3.release_year  =  2010;	imdb
SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
SELECT name FROM actor WHERE birth_city  =  "Austin" AND birth_year  >  1980;	imdb
SELECT t3.title FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.birth_city  =  "Los Angeles";	imdb
SELECT name FROM actor WHERE birth_city  =  "New York City" AND birth_year  =  1984;	imdb
SELECT t3.title FROM tags AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.id JOIN movie AS t3 ON t2.msid  =  t3.mid WHERE t1.keyword  =  "nuclear weapons";	imdb
SELECT t3.title FROM tags AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.id JOIN movie AS t3 ON t2.msid  =  t3.mid WHERE t1.keyword  =  "nuclear weapons";	imdb
SELECT t3.title FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Alfred Hitchcock";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN directed_by AS t2 ON t4.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.name  =  "Taraneh Alidoosti" AND t3.name  =  "Asghar Farhadi";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN directed_by AS t2 ON t4.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.name  =  "Taraneh Alidoosti" AND t3.name  =  "Asghar Farhadi";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN directed_by AS t2 ON t4.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.name  =  "Taraneh Alidoosti" AND t3.name  =  "Asghar Farhadi";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN directed_by AS t2 ON t4.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.name  =  "Taraneh Alidoosti" AND t3.name  =  "Asghar Farhadi";	imdb
SELECT t2.title FROM producer AS t1 JOIN made_by AS t3 ON t1.pid  =  t3.pid JOIN tv_series AS t2 ON t2.sid  =  t3.msid WHERE t1.name  =  "Shonda Rhimes";	imdb
SELECT t1.name FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN tv_series AS t2 ON t2.sid  =  t3.msid WHERE t3.role  =  "Olivia Pope" AND t2.title  =  "Scandal";	imdb
SELECT t2.name FROM written_by AS t3 JOIN movie AS t1 ON t3.msid  =  t1.mid JOIN writer AS t2 ON t3.wid  =  t2.wid WHERE t1.title  =  "The Truman Show";	imdb
SELECT t2.name FROM written_by AS t3 JOIN movie AS t1 ON t3.msid  =  t1.mid JOIN writer AS t2 ON t3.wid  =  t2.wid WHERE t1.title  =  "The Truman Show";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN tv_series AS t2 ON t2.sid  =  t3.msid WHERE t1.name  =  "Scott Foley";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN tv_series AS t2 ON t2.sid  =  t3.msid WHERE t1.name  =  "Scott Foley";	imdb
SELECT t3.name FROM CAST AS t4 JOIN actor AS t1 ON t4.aid  =  t1.aid JOIN movie AS t5 ON t5.mid  =  t4.msid JOIN directed_by AS t2 ON t5.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.name  =  "Kate Winslet";	imdb
SELECT t1.name FROM CAST AS t3 JOIN actor AS t2 ON t3.aid  =  t2.aid JOIN movie AS t5 ON t5.mid  =  t3.msid JOIN made_by AS t4 ON t5.mid  =  t4.msid JOIN producer AS t1 ON t1.pid  =  t4.pid WHERE t2.name  =  "Kate Winslet";	imdb
SELECT t2.name FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN tv_series AS t3 ON t3.sid  =  t1.msid WHERE t3.release_year  =  2013 AND t3.title  =  "House of Cards";	imdb
SELECT name FROM actor WHERE birth_city  =  "Austin" AND gender  =  "female";	imdb
SELECT name FROM actor WHERE birth_year  >  1980 AND nationality  =  "Italy";	imdb
SELECT name FROM actor WHERE birth_city  =  "New York City" AND birth_year  >  1980 AND gender  =  "female";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t1.gender  =  "female" AND t3.title  =  "Saving Private Ryan";	imdb
SELECT name FROM director WHERE nationality  =  "Afghanistan";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t3.title  =  "Camp X-Ray";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t1.nationality  =  "Canada" AND t3.title  =  "James Bond";	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Rowan Atkinson" AND t3.role  =  "Mr. Bean";	imdb
SELECT t2.birth_city FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t3.title  =  "The Past";	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid WHERE t2.role  =  "Mr. Bean";	imdb
SELECT t3.genre FROM director AS t5 JOIN directed_by AS t2 ON t5.did  =  t2.did JOIN movie AS t4 ON t4.mid  =  t2.msid JOIN classification AS t1 ON t4.mid  =  t1.msid JOIN genre AS t3 ON t3.gid  =  t1.gid WHERE t5.name  =  "Asghar Farhadi";	imdb
SELECT t1.title FROM movie AS t1 JOIN CAST AS t2 ON t1.mid  =  t2.msid WHERE t2.role  =  "Daffy Duck";	imdb
SELECT t2.role FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t3.title  =  "Daddy Long Legs";	imdb
SELECT t3.name FROM director AS t3 JOIN directed_by AS t2 ON t3.did  =  t2.did JOIN movie AS t4 ON t4.mid  =  t2.msid JOIN tags AS t5 ON t5.msid  =  t4.mid JOIN keyword AS t1 ON t5.kid  =  t1.id WHERE t1.keyword  =  "nuclear weapons";	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Jennifer Aniston" AND t2.release_year  >  2010;	imdb
SELECT COUNT ( DISTINCT t1.name  ) FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t3.title  =  "Saving Private Ryan";	imdb
SELECT COUNT ( DISTINCT t1.name  ) FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t3.title  =  "Saving Private Ryan";	imdb
SELECT COUNT ( DISTINCT t3.title  ) FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Steven Spielberg";	imdb
SELECT COUNT ( DISTINCT title  ) FROM movie WHERE release_year  =  2013;	imdb
SELECT COUNT ( DISTINCT title  ) FROM movie WHERE release_year  =  2013;	imdb
SELECT COUNT ( DISTINCT t3.title  )  ,  t3.release_year FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Woody Allen" GROUP BY t3.release_year;	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT name  ) FROM actor WHERE birth_city  =  "Los Angeles" AND birth_year  >  2000;	imdb
SELECT COUNT ( DISTINCT t2.title  ) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Humphrey Bogart" AND t2.release_year  <  1942;	imdb
SELECT COUNT ( DISTINCT t2.title  )  ,  t2.release_year FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.name  =  "Brad Pitt" GROUP BY t2.release_year;	imdb
SELECT COUNT ( DISTINCT t3.title  ) FROM tags AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.id JOIN movie AS t3 ON t2.msid  =  t3.mid WHERE t1.keyword  =  "Iraq war" AND t3.release_year  =  2015;	imdb
SELECT COUNT ( DISTINCT t3.title  ) FROM tags AS t2 JOIN keyword AS t1 ON t2.kid  =  t1.id JOIN movie AS t3 ON t2.msid  =  t3.mid WHERE t1.keyword  =  "Persians" AND t3.release_year  >  1990;	imdb
SELECT COUNT ( DISTINCT t3.title  ) FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Quentin Tarantino" AND t3.release_year  >  2010;	imdb
SELECT COUNT ( DISTINCT t3.title  ) FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Quentin Tarantino" AND t3.release_year  <  2010;	imdb
SELECT COUNT ( DISTINCT t4.title  ) FROM director AS t3 JOIN directed_by AS t2 ON t3.did  =  t2.did JOIN movie AS t4 ON t4.mid  =  t2.msid JOIN made_by AS t5 ON t4.mid  =  t5.msid JOIN producer AS t1 ON t1.pid  =  t5.pid WHERE t3.name  =  "Quentin Tarantino" AND t4.release_year  <  2010 AND t4.release_year  >  2002;	imdb
SELECT COUNT ( DISTINCT name  ) FROM actor WHERE birth_city  =  "New York City" AND birth_year  >  1980 AND gender  =  "female";	imdb
SELECT COUNT ( DISTINCT t1.name  ) FROM CAST AS t4 JOIN actor AS t1 ON t4.aid  =  t1.aid JOIN movie AS t5 ON t5.mid  =  t4.msid JOIN directed_by AS t2 ON t5.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t1.nationality  =  "Iran" AND t3.name  =  "Jim Jarmusch";	imdb
SELECT COUNT ( DISTINCT t1.name  ) FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t1.nationality  =  "China" AND t3.title  =  "Rush Hour 3";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN CAST AS t3 ON t4.mid  =  t3.msid JOIN actor AS t2 ON t3.aid  =  t2.aid WHERE t1.name  =  "Woody Strode" AND t2.name  =  "Jason Robards";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN CAST AS t3 ON t4.mid  =  t3.msid JOIN actor AS t2 ON t3.aid  =  t2.aid WHERE t1.name  =  "Woody Strode" AND t2.name  =  "Jason Robards";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN CAST AS t3 ON t4.mid  =  t3.msid JOIN actor AS t2 ON t3.aid  =  t2.aid WHERE t1.name  =  "Woody Strode" AND t2.name  =  "Jason Robards";	imdb
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid  =  t1.aid JOIN movie AS t4 ON t4.mid  =  t5.msid JOIN CAST AS t3 ON t4.mid  =  t3.msid JOIN actor AS t2 ON t3.aid  =  t2.aid WHERE t1.name  =  "Woody Strode" AND t2.name  =  "Jason Robards";	imdb
SELECT t1.name FROM CAST AS t4 JOIN actor AS t1 ON t4.aid  =  t1.aid JOIN movie AS t5 ON t5.mid  =  t4.msid JOIN CAST AS t3 ON t5.mid  =  t3.msid JOIN actor AS t2 ON t3.aid  =  t2.aid WHERE t2.name  =  "Tom Hanks";	imdb
SELECT t3.title FROM director AS t5 JOIN directed_by AS t2 ON t5.did  =  t2.did JOIN directed_by AS t1 ON t5.did  =  t1.did JOIN movie AS t4 ON t4.mid  =  t2.msid JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t4.title  =  "Revolutionary Road";	imdb
SELECT t3.title FROM genre AS t2 JOIN classification AS t1 ON t2.gid  =  t1.gid JOIN movie AS t3 ON t3.mid  =  t1.msid GROUP BY t3.title ORDER BY COUNT ( DISTINCT t2.genre  ) DESC LIMIT 1;	imdb
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid  =  t1.aid JOIN movie AS t2 ON t2.mid  =  t3.msid WHERE t1.nationality  =  "China" GROUP BY t2.title ORDER BY COUNT ( DISTINCT t1.name  ) DESC LIMIT 1;	imdb
SELECT t1.name FROM CAST AS t4 JOIN actor AS t1 ON t4.aid  =  t1.aid JOIN movie AS t5 ON t5.mid  =  t4.msid JOIN directed_by AS t2 ON t5.mid  =  t2.msid JOIN director AS t3 ON t3.did  =  t2.did WHERE t3.name  =  "Quentin Tarantino" ORDER BY t5.release_year DESC LIMIT 1;	imdb
SELECT t3.budget  ,  t3.title FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Quentin Tarantino" ORDER BY t3.release_year DESC LIMIT 1;	imdb
SELECT t3.title FROM director AS t2 JOIN directed_by AS t1 ON t2.did  =  t1.did JOIN movie AS t3 ON t3.mid  =  t1.msid WHERE t2.name  =  "Jim Jarmusch" ORDER BY t3.release_year DESC LIMIT 1;	imdb
SELECT t1.name FROM director AS t3 JOIN directed_by AS t2 ON t3.did  =  t2.did JOIN movie AS t4 ON t4.mid  =  t2.msid JOIN made_by AS t5 ON t4.mid  =  t5.msid JOIN producer AS t1 ON t1.pid  =  t5.pid GROUP BY t1.name ORDER BY COUNT ( DISTINCT t3.name  ) DESC LIMIT 1;	imdb
SELECT t1.name FROM CAST AS t2 JOIN actor AS t1 ON t2.aid  =  t1.aid JOIN movie AS t3 ON t3.mid  =  t2.msid WHERE t1.name  =  "Gabriele Ferzetti" ORDER BY t3.release_year DESC LIMIT 1;	imdb
SELECT count(*) FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT count(*) FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Order_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Order_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Planned_Delivery_Date ,  Actual_Delivery_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Planned_Delivery_Date ,  Actual_Delivery_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT count(*) FROM CUSTOMERS	cre_Drama_Workshop_Groups
SELECT count(*) FROM CUSTOMERS	cre_Drama_Workshop_Groups
SELECT Customer_Phone ,  Customer_Email_Address FROM CUSTOMERS WHERE Customer_Name  =  "Harold"	cre_Drama_Workshop_Groups
SELECT Customer_Phone ,  Customer_Email_Address FROM CUSTOMERS WHERE Customer_Name  =  "Harold"	cre_Drama_Workshop_Groups
SELECT Store_Name FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT Store_Name FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT min(Order_Quantity) ,  avg(Order_Quantity) ,  max(Order_Quantity) FROM INVOICES	cre_Drama_Workshop_Groups
SELECT min(Order_Quantity) ,  avg(Order_Quantity) ,  max(Order_Quantity) FROM INVOICES	cre_Drama_Workshop_Groups
SELECT DISTINCT payment_method_code FROM INVOICES	cre_Drama_Workshop_Groups
SELECT DISTINCT payment_method_code FROM INVOICES	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Name  =  "China"	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Name  =  "China"	cre_Drama_Workshop_Groups
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price  >  (SELECT avg(Product_Price) FROM PRODUCTS)	cre_Drama_Workshop_Groups
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price  >  (SELECT avg(Product_Price) FROM PRODUCTS)	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	cre_Drama_Workshop_Groups
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	cre_Drama_Workshop_Groups
SELECT Customer_Phone FROM PERFORMERS WHERE Customer_Name  =  "Ashley"	cre_Drama_Workshop_Groups
SELECT Customer_Phone FROM PERFORMERS WHERE Customer_Name  =  "Ashley"	cre_Drama_Workshop_Groups
SELECT payment_method_code ,  count(*) FROM INVOICES GROUP BY payment_method_code	cre_Drama_Workshop_Groups
SELECT payment_method_code ,  count(*) FROM INVOICES GROUP BY payment_method_code	cre_Drama_Workshop_Groups
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T1.City_Town FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Store_Name  =  "FJA Filming"	cre_Drama_Workshop_Groups
SELECT T1.City_Town FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Store_Name  =  "FJA Filming"	cre_Drama_Workshop_Groups
SELECT T1.State_County FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Marketing_Region_Code  =  "CA"	cre_Drama_Workshop_Groups
SELECT T1.State_County FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Marketing_Region_Code  =  "CA"	cre_Drama_Workshop_Groups
SELECT T1.Marketing_Region_Name FROM Marketing_Regions AS T1 JOIN Stores AS T2 ON T1.Marketing_Region_Code  =  T2.Marketing_Region_Code WHERE T2.Store_Name  =  "Rob Dinning"	cre_Drama_Workshop_Groups
SELECT T1.Marketing_Region_Name FROM Marketing_Regions AS T1 JOIN Stores AS T2 ON T1.Marketing_Region_Code  =  T2.Marketing_Region_Code WHERE T2.Store_Name  =  "Rob Dinning"	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Price  >  100	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Price  >  100	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description ,  T2.Service_Type_Code ,  COUNT(*) FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code GROUP BY T2.Service_Type_Code	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description ,  T2.Service_Type_Code ,  COUNT(*) FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code GROUP BY T2.Service_Type_Code	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description , T1.Service_Type_Code FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code GROUP BY T1.Service_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description , T1.Service_Type_Code FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code GROUP BY T1.Service_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T1.Store_Phone ,  T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID	cre_Drama_Workshop_Groups
SELECT T1.Store_Phone ,  T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID	cre_Drama_Workshop_Groups
SELECT T1.Store_Phone ,  T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T2.Product_Name  =  "film"	cre_Drama_Workshop_Groups
SELECT T1.Store_Phone ,  T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T2.Product_Name  =  "film"	cre_Drama_Workshop_Groups
SELECT Product_Name ,  avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name	cre_Drama_Workshop_Groups
SELECT Product_Name ,  avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price)  <  1000000	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price)  <  1000000	cre_Drama_Workshop_Groups
SELECT sum(T1.Order_Quantity) FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID  =  T2.Product_ID WHERE T2.Product_Name  =  "photo"	cre_Drama_Workshop_Groups
SELECT sum(T1.Order_Quantity) FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID  =  T2.Product_ID WHERE T2.Product_Name  =  "photo"	cre_Drama_Workshop_Groups
SELECT T1.Other_Item_Details FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID  =  T2.Product_ID WHERE T2.Product_price  >  2000	cre_Drama_Workshop_Groups
SELECT T1.Other_Item_Details FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID  =  T2.Product_ID WHERE T2.Product_price  >  2000	cre_Drama_Workshop_Groups
SELECT T1.Actual_Delivery_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID WHERE T2.Order_Quantity  =  1	cre_Drama_Workshop_Groups
SELECT T1.Actual_Delivery_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID WHERE T2.Order_Quantity  =  1	cre_Drama_Workshop_Groups
SELECT T1.Order_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID JOIN Products AS T3 ON T2.Product_ID  =  T3.Product_ID WHERE T3.Product_price  >  1000	cre_Drama_Workshop_Groups
SELECT T1.Order_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID JOIN Products AS T3 ON T2.Product_ID  =  T3.Product_ID WHERE T3.Product_price  >  1000	cre_Drama_Workshop_Groups
SELECT count(DISTINCT Currency_Code) FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT count(DISTINCT Currency_Code) FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT T2.Store_Name FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T1.City_Town  =  "Feliciaberg"	cre_Drama_Workshop_Groups
SELECT T2.Store_Name FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T1.City_Town  =  "Feliciaberg"	cre_Drama_Workshop_Groups
SELECT T2.Store_Email_Address FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T1.State_County  =  "Alaska"	cre_Drama_Workshop_Groups
SELECT T2.Store_Email_Address FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T1.State_County  =  "Alaska"	cre_Drama_Workshop_Groups
SELECT T1.City_Town ,  count(*) FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID GROUP BY T1.City_Town	cre_Drama_Workshop_Groups
SELECT T1.City_Town ,  count(*) FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID GROUP BY T1.City_Town	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T1.City_Town FROM Addresses AS T1 JOIN Customers AS T2 ON T1.Address_ID  =  T2.Address_ID EXCEPT SELECT T1.City_Town FROM Addresses AS T1 JOIN Performers AS T2 ON T1.Address_ID  =  T2.Address_ID	cre_Drama_Workshop_Groups
SELECT T1.City_Town FROM Addresses AS T1 JOIN Customers AS T2 ON T1.Address_ID  =  T2.Address_ID EXCEPT SELECT T1.City_Town FROM Addresses AS T1 JOIN Performers AS T2 ON T1.Address_ID  =  T2.Address_ID	cre_Drama_Workshop_Groups
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T1.Status_Code  =  "stop"	cre_Drama_Workshop_Groups
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T1.Status_Code  =  "stop"	cre_Drama_Workshop_Groups
SELECT Customer_Name FROM Clients EXCEPT SELECT T2.Customer_Name FROM Bookings AS T1 JOIN Clients AS T2 ON T1.Customer_ID  =  T2.Client_ID	cre_Drama_Workshop_Groups
SELECT Customer_Name FROM Clients EXCEPT SELECT T2.Customer_Name FROM Bookings AS T1 JOIN Clients AS T2 ON T1.Customer_ID  =  T2.Client_ID	cre_Drama_Workshop_Groups
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code  =  "MasterCard"	cre_Drama_Workshop_Groups
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code  =  "MasterCard"	cre_Drama_Workshop_Groups
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Name  =  'photo' INTERSECT SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Name  =  'film'	cre_Drama_Workshop_Groups
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Name  =  'photo' INTERSECT SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code  =  T2.Service_Type_Code WHERE T2.Product_Name  =  'film'	cre_Drama_Workshop_Groups
SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Creative Labs' INTERSECT SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony'	manufactory_1
SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Creative Labs' INTERSECT SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony'	manufactory_1
SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
SELECT avg(T1.price) ,  T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.price) ,  T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT count(DISTINCT T1.name) ,  T2.Headquarter FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.Headquarter	manufactory_1
SELECT count(DISTINCT T1.name) ,  T2.Headquarter FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.Headquarter	manufactory_1
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony')	manufactory_1
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony')	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T1.name  =  'DVD drive'	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T1.name  =  'DVD drive'	manufactory_1
SELECT count(*) ,  T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT count(*) ,  T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT Name FROM Products	manufactory_1
SELECT Name FROM Products	manufactory_1
SELECT name ,  price FROM products	manufactory_1
SELECT name ,  price FROM products	manufactory_1
SELECT name FROM products WHERE price  <=  200	manufactory_1
SELECT name FROM products WHERE price  <=  200	manufactory_1
SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
SELECT avg(price) FROM products	manufactory_1
SELECT avg(price) FROM products	manufactory_1
SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
SELECT count(*) FROM products WHERE price >= 180	manufactory_1
SELECT count(*) FROM products WHERE price >= 180	manufactory_1
SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
SELECT * FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code	manufactory_1
SELECT * FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code	manufactory_1
SELECT AVG(Price) ,  Manufacturer FROM Products GROUP BY Manufacturer	manufactory_1
SELECT AVG(Price) ,  Manufacturer FROM Products GROUP BY Manufacturer	manufactory_1
SELECT avg(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name HAVING avg(T1.price) >= 150	manufactory_1
SELECT avg(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name HAVING avg(T1.price) >= 150	manufactory_1
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1	manufactory_1
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1	manufactory_1
SELECT T1.Name ,  max(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT T1.Name ,  max(T1.Price) ,  T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code GROUP BY T2.name	manufactory_1
SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
SELECT count(DISTINCT LEVEL) FROM member	shop_membership
SELECT count(DISTINCT LEVEL) FROM member	shop_membership
SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T3.name ,  T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id ORDER BY T1.register_year	shop_membership
SELECT T3.name ,  T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id ORDER BY T1.register_year	shop_membership
SELECT T2.name ,  count(*) FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.register_year  >  2015 GROUP BY T2.branch_id	shop_membership
SELECT T2.name ,  count(*) FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.register_year  >  2015 GROUP BY T2.branch_id	shop_membership
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)	shop_membership
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)	shop_membership
SELECT name ,  city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)	shop_membership
SELECT name ,  city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)	shop_membership
SELECT T2.name ,  T2.open_year FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.register_year  =  2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T2.name ,  T2.open_year FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.register_year  =  2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T2.name ,  T2.hometown FROM membership_register_branch AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id WHERE T1.register_year  =  2016	shop_membership
SELECT T2.name ,  T2.hometown FROM membership_register_branch AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id WHERE T1.register_year  =  2016	shop_membership
SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
SELECT sum(total_pounds) FROM purchase AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.city  =  'London' AND T1.year  =  2018	shop_membership
SELECT sum(total_pounds) FROM purchase AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.city  =  'London' AND T1.year  =  2018	shop_membership
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id WHERE T2.level  =  6	shop_membership
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id WHERE T2.level  =  6	shop_membership
SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Louisville ,  Kentucky' INTERSECT SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Hiram ,  Georgia'	shop_membership
SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Louisville ,  Kentucky' INTERSECT SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Hiram ,  Georgia'	shop_membership
SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
SELECT count(*) FROM products	products_gen_characteristics
SELECT count(*) FROM products	products_gen_characteristics
SELECT count(*) FROM ref_colors	products_gen_characteristics
SELECT count(*) FROM ref_colors	products_gen_characteristics
SELECT count(*) FROM CHARACTERISTICS	products_gen_characteristics
SELECT count(*) FROM CHARACTERISTICS	products_gen_characteristics
SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
SELECT color_description FROM ref_colors	products_gen_characteristics
SELECT color_description FROM ref_colors	products_gen_characteristics
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS	products_gen_characteristics
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS	products_gen_characteristics
SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT T1.product_name ,  T2.color_description ,  T1.product_description FROM products AS T1 JOIN Ref_colors AS T2 ON T1.color_code  =  T2.color_code WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT T1.product_name ,  T2.color_description ,  T1.product_description FROM products AS T1 JOIN Ref_colors AS T2 ON T1.color_code  =  T2.color_code WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
SELECT T1.product_name FROM products AS T1 JOIN ref_colors AS T2 ON T1.color_code  =  T2.color_code WHERE T2.color_description  =  'yellow'	products_gen_characteristics
SELECT T1.product_name FROM products AS T1 JOIN ref_colors AS T2 ON T1.color_code  =  T2.color_code WHERE T2.color_description  =  'yellow'	products_gen_characteristics
SELECT T1.product_category_description FROM ref_product_categories AS T1 JOIN products AS T2 ON T1.product_category_code  =  T2.product_category_code WHERE T2.product_description LIKE '%t%'	products_gen_characteristics
SELECT T1.product_category_description FROM ref_product_categories AS T1 JOIN products AS T2 ON T1.product_category_code  =  T2.product_category_code WHERE T2.product_description LIKE '%t%'	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "catnip"	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "catnip"	products_gen_characteristics
SELECT t1.color_code ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "chervil"	products_gen_characteristics
SELECT t1.color_code ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "chervil"	products_gen_characteristics
SELECT t1.product_id ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code JOIN product_characteristics AS t3 ON t1.product_id  =  t3.product_id GROUP BY t1.product_id HAVING count(*)  >=  2	products_gen_characteristics
SELECT t1.product_id ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code JOIN product_characteristics AS t3 ON t1.product_id  =  t3.product_id GROUP BY t1.product_id HAVING count(*)  >=  2	products_gen_characteristics
SELECT t1.product_name FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t2.color_description  =  "white"	products_gen_characteristics
SELECT t1.product_name FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t2.color_description  =  "white"	products_gen_characteristics
SELECT t1.product_name ,  t1.typical_buying_price ,  t1.typical_selling_price FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t2.color_description  =  "yellow"	products_gen_characteristics
SELECT t1.product_name ,  t1.typical_buying_price ,  t1.typical_selling_price FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t2.color_description  =  "yellow"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT count(DISTINCT t3.characteristic_name) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT count(DISTINCT t3.characteristic_name) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame"	products_gen_characteristics
SELECT t3.characteristic_name ,  t3.characteristic_data_type FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "cumin"	products_gen_characteristics
SELECT t3.characteristic_name ,  t3.characteristic_data_type FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "cumin"	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame" AND t3.characteristic_type_code  =  "Grade"	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame" AND t3.characteristic_type_code  =  "Grade"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "laurel"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "laurel"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "flax"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "flax"	products_gen_characteristics
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "fast"	products_gen_characteristics
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "fast"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "hot"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "hot"	products_gen_characteristics
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "warm"	products_gen_characteristics
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "warm"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "slow"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "slow"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "white" OR t3.characteristic_name  =  "hot"	products_gen_characteristics
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "white" OR t3.characteristic_name  =  "hot"	products_gen_characteristics
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT product_category_description FROM ref_product_categories WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_category_description FROM ref_product_categories WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_category_description ,  unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT product_category_description ,  unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT t2.unit_of_measure FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "cumin"	products_gen_characteristics
SELECT t2.unit_of_measure FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "cumin"	products_gen_characteristics
SELECT t2.unit_of_measure ,  t2.product_category_code FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "chervil"	products_gen_characteristics
SELECT t2.unit_of_measure ,  t2.product_category_code FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "chervil"	products_gen_characteristics
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code  =  t3.color_code WHERE t3.color_description  =  "white" AND t2.unit_of_measure != "Handful"	products_gen_characteristics
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code  =  t3.color_code WHERE t3.color_description  =  "white" AND t2.unit_of_measure != "Handful"	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code GROUP BY t2.color_description ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code GROUP BY t2.color_description ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code GROUP BY t2.color_description ORDER BY count(*) ASC LIMIT 1	products_gen_characteristics
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code GROUP BY t2.color_description ORDER BY count(*) ASC LIMIT 1	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT characteristic_name ,  other_characteristic_details ,  characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.characteristic_name ,  t1.other_characteristic_details ,  t1.characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.characteristic_id  =  t2.characteristic_id	products_gen_characteristics
SELECT characteristic_name ,  other_characteristic_details ,  characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.characteristic_name ,  t1.other_characteristic_details ,  t1.characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.characteristic_id  =  t2.characteristic_id	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name HAVING count(*)  >= 2	products_gen_characteristics
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name HAVING count(*)  >= 2	products_gen_characteristics
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )	products_gen_characteristics
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )	products_gen_characteristics
SELECT count(*) FROM railway	railway
SELECT Builder FROM railway ORDER BY Builder ASC	railway
SELECT Wheels ,  LOCATION FROM railway	railway
SELECT max(LEVEL) FROM manager WHERE Country != "Australia "	railway
SELECT avg(Age) FROM manager	railway
SELECT Name FROM manager ORDER BY LEVEL ASC	railway
SELECT Name ,  Arrival FROM train	railway
SELECT Name FROM manager ORDER BY Age DESC LIMIT 1	railway
SELECT T2.Name ,  T1.Location FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID  =  T2.Railway_ID	railway
SELECT T1.Builder FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID  =  T2.Railway_ID WHERE T2.Name  =  "Andaman Exp"	railway
SELECT T2.Railway_ID ,  T1.Location FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID  =  T2.Railway_ID GROUP BY T2.Railway_ID HAVING COUNT(*)  >  1	railway
SELECT T2.Railway_ID ,  T1.Builder FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID  =  T2.Railway_ID GROUP BY T2.Railway_ID ORDER BY COUNT(*) DESC LIMIT 1	railway
SELECT Builder ,  COUNT(*) FROM railway GROUP BY Builder	railway
SELECT Builder FROM railway GROUP BY Builder ORDER BY COUNT(*) DESC LIMIT 1	railway
SELECT LOCATION ,  COUNT(*) FROM railway GROUP BY LOCATION	railway
SELECT LOCATION FROM railway GROUP BY LOCATION HAVING COUNT(*)  >  1	railway
SELECT ObjectNumber FROM railway WHERE Railway_ID NOT IN (SELECT Railway_ID FROM train)	railway
SELECT Country FROM manager WHERE Age  >  50 INTERSECT SELECT Country FROM manager WHERE Age  <  46	railway
SELECT DISTINCT Country FROM manager	railway
SELECT Working_year_starts FROM manager ORDER BY LEVEL DESC	railway
SELECT Country FROM manager WHERE Age  >  50 OR Age  <  46	railway
SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
SELECT fname FROM student WHERE age  >  20	dorm_1
SELECT fname FROM student WHERE age  >  20	dorm_1
SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
SELECT count(*) FROM dorm	dorm_1
SELECT count(*) FROM dorm	dorm_1
SELECT count(*) FROM dorm_amenity	dorm_1
SELECT count(*) FROM dorm_amenity	dorm_1
SELECT sum(student_capacity) FROM dorm	dorm_1
SELECT sum(student_capacity) FROM dorm	dorm_1
SELECT count(*) FROM student	dorm_1
SELECT count(*) FROM student	dorm_1
SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
SELECT count(DISTINCT dormid) FROM has_amenity	dorm_1
SELECT count(DISTINCT dormid) FROM has_amenity	dorm_1
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_amenity)	dorm_1
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_amenity)	dorm_1
SELECT count(DISTINCT gender) FROM dorm	dorm_1
SELECT count(DISTINCT gender) FROM dorm	dorm_1
SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge' INTERSECT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'Study Room'	dorm_1
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge' INTERSECT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'Study Room'	dorm_1
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge' EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'Study Room'	dorm_1
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge' EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'Study Room'	dorm_1
SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name	dorm_1
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name	dorm_1
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T2.amenid  =  T1.amenid JOIN dorm AS T3 ON T2.dormid  =  T3.dormid WHERE T3.dorm_name  =  'Anonymous Donor Hall' ORDER BY T1.amenity_name	dorm_1
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T2.amenid  =  T1.amenid JOIN dorm AS T3 ON T2.dormid  =  T3.dormid WHERE T3.dorm_name  =  'Anonymous Donor Hall' ORDER BY T1.amenity_name	dorm_1
SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
SELECT avg(T1.age) ,  T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid GROUP BY T3.dorm_name	dorm_1
SELECT avg(T1.age) ,  T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid GROUP BY T3.dorm_name	dorm_1
SELECT count(*) ,  T1.dormid FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid WHERE T1.student_capacity  >  100 GROUP BY T1.dormid	dorm_1
SELECT count(*) ,  T1.dormid FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid WHERE T1.student_capacity  >  100 GROUP BY T1.dormid	dorm_1
SELECT count(*) ,  T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T1.age  >  20 GROUP BY T3.dorm_name	dorm_1
SELECT count(*) ,  T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T1.age  >  20 GROUP BY T3.dorm_name	dorm_1
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall'	dorm_1
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall'	dorm_1
SELECT avg(T1.age) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.student_capacity  =  (SELECT max(student_capacity) FROM dorm)	dorm_1
SELECT avg(T1.age) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.student_capacity  =  (SELECT max(student_capacity) FROM dorm)	dorm_1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.gender  =  'M'	dorm_1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.gender  =  'M'	dorm_1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall' AND T1.sex  =  'F'	dorm_1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall' AND T1.sex  =  'F'	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall'	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall'	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall' ORDER BY T3.amenity_name	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall' ORDER BY T3.amenity_name	dorm_1
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T1.amenid  =  T2.amenid GROUP BY T2.amenid ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T1.amenid  =  T2.amenid GROUP BY T2.amenid ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN (SELECT T2.dormid FROM dorm AS T3 JOIN has_amenity AS T4 ON T3.dormid  =  T4.dormid JOIN dorm_amenity AS T5 ON T4.amenid  =  T5.amenid GROUP BY T3.dormid ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN (SELECT T2.dormid FROM dorm AS T3 JOIN has_amenity AS T4 ON T3.dormid  =  T4.dormid JOIN dorm_amenity AS T5 ON T4.amenid  =  T5.amenid GROUP BY T3.dormid ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT T1.dorm_name ,  T1.student_capacity FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid GROUP BY T2.dormid ORDER BY count(*) LIMIT 1	dorm_1
SELECT T1.dorm_name ,  T1.student_capacity FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid GROUP BY T2.dormid ORDER BY count(*) LIMIT 1	dorm_1
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge'	dorm_1
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge'	dorm_1
SELECT T1.fname ,  T1.lname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid  =  T4.amenid WHERE T4.amenity_name  =  'TV Lounge')	dorm_1
SELECT T1.fname ,  T1.lname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid  =  T4.amenid WHERE T4.amenity_name  =  'TV Lounge')	dorm_1
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid NOT IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid  =  T4.amenid WHERE T4.amenity_name  =  'TV Lounge')	dorm_1
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid NOT IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid  =  T4.amenid WHERE T4.amenity_name  =  'TV Lounge')	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid JOIN lives_in AS T4 ON T4.dormid  =  T1.dormid JOIN student AS T5 ON T5.stuid  =  T4.stuid WHERE T5.lname  =  'Smith'	dorm_1
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid JOIN lives_in AS T4 ON T4.dormid  =  T1.dormid JOIN student AS T5 ON T5.stuid  =  T4.stuid WHERE T5.lname  =  'Smith'	dorm_1
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.name  =  "buttercup kitchen";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.county  =  "santa cruz county" AND t1.name  =  "jamerican cuisine";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t1.name  =  "jamerican cuisine";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.food_type  =  "french" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.name  =  "denny";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "palo alto" AND t1.food_type  =  "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "palo alto" AND t1.food_type  =  "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "palo alto" AND t1.food_type  =  "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "palo alto" AND t1.food_type  =  "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.county  =  "yolo county" AND t1.food_type  =  "italian";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.name  =  "denny";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "alameda" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t2.street_name  =  "buchanan" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "french";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "bethel island" AND t2.street_name  =  "bethel island rd";	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" AND t1.rating  =  ( SELECT MAX ( t1.rating ) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name WHERE t2.region  =  "bay area" AND t1.food_type  =  "american" );	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t3.house_number  ,  t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name  =  t2.city_name JOIN LOCATION AS t3 ON t1.id  =  t3.restaurant_id WHERE t2.region  =  "yosemite and mono lake area" AND t1.food_type  =  "french" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "mountain view" AND t1.food_type  =  "arabic" AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.name  =  "jamerican cuisine";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.name  =  "jamerican cuisine";	restaurants
SELECT t2.house_number  ,  t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id  =  t2.restaurant_id WHERE t2.city_name  =  "san francisco" AND t1.name  =  "jamerican cuisine";	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "bay area" );	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "bay area" );	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "bay area" );	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "bay area" );	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id  WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "region0" ) AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id  WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "region0" ) AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id  WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "region0" ) AND t1.rating  >  2.5;	restaurants
SELECT t2.house_number  ,  t1.name FROM LOCATION AS t2 JOIN restaurant AS t1 ON t1.id  =  t2.restaurant_id  WHERE t1.city_name IN ( SELECT city_name FROM geographic WHERE region  =  "region0" ) AND t1.rating  >  2.5;	restaurants
SELECT count(*) FROM INVESTORS	tracking_share_transactions
SELECT Investor_details FROM INVESTORS	tracking_share_transactions
SELECT DISTINCT lot_details FROM LOTS	tracking_share_transactions
SELECT max(amount_of_transaction) FROM TRANSACTIONS	tracking_share_transactions
SELECT date_of_transaction ,  share_count FROM TRANSACTIONS	tracking_share_transactions
SELECT sum(share_count) FROM TRANSACTIONS	tracking_share_transactions
SELECT transaction_id FROM TRANSACTIONS WHERE transaction_type_code  =  'PUR'	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE"	tracking_share_transactions
SELECT avg(amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE"	tracking_share_transactions
SELECT transaction_type_description FROM Ref_Transaction_Types WHERE transaction_type_code   =  "PUR"	tracking_share_transactions
SELECT min(amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code  =  "PUR" AND share_count  >  50	tracking_share_transactions
SELECT max(share_count) FROM TRANSACTIONS WHERE amount_of_transaction  <  10000	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >  100 OR amount_of_transaction  >  1000	tracking_share_transactions
SELECT T1.transaction_type_description ,  T2.date_of_transaction FROM Ref_Transaction_Types AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_type_code  =  T2.transaction_type_code WHERE T2.share_count  <  10	tracking_share_transactions
SELECT T1.Investor_details FROM  INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id WHERE T2.share_count  >  100	tracking_share_transactions
SELECT COUNT(DISTINCT transaction_type_code) FROM TRANSACTIONS	tracking_share_transactions
SELECT lot_details ,  investor_id FROM LOTS	tracking_share_transactions
SELECT T2.lot_details FROM INVESTORS AS T1 JOIN LOTS AS T2 ON  T1.investor_id  =  T2.investor_id WHERE T1.Investor_details  =  "l"	tracking_share_transactions
SELECT T1.purchase_details FROM PURCHASES AS T1 JOIN TRANSACTIONS AS T2 ON T1.purchase_transaction_id  =  T2.transaction_id WHERE T2.amount_of_transaction  >  10000	tracking_share_transactions
SELECT T1.sales_details ,  T2.date_of_transaction FROM SALES AS T1 JOIN TRANSACTIONS AS T2 ON T1.sales_transaction_id  =  T2.transaction_id WHERE T2.amount_of_transaction  <  3000	tracking_share_transactions
SELECT T1.lot_details FROM LOTS AS T1 JOIN TRANSACTIONS_LOTS AS T2 ON T1.lot_id  =  T2.transaction_id JOIN TRANSACTIONS AS T3 ON T2.transaction_id  =  T3.transaction_id WHERE T3.share_count  <  50	tracking_share_transactions
SELECT T1.lot_details FROM LOTS AS T1 JOIN TRANSACTIONS_LOTS AS T2 ON  T1.lot_id  =  T2.transaction_id JOIN TRANSACTIONS AS T3 ON T2.transaction_id  =  T3.transaction_id WHERE T3.share_count  >  100 AND T3.transaction_type_code  =  "PUR"	tracking_share_transactions
SELECT transaction_type_code ,  avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY transaction_type_code	tracking_share_transactions
SELECT transaction_type_code ,  max(share_count) ,  min(share_count) FROM TRANSACTIONS GROUP BY transaction_type_code	tracking_share_transactions
SELECT investor_id ,  avg(share_count) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT investor_id ,  avg(share_count) FROM TRANSACTIONS GROUP BY investor_id ORDER BY avg(share_count)	tracking_share_transactions
SELECT investor_id ,  avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT T2.lot_id ,  avg(amount_of_transaction) FROM TRANSACTIONS AS T1 JOIN Transactions_Lots AS T2 ON T1.transaction_id  =  T2.transaction_id GROUP BY T2.lot_id	tracking_share_transactions
SELECT T2.lot_id ,  avg(amount_of_transaction) FROM TRANSACTIONS AS T1 JOIN Transactions_Lots AS T2 ON T1.transaction_id  =  T2.transaction_id GROUP BY T2.lot_id ORDER BY avg(amount_of_transaction)	tracking_share_transactions
SELECT investor_id ,  COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE" GROUP BY investor_id	tracking_share_transactions
SELECT investor_id ,  COUNT(*) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) ASC LIMIT 1	tracking_share_transactions
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T1.transaction_type_description FROM Ref_Transaction_Types AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_type_code  =  T2.transaction_type_code GROUP BY T1.transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T2.investor_id ,  T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T2.investor_id ,  T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 3	tracking_share_transactions
SELECT T2.investor_id FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id GROUP BY T2.investor_id HAVING COUNT(*)  >=  2	tracking_share_transactions
SELECT T2.investor_id ,  T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id WHERE T2.transaction_type_code  =  "SALE" GROUP BY T2.investor_id HAVING COUNT(*)  >=  2	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >=  100 OR amount_of_transaction  >=  100	tracking_share_transactions
SELECT sales_details FROM sales UNION SELECT purchase_details FROM purchases	tracking_share_transactions
SELECT lot_details FROM Lots EXCEPT SELECT T1.lot_details FROM Lots AS T1 JOIN transactions_lots AS T2 ON T1.lot_id  =  T2.lot_id	tracking_share_transactions
SELECT count(*) FROM Video_games	game_1
SELECT count(*) FROM Video_games	game_1
SELECT count(DISTINCT gtype) FROM Video_games	game_1
SELECT count(DISTINCT gtype) FROM Video_games	game_1
SELECT DISTINCT gtype FROM Video_games	game_1
SELECT DISTINCT gtype FROM Video_games	game_1
SELECT gname ,  gtype FROM Video_games ORDER BY gname	game_1
SELECT gname ,  gtype FROM Video_games ORDER BY gname	game_1
SELECT gname FROM Video_games WHERE gtype  =  "Collectible card game"	game_1
SELECT gname FROM Video_games WHERE gtype  =  "Collectible card game"	game_1
SELECT gtype FROM Video_games WHERE gname  =  "Call of Destiny"	game_1
SELECT gtype FROM Video_games WHERE gname  =  "Call of Destiny"	game_1
SELECT count(*) FROM Video_games WHERE gtype  =  "Massively multiplayer online game"	game_1
SELECT count(*) FROM Video_games WHERE gtype  =  "Massively multiplayer online game"	game_1
SELECT gtype ,  count(*) FROM Video_games GROUP BY gtype	game_1
SELECT gtype ,  count(*) FROM Video_games GROUP BY gtype	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1	game_1
SELECT StuID FROM Student WHERE city_code  =  "CHI"	game_1
SELECT StuID FROM Student WHERE city_code  =  "CHI"	game_1
SELECT StuID FROM Student WHERE Advisor  =  1121	game_1
SELECT StuID FROM Student WHERE Advisor  =  1121	game_1
SELECT Fname FROM Student WHERE Major  =  600	game_1
SELECT Fname FROM Student WHERE Major  =  600	game_1
SELECT major ,  avg(age) ,  min(age) ,  max(age) FROM Student GROUP BY major	game_1
SELECT major ,  avg(age) ,  min(age) ,  max(age) FROM Student GROUP BY major	game_1
SELECT advisor FROM Student GROUP BY advisor HAVING count(*)  >=  2	game_1
SELECT advisor FROM Student GROUP BY advisor HAVING count(*)  >=  2	game_1
SELECT count(DISTINCT sportname) FROM Sportsinfo	game_1
SELECT count(DISTINCT sportname) FROM Sportsinfo	game_1
SELECT count(DISTINCT StuID) FROM Sportsinfo	game_1
SELECT count(DISTINCT StuID) FROM Sportsinfo	game_1
SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T1.onscholarship  =  'Y'	game_1
SELECT T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T1.onscholarship  =  'Y'	game_1
SELECT sum(gamesplayed) FROM Sportsinfo	game_1
SELECT sum(gamesplayed) FROM Sportsinfo	game_1
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname  =  "Football" AND onscholarship  =  'Y'	game_1
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname  =  "Football" AND onscholarship  =  'Y'	game_1
SELECT sportname ,  count(*) FROM Sportsinfo GROUP BY sportname	game_1
SELECT sportname ,  count(*) FROM Sportsinfo GROUP BY sportname	game_1
SELECT StuID ,  count(*) ,  sum(gamesplayed) FROM Sportsinfo GROUP BY StuID	game_1
SELECT StuID ,  count(*) ,  sum(gamesplayed) FROM Sportsinfo GROUP BY StuID	game_1
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek)  >  10	game_1
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek)  >  10	game_1
SELECT T2.Fname ,  T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	game_1
SELECT T2.Fname ,  T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	game_1
SELECT sportname FROM Sportsinfo WHERE onscholarship  =  'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1	game_1
SELECT sportname FROM Sportsinfo WHERE onscholarship  =  'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo	game_1
SELECT StuID FROM Student WHERE major  =  600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Student WHERE major  =  600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Student WHERE sex  =  'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT sum(hoursperweek) ,  sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Fname  =  "David" AND T2.Lname  =  "Shieber"	game_1
SELECT sum(hoursperweek) ,  sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Fname  =  "David" AND T2.Lname  =  "Shieber"	game_1
SELECT sum(hoursperweek) ,  sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.age  <  20	game_1
SELECT sum(hoursperweek) ,  sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.age  <  20	game_1
SELECT count(DISTINCT StuID) FROM Plays_games	game_1
SELECT count(DISTINCT StuID) FROM Plays_games	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games	game_1
SELECT gameid ,  sum(hours_played) FROM Plays_games GROUP BY gameid	game_1
SELECT gameid ,  sum(hours_played) FROM Plays_games GROUP BY gameid	game_1
SELECT Stuid ,  sum(hours_played) FROM Plays_games GROUP BY Stuid	game_1
SELECT Stuid ,  sum(hours_played) FROM Plays_games GROUP BY Stuid	game_1
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid GROUP BY T1.gameid ORDER BY sum(hours_played) DESC LIMIT 1	game_1
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid GROUP BY T1.gameid ORDER BY sum(hours_played) DESC LIMIT 1	game_1
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid GROUP BY T1.gameid HAVING sum(hours_played)  >=  1000	game_1
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid GROUP BY T1.gameid HAVING sum(hours_played)  >=  1000	game_1
SELECT Gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid JOIN Student AS T3 ON T3.Stuid  =  T1.Stuid WHERE T3.Lname  =  "Smith" AND T3.Fname  =  "Linda"	game_1
SELECT Gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid JOIN Student AS T3 ON T3.Stuid  =  T1.Stuid WHERE T3.Lname  =  "Smith" AND T3.Fname  =  "Linda"	game_1
SELECT T2.lname ,  T2.fname FROM SportsInfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T1.SportName  =  "Football" OR T1.SportName  =  "Lacrosse"	game_1
SELECT T2.lname ,  T2.fname FROM SportsInfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T1.SportName  =  "Football" OR T1.SportName  =  "Lacrosse"	game_1
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE SportName  =  "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE SportName  =  "Lacrosse")	game_1
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE SportName  =  "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE SportName  =  "Lacrosse")	game_1
SELECT lname ,  sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Works of Widenius")	game_1
SELECT lname ,  sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Works of Widenius")	game_1
SELECT count(*) FROM artist	music_4
SELECT count(*) FROM artist	music_4
SELECT Age FROM artist	music_4
SELECT Age FROM artist	music_4
SELECT avg(Age) FROM artist	music_4
SELECT avg(Age) FROM artist	music_4
SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
SELECT distinct(Famous_Release_date) FROM artist	music_4
SELECT distinct(Famous_Release_date) FROM artist	music_4
SELECT Date_of_ceremony ,  RESULT FROM music_festival	music_4
SELECT Date_of_ceremony ,  RESULT FROM music_festival	music_4
SELECT Category FROM music_festival WHERE RESULT  =  "Awarded"	music_4
SELECT Category FROM music_festival WHERE RESULT  =  "Awarded"	music_4
SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
SELECT Song FROM volume ORDER BY Song	music_4
SELECT Song FROM volume ORDER BY Song	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT T1.Date_of_ceremony FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume  =  T2.Volume_ID WHERE T2.Weeks_on_Top  >  2	music_4
SELECT T1.Date_of_ceremony FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume  =  T2.Volume_ID WHERE T2.Weeks_on_Top  >  2	music_4
SELECT T2.Song FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume  =  T2.Volume_ID WHERE T1.Result  =  "Nominated"	music_4
SELECT T2.Song FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume  =  T2.Volume_ID WHERE T1.Result  =  "Nominated"	music_4
SELECT T2.Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.Artist  =  "Gorgoroth"	music_4
SELECT T2.Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.Artist  =  "Gorgoroth"	music_4
SELECT T2.Song FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  >=  32	music_4
SELECT T2.Song FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  >=  32	music_4
SELECT avg(T2.Weeks_on_Top) FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  <=  25	music_4
SELECT avg(T2.Weeks_on_Top) FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  <=  25	music_4
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  >  2	music_4
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  >  2	music_4
SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category	music_4
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category	music_4
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*)  >  1	music_4
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*)  >  1	music_4
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN(SELECT Artist_ID FROM volume)	music_4
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN(SELECT Artist_ID FROM volume)	music_4
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  >  2 INTERSECT SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  <  2	music_4
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  >  2 INTERSECT SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T2.Weeks_on_Top  <  2	music_4
SELECT Date_of_ceremony FROM music_festival WHERE Category  =  "Best Song" AND RESULT  =  "Awarded"	music_4
SELECT Date_of_ceremony FROM music_festival WHERE Category  =  "Best Song" AND RESULT  =  "Awarded"	music_4
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT RESULT ,  COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC	music_4
SELECT RESULT ,  COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC	music_4
SELECT Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  <=  23	music_4
SELECT Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  <=  23	music_4
SELECT count(DISTINCT rank) FROM captain	ship_1
SELECT count(DISTINCT rank) FROM captain	ship_1
SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
SELECT name FROM captain ORDER BY age DESC	ship_1
SELECT name FROM captain ORDER BY age DESC	ship_1
SELECT name ,  CLASS ,  rank FROM captain	ship_1
SELECT name ,  CLASS ,  rank FROM captain	ship_1
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
SELECT count(*) FROM ship	ship_1
SELECT count(*) FROM ship	ship_1
SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id GROUP BY t2.ship_id HAVING count(*)  >  1	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id GROUP BY t2.ship_id HAVING count(*)  >  1	ship_1
SELECT name ,  CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain)	ship_1
SELECT name ,  CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain)	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id ORDER BY t2.age LIMIT 1	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id ORDER BY t2.age LIMIT 1	ship_1
SELECT name ,  flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank  =  'Midshipman')	ship_1
SELECT name ,  flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank  =  'Midshipman')	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id WHERE t2.rank  =  'Midshipman' INTERSECT SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id WHERE t2.rank  =  'Lieutenant'	ship_1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id WHERE t2.rank  =  'Midshipman' INTERSECT SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id WHERE t2.rank  =  'Lieutenant'	ship_1
SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
SELECT DISTINCT form_type_code FROM forms	e_government
SELECT DISTINCT form_type_code FROM forms	e_government
SELECT t1.form_name FROM forms AS t1 JOIN party_forms AS t2 ON t1.form_id  =  t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.form_name FROM forms AS t1 JOIN party_forms AS t2 ON t1.form_id  =  t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1	e_government
SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
SELECT t1.party_email FROM parties AS t1 JOIN party_forms AS t2 ON t1.party_id  =  t2.party_id WHERE t2.form_id  =  (SELECT form_id FROM party_forms GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)	e_government
SELECT t1.party_email FROM parties AS t1 JOIN party_forms AS t2 ON t1.party_id  =  t2.party_id WHERE t2.form_id  =  (SELECT form_id FROM party_forms GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)	e_government
SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id JOIN individuals AS t3 ON t2.individual_id  =  t3.individual_id WHERE t1.organization_name  =  "Labour Party" ORDER BY t2.date_contact_to DESC LIMIT 1	e_government
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id JOIN individuals AS t3 ON t2.individual_id  =  t3.individual_id WHERE t1.organization_name  =  "Labour Party" ORDER BY t2.date_contact_to DESC LIMIT 1	e_government
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id JOIN individuals AS t3 ON t2.individual_id  =  t3.individual_id WHERE t1.uk_vat_number  =  (SELECT max(uk_vat_number) FROM organizations) ORDER BY t2.date_contact_to ASC LIMIT 1	e_government
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id JOIN individuals AS t3 ON t2.individual_id  =  t3.individual_id WHERE t1.uk_vat_number  =  (SELECT max(uk_vat_number) FROM organizations) ORDER BY t2.date_contact_to ASC LIMIT 1	e_government
SELECT count(*) FROM services	e_government
SELECT count(*) FROM services	e_government
SELECT service_name FROM services EXCEPT SELECT t1.service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id  =  t2.service_id	e_government
SELECT service_name FROM services EXCEPT SELECT t1.service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id  =  t2.service_id	e_government
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
SELECT count(DISTINCT payment_method_code) FROM parties	e_government
SELECT count(DISTINCT payment_method_code) FROM parties	e_government
SELECT t1.party_email FROM parties AS t1 JOIN party_services AS t2 ON t1.party_id  =  t2.customer_id GROUP BY t1.party_email ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.party_email FROM parties AS t1 JOIN party_services AS t2 ON t1.party_id  =  t2.customer_id GROUP BY t1.party_email ORDER BY count(*) DESC LIMIT 1	e_government
SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT t1.organization_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id GROUP BY t1.organization_name ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.organization_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id GROUP BY t1.organization_name ORDER BY count(*) DESC LIMIT 1	e_government
SELECT DISTINCT t1.individual_last_name FROM individuals AS t1 JOIN organization_contact_individuals AS t2 ON t1.individual_id  =  t2.individual_id	e_government
SELECT DISTINCT t1.individual_last_name FROM individuals AS t1 JOIN organization_contact_individuals AS t2 ON t1.individual_id  =  t2.individual_id	e_government
SELECT count(*) FROM flight WHERE velocity  >  200	flight_company
SELECT vehicle_flight_number ,  date ,  pilot FROM flight ORDER BY altitude ASC	flight_company
SELECT id ,  country ,  city ,  name FROM airport ORDER BY name	flight_company
SELECT max(group_equity_shareholding) FROM operate_company	flight_company
SELECT avg(velocity) FROM flight WHERE pilot  =  'Thompson'	flight_company
SELECT T1.name ,  T1.type FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id	flight_company
SELECT name FROM airport WHERE country != 'Iceland'	flight_company
SELECT DISTINCT T1.type FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id WHERE T2.velocity  <  200	flight_company
SELECT T1.id ,  T1.name FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id GROUP BY T1.id HAVING count(*)  >  1	flight_company
SELECT T1.id ,  T1.name ,  T1.IATA FROM airport AS T1 JOIN flight AS T2 ON T1.id  =  T2.airport_id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT DISTINCT T2.pilot FROM airport AS T1 JOIN flight AS T2 ON T1.id  =  T2.airport_id WHERE T1.country  =  'United States' OR T1.name  =  'Billund Airport'	flight_company
SELECT TYPE ,  count(*) FROM operate_company GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM airport WHERE id NOT IN ( SELECT airport_id FROM flight WHERE pilot  =  'Thompson' );	flight_company
SELECT T2.pilot FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id WHERE T1.principal_activities  =  'Cargo' INTERSECT SELECT T2.pilot FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id WHERE T1.principal_activities  =  'Catering services'	flight_company
SELECT name FROM airport WHERE name LIKE '%international%'	flight_company
SELECT T3.id ,  count(*) FROM operate_company AS T1 JOIN flight AS t2 ON T1.id  =  T2.company_id JOIN airport AS T3 ON T2.airport_id  =  T3.id GROUP BY T3.id	flight_company
SELECT count(*) ,  country FROM airport GROUP BY country	flight_company
SELECT country FROM airport GROUP BY country HAVING count(*)  >  2	flight_company
SELECT pilot FROM flight GROUP BY pilot ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM scientists	scientist_1
SELECT count(*) FROM scientists	scientist_1
SELECT sum(hours) FROM projects	scientist_1
SELECT sum(hours) FROM projects	scientist_1
SELECT count(DISTINCT scientist) FROM assignedto	scientist_1
SELECT count(DISTINCT scientist) FROM assignedto	scientist_1
SELECT count(DISTINCT name) FROM projects	scientist_1
SELECT count(DISTINCT name) FROM projects	scientist_1
SELECT avg(hours) FROM projects	scientist_1
SELECT avg(hours) FROM projects	scientist_1
SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
SELECT T1.name ,  T1.hours FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project GROUP BY T2.project ORDER BY count(*) DESC LIMIT 1	scientist_1
SELECT T1.name ,  T1.hours FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project GROUP BY T2.project ORDER BY count(*) DESC LIMIT 1	scientist_1
SELECT T2.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T3.name LIKE '%Smith%'	scientist_1
SELECT T2.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T3.name LIKE '%Smith%'	scientist_1
SELECT sum(T2.hours) FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T3.name  =  'Michael Rogers' OR T3.name  =  'Carol Smith'	scientist_1
SELECT sum(T2.hours) FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T3.name  =  'Michael Rogers' OR T3.name  =  'Carol Smith'	scientist_1
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.name  =  'Matter of Time' INTERSECT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.name  =  'A Puzzling Parallax'	scientist_1
SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.name  =  'Matter of Time' INTERSECT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.name  =  'A Puzzling Parallax'	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT count(*) ,  T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project GROUP BY T1.name	scientist_1
SELECT count(*) ,  T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project GROUP BY T1.name	scientist_1
SELECT count(*) ,  T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project WHERE T1.hours  >  300 GROUP BY T1.name	scientist_1
SELECT count(*) ,  T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project WHERE T1.hours  >  300 GROUP BY T1.name	scientist_1
SELECT count(*) ,  T1.name FROM scientists AS T1 JOIN assignedto AS T2 ON T1.ssn  =  T2.scientist GROUP BY T1.name	scientist_1
SELECT count(*) ,  T1.name FROM scientists AS T1 JOIN assignedto AS T2 ON T1.ssn  =  T2.scientist GROUP BY T1.name	scientist_1
SELECT T3.ssn ,  T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT T3.ssn ,  T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT T2.name FROM assignedto AS T1 JOIN scientists AS T2 ON T1.scientist  =  T2.ssn	scientist_1
SELECT T2.name FROM assignedto AS T1 JOIN scientists AS T2 ON T1.scientist  =  T2.ssn	scientist_1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)	scientist_1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)	scientist_1
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT T1.Name ,  T3.Name ,  T3.Hours FROM Scientists AS T1 JOIN AssignedTo AS T2 ON T1.SSN = T2.Scientist JOIN Projects AS T3 ON T2.Project = T3.Code ORDER BY T3.Name ,  T1.Name	scientist_1
SELECT T1.Name ,  T3.Name ,  T3.Hours FROM Scientists AS T1 JOIN AssignedTo AS T2 ON T1.SSN = T2.Scientist JOIN Projects AS T3 ON T2.Project = T3.Code ORDER BY T3.Name ,  T1.Name	scientist_1
SELECT T2.name ,  T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT min(hours) FROM projects)	scientist_1
SELECT T2.name ,  T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT min(hours) FROM projects)	scientist_1
SELECT count(*) FROM station	train_station
SELECT name ,  LOCATION ,  number_of_platforms FROM station	train_station
SELECT DISTINCT LOCATION FROM station	train_station
SELECT name ,  total_passengers FROM station WHERE LOCATION != 'London'	train_station
SELECT name ,  main_services FROM station ORDER BY total_passengers DESC LIMIT 3	train_station
SELECT avg(total_passengers) ,  max(total_passengers) FROM station WHERE LOCATION  =  'London' OR LOCATION  =  'Glasgow'	train_station
SELECT LOCATION ,  sum(number_of_platforms) ,  sum(total_passengers) FROM station GROUP BY LOCATION	train_station
SELECT DISTINCT LOCATION FROM station WHERE number_of_platforms  >=  15 AND total_passengers  >  25	train_station
SELECT LOCATION FROM station EXCEPT SELECT LOCATION FROM station WHERE number_of_platforms  >=  15	train_station
SELECT LOCATION FROM station GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	train_station
SELECT name ,  TIME ,  service FROM train	train_station
SELECT count(*) FROM train	train_station
SELECT name ,  service FROM train ORDER BY TIME	train_station
SELECT T2.name ,  count(*) FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id GROUP BY T1.station_id	train_station
SELECT T2.name ,  T3.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id JOIN train AS T3 ON T3.train_id  =  T1.train_id	train_station
SELECT T3.name ,  T3.time FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id JOIN train AS T3 ON T3.train_id  =  T1.train_id WHERE T2.location  =  'London' ORDER BY T3.time DESC	train_station
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id GROUP BY T1.station_id ORDER BY count(*) DESC LIMIT 1	train_station
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id GROUP BY T1.station_id HAVING count(*)  >=  2	train_station
SELECT LOCATION FROM station GROUP BY LOCATION HAVING count(*)  =  1	train_station
SELECT name FROM station WHERE station_id NOT IN (SELECT station_id FROM train_station)	train_station
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id JOIN train AS T3 ON T3.train_id  =  T1.train_id WHERE T3.Name  =  "Ananthapuri Express" INTERSECT SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id JOIN train AS T3 ON T3.train_id  =  T1.train_id WHERE T3.Name  =  "Guruvayur Express"	train_station
SELECT T2.name FROM train_station AS T1 JOIN train AS T2 ON T1.train_id  =  T2.train_id WHERE T1.station_id NOT IN (SELECT T4.station_id FROM train_station AS T3 JOIN station AS T4 ON T3.station_id  =  T4.station_id WHERE t4.location  =  "London")	train_station
SELECT name ,  LOCATION FROM station ORDER BY Annual_entry_exit ,  Annual_interchanges	train_station
SELECT count(*) FROM Faculty	activity_1
SELECT count(*) FROM Faculty	activity_1
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT DISTINCT building FROM Faculty	activity_1
SELECT DISTINCT building FROM Faculty	activity_1
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T2.fname  =  "Linda" AND T2.lname  =  "Smith"	activity_1
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T2.fname  =  "Linda" AND T2.lname  =  "Smith"	activity_1
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.rank  =  "Professor"	activity_1
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.rank  =  "Professor"	activity_1
SELECT T2.fname ,  T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.fname  =  "Michael" AND T1.lname  =  "Goodrich"	activity_1
SELECT T2.fname ,  T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.fname  =  "Michael" AND T1.lname  =  "Goodrich"	activity_1
SELECT T1.FacID ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID	activity_1
SELECT T1.FacID ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID	activity_1
SELECT T1.rank ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.rank	activity_1
SELECT T1.rank ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.rank	activity_1
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID HAVING count(*)  >=  2	activity_1
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID HAVING count(*)  >=  2	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT activity_name FROM Activity	activity_1
SELECT activity_name FROM Activity	activity_1
SELECT count(*) FROM Activity	activity_1
SELECT count(*) FROM Activity	activity_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN Activity AS T3 ON T3.actid  =  T2.actid WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN Activity AS T3 ON T3.actid  =  T2.actid WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT  T1.fname ,  T1.lname ,  count(*) ,  T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID	activity_1
SELECT  T1.fname ,  T1.lname ,  count(*) ,  T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID	activity_1
SELECT T1.activity_name ,  count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID	activity_1
SELECT T1.activity_name ,  count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID	activity_1
SELECT  T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT  T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT T1.fname ,  T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.fname ,  T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Kayaking'	activity_1
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Kayaking'	activity_1
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Kayaking'	activity_1
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Kayaking'	activity_1
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Packing"	tracking_orders
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Packing"	tracking_orders
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"	tracking_orders
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T2.order_id ,  T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T2.order_id ,  T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "2009-01-01" AND T2.date_order_placed <= "2010-01-01"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "2009-01-01" AND T2.date_order_placed <= "2010-01-01"	tracking_orders
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "1975-01-01" AND T1.date_order_placed <= "1976-01-01"	tracking_orders
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "1975-01-01" AND T1.date_order_placed <= "1976-01-01"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.shipment_tracking_number = 3452	tracking_orders
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.shipment_tracking_number = 3452	tracking_orders
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10	tracking_orders
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10	tracking_orders
SELECT count(*) ,  T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT count(*) ,  T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT T3.product_name ,  count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT T3.product_name ,  count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT T2.customer_name ,  count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  >=  2	tracking_orders
SELECT T2.customer_name ,  count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  >=  2	tracking_orders
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2	tracking_orders
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.order_item_status = "Cancel" AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.order_item_status = "Cancel" AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT count(*) FROM book_club	culture_company
SELECT count(*) FROM book_club	culture_company
SELECT book_title ,  author_or_editor FROM book_club WHERE YEAR  >  1989	culture_company
SELECT book_title ,  author_or_editor FROM book_club WHERE YEAR  >  1989	culture_company
SELECT DISTINCT publisher FROM book_club	culture_company
SELECT DISTINCT publisher FROM book_club	culture_company
SELECT YEAR ,  book_title ,  publisher FROM book_club ORDER BY YEAR DESC	culture_company
SELECT YEAR ,  book_title ,  publisher FROM book_club ORDER BY YEAR DESC	culture_company
SELECT publisher ,  count(*) FROM book_club GROUP BY publisher	culture_company
SELECT publisher ,  count(*) FROM book_club GROUP BY publisher	culture_company
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT category ,  count(*) FROM book_club GROUP BY category	culture_company
SELECT category ,  count(*) FROM book_club GROUP BY category	culture_company
SELECT category FROM book_club WHERE YEAR  >  1989 GROUP BY category HAVING count(*)  >=  2	culture_company
SELECT category FROM book_club WHERE YEAR  >  1989 GROUP BY category HAVING count(*)  >=  2	culture_company
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990	culture_company
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990	culture_company
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR  =  1989	culture_company
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR  =  1989	culture_company
SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
SELECT COUNT (DISTINCT director) FROM movie	culture_company
SELECT COUNT (DISTINCT director) FROM movie	culture_company
SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
SELECT T1.company_name FROM culture_company AS T1 JOIN book_club AS T2 ON T1.book_club_id  =  T2.book_club_id WHERE T2.publisher  =  'Alyson'	culture_company
SELECT T1.company_name FROM culture_company AS T1 JOIN book_club AS T2 ON T1.book_club_id  =  T2.book_club_id WHERE T2.publisher  =  'Alyson'	culture_company
SELECT T1.title ,  T3.book_title FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id  =  T2.movie_id JOIN book_club AS T3 ON T3.book_club_id  =  T2.book_club_id WHERE T2.incorporated_in  =  'China'	culture_company
SELECT T1.title ,  T3.book_title FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id  =  T2.movie_id JOIN book_club AS T3 ON T3.book_club_id  =  T2.book_club_id WHERE T2.incorporated_in  =  'China'	culture_company
SELECT T2.company_name FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id  =  T2.movie_id WHERE T1.year  =  1999	culture_company
SELECT T2.company_name FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id  =  T2.movie_id WHERE T1.year  =  1999	culture_company