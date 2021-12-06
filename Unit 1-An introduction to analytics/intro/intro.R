# vectors
c(1,2,3,4,5)
Country = c("Brazil","China","India","Switzerland","USA")
LifeExpectancy = c(74,76,65,83,79)
Country
LifeExpectancy
Country[1]
LifeExpectancy[3]
seq(0,100,2)
# dataframes
CountryData = data.frame(Country,LifeExpectancy)
CountryData
CountryData$Population = c(1000,2000,1500,200,500)
CountryData
Country = c("Australia","Greece")
LifeExpectancy = c(82,81)
Population = c(400,100)
NewCountryData = data.frame(Country,LifeExpectancy,Population)
NewCountryData
AllCountryData = rbind(CountryData,NewCountryData)
AllCountryData
getwd()
WHO = read.csv("WHO.csv")
#shows the structure of dataset imported
str(WHO) 
summary(WHO)
which.min(WHO$Over60)
WHO$Country[183]
WHO$Country[which.max(WHO$LiteracyRate)]
which.max(WHO$LiteracyRate)
which.max(WHO$LiteracyRate)
WHO$LiteracyRate[44]
which.min(WHO$LiteracyRate)
WHO$Country[105]
WHO$LiteracyRate[105]
# plots and summary tables
# histogram
hist(WHO$CellularSubscribers)
# boxplots
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab = "", ylab = "LifeExpectancy", main = "Life Expectancy of Countries by Region")
# tables
table(WHO$Region)
table(WHO$Region)
# tapply gives nice info about numerical values
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm = TRUE)

















