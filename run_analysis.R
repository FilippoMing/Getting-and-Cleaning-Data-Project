#load reshape2 package
library(reshape2)

#Download the file and put the file in the data folder
if(!file.exists("./data")){
  dir.create("./data")
  }
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

#Unzip the file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#Get the list of the files from the UCI HAR Dataset folder
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)

#Read data from the files into the variables

#Read the Activity files
dataActivityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)

#Read the Subject files
dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)
#Read Features files
dataFeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

#1. Merges the training and the test sets to create one data set

#Concatenate the data tables by rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

#Set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

#Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

#2. Extracts only the measurements on the mean and standard deviation for each measurement

#Subset Name of Features by measurements on the mean and standard deviation
extractedFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

#Subset the data frame Data by extracted names of Features
extractedNames<-c(as.character(extractedFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=extractedNames)

#3. Uses descriptive activity names to name the activities in the data set

#Read descriptive activity names from “activity_labels.txt”
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)
activityLabels[, 2] = tolower(as.character(activityLabels[, 2]))

#Factorize Variable activity in the data frame Data using descriptive activity names
Data$activity <- factor(Data$activity, labels = activityLabels[,2])

#4. Appropriately labels the data set with descriptive variable names
names(Data)<-gsub("-std", "StdDev", names(Data))
names(Data)<-gsub("-mean", "Mean", names(Data))
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("([Gg]ravity)", "Gravity", names(Data))
names(Data)<-gsub("([Bb]ody[Bb]ody)|[Bb]ody", "Body", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("[Gg]yro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("\\(\\)", "", names(Data))

#5.Creates a second,independent tidy data set with the average of each variable for each activity and each subject

#Make data long by grouping data by subject and activity
longData <- melt(Data, id = c("subject","activity"))

#Make data wide taking means of subject/activity pairs
wideData <- dcast(longData, subject + activity ~ variable, mean)

#Set clean data
cleanData <- wideData

#Output the clean Data
write.table(cleanData, file = "tidydata.txt",row.name=FALSE)
