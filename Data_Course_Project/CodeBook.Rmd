---
title: "CodeBook"
author: "Jaimie"
date: "4/2/2020"
output: html_document
---

# Data sets
Here, I used the Human Activity Recognition Using Smartphones Data Set.
The researchers recorded 30 people doing daily activities while having a smartphone with inertial sensors around their waste.
The 6 activities are : 
1. Walking
2. Walking Upstairs
3 Walking Downstairs
4. Sitting
5. Standing
6. Laying

The researchers utilized an accelerometer and gyroscope in the phone to find the 3-axial linear acceleration and 3-axial angular velocity at a rate of 50Hz. 
The data set is divided with 70% of volunteers chosen for the training data and 30% for the test data.

The data sets are divided into the following:

1. x_test, x_train : these provide the data from the accelerometer and gyroscope.
3. subject_test, subject_train: these are the subjects unique ID who engaged in the experiment
4. features_info, features: these are the accelerometer and gyroscope results variables. Features_info provides additional details regarding the features.
5. activity_labels, y_test, y_train: these are the type of activities that the subjects engaged in. Activity label links the activity number with the activity type.

The features_info.txt provides more information on the variables in the data set:


=================

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

>The set of variables that were estimated from these signals are: 

>mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

>gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

>The complete list of variables of each feature vector is available in 'features.txt'
