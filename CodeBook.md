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

# Average Data Set Description
1. A subset of the original data set was produced using R.
1. The subset included only those original variables that were mean or standard deviation variables.
1. The following list shows the columns of the data set.
1. Each column name was a simplified version of the original name.
1. The subscript "_ave" was included to indicate that the variable was an average of the measurements for a given subject for the given activity type.

# Average of Mean and Standard Deviation Data Sets 
##'data.frame':	10299 obs. of  82 variables:
## Structure Information Header 
```
 $ activity                     : chr  "STANDING" "STANDING" "STANDING" "STANDING" ...
 $ subject_id                   : num  2 2 2 2 2 2 2 2 2 2 ...
 $ activity_id                  : num  5 5 5 5 5 5 5 5 5 5 ...
 $ tBodyAcc-mean-X              : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean-Y              : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean-Z              : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std-X               : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std-Y               : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std-Z               : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tGravityAcc-mean-X           : num  0.936 0.927 0.93 0.929 0.927 ...
  [list output truncated]
```
## Column Information
```
>>> Col #  1 , Name:  activity 
>>> Col #  2 , Name:  subject_id , Range: 1 30 
>>> Col #  3 , Name:  activity_id , Range: 1 6 
>>> Col #  4 , Name:  tBodyAcc-mean-X , Range: -1 1 
>>> Col #  5 , Name:  tBodyAcc-mean-Y , Range: -1 1 
>>> Col #  6 , Name:  tBodyAcc-mean-Z , Range: -1 1 
>>> Col #  7 , Name:  tBodyAcc-std-X , Range: -1 1 
>>> Col #  8 , Name:  tBodyAcc-std-Y , Range: -1 1 
>>> Col #  9 , Name:  tBodyAcc-std-Z , Range: -1 1 
>>> Col #  10 , Name:  tGravityAcc-mean-X , Range: -1 1 
>>> Col #  11 , Name:  tGravityAcc-mean-Y , Range: -1 1 
>>> Col #  12 , Name:  tGravityAcc-mean-Z , Range: -1 1 
>>> Col #  13 , Name:  tGravityAcc-std-X , Range: -1 1 
>>> Col #  14 , Name:  tGravityAcc-std-Y , Range: -1 1 
>>> Col #  15 , Name:  tGravityAcc-std-Z , Range: -1 1 
>>> Col #  16 , Name:  tBodyAccJerk-mean-X , Range: -1 1 
>>> Col #  17 , Name:  tBodyAccJerk-mean-Y , Range: -1 1 
>>> Col #  18 , Name:  tBodyAccJerk-mean-Z , Range: -1 1 
>>> Col #  19 , Name:  tBodyAccJerk-std-X , Range: -1 1 
>>> Col #  20 , Name:  tBodyAccJerk-std-Y , Range: -1 1 
>>> Col #  21 , Name:  tBodyAccJerk-std-Z , Range: -1 1 
>>> Col #  22 , Name:  tBodyGyro-mean-X , Range: -1 1 
>>> Col #  23 , Name:  tBodyGyro-mean-Y , Range: -1 1 
>>> Col #  24 , Name:  tBodyGyro-mean-Z , Range: -1 1 
>>> Col #  25 , Name:  tBodyGyro-std-X , Range: -1 1 
>>> Col #  26 , Name:  tBodyGyro-std-Y , Range: -1 1 
>>> Col #  27 , Name:  tBodyGyro-std-Z , Range: -1 1 
>>> Col #  28 , Name:  tBodyGyroJerk-mean-X , Range: -1 1 
>>> Col #  29 , Name:  tBodyGyroJerk-mean-Y , Range: -1 1 
>>> Col #  30 , Name:  tBodyGyroJerk-mean-Z , Range: -1 1 
>>> Col #  31 , Name:  tBodyGyroJerk-std-X , Range: -1 1 
>>> Col #  32 , Name:  tBodyGyroJerk-std-Y , Range: -1 1 
>>> Col #  33 , Name:  tBodyGyroJerk-std-Z , Range: -1 1 
>>> Col #  34 , Name:  tBodyAccMag-mean , Range: -1 1 
>>> Col #  35 , Name:  tBodyAccMag-std , Range: -1 1 
>>> Col #  36 , Name:  tGravityAccMag-mean , Range: -1 1 
>>> Col #  37 , Name:  tGravityAccMag-std , Range: -1 1 
>>> Col #  38 , Name:  tBodyAccJerkMag-mean , Range: -1 1 
>>> Col #  39 , Name:  tBodyAccJerkMag-std , Range: -1 1 
>>> Col #  40 , Name:  tBodyGyroMag-mean , Range: -1 1 
>>> Col #  41 , Name:  tBodyGyroMag-std , Range: -1 1 
>>> Col #  42 , Name:  tBodyGyroJerkMag-mean , Range: -1 1 
>>> Col #  43 , Name:  tBodyGyroJerkMag-std , Range: -1 1 
>>> Col #  44 , Name:  fBodyAcc-mean-X , Range: -1 1 
>>> Col #  45 , Name:  fBodyAcc-mean-Y , Range: -1 1 
>>> Col #  46 , Name:  fBodyAcc-mean-Z , Range: -1 1 
>>> Col #  47 , Name:  fBodyAcc-std-X , Range: -1 1 
>>> Col #  48 , Name:  fBodyAcc-std-Y , Range: -1 1 
>>> Col #  49 , Name:  fBodyAcc-std-Z , Range: -1 1 
>>> Col #  50 , Name:  fBodyAcc-meanFreq-X , Range: -1 1 
>>> Col #  51 , Name:  fBodyAcc-meanFreq-Y , Range: -1 1 
>>> Col #  52 , Name:  fBodyAcc-meanFreq-Z , Range: -1 1 
>>> Col #  53 , Name:  fBodyAccJerk-mean-X , Range: -1 1 
>>> Col #  54 , Name:  fBodyAccJerk-mean-Y , Range: -1 1 
>>> Col #  55 , Name:  fBodyAccJerk-mean-Z , Range: -1 1 
>>> Col #  56 , Name:  fBodyAccJerk-std-X , Range: -1 1 
>>> Col #  57 , Name:  fBodyAccJerk-std-Y , Range: -1 1 
>>> Col #  58 , Name:  fBodyAccJerk-std-Z , Range: -1 1 
>>> Col #  59 , Name:  fBodyAccJerk-meanFreq-X , Range: -1 1 
>>> Col #  60 , Name:  fBodyAccJerk-meanFreq-Y , Range: -1 1 
>>> Col #  61 , Name:  fBodyAccJerk-meanFreq-Z , Range: -1 1 
>>> Col #  62 , Name:  fBodyGyro-mean-X , Range: -1 1 
>>> Col #  63 , Name:  fBodyGyro-mean-Y , Range: -1 1 
>>> Col #  64 , Name:  fBodyGyro-mean-Z , Range: -1 1 
>>> Col #  65 , Name:  fBodyGyro-std-X , Range: -1 1 
>>> Col #  66 , Name:  fBodyGyro-std-Y , Range: -1 1 
>>> Col #  67 , Name:  fBodyGyro-std-Z , Range: -1 1 
>>> Col #  68 , Name:  fBodyGyro-meanFreq-X , Range: -1 1 
>>> Col #  69 , Name:  fBodyGyro-meanFreq-Y , Range: -1 1 
>>> Col #  70 , Name:  fBodyGyro-meanFreq-Z , Range: -1 1 
>>> Col #  71 , Name:  fBodyAccMag-mean , Range: -1 1 
>>> Col #  72 , Name:  fBodyAccMag-std , Range: -1 1 
>>> Col #  73 , Name:  fBodyAccMag-meanFreq , Range: -1 1 
>>> Col #  74 , Name:  fBodyBodyAccJerkMag-mean , Range: -1 1 
>>> Col #  75 , Name:  fBodyBodyAccJerkMag-std , Range: -1 1 
>>> Col #  76 , Name:  fBodyBodyAccJerkMag-meanFreq , Range: -1 1 
>>> Col #  77 , Name:  fBodyBodyGyroMag-mean , Range: -1 1 
>>> Col #  78 , Name:  fBodyBodyGyroMag-std , Range: -1 1 
>>> Col #  79 , Name:  fBodyBodyGyroMag-meanFreq , Range: -1 1 
>>> Col #  80 , Name:  fBodyBodyGyroJerkMag-mean , Range: -1 1 
>>> Col #  81 , Name:  fBodyBodyGyroJerkMag-std , Range: -1 1 
>>> Col #  82 , Name:  fBodyBodyGyroJerkMag-meanFreq , Range: -1 1 
```
