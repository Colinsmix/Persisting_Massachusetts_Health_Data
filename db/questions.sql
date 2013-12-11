-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography FROM town_health_records ORDER BY age_65_plus_2005 DESC LIMIT 3;
TownHealthRecord.select(:geography).order("age_65_plus_2005 DESC").limit(3)


-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM town_health_records ORDER BY age_0_to_19_2005 DESC LIMIT 3;
TownHealthRecord.select(:geography).order("age_0_to_19_2005 DESC").limit(3)

-- What 5 towns have the lowest per capita income?
SELECT geography FROM town_health_records ORDER BY per_capita_income_2000 LIMIT 5;
TownHealthRecord.select(:geography).order("per_capita_income_2000").limit(5)

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
Select geography from town_health_records where geography NOT In ('Boston', 'Becket', 'Beverly') ORDER BY percent_teen_births_2005_to_2008 DESC LIMIT 1;
TownHealthRecord.select(:geography).where.not(geography: ['Boston','Becket','Beverly']).order("teen_births_2005to2008 DESC").take

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography FROM town_health_records WHERE geography != 'Boston' ORDER BY number_of_infant_deaths_2005_to_2008 DESC LIMIT 1;
TownHealthRecord.select(:geography).where.not(geography: ['Boston','Becket','Beverly']).order("teen_births_2005to2008 DESC").take
