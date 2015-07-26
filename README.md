# GettingAndCleaningData_Project
Getting and Cleaning Data course project

##Readme file

This file contains the explanation of what the analysis files did and a brief description of the experiment which was performed to create the input data sets for this project.


Course Project **Getting and Cleanning Data course** part of the Data Science Specialization. 
For this project we extracted information from from the Human Activity Recognition Using Smartphones Dataset Version 1.0 expermient sets. 
These sets contain information about an experiment with 30 volunteers which had a samsung (Samsung Galaxy S II) on the waist to meassure 6 activity states (*WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING*). For this experiment 70% of the information was used to train the model and 30% to test.
We use this information under the License terms mentioned at the bottom of this document. 

###Input Files
To clean the data set we load the experiment information to R data frames. Input sets are in .txt files and contains following information

1. activity_labels.txt - List 6 activities messured on the experiment.
2. features.txt	- List the names of the 561 meassures of the experiment. 
3. test/subject_test - Contains the subject number of the person who execute the activity for training the model.
test/X_train.txt - Contains 561 meassures per observation. Each observations has information of an activity done by a subject for training the model.
test/y_train.txt - Contains the activity done by the subject for training the model.
4. train/subject_train.txt - Contains the subject number of the person who execute the activity for testing information.
train/Xtrain.txt - Contains 561 meassures per observation. Each observations has information of an activity done by a subject for testing information.
train/y_train.txt -  Contains the activity done by the subject for testing information.

For more information about the experiment and data set contact: activityrecognition@smartlab.ws. We use this information under the License terms mentioned at the bottom of this document. 

### Scripts and output data.

Getting and Cleanning Data project requires to generate a Tidy Data set with information of the experiment data set mentioned in Input Files section. To Get and clean data set for this project 1 script, 2 markdown documents and a .txt set were created.
 
This information is in the repo 

Files:
1. run_analysis.R
2. Code Book.md
3. TidyDataSet.txt


#### run_analysis.R
Script generated to extract information from the experiment sets, clean data and manipulate the information to create an output data set called TidyDataSet.txt with clean information ready for furhter analysis.

When you execute the script this will perform following activities:

0. Import packages: dplyr and reshape2
1. Load, merge, concatenate and append experiment files into data frames
  1.1 Load activity labels
  1.2 Load feature names
  1.3 Load Test files
  1.3.1 Load subject_test and add a Column name
  1.3.2 Load Test Labels (y_test.txt)  and add a Column name
  1.3.3 Load Test set (X_test.txt)  and add a Column name
  1.3.2 Bind subject, labels and Test setes
  1.4 Load Training files - Merge and Concatenate files
  1.4.1 Load subject_train and add a Column name
  1.4.2 Load Train Labels (y_train.txt)  and add a Column name
  1.4.3 Load Train set (X_train.txt)  and add a Column name
  1.4.5 Bind subject, labels and Train set
  1.5 - Append Training and Test data sets to create one data set
2. Extracts measurements on the mean() and std() for all measurements 
3. Add descriptive Activity Names to each activity
4. Appropriately labels the data set with descriptive variable names
5. Creates a second independent tidy data set called TidyDataSet with the average of mean() and standar deviation metrics of the original data set by Subject and Activity.

> Output:
> TidyDataSet.txt"

> Messages:
> When script is executing you will be able to see on which step the script is being executed.

3. Code Book

The Code book contains all the variables and sumaries calculated on the experiment. This includes information of Experiment data set, and TidyDataSet.txt.

4. TidyDataSet.txt
Is a data set that contains the average of 66 measures of the experiment by subject and activity. This data set can be loaded to an R data frame to perform further analysis. 



> License of Human Activity Recognition Using Smartphones Dataset Version 1.0 expermient:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
