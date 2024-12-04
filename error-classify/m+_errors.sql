golden truth: SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
prediction: SELECT pettype , MAX( weight ) , MAX( weight ) FROM pets GROUP BY pettype	pets_1

golden truth: SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
prediction: SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'	flight_2

golden truth: SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
prediction: SELECT version_number , template_type_code FROM templates ORDER BY version_number ASC LIMIT 1	cre_Doc_Template_Mgt

golden truth: select other_details from paragraphs where paragraph_text like 'korea'	cre_Doc_Template_Mgt
prediction: SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'	cre_Doc_Template_Mgt

golden truth: SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
prediction: SELECT document_id , COUNT( * ) FROM paragraphs GROUP BY document_id	cre_Doc_Template_Mgt

golden truth: SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
prediction: SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'	cre_Doc_Template_Mgt

golden truth: SELECT name ,  date FROM battle	battle_death
prediction: SELECT name , date , result FROM battle	battle_death

golden truth: SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'	battle_death
prediction: SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death

golden truth: SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
prediction: SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow

golden truth: SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
prediction: SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow

golden truth: SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
prediction: SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels

golden truth: SELECT max(charge_amount) FROM Charges	dog_kennels
prediction: SELECT SUM( charge_amount ) FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels
