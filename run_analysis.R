
setwd('C:/E_Drive/Coursera/UCI HAR Dataset/')

# load features and activity label 
features_info<-read.table('features.txt')
activity_labels<-read.table('activity_labels.txt')
names(activity_labels)<-c('Activity','Activity_Description')

# load train and test data 
x_train <-read.table('train/X_train.txt')
y_train<-read.table('train/y_train.txt')
Subject_train<-read.table('train/subject_train.txt')

x_test <-read.table('test/X_test.txt')
y_test<-read.table('test/y_test.txt')
Subject_test<-read.table('test/subject_test.txt')

#step 4: Appropriately labels the data set with descriptive variable names.
names(x_train)<-as.character(features_info$V2)
names(y_train)<-c("Activity")
names(Subject_train)<-c("Subject")

names(x_test)<-as.character(features_info$V2)
names(y_test)<-c("Activity")
names(Subject_test)<-c("Subject")


#step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
x_train<-x_train[,c(grep("mean|std", names(x_train)))] 

x_test<-x_test[,c(grep("mean|std", names(x_test)))] 

########################################

#Step 1: Merges the training and the test sets to create one data set.

train<-cbind(x_train,y_train,Subject_train)
test<-cbind(x_test,y_test,Subject_test)
total<-rbind(train,test)

#########################################
#Step 3: Uses descriptive activity names to name the activities in the data set

values <- activity_labels$Activity_Description
total$Activity<- values[match(total$Activity, activity_labels$Activity)]

#########################################

# Step 5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject

library(reshape2)

melted <- melt(total, id=c("Subject","Activity"))
independent_tidy_data<-dcast(melted, Subject + Activity ~ variable, mean )

write.table(independent_tidy_data, "independent_tidy_data.txt", sep="\t")

