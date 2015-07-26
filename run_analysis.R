# Library
message("Importing packages: dplyr and reshape2")
library(dplyr)
library(reshape2)

# 1. Load TXT Files - Merge and Concatenate files
# 1.1 Load activity labels
message("1. Loading txt files...")
message("   Loading Activity Labels...")
activity_labels <- read.table("activity_labels.txt", header= FALSE, sep=" ", 
                              col.names=c("activity_id", "activity"), 
                              colClasses=c(numeric(),character()))
#1.2 Load feature names
message("   Loading Feature names...")
feature_names <- read.table("features.txt", header= FALSE, sep=" ", 
                            col.names=c("feature_id", "feature_name"), 
                            colClasses=c(numeric(),character()))

#1.3 Load Test files
message("   Loading Test files...")

#1.3.1 Load subject_test and add a Column name
message("      Loading Subject Test...")
subject_test <- read.table("test/subject_test.txt", header= FALSE, col.names="subject")

#1.3.2 Load Test Labels (y_test.txt)  and add a Column name
message("      Loading Test Labels (y_test)...")
y_test <- read.table("test/y_test.txt", header= FALSE, col.names="activity_id")

#1.3.3 Load Test set (X_test.txt)  and add a Column name
message("      Loading Test set (X_test)...")
X_test <- read.table("test/X_test.txt", header= FALSE)
names(X_test) <- feature_names$feature_name

#1.3.2 Bind subject, labels and Test setes
message("   Binding Test data sets  (subject_test, y_test, X_test) into test_set...")
test_set<- cbind(subject_test,y_test, X_test)

#1.4 Load Training files - Merge and Concatenate files
message("   Loading Training files...")
#1.4.1 Load subject_train and add a Column name
message("      Loading Subject Training...")
subject_train <- read.table("train/subject_train.txt", header= FALSE, col.names="subject")

#1.4.2 Load Train Labels (y_train.txt)  and add a Column name
message("      Loading Training Labels (y_train)...")
y_train <- read.table("train/y_train.txt", header= FALSE, col.names="activity_id")

#1.4.3 Load Train set (X_train.txt)  and add a Column name
message("      Loading Training set (X_train)...")
X_train <- read.table("train/X_train.txt", header= FALSE)
names(X_train) <- feature_names$feature_name

#1.4.5 Bind subject, labels and Train set
message("   Binding Training data sets(subject_train, y_train, X_train) into train_set...")
train_set<- cbind(subject_train,y_train, X_train)

#1.5 - Append Training and Test data sets to create one data set
message("   Appending Training and Test sets into activity_recoginition set")
activity_recognition <- rbind(test_set,train_set)

#2 Extracts measurements on the mean() and std() for all measurements 
message("2. Extracts measurements on the mean() and std() for all measurements")
sub_names<- names(X_train[,grep("(mean|std)\\(\\)", names(X_train))])
activity_recognition<-activity_recognition[,c("subject", "activity_id", sub_names)]

# 3- Add descriptive Activity Names to each activity
message("3. Adding descriptive Activity Names to each activity..." )
activity_recognition<- merge(activity_labels,activity_recognition)
activity_recognition[,1]<-NULL

# 4- Appropriately labels the data set with descriptive variable names
message("4. Renaiming variable names...")
var_names <-c("Activity", "Subject", "TimeBodyAccelerationXMean",
              "TimeBodyAccelerationYMean", "TimeBodyAccelerationZMean",
              "TimeBodyAccelerationXStandardDeviation", "TimeBodyAccelerationYStandardDeviation",
              "TimeBodyAccelerationZStandardDeviation", "TimeGravityaccelerationXMean",
              "TimeGravityaccelerationYMean", "TimeGravityaccelerationZMean",
              "TimeGravityaccelerationXStandardDeviation", "TimeGravityaccelerationYStandardDeviation",
              "TimeGravityaccelerationZStandardDeviation", "TimeBodyAccelerationJerkXMean",
              "TimeBodyAccelerationJerkYMean", "TimeBodyAccelerationJerkZMean",
              "TimeBodyAccelerationJerkXStandardDeviation", "TimeBodyAccelerationJerkYStandardDeviation",
              "TimeBodyAccelerationJerkZStandardDeviatio", "TimeBodyGyroscopeXMean",
              "TimeBodyGyroscopeYMean", "TimeBodyGyroscopeZMean",
              "TimeBodyGyroscopeXStandardDeviation", "TimeBodyGyroscopeYStandardDeviation",
              "TimeBodyGyroscopeZStandardDeviation", "TimeBodyGyroscopeJerkXMean",
              "TimeBodyGyroscopeJerkYMean", "TimeBodyGyroscopeJerkZMean",
              "TimeBodyGyroscopeJerkXStandardDeviation", "TimeBodyGyroscopeJerkYStandardDeviation",
              "TimeBodyGyroscopeJerkZStandardDeviation", "TimeBodyAcceleratorMagnitudeMean",
              "TimeBodyAcceleratorMagnitudeStandardDeviation", "TimeGravityAccelerationMagnitudeMean",
              "TimeGravityAccelerationMagnitudeStandardDeviation", "TimeBodyAccelerationJerkMagnitudeMean",
              "TimeBodyAccelerationJerkMagnitudeStandardDeviation", "TimeBodyGyroscopeMagnitudeMean",
              "TimeBodyGyroscopeMagnitudeStandardDeviation", "TimeBodyGyroscopeJerkMagnitudeMean",
              "TimeBodyGyroscopeJerkMagnitudeStandardDeviation", "FourierBodyAccelerationXMean",
              "FourierBodyAccelerationYMean", "FourierBodyAccelerationZMean",
              "FourierBodyAccelerationXStandardDeviation", "FourierBodyAccelerationYStandardDeviation",
              "FourierBodyAccelerationZStandardDeviation", "FourierBodyAccelerationJerkXMean",
              "FourierBodyAccelerationJerkYMean", "FourierBodyAccelerationJerkZMean",
              "FourierBodyAccelerationJerkXStandardDeviation", "FourierBodyAccelerationJerkYStandardDeviation",
              "FourierBodyAccelerationJerkZStandardDeviation", "FourierBodyGyroscopeXMean",
              "FourierBodyGyroscopeYMean", "FourierBodyGyroscopeZMean",
              "FourierBodyGyroscopeXStandardDeviation", "FourierBodyGyroscopeYStandardDeviation",
              "FourierBodyGyroscopeZStandardDeviation", "FourierBodyAccelerationMagnitudeMean",
              "FourierBodyAccelerationMagnitudeStandardDeviation", "FourierBodyAccelerationJerkMagnitudeMean",
              "FourierBodyAccelerationJerkMagnitudeStandardDeviation", "FourierBodyBodyGyroscopeMagnitudeMean",
              "FourierBodyBodyGyroscopeMagnitudeStandardDeviation", "FourierBodyBodyGyroscopeJerkMagnitudeMean",
              "FourierBodyBodyGyroscopeJerkMagnitudeStandardDeviation")
names(activity_recognition)<-var_names

#5.Creates a second independent tidy 
#data set with the average of each variable for each activity and each subject 
message("Creating TidyDataSetMean")
TidyDataSetMean <- activity_recognition %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

write.table(TidyDataSetMean,file="TidyDataSet.txt",row.names=FALSE)
message("5. TidyDataSet.txt created")


