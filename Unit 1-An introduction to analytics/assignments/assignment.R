mvt = read.csv("mvtWeek1.csv")
str(mvt)
which.max(mvt$ID)
mvt$ID[18134]
which.min(mvt$Beat)
mvt$Beat[4756]
table(mvt$Arrest)
table(mvt$LocationDescription)
mvt$Date[1]
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
summary(DateConvert)
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert
str(mvt)
table(mvt$Arrest, mvt$Month)
table(mvt$Month)
table(mvt$Weekday)
hist(mvt$Date, breaks=100, xlab = "Date", main = "Histogram of MVT")
# saving plots to local directory
dev.copy(jpeg,"hist.jpg")
dev.off()
boxplot(mvt$Date ~ (mvt$Arrest), xlab = "Arrest", ylab = "Date" )
table(mvt$Arrest, mvt$Year)
sort(table(mvt$LocationDescription))
Top5 = subset(mvt, LocationDescription=="STREET" | LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)" | LocationDescription=="ALLEY" | LocationDescription=="GAS STATION" | LocationDescription=="DRIVEWAY - RESIDENTIAL")
str(Top5)
str(TopLocations)
