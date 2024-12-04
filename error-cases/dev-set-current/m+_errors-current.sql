--Same table apply different operation (different rows)

Line 33 (duplicant column selection):
question: Find the maximum weight for each type of pet. List the maximum weight and pet type.
golden truth: SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
prediction: SELECT pettype , MAX( weight ) , MAX( weight ) FROM pets GROUP BY pettype	pets_1

Line 84 (redundant LIKE clause):
question: Give the airport code and airport name corresonding to the city Anthony.
golden truth: SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
prediction: SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'	flight_2

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

Line 188: (redundant LIKE clause)
question: Show the document id with paragraph text 'Brazil' and 'Ireland'.
golden truth: SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
prediction: SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'	cre_Doc_Template_Mgt

Line 271: (redundant column)
question: List the name, date and result of each battle.
golden truth: SELECT name ,  date FROM battle	battle_death
prediction: SELECT name , date , result FROM battle	battle_death

Line 275: (missing DISTINCT keyword)
question:  What are the distinct battle names which are between bulgarian commander 'Kaloyan' and latin commander 'Baldwin I'?
golden truth: SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'	battle_death
prediction: SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death

Line 332: (miss aggregation function + miss a DISTINCT keyword):
question: List the number of different series names and contents in the TV Channel table.
golden truth: SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
prediction: SELECT COUNT( DISTINCT series_name ) , content FROM tv_channel	tvshow

Line 362: (wrong GROUP BY condition)
question: Find id of the tv channels that from the countries where have more than two tv channels.
golden truth: SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
prediction: SELECT id FROM tv_channel GROUP BY id HAVING COUNT( * ) > 2	tvshow

Line 539: (redundant operator + wrong key value error)
question: List the dog name, age and weight of the dogs who have been abandoned? 1 stands for yes, and 0 stands for no.
golden truth: SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
prediction: SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes' OR abandoned_yn = 'no'	dog_kennels

Line 547: (wrong aggregation function
question: How much does the most expensive charge type costs?
golden truth: SELECT max(charge_amount) FROM Charges	dog_kennels
prediction: SELECT SUM( charge_amount ) FROM charges ORDER BY charge_type DESC LIMIT 1	dog_kennels
