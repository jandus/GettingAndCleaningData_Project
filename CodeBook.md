#Code book Getting and Cleaning Data Project 

You will find information about the data of thed output data sets.
Output data set - TidyDataSet.txt is the output txt created for this project.

TidyDataSet.txt
Contains information of the mean of the metrics which had mean and standardeviation.
All variables contain the mean of the metric by Subject and Activity. 

Note: Mean is not added to the name of the columns to avoid more complex name.

###1. TidyDataSet.txt
	Used as a catalog
	header=yes
	header quoted=yes
	**variable names**
		1 "Subject"                                               
 			Description: Subject who perform the activity.
			Type:numeric
			Values:1 to 30
			Data source: X_train and X_test
			Summary:mean

		2 "Activity"                                              
 			Description: Name of the activity performed by the subject.
			Type:Character
			Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
			Data source: X_train and X_test
			Summary:mean

		3 "TimeBodyAccelerationXMean"                             
 			Description: Time Body Acceleration X axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		4 "TimeBodyAccelerationYMean"                             
 			Description: Time Body Acceleration Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		5 "TimeBodyAccelerationZMean"                             
 			Description: Time Body Acceleration Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		6 "TimeBodyAccelerationXStandardDeviation"                
 			Description: Time Body Acceleration X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		7 "TimeBodyAccelerationYStandardDeviation"                
 			Description: Time Body Acceleration Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		8 "TimeBodyAccelerationZStandardDeviation"                
 			Description: Time Body Acceleration Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		9 "TimeGravityaccelerationXMean"                          
			Description: Time Gravity acceleration X axis Mean
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		10 "TimeGravityaccelerationYMean"                          
			Description: Time Gravity acceleration Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		11 "TimeGravityaccelerationZMean"                          
			Description: Time Gravity acceleration Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		12 "TimeGravityaccelerationXStandardDeviation"             
			Description: Time Gravity acceleration X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		13 "TimeGravityaccelerationYStandardDeviation"             
			Description: Time Gravity acceleration Y axis Standard Deviation
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		14 "TimeGravityaccelerationZStandardDeviation"             
			Description: Time Gravity acceleration Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		15 "TimeBodyAccelerationJerkXMean"                         
			Description: Time Body Acceleration Jerk X axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		16 "TimeBodyAccelerationJerkYMean"                         
			Description: Time BodyA cceleration Jerk Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		17 "TimeBodyAccelerationJerkZMean"                         
			Description: Time Body Acceleration Jerk Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		18 "TimeBodyAccelerationJerkXStandardDeviation"            
			Description: Time Body Acceleration Jerk X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		19 "TimeBodyAccelerationJerkYStandardDeviation"            
			Description: Time Body Acceleration Jerk Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		20 "TimeBodyAccelerationJerkZStandardDeviatio"             
			Description: Time Body Acceleration Jerk Z axis Standard Deviation 
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		21 "TimeBodyGyroscopeXMean"                                
			Description: Time Body Gyroscope X axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		22 "TimeBodyGyroscopeYMean"                                
			Description: Time Body Gyroscope Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		23 "TimeBodyGyroscopeZMean"                                
			Description: Time Body Gyroscope Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		24 "TimeBodyGyroscopeXStandardDeviation"                   
			Description: Time Body Gyroscope X axis Standard Deviation
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		25 "TimeBodyGyroscopeYStandardDeviation"                   
			Description: Time Body Gyroscope Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		26 "TimeBodyGyroscopeZStandardDeviation"                   
			Description: Time Body Gyroscope Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		27 "TimeBodyGyroscopeJerkXMean"                            
			Description: Time Body Gyroscope Jerk X axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		28 "TimeBodyGyroscopeJerkYMean"                            
			Description: Time Body Gyroscope Jerk Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		29 "TimeBodyGyroscopeJerkZMean"                            
			Description: Time Body Gyroscope Jerk Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		30 "TimeBodyGyroscopeJerkXStandardDeviation"               
			Description: Time Body Gyroscope Jerk X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		31 "TimeBodyGyroscopeJerkYStandardDeviation"               
			Description: Time Body Gyroscope Jerk Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		32 "TimeBodyGyroscopeJerkZStandardDeviation"               
			Description: Time Body Gyroscope Jerk Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		33 "TimeBodyAcceleratorMagnitudeMean"                      
			Description: Time Body Accelerator Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		34 "TimeBodyAcceleratorMagnitudeStandardDeviation"         
			Description: Time Body Accelerator Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		35 "TimeGravityAccelerationMagnitudeMean"                  
			Description: Time Gravity Acceleration MagnitudeMean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		36 "TimeGravityAccelerationMagnitudeStandardDeviation"     
			Description: Time Gravity Acceleration Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		37 "TimeBodyAccelerationJerkMagnitudeMean"                 
			Description: Time Body Acceleration Jerk Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		38 "TimeBodyAccelerationJerkMagnitudeStandardDeviation"    
			Description: Time Body Acceleration Jerk Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		39 "TimeBodyGyroscopeMagnitudeMean"                        
			Description: Time Body Gyroscope Magnitude Mean
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		40 "TimeBodyGyroscopeMagnitudeStandardDeviation"           
			Description: Time Body Gyroscope Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		41 "TimeBodyGyroscopeJerkMagnitudeMean"                    
			Description: Time Body Gyroscope Jerk Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		42 "TimeBodyGyroscopeJerkMagnitudeStandardDeviation"       
			Description: Time Body Gyroscope Jerk Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		43 "FourierBodyAccelerationXMean"                          
			Description: Fourier Body Acceleration X axis Mean
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		44 "FourierBodyAccelerationYMean"                          
			Description: Fourier Body Acceleration Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		45 "FourierBodyAccelerationZMean"                          
			Description: Fourier Body Acceleration Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		46 "FourierBodyAccelerationXStandardDeviation"             
			Description: Fourier Body Acceleration X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		47 "FourierBodyAccelerationYStandardDeviation"             
			Description: Fourier Body Acceleration Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		48 "FourierBodyAccelerationZStandardDeviation"             
			Description: Fourier Body Acceleration Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		49 "FourierBodyAccelerationJerkXMean"                      
			Description: Fourier Body Acceleration Jerk X axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		50 "FourierBodyAccelerationJerkYMean"                      
			Description: Fourier Body Acceleration Jerk Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		51 "FourierBodyAccelerationJerkZMean"                      
			Description: Fourier Body Acceleration Jerk Z axis  Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		52 "FourierBodyAccelerationJerkXStandardDeviation"         
			Description: Fourier Body Acceleration Jerk X axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		53 "FourierBodyAccelerationJerkYStandardDeviation"         
			Description: Fourier Body Acceleration Jerk Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		54 "FourierBodyAccelerationJerkZStandardDeviation"         
			Description: Fourier Body Acceleration Jerk Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		55 "FourierBodyGyroscopeXMean"                             
			Description: Fourier Body Gyroscope X Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		56 "FourierBodyGyroscopeYMean"                             
			Description: Fourier Body Gyroscope Y axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		57 "FourierBodyGyroscopeZMean"                             
			Description: Fourier Body Gyroscope Z axis Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		58 "FourierBodyGyroscopeXStandardDeviation"                
			Description: Fourier Body Gyroscope X axis Standard Deviation
			Type: Numeric
			Values:
			Data source: X_train and X_test
			Summary:mean

		59 "FourierBodyGyroscopeYStandardDeviation"                
			Description: Fourier Body Gyroscope Y axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		60 "FourierBodyGyroscopeZStandardDeviation"                
			Description: Fourier Body Gyroscope Z axis Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		61 "FourierBodyAccelerationMagnitudeMean"                  
			Description: Fourier Body Acceleration Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		62 "FourierBodyAccelerationMagnitudeStandardDeviation"     
			Description: Fourier Body Acceleration Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		63 "FourierBodyAccelerationJerkMagnitudeMean"              
			Description: Fourier Body Acceleration Jerk Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		64 "FourierBodyAccelerationJerkMagnitudeStandardDeviation" 
			Description: Fourier Body Acceleration Jerk Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		65 "FourierBodyBodyGyroscopeMagnitudeMean"                 
			Description: Fourier Body Body Gyroscope Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		66 "FourierBodyBodyGyroscopeMagnitudeStandardDeviation"    
			Description: Fourier Body Body Gyroscope Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		67 "FourierBodyBodyGyroscopeJerkMagnitudeMean"             
			Description: Fourier Body Body Gyroscope Jerk Magnitude Mean
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean

		68 "FourierBodyBodyGyroscopeJerkMagnitudeStandardDeviation"
			Description: Fourier Body Body Gyroscope Jerk Magnitude Standard Deviation
			Type: Numeric
			Data source: X_train and X_test
			Summary:mean




