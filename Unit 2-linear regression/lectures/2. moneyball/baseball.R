baseball = read.csv("baseball.csv")
str(baseball)
moneyball = subset(baseball, Year < 2002)
str(moneyball)
moneyball$RD = moneyball$RS - moneyball$RA
str(moneyball)
plot(moneyball$RD, moneyball$W)
WinsReg = lm(W ~ RD, data = moneyball)
summary(WinsReg)

#video3
# we will try to model runs scored

str(moneyball)
#RS model
RunsReg = lm(RS ~ OBP + SLG + BA, data = moneyball)
summary(RunsReg)
RunsReg = lm(RS ~ OBP + SLG, data = moneyball)
summary(RunsReg)
#RA model
RunsAllw = lm(RA ~ OOBP + OSLG, data = moneyball)
summary(RunsAllw)
#questions
2737.77*0.311 + 1584.91*0.405 -804.63
2913.60*0.297 + 1514.29*0.370 -837.38
