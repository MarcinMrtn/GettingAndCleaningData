# Import packages

library(dplyr)

# 1. Merges the training and the test sets to create one data set.

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(x_train, x_test)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
S <- rbind(subject_train, subject_test)

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(y_train, y_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("UCI HAR Dataset/features.txt")
feature_names <- features[, 2]
selected_feature_indices <- grep("-(mean|std)\\(\\)", feature_names)
X <- X[, selected_feature_indices]

# 3. Uses descriptive activity names to name the activities in the data set.

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
Y[,1] = tolower(activity_labels[Y[,1], 2])

# 4. Appropriately labels the data set with descriptive variable names.

names(X) <- feature_names[selected_feature_indices]
names(Y) <- "activity"
names(S) <- "subject"

data_combined <- cbind(S, Y, X)
write.table(data_combined, "data_combined.txt", row.name=FALSE)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data_grouped <- group_by(data_combined, subject, activity)
data_combined_averages <- summarize_at(data_grouped, names(data_combined)[c(-1,-2)], mean)
write.table(data_combined_averages, "data_combined_averages.txt", row.name=FALSE)

