cc = read.csv("climate_change.csv")
str(cc)
train = subset(cc, Year <= 2006)
str(train)
test = subset(cc , Year > 2006)
model = lm(Temp ~ MEI + CO2 + CH4 + N2O+ CFC.11 + CFC.12 + TSI + Aerosols, data = train)
summary(model)
cor(cc$N2O,cc$CFC.11)
cor(cc)

model2 = lm(Temp ~ MEI + TSI + Aerosols + N2O, data = train)
summary(model2)

# finding best model using step function
model3 = step(model)
summary(model3)

# applying model3 on test data
temppredictions = predict(model3, newdata = test)
summary(temppredictions)
temppredictions
SSE = sum((temppredictions - test$Temp)^2)
SST = sum((mean(train$Temp) - test$Temp)^2)
R2 = 1 - SSE/SST
R2
