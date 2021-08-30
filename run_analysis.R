library(dplyr)

# read the test data
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

# read the train data
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")

# 1. merge the training set and test sets
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
data <- cbind(x, subject, y)
names(data)[c(562, 563)] <- c("subject", "label")

# remove the useless variables
rm(x_test, x_train, y_test, y_train, subject_test,
   subject_train, x, y, subject)

# 2. Extracts the measurements on the mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt")
measure_index <- grep("mean\\(\\)|std\\(\\)", features[, 2])
data <- select(data, c(measure_index, 562, 563))


# 3. name the activities
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
activity <- activity[match(data[,68],activity[,1]), ][, 2]
data$label <- activity

# 4. label the data set with descriptive variable names
column_names <- features[measure_index, ][, 2]
column_names <- gsub("[()]", "", column_names)
names(data)[-c(67, 68)] <- column_names

# 5. creates a second, independent tidy data set with the average of 
#    each variable for each activity and each subject
average_data <- aggregate(data[, 1:66],
                          by = list(subject = data$subject, label = data$label),
                          FUN = mean)
write.table(average_data, "averagedata.txt", row.names = FALSE, col.names = FALSE)
