Data Source

The dataset is derived from experiments carried out with a group of 30 users ages 19-48.  The title of the project was "Human Activity Recognition Using Smartphones Data Set" and can be located here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection
Singals were used to estimate variables of the feature vector for each pattern.  The singals have a time component (t), a body or gravity acceleration component (BodyAcc or GravityAcc), a body or gravity gyro component (BodyGyro or GravityGryro) as well as body gyro jerk component (BodyGyroJerk).  Magnitudes (MAG) are taken accross all features and the -XYZ is used to represent the dimensional components.

付BodyAcc-XYZ
付GravityAcc-XYZ
付BodyAccJerk-XYZ
付BodyGyro-XYZ
付BodyGyroJerk-XYZ
付BodyAccMag
付GravityAccMag
付BodyAccJerkMag
付BodyGyroMag
付BodyGyroJerkMag
蒜BodyAcc-XYZ
蒜BodyAccJerk-XYZ
蒜BodyGyro-XYZ
蒜BodyAccMag
蒜BodyAccJerkMag
蒜BodyGyroMag
蒜BodyGyroJerkMag

Variables estimated from the signals are:

瀕ean(): Mean value
不td(): Standard deviation:

This produces the final Activity Labels:
付BodyAcc-mean()-X 
付BodyAcc-mean()-Y 
付BodyAcc-mean()-Z 
付BodyAcc-std()-X 
付BodyAcc-std()-Y 
付BodyAcc-std()-Z 
付GravityAcc-mean()-X 
付GravityAcc-mean()-Y 
付GravityAcc-mean()-Z 
付GravityAcc-std()-X 
付GravityAcc-std()-Y 
付GravityAcc-std()-Z 
付BodyAccJerk-mean()-X 
付BodyAccJerk-mean()-Y 
付BodyAccJerk-mean()-Z 
付BodyAccJerk-std()-X 
付BodyAccJerk-std()-Y 
付BodyAccJerk-std()-Z 
付BodyGyro-mean()-X 
付BodyGyro-mean()-Y 
付BodyGyro-mean()-Z 
付BodyGyro-std()-X 
付BodyGyro-std()-Y 
付BodyGyro-std()-Z 
付BodyGyroJerk-mean()-X 
付BodyGyroJerk-mean()-Y 
付BodyGyroJerk-mean()-Z 
付BodyGyroJerk-std()-X 
付BodyGyroJerk-std()-Y 
付BodyGyroJerk-std()-Z 
付BodyAccMag-mean() 
付BodyAccMag-std() 
付GravityAccMag-mean()
