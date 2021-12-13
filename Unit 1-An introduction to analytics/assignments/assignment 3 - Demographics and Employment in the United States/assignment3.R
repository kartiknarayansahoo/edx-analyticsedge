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
sort(tapply(CPS$Race =="American Indian", CPS$MetroArea, mean))
table(CPS$Race)
table(CPS$Education)
