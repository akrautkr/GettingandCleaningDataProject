=================================================================================

Data Set Code Book: Mean Human Activity Recognition Using Smartphones Dataset
Version 1.0

==================================================================================

October 4, 2015
Codebook prepared by Alison Krautkramer
Code Book - Project : Getting and Cleaning Data 

==================================================================================

Study Design:

Raw Data:

	Downloaded : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	Extracted from the README included with the original dataset.

	"Human Activity Recognition Using Smartphones Dataset
	Version 1.0
	
	Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
	Smartlab - Non Linear Complex Systems Laboratory
	DITEN - Università degli Studi di Genova.
	Via Opera Pia 11A, I-16145, Genoa, Italy.
	activityrecognition@smartlab.ws
	www.smartlab.ws

	The experiments have been carried out with a group of 30 volunteers within an 
	age bracket of 19-48 years. Each person performed six activities 
	(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
	smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
	we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
	The experiments have been video-recorded to label the data manually. The obtained dataset has 
	been randomly partitioned into two sets, where 70% of the volunteers was selected for generating 
	the training data and 30% the test data. 

	The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters 
	and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
	The sensor acceleration signal, which has gravitational and body motion components, was separated 
	using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force 
	is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency 
	was used. From each window, a vector of features was obtained by calculating variables from the 
	time and frequency domain. See 'features_info.txt' for more details. "


Tidy Data:

		
The tidy data for this project contains records for 30 subjects performing 6 activities. The mean
of a variety of motion measurements is included in the tidy dataset.

This dataset contains one row per activity/subject combination. 
Each variable is in one columns and this dataset is devoted to one type of data - 
mean motion measurements.


===================================================================================

Method to collect data

Input Dataset: 

Version 1.0 of the Human Activity Recognition Using Smartphones Dataset was downloaded from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
All data manipulation can be found in the script run_analysis.R.

Output Dataset:

The output is a tidy dataset containing the means of selected motion measurements that are 
grouped by activity and subjectid.  All processing steps are outlined in the R processing 
script - run_analysis.R. 	

===================================================================================

Variables

Field Lablel:     		Variable:      		Variable type:       Allowable values:

activity			Activity performed 	     Factor	    WALKING
				during measurements			    WALKING_UPSTAIRS
									    WALKING_DOWNSTAIRS
									    SITTING
									    STANDING
									    LAYING
subjectid			Subject ID Number	     Factor	    1:30

meantimebodyaccelerometermeanx	Average Mean Accelerometer   Numeric
				Meaurement of Body Motion 
				X direction
meantimebodyaccelerometermeany  Average Mean Accelerometer   Numeric
				Meaurement of Body Motion 
				Y direction
meantimebodyaccelerometermeanz	Average Mean Accelerometer   Numeric
				Meaurement of Body Motion 
				Z direction
meantimebodyaccelerometerstdx  Average Std Accelerometer     Numeric
				Meaurement of Body Motion 
				X direction
meantimebodyaccelerometerstdy   Average Std Accelerometer    Numeric
				Meaurement of Body Motion 
				Y direction
meantimebodyaccelerometerstdz   Average Std Accelerometer    Numeric
				Meaurement of Body Motion 
				Z direction
meantimegravityaccelerometermeanx  Average Mean Accelerometer   Numeric
				   Meaurement of Gravity Motion 
				   X direction
meantimegravityaccelerometermeany  Average Mean Accelerometer   Numeric
				   Meaurement of Gravity Motion 
				   Y direction
meantimegravityaccelerometermeanz  Average Mean Accelerometer   Numeric
				   Meaurement of Gravity Motion 
				   Z direction
meantimegravityaccelerometerstdx   Average Std Accelerometer    Numeric
				   Meaurement of Gravity Motion 
				   X direction
meantimegravityaccelerometerstdy   Average Std Accelerometer    Numeric
				   Meaurement of Gravity Motion 
				   Y direction
meantimegravityaccelerometerstdz   Average Std Accelerometer    Numeric
				   Meaurement of Gravity Motion 
				   Z direction
meantimebodyaccelerometerjerkmeanx Average Mean Accelerometer   Numeric
				   Meaurement of Jerk Body  
				   Motion X direction
meantimebodyaccelerometerjerkmeany  Average Mean Accelerometer  Numeric
				    Meaurement of Jerk Body 
				    Motion Y direction
meantimebodyaccelerometerjerkmeanz  Average Mean Accelerometer  Numeric
				    Meaurement of Jerk Body  
				    Motion Z direction
meantimebodyaccelerometerjerkstdx   Average Mean Accelerometer  Numeric
				   Meaurement of Jerk Body  
				   Motion X direction
meantimebodyaccelerometerjerkstdy   Average Std Accelerometer   Numeric
				   Meaurement of Jerk Body  
				   Motion Y direction
meantimebodyaccelerometerjerkstdz  Average Std Accelerometer    Numeric
				   Meaurement of Jerk Body  
				   Motion Z direction
meantimebodygyroscopemeanx	   Average Mean Gyroscope       Numeric
				   Meaurement of Body Motion 
				   X direction	
meantimebodygyroscopemeany	   Average Mean Gyroscope       Numeric
				   Meaurement of Body Motion 
				   Y direction	 
meantimebodygyroscopemeanz         Average Mean Gyroscope       Numeric
				   Meaurement of Body Motion 
				   Z direction	
meantimebodygyroscopestdx	   Average Std Gyroscope        Numeric
				   Meaurement of Body Motion 
				   X direction	
meantimebodygyroscopestdy	   Average Std Gyroscope        Numeric
				   Meaurement of Body Motion 
				   Y direction	
meantimebodygyroscopestdz	   Average Std Gyroscope        Numeric
				   Meaurement of Body Motion 
				   Z direction	
meantimebodygyroscopejerkmeanx	   Average Mean Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   X direction	
meantimebodygyroscopejerkmeany     Average Mean Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   Y direction	
meantimebodygyroscopejerkmeanz     Average Mean Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   Z direction	
meantimebodygyroscopejerkstdx      Average Std Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   X direction	
meantimebodygyroscopejerkstdy      Average Std Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   Y direction	
meantimebodygyroscopejerkstdz      Average Std Gyroscope        Numeric
				   Meaurement of Jerk Body Motion 
				   Z direction	
meantimebodyaccelerometermagnitudemean       Average Mean Accelerometer   Numeric
				             Meaurement of Magnitude 
					     of Body Motion              
meantimebodyaccelerometermagnitudestd	     Average Std Accelerometer   Numeric
				             Meaurement of Magnitude 
					     of Body Motion  
meantimegravityaccelerometermagnitudemean     Average Mean Accelerometer   Numeric
				              Meaurement of Magitude
					      of Gravity Motion 
meantimegravityaccelerometermagnitudestd      Average Std Accelerometer   Numeric
				              Meaurement of Magitude
					      of Gravity Motion 
meantimebodyaccelerometerjerkmagnitudemean   Average Mean Accelerometer   Numeric
				             Meaurement of Magnitude 
					     of Jerk Body Motion  
meantimebodyaccelerometerjerkmagnitudestd    Average Std Accelerometer   Numeric
				             Meaurement of Magnitude 
					     of Jerk Body Motion  
meantimebodygyroscopemagnitudemean	   Average Mean Gyroscope   Numeric
				           Meaurement of Magnitude 
					   Body Motion 
meantimebodygyroscopemagnitudestd	   Average Std Gyroscope   Numeric
				           Meaurement of Magnitude 
					   Body Motion  
meantimebodygyroscopejerkmagnitudemean     Average Mean Gyroscope   Numeric
				           Meaurement of Magnitude 
					   of Jerk Body Motion  
meantimebodygyroscopejerkmagnitudestd	   Average Std Gyroscope   Numeric
				           Meaurement of Magnitude 
					   of Jerk Body Motion  
meanfourierbodyaccelerometermeanx	   Average Mean Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - X direction  
meanfourierbodyaccelerometermeany	   Average Mean Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Y direction 	 
meanfourierbodyaccelerometermeanz	   Average Mean Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Z direction 		
meanfourierbodyaccelerometerstdx	   Average Std Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - X direction 	
meanfourierbodyaccelerometerstdy	   Average Std Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Y direction  
meanfourierbodyaccelerometerstdz	   Average Std Accelerometer   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Z direction  
meanfourierbodyaccelerometerjerkmeanx	   Average Mean Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - X direction  	
meanfourierbodyaccelerometerjerkmeany	   Average Mean Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - Y direction
meanfourierbodyaccelerometerjerkmeanz	   Average Mean Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - Z direction
meanfourierbodyaccelerometerjerkstdx	   Average Std Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - X direction	
meanfourierbodyaccelerometerjerkstdy	   Average Std Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - Y direction	
meanfourierbodyaccelerometerjerkstdz	   Average Std Accelerometer   Numeric
				           Body Jerk Meaurement with Fast
					   Fourier transform applied
					   - Z direction	
meanfourierbodygyroscopemeanx		   Average Mean Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - X direction 
meanfourierbodygyroscopemeany		   Average Mean Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Y direction 	
meanfourierbodygyroscopemeanz		   Average Mean Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Z direction 
meanfourierbodygyroscopestdx		   Average Std Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - X direction 	
meanfourierbodygyroscopestdy		   Average Std Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Y direction 		
meanfourierbodygyroscopestdz		   Average Std Gyroscope   Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Z direction 	

meanfourierbodyaccelerometermagnitudemean  Average Mean Accelerometer   		Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Magnitude 		
meanfourierbodyaccelerometermagnitudestd   Average Std Accelerometer   			Numeric
				           Body Meaurement with Fast
					   Fourier transform applied
					   - Magnitude 			
meanfourierbodybodyaccelerometerjerkmagnitudemean	Average Mean Accelerometer   	Numeric
				           		Body Jerk Meaurement with Fast
					   		Fourier transform applied
					   		- Magnitude 	
meanfourierbodybodyaccelerometerjerkmagnitudestd	Average Std Accelerometer   	Numeric
				           		Body Jerk Meaurement with Fast
					   		Fourier transform applied
					   		- Magnitude 	
meanfourierbodybodygyroscopemagnitudemean	Average Mean Gyroscope   		Numeric
				           	Body Meaurement with Fast
					   	Fourier transform applied
					   	- Magnitude 		
meanfourierbodybodygyroscopemagnitudestd	Average Std Gryroscope   		Numeric
				           	Body Meaurement with Fast
					   	Fourier transform applied
					   	- Magnitude 		
meanfourierbodybodygyroscopejerkmagnitudemean	Average Mean Gyroscope   		Numeric
				           	Body Jerk Meaurement with Fast
					   	Fourier transform applied
					   	- Magnitude 	
meanfourierbodybodygyroscopejerkmagnitudestd	Average Std Gyroscope   		Numeric
				           	Body Jerk Meaurement with Fast
					   	Fourier transform applied
					   	- Magnitude 	 



	