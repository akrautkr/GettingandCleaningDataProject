=================================================================================

README : Mean Human Activity Recognition Using Smartphones Dataset
Version 1.0

==================================================================================

CREATION : October 4, 2015
Readme prepared by Alison Krautkramer
Project : Getting and Cleaning Data 

==================================================================================

TESTING 

The R script for this project was developed in Rstudio (version 0.98.1102) and 
R version 3.1.2 (Pumpkin Helmet) on a 64 bit Windows system running Windows 10.

The script created a ./data directory in the current working directory (getwd()) and 
downloads and unzips the source data into the newly created directory.  The R script
extracts the mean and std data columns from the source data.  It then groups the 
source data by activity and subjectid and calcuates the means for each extracted variable.
All sets from downloading the data to writing out the resulting tidy dataset are 
shown in the run_analysis.R file.

The resulting tidy dataset is written to a file named "tidy_meanHumanActivityDataset.csv". 

To read this dataset into R:

	df <- read.table("tidy_meanHumanActivityDataset.csv", header=TRUE)

This dataset is considered tidy because :

	This dataset contains one row per activity/subject combination. 
	Each variable is in one columns and this dataset is devoted to one type of data - 
	mean motion measurements.

==================================================================================

Dataset Files:

run_analysis.R   - contains the R code to download and process the source data into 
		   a new tidy dataset.
README.txt	 - this file
Codebook.txt	 - describes the the original dataset, the tidy dataset and the variables 
		   included in the new tidy dataset
tidy_meanHumanActivityDataset.txt - tidy dataset created with run_analysis.R from the original
		  dataset "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


