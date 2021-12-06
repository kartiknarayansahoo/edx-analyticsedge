USDA = read.csv("USDA.csv")
str(USDA)
summary(USDA)
which.max(USDA$Sodium)
USDA$Description[265]
names(USDA)
HighSodium = subset(USDA, Sodium>10000)
nrow(HighSodium)
HighSodium[c("Description","Sodium")]
# finding an item in a dataframe
match("CAVIAR", USDA$Description)
USDA$Sodium[4154]
summary(USDA$Sodium)
sd(USDA$Sodium, na.rm = TRUE)
plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "Fat", main ="Protein vs Fat", col ="red")
hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C Levels", xlim = c(0,10), breaks = 16000)
boxplot(USDA$Sugar, main = "Boxplot of Sugar Levels", ylab = "Sugar (g)")
USDA$Sodium[1] > mean(USDA$Sodium, na.rm = TRUE)
HighSodium = USDA$Sodium> mean(USDA$Sodium, na.rm = TRUE)
# adding variables highproteins highfat etc, to USDA dataframe
USDA$HighSodium = as.numeric(USDA$Sodium> mean(USDA$Sodium, na.rm = TRUE))
USDA$HighProtein = as.numeric(USDA$Protein> mean(USDA$Protein, na.rm = TRUE))
USDA$HighFat = as.numeric(USDA$TotalFat> mean(USDA$TotalFat, na.rm = TRUE))
USDA$HighCarbs = as.numeric(USDA$Carbohydrate> mean(USDA$Carbohydrate, na.rm = TRUE))
str(USDA)
# summary tables
table(USDA$HighSodium)
table(USDA$HighSodium, USDA$HighFat)
tapply(USDA$Iron, USDA$HighProtein, mean, na.rm = TRUE)
tapply(USDA$VitaminC, USDA$HighCarbs, max, na.rm = TRUE)
tapply(USDA$VitaminC, USDA$HighCarbs, summary, na.rm = TRUE)

     