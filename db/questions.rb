# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("senior DESC").select("geography, senior").limit(3)
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order("youth DESC").select("geography, youth").limit(3)
# What 5 towns have the lowest per capita income?
TownHealthRecord.order("low_income ASC").select("geography, low_income").limit(5)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order("teen_birth DESC").select("geography, teen_birth").where("geography!=? and geography!=? and geography!=?", "Boston","Becket", "Beverly")
# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order("infant_mortality DESC").select("geography, infant_mortality").where("geography!=?", "Boston").limit(1)
