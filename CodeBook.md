#Code Book

The raw dataset is coming from the project _Human Activity Recognition Using Smartphones Dataset_
For details on the project, please go to www.smartlab.ws or to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

As of the descrption of the original dataset:
The experiments have been carried out with a group of 30 volunteers (=subject) within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) (=activity) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The original dataset have been modified as following:
- the test data and training data has been merged again
- the activities and subject ids were added
- from the original 561-feature vector with time and frequency domain variables, only those has been kept that has been related to the mean and standard deviation of the certain measurements. That gives us 66 variables.
- The variables has been relabeled based on the shortening of the definition, as described below
- The dataset was reshaped into a independent tidy data set with the **average of each variable for each activity and each subject**


The fields in the final dataset:
-subjectID: numeric, 1-30 identification number of the person who performed the activities
-activity: factor, the type of activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Plus the means of the following variables per each subject and activity type:
-tBodyAccMeanX: time, mean of the BodyAcc in direction X
-tBodyAccMeanY: time, mean of the BodyAcc in direction Y
-tBodyAccMeanZ: time, mean of the BodyAcc in direction Z
-tBodyAccStdX: time, standard deviation of the BodyAcc in direction X
-tBodyAccStdY: time, standard deviation of the BodyAcc in direction Y
-tBodyAccStdZ: time, standard deviation of the BodyAcc in direction Z
-tGravityAccMeanX: time, mean of the GravityAcc in direction X
-tGravityAccMeanY: time, mean of the GravityAcc in direction Y
-tGravityAccMeanZ: time, mean of the GravityAcc in direction Z
-tGravityAccStdX: time, standard deviation of the GravityAcc in direction X
-tGravityAccStdY: time, standard deviation of the GravityAcc in direction Y
-tGravityAccStdZ: time, standard deviation of the GravityAcc in direction Z
-tBodyAccJerkMeanX: time, mean of the BodyAccJerk in direction X
-tBodyAccJerkMeanY: time, mean of the BodyAccJerk in direction Y
-tBodyAccJerkMeanZ: time, mean of the BodyAccJerk in direction Z
-tBodyAccJerkStdX: time, standard deviation of the BodyAccJerk in direction X
-tBodyAccJerkStdY: time, standard deviation of the BodyAccJerk in direction Y
-tBodyAccJerkStdZ: time, standard deviation of the BodyAccJerk in direction Z
-tBodyGyroMeanX: time, mean of the BodyGyro in direction X
-tBodyGyroMeanY: time, mean of the BodyGyro in direction Y
-tBodyGyroMeanZ: time, mean of the BodyGyro in direction Z
-tBodyGyroStdX: time, standard deviation of the BodyGyro in direction X
-tBodyGyroStdY: time, standard deviation of the BodyGyro in direction Y
-tBodyGyroStdZ: time, standard deviation of the BodyGyro in direction Z
-tBodyGyroJerkMeanX: time, mean of the BodyGyroJerk in direction X
-tBodyGyroJerkMeanY: time, mean of the BodyGyroJerk in direction Y
-tBodyGyroJerkMeanZ: time, mean of the BodyGyroJerk in direction Z
-tBodyGyroJerkStdX: time, standard deviation of the BodyGyroJerk in direction X
-tBodyGyroJerkStdY: time, standard deviation of the BodyGyroJerk in direction Y
-tBodyGyroJerkStdZ: time, standard deviation of the BodyGyroJerk in direction Z
-tBodyAccMagMean: time, mean of the BodyAccMag
-tBodyAccMagStd:  time, standard deviation of the BodyAccMag
-tGravityAccMagMean: time, mean of theGravityAccMag
-tGravityAccMagStd: time, standard deviation of the GravityAccMag
-tBodyAccJerkMagMean: time, mean of the BodyAccJerk
-tBodyAccJerkMagStd: time, standard deviation of the BodyAccJerk
-tBodyGyroMagMean: time, mean of the BodyGyroMagBodyGyroMag
-tBodyGyroMagStd: time, standard deviation of theBodyGyroMag
-tBodyGyroJerkMagMean: time, mean of the BodyGyroJerkMag
-tBodyGyroJerkMagStd: time, standard deviation of the BodyGyroJerkMag
-fBodyAccMeanX: frequency, mean of the BodyAcc in direction X
-fBodyAccMeanY: frequency, mean of the BodyAcc in direction Y
-fBodyAccMeanZ: frequency, mean of the BodyAcc in direction Z
-fBodyAccStdX: time, standard deviation of the BodyAcc in direction X
-fBodyAccStdY: time, standard deviation of the BodyAcc in direction Y
-fBodyAccStdZ: time, standard deviation of the BodyAcc in direction Z
-fBodyAccJerkMeanX: frequency, mean of the BodyAccJerk in direction X
-fBodyAccJerkMeanY: frequency, mean of the BodyAccJerk in direction Y
-fBodyAccJerkMeanZ: frequency, mean of the BodyAccJerk in direction Z
-fBodyAccJerkStdX: time, standard deviation of the BodyAccJerk in direction X
-fBodyAccJerkStdY: time, standard deviation of the BodyAccJerk in direction Y
-fBodyAccJerkStdZ: time, standard deviation of the BodyAccJerk in direction Z
-fBodyGyroMeanX: frequency, mean of the BodyGyro in direction X
-fBodyGyroMeanY: frequency, mean of the BodyGyro in direction Y
-fBodyGyroMeanZ: frequency, mean of the BodyGyro in direction Z
-fBodyGyroStdX: frequency, standard deviation of the BodyGyro in direction X
-fBodyGyroStdY: frequency, standard deviation of the BodyGyro in direction Y
-fBodyGyroStdZ: frequency, standard deviation of the BodyGyro in direction Z
-fBodyAccMagMean: frequency, mean of the BodyAccMag
-fBodyAccMagStd: frequency, standard deviation of the BodyAccMag
-fBodyBodyAccJerkMagMean: frequency, mean of the BodyAccJerkMag
-fBodyBodyAccJerkMagStd: frequency, standard deviation of the BodyAccJerkMag
-fBodyBodyGyroMagMean : frequency, mean of the BodyGyroMag
-fBodyBodyGyroMagStd: frequency, standard deviation of the BodyGyroMag
-fBodyBodyGyroJerkMagMean: frequency, mean of the BodyGyroJerkMag
-fBodyBodyGyroJerkMagStd: frequency, standard deviation of the BodyGyroJerkMag







(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
