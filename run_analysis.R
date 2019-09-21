# 1- PREPARATION OF DATA

   # 1.1- Loading required packages

      library(data.table)
      library(dplyr)
      
   # 1.2- Download dataset
      
      fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      if(!file.exists("./data")){dir.create("./data")}
      download.file(fileurl, destfile = "./data/UCI HAR Dataset.zip", method = "curl")

   # 1.3- Unzip the file
      
      unzip(zipfile = "./data/UCI HAR Dataset.zip", exdir = "./data")

# 2- READ DATA

   # 2.1- Read features.txt and activity_label.txt
      
      features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("N","Functions"))
      activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("Code", "Activity"))

   # 2.2- Read training data
      
      subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
      xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$Functions)
      yTrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", col.names = "Code")

   # 2.3- Read test data
      
      subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
      xTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$Functions)
      yTest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", col.names = "Code")

# 3- ANSWER OF POINT 1: Merges the training and the test sets to create one data set.
      
      subject <- rbind(subjectTrain, subjectTest)
      X <- rbind(xTrain,xTest)
      Y <- rbind(yTrain,yTest)
      dataSet <- cbind(subject, X, Y)

# 4- ANSWER OF POINT 2: Extracts only the measurements on the mean and standard deviation for each measurement.
      
      onlyMeanStd <- dataSet %>% select(Subject, Code, contains("std"), contains("Mean"))

# 5- ANSWER OF POINT 3: Uses descriptive activity names to name the activities in the data set.
      
      onlyMeanStd$Code <- activitylabels[onlyMeanStd$Code, 2]

# 6- ANSWER OF POINT 4: Appropriately labels the data set with descriptive variable names.
      
   #6.1- Review labels    
      
      names(onlyMeanStd)

   #6.2- Labels to change 
      
      # Acc can be replaced with Accelerometer
      
      # Gyro can be replaced with Gyroscope
      
      # BodyBody can be replaced with Body
      
      # Mag can be replaced with Magnitude
      
      # Character f can be replaced with Frequency
      
      # Character t can be replaced with Time
      
   #6.3- Labels change
      
      names(onlyMeanStd)[2]<-"Activity"
      names(onlyMeanStd)<-gsub("Acc", "Accelerometer", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("BodyBody", "Body", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("Mag", "Magnitude", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("Gyro", "Gyroscope", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("^t", "Time", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("tBody", "TimeBody", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("^f", "Frequency", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("-mean()", "Mean", names(onlyMeanStd), ignore.case = TRUE)
      names(onlyMeanStd)<-gsub("-std()", "STD", names(onlyMeanStd), ignore.case = TRUE)
      names(onlyMeanStd)<-gsub("-freq()", "Frequency", names(onlyMeanStd), ignore.case = TRUE)
      names(onlyMeanStd)<-gsub("angle", "Angle", names(onlyMeanStd))
      names(onlyMeanStd)<-gsub("gravity", "Gravity", names(onlyMeanStd))
      
# 7- ANSWER OF POINT 5: From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable for each activity and each subject.

   tidydata<-onlyMeanStd %>% group_by(Subject, Activity) %>% summarise_all(funs(mean))
   write.table(tidydata, "FinalData.txt", row.name=FALSE)



