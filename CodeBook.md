## Summary of Original Data
1. The original data was analyzed and summarized by taking the average value for each subject and activity.
2. The data was sampled to obtain only those original data that were mean or standard deviations of the data.
3. A description of the average column data appears at the end of this document.
4. Each row contains mean or standard deviation measurments averaged over the replicates for each subject for a given activity.
5. There are 3o subject, and six activities, for a total of 180 rows.
6. Each original data feature name was simplified and the subscript "_ave" was added to indicate it was a mean value

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
```
tBodyAcc-XYZ
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
```
The set of variables that were estimated from these signals are: 
```
mean(): Mean value
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
```
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
```
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
```
# Average of Mean and Standard Deviation Data Sets 

## Structure Information Header
```
'data.frame':	180 obs. of  81 variables:
 $ activity                         : Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1 4 6 5 2 ...
 $ subject_id                       : Factor w/ 30 levels "1","10","11",..: 1 1 1 1 1 1 12 12 12 12 ...
 $ tBodyAcc-mean-X_ave              : Factor w/ 180 levels "0.22159824394",..: 99 15 163 24 125 1 84 5 103 94 ...
 $ tBodyAcc-mean-Y_ave              : Factor w/ 180 levels "-0.00130828765170213",..: 95 157 16 1 59 180 121 148 154 56 ...
 $ tBodyAcc-mean-Z_ave              : Factor w/ 180 levels "-0.07537846886",..: 129 11 81 47 122 144 52 180 153 109 ...
 $ tBodyAcc-std-X_ave               : Factor w/ 180 levels "-0.00865921919565217",..: 49 74 6 127 179 93 85 60 10 154 ...
 $ tBodyAcc-std-Y_ave               : Factor w/ 180 levels "-0.00232026501698113",..: 40 1 11 113 171 92 25 36 77 147 ...
 $ tBodyAcc-std-Z_ave               : Factor w/ 180 levels "-0.00771530035714285",..: 50 3 43 124 172 92 78 15 13 149 ...
 $ tGravityAcc-mean-X_ave           : Factor w/ 180 levels "-0.134832031403509",..: 117 70 110 44 138 10 81 36 53 130 ...
 $ tGravityAcc-mean-Y_ave           : Factor w/ 180 levels "-0.002814673171875",..: 127 147 123 78 125 165 143 153 136 37 ...
  [list output truncated]
```

