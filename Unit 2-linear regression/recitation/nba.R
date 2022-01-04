NBA = read.csv("NBA_train.csv")
str(NBA)
# when loading a variable starting with a number
# R adds an X infront of it
table(NBA$W, NBA$Playoffs)
plot(NBA$W,NBA$Playoffs)
NBA$PTSdiff= NBA$PTS - NBA$oppPTS
plot(NBA$PTSdiff, NBA$W)
cor(NBA$PTSdiff, NBA$W)
WinsReg = lm(W ~ PTSdiff, data = NBA)
summary(WinsReg)
cor(NBA)
PointsReg = lm(PTS ~ X3PA + X2PA + FTA + AST + ORB + DRB + TOV + STL + BLK, data = NBA)
summary(PointsReg)
PointsReg$residuals
SSE = sum(PointsReg$residuals^2)
SSE
RMSE = sqrt(SSE/nrow(NBA))
RMSE
mean(NBA$PTS)
summary(PointsReg)
PointsReg2 = lm(PTS ~ X3PA + X2PA + FTA + AST + ORB + DRB + STL + BLK, data = NBA)
summary(PointsReg2)
PointsReg3 = lm(PTS ~ X3PA + X2PA + FTA + AST + ORB + STL + BLK, data = NBA)
summary(PointsReg3)
PointsReg4 = lm(PTS ~ X3PA + X2PA + FTA + AST + ORB + STL, data = NBA)
summary(PointsReg4)
SSE4 = sum(PointsReg4$residuals^2) 
RMSE4 = sqrt(SSE4/nrow(NBA))
SSE4
RMSE4


# test data

NBA_test = read.csv("NBA_test.csv")
PointsPrediction = predict(PointsReg4, newdata = NBA_test)
SSE_test = sum((PointsPrediction - NBA_test$PTS)^2)
SST_test = sum((mean(NBA$PTS) - NBA_test$PTS)^2)
R2 = 1 - SSE_test/SST_test
R2
RMSE_test = sqrt(SSE_test/nrow(NBA_test))
RMSE_test
