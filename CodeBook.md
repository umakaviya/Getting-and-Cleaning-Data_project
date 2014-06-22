CodeBook.md 

project deals with data of smartphone sensors accelerometer and gyroscope data 

Data:

30 Subject particpate values from 1 to 30 for test and train 
6 activities labeled like running,walking etc.. in the y_test and y_train 
activity_lables file has 1-6 activity labled 

561 features are avaible in the orginal train_x and train_y dataset
features file has 561 features labled 

given dataset has test and train dataset, I combined the dataset to produce total
train dataset - around 7300 observation - 70% 
test dataset - around 2900 observation - 30% 
features, subject, activity has to be combined using rbind for both train and test dataset
total dataset has combined rows of around 10,200 observations using rbind

steps:

independent_tidy_data - the my final dataset name which is uploaded  dim =180 x 81 
import the all required train and test and file which contain label
add names for the test and train data for 561 features  
add clear column names for activity and subject 
reduce x_train and x_test features to mean and std which reduces column to 79 from 561 
cbind features, subject, activity to train and test 
rbind train and test to produce total 
add a new column to the total file which has the activity name instead of activity number using match function

melt the total dataset to melted dataset based on activity~subject 
cast the melted dataset to shape as required with mean function on the 79 features 
this produces 30 subject * 6 activity to produce 180 rows and 79 features 