## Column Descriptions
```
>>> Col #  1 , Name:  activity 
>>> Col #  2 , Name:  subject_id 
>>> Col #  3 , Name:  tBodyAcc-mean-X_ave 
>>> Col #  4 , Name:  tBodyAcc-mean-Y_ave 
>>> Col #  5 , Name:  tBodyAcc-mean-Z_ave 
>>> Col #  6 , Name:  tBodyAcc-std-X_ave 
>>> Col #  7 , Name:  tBodyAcc-std-Y_ave 
>>> Col #  8 , Name:  tBodyAcc-std-Z_ave 
>>> Col #  9 , Name:  tGravityAcc-mean-X_ave 
>>> Col #  10 , Name:  tGravityAcc-mean-Y_ave 
>>> Col #  11 , Name:  tGravityAcc-mean-Z_ave 
>>> Col #  12 , Name:  tGravityAcc-std-X_ave 
>>> Col #  13 , Name:  tGravityAcc-std-Y_ave 
>>> Col #  14 , Name:  tGravityAcc-std-Z_ave 
>>> Col #  15 , Name:  tBodyAccJerk-mean-X_ave 
>>> Col #  16 , Name:  tBodyAccJerk-mean-Y_ave 
>>> Col #  17 , Name:  tBodyAccJerk-mean-Z_ave 
>>> Col #  18 , Name:  tBodyAccJerk-std-X_ave 
>>> Col #  19 , Name:  tBodyAccJerk-std-Y_ave 
>>> Col #  20 , Name:  tBodyAccJerk-std-Z_ave 
>>> Col #  21 , Name:  tBodyGyro-mean-X_ave 
>>> Col #  22 , Name:  tBodyGyro-mean-Y_ave 
>>> Col #  23 , Name:  tBodyGyro-mean-Z_ave 
>>> Col #  24 , Name:  tBodyGyro-std-X_ave 
>>> Col #  25 , Name:  tBodyGyro-std-Y_ave 
>>> Col #  26 , Name:  tBodyGyro-std-Z_ave 
>>> Col #  27 , Name:  tBodyGyroJerk-mean-X_ave 
>>> Col #  28 , Name:  tBodyGyroJerk-mean-Y_ave 
>>> Col #  29 , Name:  tBodyGyroJerk-mean-Z_ave 
>>> Col #  30 , Name:  tBodyGyroJerk-std-X_ave 
>>> Col #  31 , Name:  tBodyGyroJerk-std-Y_ave 
>>> Col #  32 , Name:  tBodyGyroJerk-std-Z_ave 
>>> Col #  33 , Name:  tBodyAccMag-mean_ave 
>>> Col #  34 , Name:  tBodyAccMag-std_ave 
>>> Col #  35 , Name:  tGravityAccMag-mean_ave 
>>> Col #  36 , Name:  tGravityAccMag-std_ave 
>>> Col #  37 , Name:  tBodyAccJerkMag-mean_ave 
>>> Col #  38 , Name:  tBodyAccJerkMag-std_ave 
>>> Col #  39 , Name:  tBodyGyroMag-mean_ave 
>>> Col #  40 , Name:  tBodyGyroMag-std_ave 
>>> Col #  41 , Name:  tBodyGyroJerkMag-mean_ave 
>>> Col #  42 , Name:  tBodyGyroJerkMag-std_ave 
>>> Col #  43 , Name:  fBodyAcc-mean-X_ave 
>>> Col #  44 , Name:  fBodyAcc-mean-Y_ave 
>>> Col #  45 , Name:  fBodyAcc-mean-Z_ave 
>>> Col #  46 , Name:  fBodyAcc-std-X_ave 
>>> Col #  47 , Name:  fBodyAcc-std-Y_ave 
>>> Col #  48 , Name:  fBodyAcc-std-Z_ave 
>>> Col #  49 , Name:  fBodyAcc-meanFreq-X_ave 
>>> Col #  50 , Name:  fBodyAcc-meanFreq-Y_ave 
>>> Col #  51 , Name:  fBodyAcc-meanFreq-Z_ave 
>>> Col #  52 , Name:  fBodyAccJerk-mean-X_ave 
>>> Col #  53 , Name:  fBodyAccJerk-mean-Y_ave 
>>> Col #  54 , Name:  fBodyAccJerk-mean-Z_ave 
>>> Col #  55 , Name:  fBodyAccJerk-std-X_ave 
>>> Col #  56 , Name:  fBodyAccJerk-std-Y_ave 
>>> Col #  57 , Name:  fBodyAccJerk-std-Z_ave 
>>> Col #  58 , Name:  fBodyAccJerk-meanFreq-X_ave 
>>> Col #  59 , Name:  fBodyAccJerk-meanFreq-Y_ave 
>>> Col #  60 , Name:  fBodyAccJerk-meanFreq-Z_ave 
>>> Col #  61 , Name:  fBodyGyro-mean-X_ave 
>>> Col #  62 , Name:  fBodyGyro-mean-Y_ave 
>>> Col #  63 , Name:  fBodyGyro-mean-Z_ave 
>>> Col #  64 , Name:  fBodyGyro-std-X_ave 
>>> Col #  65 , Name:  fBodyGyro-std-Y_ave 
>>> Col #  66 , Name:  fBodyGyro-std-Z_ave 
>>> Col #  67 , Name:  fBodyGyro-meanFreq-X_ave 
>>> Col #  68 , Name:  fBodyGyro-meanFreq-Y_ave 
>>> Col #  69 , Name:  fBodyGyro-meanFreq-Z_ave 
>>> Col #  70 , Name:  fBodyAccMag-mean_ave 
>>> Col #  71 , Name:  fBodyAccMag-std_ave 
>>> Col #  72 , Name:  fBodyAccMag-meanFreq_ave 
>>> Col #  73 , Name:  fBodyBodyAccJerkMag-mean_ave 
>>> Col #  74 , Name:  fBodyBodyAccJerkMag-std_ave 
>>> Col #  75 , Name:  fBodyBodyAccJerkMag-meanFreq_ave 
>>> Col #  76 , Name:  fBodyBodyGyroMag-mean_ave 
>>> Col #  77 , Name:  fBodyBodyGyroMag-std_ave 
>>> Col #  78 , Name:  fBodyBodyGyroMag-meanFreq_ave 
>>> Col #  79 , Name:  fBodyBodyGyroJerkMag-mean_ave 
>>> Col #  80 , Name:  fBodyBodyGyroJerkMag-std_ave 
>>> Col #  81 , Name:  fBodyBodyGyroJerkMag-meanFreq_ave 
```

