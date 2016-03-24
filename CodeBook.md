#Code Book

The raw dataset is coming from the project _Human Activity Recognition Using Smartphones Dataset_
For details on the project, please go to www.smartlab.ws

As of the descrption of the original dataset:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The original dataset have been modified as following:
- the test data and training data has been unified
- the activities and subject ids were added
- from the original 561-feature vector with time and frequency domain variables, only those has been kept that has been related to the mean and standard deviation of the certain measurements. That is 66 veriables altogether





(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
