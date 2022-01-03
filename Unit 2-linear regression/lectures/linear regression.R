wine = read.csv("wine.csv")
str(wine)
summary(wine)
model1 = lm(Price ~ AGST, data = wine)
summary(model1)
model1$residuals
SSE = sum(model1$residuals^2)
SSE
model2 = lm(Price ~ AGST + HarvestRain, data = wine)
summary(model2)
SSE = sum(model2$residuals^2)
SSE
model3 = lm(Price ~ AGST + HarvestRain + WinterRain  + Age + FrancePop, data = wine)
summary(model3)
SSE = sum(model3$residuals^2)
SSE
model_1 = lm(Price ~ HarvestRain + WinterRain, data = wine)
summary(model_1)

model4 = lm(Price ~ AGST + HarvestRain + WinterRain + Age, data = wine)
summary(model4)

cor(wine$Age, wine$FrancePop)
cor(wine$FrancePop, wine$Age)
cor(wine$Age, wine$Age)
cor(wine)

model5 = lm(Price ~ AGST + HarvestRain + WinterRain, data = wine)
summary(model5)

cor(wine$HarvestRain, wine$WinterRain)

wineTest = read.csv("wine_test.csv")
predictTest = predict(model4, newdata = wineTest)
predictTest
SSE = sum((wineTest$Price - predictTest)^2)
SST = sum((wineTest$Price - mean(wine$Price))^2)
1 - SSE/SST #testset R^2
