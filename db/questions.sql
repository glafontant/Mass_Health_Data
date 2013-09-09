-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, senior FROM "town_health_records" ORDER BY senior DESC LIMIT 3
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, youth FROM "town_health_records" ORDER BY youth DESC LIMIT 3
-- What 5 towns have the lowest per capita income?
SELECT geography, low_income FROM "town_health_records" ORDER BY low_income ASC LIMIT 5
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
 SELECT geography, teen_birth FROM "town_health_records" WHERE (geography!='Boston' and geography!='Becket' and geography!='Beverly') ORDER BY teen_birth DESC
-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality FROM "town_health_records" WHERE (geography!='Boston') ORDER BY infant_mortality DESC LIMIT 1
