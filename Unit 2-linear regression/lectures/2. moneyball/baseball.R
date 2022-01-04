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
#question
#eric - 1.4 mil
2737.77*0.338 + 1584.91*0.540 -804.63
#jeremy - 1 mil
2737.77*0.391+ 1584.91*0.450 -804.63
#frank - 295k
2737.77*0.369 + 1584.91*0.374 -804.63
#greg - 800k
2737.77*0.313 + 1584.91*0.447 -804.63
#carlos - 300k
2737.77*0.361 + 1584.91*0.5 -804.63

#question
teamRank = c(1,2,3,3,4,4,4,4,5,5)
wins2012 = c(94,88,95,88,93,94,98,97,93,94)
wins2013 = c(97,97,92,93,92,96,94,96,92,90)
