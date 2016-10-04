## Program : run_analysis.R
##
## Course Project : Getting and Cleaning Data from John Hopkins
##
## Written : A. Krautkramer, 10/4/2016
##
## Purpose : Obtain Human Activity Recognition Data from Smartphones and process
##           it to create a new tidy dataset which includes mean - std and mean 
##           movement data from the accelerometer and gyroscope.
##
##
## Description:
##      1. Download accelerometer data from the from the Samsung Galaxy S smartphone.
##         https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##      2. Read the downloaded data into data frames
##               Add the subjectid and the activity columns
##               Add the column names
##      3. Find the columns that refer to  a std or mean and
##               write those columns to a new data.frame which is returned
##      4. Adds descriptive activity information to the merged data.frame
##      5. Standardize the columns names by
##               - making them all lower case
##               - removing all "-", "(", ")" characters
##               - replacing abbrieviations with the full variable name
##                      t - time
##                      f - fourier
##                      acc - accelerometer
##                      gyro - gyroscope
##      6. Create a tidy dataset with the average of each measurement grouped by 
##         activity and subjectid
##      7. Write tidy data.frame out to a file - tidy_meanHumanActivityDataset.csv

library(dplyr)

## Function : downloadSource
## 
## Description : Download the source data from the Samsung Galaxy S smartphone and unzips the 
##               data.  Returns a character vector containing the names of the unzipped files.
downloadSource <- function (sourceURL, destfile) {
               
        ## Create Data Directory
        if (!file.exists("./data")){dir.create("./data")}
        
        ## Download data into the Data Directory
        download.file(sourceURL, destfile = destfile)
        
        ## Obtain the date the data was downloaded on and write to a file
        dateDownloaded <- date()
        
        ## Write the date of the file download to a file
        fileConn <- file("./data/downloadData.txt")
        writeLines(dateDownloaded, fileConn)
        close(fileConn)
        
        ## Unzip zip file
        files <-unzip(zipfile = destfile, exdir="data")
        
        return(files)
        
}

## Function : importData
##
## Description : Read the downloaded data into data frames
##               Add the subjectid and the activity columns
##               Add the column names
##
importData <- function(inputfiles, featurefile) {
        
        ##--- Read data files
        x <- read.table(inputfiles[1])
        y <- read.table(inputfiles[2])
        sub <- read.table(inputfiles[3])
        
        ##--- read descriptive names
        featurenames <- read.table(featurefile) 
        fnames <- as.vector(featurenames$V2)
        fnames <- append(fnames, c("subjectid", "activity"), after=0)
        
        ##-- Add the y data (activites) to the measurements
        x <- cbind(y, x)
        
        ##-- Add the subject identifiers to the meaurements
        x <- cbind(sub, x)
        
        ##--- Add the descriptive names to the data.frame
        names(x) <- fnames
        
        return(x)

}

## Function : extractMeanStd
##
## Description : Find the columns that refer to  a std or mean and
##               write those columns to a new data.frame which is returned
##
extractMeanStd <- function(xdata) {
        
        ##--- Extract column names
        colNames <- names(xdata)
        
        ##--- Find names that contain the string 'std' or 'mean'
        cols <- grepl("mean[^Freq]|std", colNames)
        
        ##--- append the columns containing the activity and the subject id
        cols[1] = TRUE     ## Activity
        cols[2] = TRUE     ## subject id
        
        ##--- create a new data set and return
        return (xdata[,cols])

}

## Function : renameActivity
##
## Description : Adds descriptive activity information to the merged data.frame
##
renameActivity <- function(xmean, activityfile) {
        
        ##-- read the activity information into a data.frame
        activity <- read.table(activityfile)
        
        ##--- convert the activity column into a factor
        xmean$activity <- as.factor(xmean$activity)
        
        ##--- set the levels of the data.frame to the levles in the activity file 
        levels(xmean$activity) <- activity$V2
        
        return(xmean)
        
}

## Function : renameColumns
##
## Description : Standardize the columns names by
##               - making them all lower case
##               - removing all "-", "(", ")" characters
##               - replacing abbrieviations with the full variable name
##                      t - time
##                      f - fourier
##                      acc - accelerometer
##                      gyro - gyroscope
##
renameColumns <- function (xmean) {
        
        ##--- extract the names in xmean
        names <- names(xmean)
        
        ##---make names lower case
        names <- tolower(names)
        
        ##-- remove "-"
        names <- gsub("-", "", names)
        
        ##-- remove "()"
        names <- gsub("\\(\\)", "", names)
        
        ##-- replace t at the beginning of the names with time
        
        names <- sub("^t", "time", names)
        
        ##-- replace f at the beginning of the names with fourier
        
        names <- sub("^f", "fourier", names)
        
        ##-- replace acc with accelerometer
        names <- sub("acc", "accelerometer", names)
        
        ##-- replace gyro with gyroscope
        names <- sub("gyro", "gyroscope", names)
        
        ##-- replace mag with magnitude
        names <- sub("mag", "magnitude", names)
        
        ##--- set the names of xmean to the new cleaned up version
        names(xmean) <- names
        
        return (xmean)
        
}


#######
## START : Hard coded Data variables
#######

##--- source data
sourceURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

##--local workstation destination
destfile = "./data/HAR_Dataset.zip"

##--- test and train data location and file names
trainfiles = c("./data/UCI HAR Dataset/train/X_train.txt", "./data/UCI HAR Dataset/train/Y_train.txt", "./data/UCI HAR Dataset/train/subject_train.txt") 
testfiles = c("./data/UCI HAR Dataset/test/X_test.txt", "./data/UCI HAR Dataset/test/Y_test.txt", "./data/UCI HAR Dataset/test/subject_test.txt") 
featurefile = "./data/UCI HAR Dataset/features.txt"
activityfile = "./data/UCI HAR Dataset/activity_labels.txt"


#######
## END : Hard coded Data variables
#######



### Main program function calls

##-- download data and unzip the file into destfile
files <- downloadSource(sourceURL, destfile)

##-- read in the test and train data
xtrain <- importData(trainfiles, featurefile)
xtest <- importData(testfiles, featurefile)

##-- Project Requirement #1 : merge the test and train data sets into one dataset 
xdata <- rbind(xtrain, xtest)

##-- Project Requirement #2 : extract the cols containing mean() and std() of data; append the 
##--                         activity and person id and create a new dataset
xmean <- extractMeanStd(xdata)

##--- memory cleanup --- remove the old datasets from memory
rm(xdata)
rm(xtest)
rm(xtrain)

##-- Project Requirement #3 : Add descriptive activity names to the data set
xmean <- renameActivity(xmean, activityfile)

##-- Project Requirement #4 : Add appropriate descriptive column names
xmean <- renameColumns(xmean)

##-- Project Requirement #5 : Create a new tidy dataset with the average of each variable 
##--                          for activity and subject 

##--- Make subjectid a factor variable
xmean$subjectid <- as.factor(xmean$subjectid)

##--- Create a tity dataset with the average of each measurement grouped by 
##--- activity and subjectid
xgroupedmean <- aggregate(. ~ activity + subjectid, data=xmean, mean)

##--- Modify the variable names to indicate they are means
names <- names(xgroupedmean)
names <- sub("fourier", "meanfourier", names)
names <- sub("time", "meantime", names)
names(xgroupedmean) <- names

##--- write tidy data.frame out to a text file

write.table (xgroupedmean, file="tidy_meanHumanActivityDataset.txt", row.names=FALSE)




