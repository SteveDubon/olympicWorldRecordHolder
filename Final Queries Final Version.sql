#REQUIREMENT A: golden medal winners only
CREATE OR REPLACE VIEW golden_athletes AS
SELECT CONCAT(first_name , ' ' , last_name) AS athlete_name, medal_type AS medal_type
FROM medalist_in_events
	JOIN medalists USING (medalist_id)
	JOIN medals USING (medal_id)
WHERE medal_id = 1; 

#REQUIREMENT A, B: events happening in a certain venue
CREATE OR REPLACE VIEW sports_venue AS
SELECT event_name AS event_name, discipline AS events_discipline, venue AS venue
FROM sports JOIN events USING (sport_id)
WHERE venue = 'Alpensia Cross Country Centre';

#REQUIREMENT A, B, C: count number of medals per country
CREATE OR REPLACE VIEW medal_count AS
SELECT countries.name AS country_name, COUNT(medalists.medalist_id) AS num_of_medals
FROM medalists JOIN countries USING (country_id)
GROUP BY countries.name
ORDER BY COUNT(medalists.medalist_id); 

#REQUIREMENT A, B, C, D: count number of medals per country
CREATE OR REPLACE VIEW new_records AS
SELECT CONCAT(first_name , ' ' , last_name) AS athlete_name, event_name AS olympic_event, description AS wr_description
FROM medalist_in_events
	JOIN medalists USING (medalist_id)
	JOIN mydb.events USING (event_id)
	JOIN world_records USING (world_record_id)
WHERE world_record_id != 1; 

#REQUIREMENT A, B, C, E: age of winners per country higher than the total average
CREATE OR REPLACE VIEW above_avg_age AS
SELECT age AS avg_age, countries.name AS country_name
FROM medalists JOIN countries USING (country_id)
WHERE age >
    (SELECT AVG(age)
     FROM medalists)
GROUP BY country_id
ORDER  BY age;