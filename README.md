# Getting_Cleaning_Data
Coursera Data Science: Getting and Cleaning Data final project
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.  
The data comes from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  

# Files and directory
**UCI HAR Dataset**: the data of accelerometers from the Samsung Galaxy S smartphone.(unzip the file above)  
**CodeBook.md**: a code book that describes the variables, the data, and any transformations or work that performed to clean up the data  
**averagedata.txt**: a tidy data set with the average of each variable for each activity and each subject.  
**run_analysis.R**: R code for tidy dataset. It does the following:  
1. Merges the training and the test sets to create one data set. Read the test data and training data, then merge them into one dataset.  
2. Extracts only the measurements on the mean and standard deviation for each measurement. Find the mean and standard deviation features from features.txt, choose 
the corresponding variables.  
3. Uses descriptive activity names to name the activities in the data set.  Match the activity names by label number(1-6) and replace numbers with names.  
4. Appropriately labels the data set with descriptive variable names. Assign feature names that are from features_info.txt to the variables.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Group observations
by subject and activity.



