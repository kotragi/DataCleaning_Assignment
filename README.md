# DataCleaning_Assignment
Assignment for Week 4 Getting and Cleaning Data on Coursera

In this repository there is an R script 
**run_analysis.R**
that takes the following starting dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The assigment was to _extract_, _clean_ and _reshape_ this data set as described below.
The data consists of measurements related to wearable computing. 
The details about the data set are explained in the file **CodeBook.md** in this repository

The steps that needed to be performed were the following:

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
