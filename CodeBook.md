# Code book
The code book that describes the variables, the data, and any transformations or work performed to clean up the data.  
## Variables
There are 180 obsetrvations and 68 variables.  
column1 subject: numeric values from 1 to 30. A number represents a subject. There is a group of 30 volunteers within an age bracket of 19-48 years.  
column2 label: character values from "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING". 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The experiments have been video-recorded to label the data manually.  
column3-68: features about mean and standard deviation. Values are average of each feature for each activity and each subject. They come from come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth 
filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## Work to clean up the data
y_test: 2947 observations of label(1 to 6) of activity from test set.  
subject_test: 2947 observations of subject(1 to 30) from test set.  
x_test: 2947 observations, 561 variables of features(-1 to 1) from test set.  
y_train: 7352 observations of label(1 to 6) of activity from training set.  
subject_train: 7352 observations of subject(1 to 30) from training set.  
x_train: 7352 observations, 561 variables of features(-1 to 1) from training set.  
  
**1. merge the training set and test sets**  
data: 10299 obs. and 68 var. that is obtained from merging test set and training set.  
The 6 variables above will be removed once data is created for saving room.  

**2. Extracts the measurements on the mean and standard deviation**  
features: a table describes the names of features.  
Choose the features about mean and std. and subset data.  

**3. name the activities**  
activity: character vector storing names of activities(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  
Replace label(1-6) with corresponding activity.  

**4. label the data set with descriptive variable names**  
column_names: character vector storing names of features.  
Assign column_names to the column name of data.  

**5. creates a second, independent tidy data set with the average of each variable for each activity and each subject**  
average_data: data frame (180\*68). A data set with the average of each variable for each activity and each subject.  
Write average_date into the file "averagedata.txt".
