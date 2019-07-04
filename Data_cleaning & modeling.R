RequiredLib  <- c("stringr","tm","RWeka","knitr","fastDummies","mlr")
install.packages(RequiredLib, dependencies = TRUE)
library(fastDummies)
library(mlr)


setwd("C:\\Users\\Dishali Sonawane\\Desktop")

pet_data <- read.csv("C:\\Users\\Dishali Sonawane\\Desktop\\Pet_data.csv")
View(pet_data)


# replace the missing values with the mean value in Photo_Amt
#mean(pet_data$PhotoAmt)
pet_data$PhotoAmt <- as.character(pet_data$PhotoAmt)

pet_data$PhotoAmt[ pet_data$PhotoAmt == "0" ] <- "4"


pet_data$Type <- as.character(pet_data$Type)
dummy_Type<-createDummyFeatures(pet_data$Type)
pet_data$Type <- dummy_Type

pet_data$Breed1 <- as.character(pet_data$Breed1)
dummy_Breed1<-createDummyFeatures(pet_data$Breed1)
pet_data$Breed1 <- dummy_Breed1

pet_data$Gender <- as.character(pet_data$Gender)
dummy_Gender<-createDummyFeatures(pet_data$Gender)
pet_data$Gender <- dummy_Gender

pet_data$Color1 <- as.character(pet_data$Color1)
dummy_Color1<-createDummyFeatures(pet_data$Color1)
pet_data$Color1 <- dummy_Color1

pet_data$Color2 <- as.character(pet_data$Color2)
dummy_Color2<-createDummyFeatures(pet_data$Color2)
pet_data$Color2 <- dummy_Color2

pet_data$FurLength <- as.character(pet_data$FurLength)
dummy_FurLength <-createDummyFeatures(pet_data$FurLength)
pet_data$FurLength <- dummy_FurLength

pet_data$MaturitySize <- as.character(pet_data$MaturitySize)
dummy_MaturitySize<-createDummyFeatures(pet_data$MaturitySize)
pet_data$MaturitySize <- dummy_MaturitySize

pet_data$Vaccinated <- as.character(pet_data$Vaccinated)
dummy_Vaccinated<-createDummyFeatures(pet_data$Vaccinated)
pet_data$Vaccinated <- dummy_Vaccinated

pet_data$Sterilized <- as.character(pet_data$Sterilized)
dummy_Sterilized<-createDummyFeatures(pet_data$Sterilized)
pet_data$Sterilized <- dummy_Sterilized

pet_data$Health <- as.character(pet_data$Health)
dummy_Health<-createDummyFeatures(pet_data$Health)
pet_data$Health <- dummy_Health

View(pet_data)
write.csv(pet_data,"pet_data_final.csv")
pet_data1 <- read.csv("C:\\Users\\Dishali Sonawane\\Desktop\\week 6\\pet_data_final.csv")

reduced_model <- lm(AdoptionSpeed~.,pet_data1)
summary(lin_reg)

#reduce the model using selection model
#reduce the mnodel using backward selection method
step <- step(reduced_model, direction="backward")
step$anova # display results

# Linear Regression 
lin_reg <- lm(AdoptionSpeed~.,data = dst)
lin_reg
summary(lin_reg)

# Classification tree 
tree <- ctree(AdoptionSpeed~Vaccinated+Sterilized+Health+Type, data=dst)
summary(tree)
plot(tree)

