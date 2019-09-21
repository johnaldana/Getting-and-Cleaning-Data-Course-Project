#CodeBook for Getting and Cleaning Data Course Project

This code book summarizes the data for the "FinalData.txt" file that you can find in this repository. 

"FinalData.txt" is the result of applying the "run_analysis.R" scrip that you can also locate in this repository

You can read the README.MD file for a better understanding of the instructions followed.

##Identifiers

* Subject - The ID of the test subject
* Activity - The type of activity performed when the corresponding measurements were taken.Activity identifier, string with 6 possible values:

    * WALKING: subject was walking
    * WALKING_UPSTAIRS: subject was walking upstairs
    * WALKING_DOWNSTAIRS: subject was walking downstairs
    * SITTING: subject was sitting
    * STANDING: subject was standing
    * LAYING: subject was laying

##Measurements

All measurements are floating-point values, normalised and bounded within [-1,1]. They represent the mean and standard deviation for the following characteristics:
                                         
 * [3]"TimeBodyAccelerometer.std...X"                     
 * [4]"TimeBodyAccelerometer.std...Y"                     
 * [5]"TimeBodyAccelerometer.std...Z"                     
 * [6]"TimeGravityAccelerometer.std...X"                  
 * [7]"TimeGravityAccelerometer.std...Y"                  
 * [8]"TimeGravityAccelerometer.std...Z"                  
 * [9]"TimeBodyAccelerometerJerk.std...X"                 
* [10]"TimeBodyAccelerometerJerk.std...Y"                 
* [11]"TimeBodyAccelerometerJerk.std...Z"                 
* [12]"TimeBodyGyroscope.std...X"                         
* [13]"TimeBodyGyroscope.std...Y"                         
* [14]"TimeBodyGyroscope.std...Z"                         
* [15]"TimeBodyGyroscopeJerk.std...X"                     
* [16]"TimeBodyGyroscopeJerk.std...Y"                     
* [17]"TimeBodyGyroscopeJerk.std...Z"                     
* [18]"TimeBodyAccelerometerMagnitude.std.."              
* [19]"TimeGravityAccelerometerMagnitude.std.."           
* [20]"TimeBodyAccelerometerJerkMagnitude.std.."          
* [21]"TimeBodyGyroscopeMagnitude.std.."                  
* [22]"TimeBodyGyroscopeJerkMagnitude.std.."              
* [23]"FrequencyBodyAccelerometer.std...X"                
* [24]"FrequencyBodyAccelerometer.std...Y"                
* [25]"FrequencyBodyAccelerometer.std...Z"                
* [26]"FrequencyBodyAccelerometerJerk.std...X"            
* [27]"FrequencyBodyAccelerometerJerk.std...Y"            
* [28]"FrequencyBodyAccelerometerJerk.std...Z"            
* [29]"FrequencyBodyGyroscope.std...X"                    
* [30]"FrequencyBodyGyroscope.std...Y"                    
* [31]FrequencyBodyGyroscope.std...Z"                    
* [32]"FrequencyBodyAccelerometerMagnitude.std.."         
* [33]"FrequencyBodyAccelerometerJerkMagnitude.std.."     
* [34]"FrequencyBodyGyroscopeMagnitude.std.."             
* [35]"FrequencyBodyGyroscopeJerkMagnitude.std.."         
* [36]"TimeBodyAccelerometer.mean...X"                    
* [37]"TimeBodyAccelerometer.mean...Y"                    
* [38]"TimeBodyAccelerometer.mean...Z"                    
* [39]"TimeGravityAccelerometer.mean...X"                 
* [40]"TimeGravityAccelerometer.mean...Y"                 
* [41]"TimeGravityAccelerometer.mean...Z"                 
* [42]"TimeBodyAccelerometerJerk.mean...X"                
* [43]"TimeBodyAccelerometerJerk.mean...Y"                
* [44]"TimeBodyAccelerometerJerk.mean...Z"                
* [45]"TimeBodyGyroscope.mean...X"                        
* [46]"TimeBodyGyroscope.mean...Y"                        
* [47]"TimeBodyGyroscope.mean...Z"                        
* [48]"TimeBodyGyroscopeJerk.mean...X"                    
* [49]"TimeBodyGyroscopeJerk.mean...Y"                    
* [50]"TimeBodyGyroscopeJerk.mean...Z"                    
* [51]"TimeBodyAccelerometerMagnitude.mean.."             
* [52]"TimeGravityAccelerometerMagnitude.mean.."          
* [53]"TimeBodyAccelerometerJerkMagnitude.mean.."         
* [54]"TimeBodyGyroscopeMagnitude.mean.."                 
* [55]"TimeBodyGyroscopeJerkMagnitude.mean.."             
* [56]"FrequencyBodyAccelerometer.mean...X"               
* [57]"FrequencyBodyAccelerometer.mean...Y"               
* [58]"FrequencyBodyAccelerometer.mean...Z"               
* [59]"FrequencyBodyAccelerometer.meanFreq...X"           
* [60]"FrequencyBodyAccelerometer.meanFreq...Y"           
* [61]"FrequencyBodyAccelerometer.meanFreq...Z"           
* [62]"FrequencyBodyAccelerometerJerk.mean...X"           
* [63]"FrequencyBodyAccelerometerJerk.mean...Y"           
* [64]"FrequencyBodyAccelerometerJerk.mean...Z"           
* [65]"FrequencyBodyAccelerometerJerk.meanFreq...X"       
* [66]"FrequencyBodyAccelerometerJerk.meanFreq...Y"       
* [67]"FrequencyBodyAccelerometerJerk.meanFreq...Z"       
* [68]"FrequencyBodyGyroscope.mean...X"                   
* [69]"FrequencyBodyGyroscope.mean...Y"                   
* [70]"FrequencyBodyGyroscope.mean...Z"                   
* [71]"FrequencyBodyGyroscope.meanFreq...X"               
* [72]"FrequencyBodyGyroscope.meanFreq...Y"               
* [73]"FrequencyBodyGyroscope.meanFreq...Z"               
* [74]"FrequencyBodyAccelerometerMagnitude.mean.."        
* [75]"FrequencyBodyAccelerometerMagnitude.meanFreq.."    
* [76]"FrequencyBodyAccelerometerJerkMagnitude.mean.."    
* [77]FrequencyBodyAccelerometerJerkMagnitude.meanFreq.."
* [78]"FrequencyBodyGyroscopeMagnitude.mean.."            
* [79]"FrequencyBodyGyroscopeMagnitude.meanFreq.."        
* [80]"FrequencyBodyGyroscopeJerkMagnitude.mean.."        
* [81]"FrequencyBodyGyroscopeJerkMagnitude.meanFreq.."    
* [82]"Angle.TimeBodyAccelerometerMean.Gravity."          
* [83]"Angle.TimeBodyAccelerometerJerkMean..GravityMean." 
* [84]"Angle.TimeBodyGyroscopeMean.GravityMean."          
* [85]"Angle.TimeBodyGyroscopeJerkMean.GravityMean."      
* [86]"Angle.X.GravityMean."                              
* [87]"Angle.Y.GravityMean."                              
* [88]"Angle.Z.GravityMean."
