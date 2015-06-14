#run_analysis.R
#13Jun2015

#Step 0-Loading data files into R and preparing data sets for step 1
setwd("./R")
library(data.table); library(plyr); library(dplyr)
testx <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
tests <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
trainx <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
trains <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
activitylabels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
#Adding column names to testx and trainx
colnames(testx) <- features[,2]
colnames(trainx) <- features[,2]
#Adding row "activity".
testx[, "activity"] <- testy
trainx[, "activity"] <- trainy
#Adding row "subject".
testx[, "subject"] <- tests
trainx[, "subject"] <- trains

#Step 1-Merges the training and the test sets to create one data set (dataset1)
dataset1 <- rbind(testx, trainx)
#Step 2-Extracts only the measurements on the mean and standard deviation for each measurement (dataset2) 
colmeanF <- grep("meanF", names(dataset1)) #Column names including "meanF"
datasetmean <- select(dataset1, -(colmeanF)) #Remove columns with names including "meanF"
colmean <- grep("mean", names(datasetmean)) #Column names including "mean"
datasetmean <- select(datasetmean, colmean) #Select columns with names including "mean"
datasetmean <- cbind(dataset1$subject, dataset1$activity, datasetmean) #Add columns "names including "mean""subject" and "activity"
colstd <- grep("std", names(dataset1)) #Column names including "std"
datasetstd <- select(dataset1, colstd) #Select columns with names including "std"
dataset2 <- cbind(datasetmean, datasetstd) #Merge 2 dataframes "datasetmean" with "datasetstd"

#Step 3-Uses descriptive activity names to name the activities in the data set (dataset3)
dataset2[ ,2] <- factor(dataset2[ ,2], labels = c("walking", "walkingupstairs", "waklingdownstairs", "sitting", "standing", "laying"))
dataset3 <- select(dataset2, -(activity))

#Step 4-Appropriately labels the data set with descriptive variable names in vector nf (dataset4)
nf <- names(dataset3)
nf <- sub("^t", "time", nf) 
nf <- sub("^f", "fourier", nf) 
nf <- sub("\\$", "", nf)
nf <- sub("dataset1", "", nf) 
nf <- gsub("-", "", nf)
nf <- sub("\\()", "", nf)
nf <- sub("BodyBody", "body", nf) 
nf <- sub("Body", "body", nf)
nf <- sub("Acc", "acceleration", nf) 
nf <- sub("Gyro", "gyroscope", nf)
nf <- sub("Mag", "magnitude", nf) 
nf <- tolower(nf)
dataset4 <- setnames(dataset3, nf)

#Step 5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (dataset5)
library(doBy)
dataset5 <- summaryBy(. ~ subject+activity, data = dataset4, FUN = mean)
write.table(dataset5, row.name=FALSE)
#End of script

