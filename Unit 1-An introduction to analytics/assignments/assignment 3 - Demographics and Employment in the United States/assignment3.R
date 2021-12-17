CPS = read.csv("CPSData.csv")
str(CPS)
summary(CPS)
sort(table(CPS$Industry))
sort(table(CPS$State))
table(CPS$Citizenship)
table(CPS$Race, CPS$Hispanic)
summary(CPS)

table(CPS$Region, is.na(CPS$Married))
table(CPS$Sex, is.na(CPS$Married))
table(CPS$Age, is.na(CPS$Married))
table(CPS$Citizenship, is.na(CPS$Married))

table(CPS$State, is.na(CPS$MetroAreaCode))

table(CPS$Region, is.na(CPS$MetroAreaCode))

# how to NOT manually calculate proportion
sort(tapply(is.na(CPS$MetroAreaCode), CPS$State, mean))
sort(tapply(is.na(CPS$MetroAreaCode), CPS$Region, mean))
MetroAreaMap = read.csv("MetroAreaCodes.csv")
CountryMap = read.csv("CountryCodes.csv")
str(MetroAreaMap)
str(CountryMap)
str(CPS)
CPS = merge(CPS, MetroAreaMap, by.x = "MetroAreaCode", by.y = "Code", all.x = TRUE)
str(CPS)

table(is.na(CPS$MetroArea))
sort(table(CPS$MetroArea))

sort(tapply(CPS$Hispanic, CPS$MetroArea, mean))

sort(tapply(CPS$Race == "Asian", CPS$MetroArea, mean))
sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean, na.rm = TRUE))

CPS = merge(CPS, CountryMap, by.x = "CountryOfBirthCode", by.y = "Code", all.x = TRUE)
str(CPS)
table(is.na(CPS$Country))
sort(table(CPS$Country))
sort(tapply(CPS$Country != "United States", CPS$MetroArea, mean, na.rm = TRUE))
(table(CPS$MetroArea, CPS$Country == "Somalia"))

sort(tapply(CPS$Country == "India", CPS$MetroArea, sum, na.rm = TRUE))
sort(tapply(CPS$Country == "Brazil", CPS$MetroArea, sum, na.rm = TRUE))
sort(tapply(CPS$Country == "Somalia", CPS$MetroArea, sum, na.rm = TRUE))



