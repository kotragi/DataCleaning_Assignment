## This R Code creates a unified data frame from the components described in the README file
## and prepares tidy data that can be used for later analysis
## the files need to be already saved into the working directory

## the two data files
url_test<-"./UCI HAR Dataset/test/X_test.txt"
url_train<-"./UCI HAR Dataset/train/X_train.txt"
## the subjects
url_subject_test<-"./UCI HAR Dataset/test/subject_test.txt"
url_subject_train<-"./UCI HAR Dataset/train/subject_train.txt"
## the labels
url_label_test<-"./UCI HAR Dataset/test/y_test.txt"
url_label_train<-"./UCI HAR Dataset/train/y_train.txt"
## file with the variable names
url_features<-"./UCI HAR Dataset/features.txt"
url_activities<-"./UCI HAR Dataset/activity_labels.txt"


##reading in all files
testdata<-read.table(url_test)
testsubject<-read.table(url_subject_test)
testlabel<-read.table(url_label_test)
traindata<-read.table(url_train)
trainsubject<-read.table(url_subject_train)
trainlabel<-read.table(url_label_train)
features<-read.table(url_features)
activities<-read.table(url_activities)

## giving the data frames the specific variable names
names(testdata)<-features[,2]
names(traindata)<-features[,2]
## naming the subjects and the labels
names(testsubject)<-"subjectID"
names(testlabel)<-"activity"
names(trainsubject)<-"subjectID"
names(trainlabel)<-"activity"


## merging with the subject and label
testdata<-cbind(testsubject, testlabel, testdata)
traindata<-cbind(trainsubject, trainlabel, traindata)

## merging the two data sets into one
fulldata<-rbind(testdata, traindata)

library(tidyr)
library(dplyr)
library(data.table)

## identifying the variables that include mean() or std() 
## and also choose the first two columns into this selection
## saving these column indices into a vector, then
## subsetting the full data set on the index vector

needed_columns<-grep("subjectID|activity|mean\\(\\)|std\\(\\)",names(fulldata))
subdata<-fulldata[,needed_columns]

## cleaning the variable names, removing the "-"s and brackets
## I decided to do it in multiple steps, it is probably not the most efficient code but it works
## and it looks nicer than nesting the commands
names(subdata)<-gsub("mean","Mean",names(subdata))
names(subdata)<-gsub("std","Std",names(subdata))
names(subdata)<-gsub("\\(\\)","",names(subdata))
names(subdata)<-gsub("-","",names(subdata))


## replacing the activity ids with activity names from the "activities" table 
## first sorting so that the activity ids are in the same order as in the name file
subdata<-arrange(subdata,activity)

## creating a factor
subdata<-mutate(subdata,activity=factor(activity, labels=activities$V2))


## final step is to create a tidy data set with the average of each variable 
## for each activity and each subject

## first melt to get all our variables in one column for using dcast 
subdata_melt<-melt(subdata,id=c("subjectID","activity"))
## keeping subjectID and activity as ID and using mean on all the variables:
final_dataset<-dcast(subdata_melt, subjectID + activity ~ variable, mean)

write.table(final_dataset, file="./data/R_assignment4_TidyData.csv")