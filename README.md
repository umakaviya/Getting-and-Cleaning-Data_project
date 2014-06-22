Getting-and-Cleaning-Data_project
=================================

Explanation of How the Program works

I am planning to address each step requested through the program and
each step has been commented 

Codebook.md has the description about the data

set the current working directory 

load the features.txt - which contain the 561 feature names 
load the activity_labels.txt files - which contain the 1-6  activity - walking , running etc..
add descriptive names to activity_labels file  

load the x_train - has the 561 features for around 7300 records
load the y_train - has the activity lables 1-6 for each training record 
load the subject_train - which has the subject 1-30 for each record 

do last three steps for test data 

add names from the features files to the train dataset 561 features 
add descriptive names for y_train as 'Activity'
add descriptive names for the subject_train as 'Subject' 

do the last three steps for test data

reduce the x_train and y_train features to mean and std as required using grep command on the column names 

column bind features, subject and activity for test and train datasets

row bind test and train to produce total dataset 

lookup the activty 1-6 from activity_lables dataset and map activty name and replace activty number to name total dataset 

its time to melt the total dataset based on Subject and Activty to get melted dataset 

cast the melted dataset in to indepedent_tidy_data 
subject 30 and activty 6 produced 180 rows and mean fuction is applied on the features to get average of features

