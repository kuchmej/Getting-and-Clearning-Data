Data Source

The dataset is derived from experiments carried out with a group of 30 users ages 19-48.  The title of the project was "Human Activity Recognition Using Smartphones Data Set" and can be located here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection
Singals were used to estimate variables of the feature vector for each pattern.  The singals have a time component (t), a body or gravity acceleration component (BodyAcc or GravityAcc), a body or gravity gyro component (BodyGyro or GravityGryro) as well as body gyro jerk component (BodyGyroJerk).  Magnitudes (MAG) are taken accross all features and the -XYZ is used to represent the dimensional components.

�tBodyAcc-XYZ
�tGravityAcc-XYZ
�tBodyAccJerk-XYZ
�tBodyGyro-XYZ
�tBodyGyroJerk-XYZ
�tBodyAccMag
�tGravityAccMag
�tBodyAccJerkMag
�tBodyGyroMag
�tBodyGyroJerkMag
�fBodyAcc-XYZ
�fBodyAccJerk-XYZ
�fBodyGyro-XYZ
�fBodyAccMag
�fBodyAccJerkMag
�fBodyGyroMag
�fBodyGyroJerkMag

Variables estimated from the signals are:

�mean(): Mean value
�std(): Standard deviation:

This produces the final Activity Labels:
�tBodyAcc-mean()-X 
�tBodyAcc-mean()-Y 
�tBodyAcc-mean()-Z 
�tBodyAcc-std()-X 
�tBodyAcc-std()-Y 
�tBodyAcc-std()-Z 
�tGravityAcc-mean()-X 
�tGravityAcc-mean()-Y 
�tGravityAcc-mean()-Z 
�tGravityAcc-std()-X 
�tGravityAcc-std()-Y 
�tGravityAcc-std()-Z 
�tBodyAccJerk-mean()-X 
�tBodyAccJerk-mean()-Y 
�tBodyAccJerk-mean()-Z 
�tBodyAccJerk-std()-X 
�tBodyAccJerk-std()-Y 
�tBodyAccJerk-std()-Z 
�tBodyGyro-mean()-X 
�tBodyGyro-mean()-Y 
�tBodyGyro-mean()-Z 
�tBodyGyro-std()-X 
�tBodyGyro-std()-Y 
�tBodyGyro-std()-Z 
�tBodyGyroJerk-mean()-X 
�tBodyGyroJerk-mean()-Y 
�tBodyGyroJerk-mean()-Z 
�tBodyGyroJerk-std()-X 
�tBodyGyroJerk-std()-Y 
�tBodyGyroJerk-std()-Z 
�tBodyAccMag-mean() 
�tBodyAccMag-std() 
�tGravityAccMag-mean()
