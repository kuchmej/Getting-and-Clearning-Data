## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

if (!require("data.table")) {
        install.packages("data.table")
}

if (!require("reshape2")) {
        install.packages("reshape2")
}

require("data.table")
require("reshape2")

# Load: activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load: data column names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Extract only the measurements on the mean and standard deviation for each measurement.
extract_features <- grepl("mean|std", features)

# Load and process test data.
XTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(XTest) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
XTest = XTest[,extract_features]

# Load activity labels
yTest[,2] = activity_labels[yTest[,1]]
names(yTest) = c("Activity_ID", "Activity_Label")
names(subjectTest) = "subject"

# Bind data
test_data <- cbind(as.data.table(subjectTest), yTest, XTest)

# Load and process X_train & y_train data.
XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")

subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(XTrain) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
XTrain = XTrain[,extract_features]

# Load activity data
yTrain[,2] = activity_labels[yTrain[,1]]
names(yTrain) = c("Activity_ID", "Activity_Label")
names(subjectTrain) = "subject"

# Bind data
train_data <- cbind(as.data.table(subjectTrain), yTrain, XTrain)

# Merge test and train data
data = rbind(test_data, train_data)

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt")