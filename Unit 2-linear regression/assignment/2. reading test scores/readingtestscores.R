pisaTrain = read.csv("pisa2009train.csv", stringsAsFactors =  TRUE)
pisaTest = read.csv("pisa2009test.csv", stringsAsFactors = TRUE)
str(pisaTrain)
tapply(pisaTrain$readingScore, pisaTrain$male, mean)
summary(pisaTrain)
table(is.na(pisaTrain$raceeth))

# omitting na values for linear regression
pisaTrain = na.omit(pisaTrain)
pisaTest = na.omit(pisaTest)
str(pisaTrain)
str(pisaTest)

pisaTrain$raceeth = relevel(pisaTrain$raceeth, "White")
pisaTest$raceeth = relevel(pisaTest$raceeth, "White")

#lmscore = lm(readingScore ~ grade + male +raceeth + preschool + expectBachelors + motherHS + motherBachelors + motherWork + fatherHS + fatherBachelors + fatherWork + selfBornUS + motherBornUS + fatherBornUS + englishAtHome + computerForSchoolwork + read30MinsADay + minutesPerWeekEnglish + studentsInEnglish + schoolHasLibrary + publicSchool + urban + schoolSize, data = pisaTrain )
lmscore = lm(readingScore ~ ., data = pisaTrain)
summary(lmscore)
lmscore1 = step(lmscore)
summary(lmscore1)
SSE = sum(lmscore$residuals^2)
RMSE = sqrt(SSE/nrow(pisaTrain))
RMSE
