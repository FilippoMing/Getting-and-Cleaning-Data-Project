# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

The tidy data set contains 180 observations with 68 variables divided in:

* an identifier of the subject who carried out the experiment (subject): numeric from 1 to 30

* an identifier of activity label (activity): walking, walking_upstairs, walking_downstairs, sitting, standing, laying

* a 66-feature vector with time and frequency domain signal variables: numeric

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

Description of abbreviations of measurements

* leading time or frequency is based on time or frequency measurements.
* Body = related to body movement.
* Gravity = acceleration of gravity
* Accelerometer = accelerometer measurement
* Gyroscope = gyroscopic measurements
* Jerk = sudden movement acceleration
* Magnitude = magnitude of movement

Mean and SD are calculated for each subject for each activity for each mean and SD measurements.

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

These signals were used to estimate variables of the feature vector for each pattern:

‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. 

* `timeBodyAccelerometerMean-X`
* `timeBodyAccelerometerMean-Y`
* `timeBodyAccelerometerMean-Z`
* `timeBodyAccelerometerStdDev-X`
* `timeBodyAccelerometerStdDev-Y`
* `timeBodyAccelerometerStdDev-Z`
* `timeGravityAccelerometerMean-X`
* `timeGravityAccelerometerMean-Y`
* `timeGravityAccelerometerMean-Z`
* `timeGravityAccelerometerStdDev-X`
* `timeGravityAccelerometerStdDev-Y`
* `timeGravityAccelerometerStdDev-Z`
* `timeBodyAccelerometerJerkMean-X`
* `timeBodyAccelerometerJerkMean-Y`
* `timeBodyAccelerometerJerkMean-Z`
* `timeBodyAccelerometerJerkStdDev-X`
* `timeBodyAccelerometerJerkStdDev-Y`
* `timeBodyAccelerometerJerkStdDev-Z`
* `timeBodyGyroscopeMean-X`
* `timeBodyGyroscopeMean-Y`
* `timeBodyGyroscopeMean-Z`
* `timeBodyGyroscopeStdDev-X`
* `timeBodyGyroscopeStdDev-Y`
* `timeBodyGyroscopeStdDev-Z`
* `timeBodyGyroscopeJerkMean-X`
* `timeBodyGyroscopeJerkMean-Y`
* `timeBodyGyroscopeJerkMean-Z`
* `timeBodyGyroscopeJerkStdDev-X`
* `timeBodyGyroscopeJerkStdDev-Y`
* `timeBodyGyroscopeJerkStdDev-Z`
* `timeBodyAccelerometerMagnitudeMean`
* `timeBodyAccelerometerMagnitudeStdDev`
* `timeGravityAccelerometerMagnitudeMean`
* `timeGravityAccelerometerMagnitudeStdDev`
* `timeBodyAccelerometerJerkMagnitudeMean`
* `timeBodyAccelerometerJerkMagnitudeStdDev`
* `timeBodyGyroscopeMagnitudeMean`
* `timeBodyGyroscopeMagnitudeStdDev`
* `timeBodyGyroscopeJerkMagnitudeMean`
* `timeBodyGyroscopeJerkMagnitudeStdDev`
* `frequencyBodyAccelerometerMean-X`
* `frequencyBodyAccelerometerMean-Y`
* `frequencyBodyAccelerometerMean-Z`
* `frequencyBodyAccelerometerStdDev-X`
* `frequencyBodyAccelerometerStdDev-Y`
* `frequencyBodyAccelerometerStdDev-Z`
* `frequencyBodyAccelerometerJerkMean-X`
* `frequencyBodyAccelerometerJerkMean-Y`
* `frequencyBodyAccelerometerJerkMean-Z`
* `frequencyBodyAccelerometerJerkStdDev-X`
* `frequencyBodyAccelerometerJerkStdDev-Y`
* `frequencyBodyAccelerometerJerkStdDev-Z`
* `frequencyBodyGyroscopeMean-X`
* `frequencyBodyGyroscopeMean-Y`
* `frequencyBodyGyroscopeMean-Z`
* `frequencyBodyGyroscopeStdDev-X`
* `frequencyBodyGyroscopeStdDev-Y`
* `frequencyBodyGyroscopeStdDev-Z`
* `frequencyBodyAccelerometerMagnitudeMean`
* `frequencyBodyAccelerometerMagnitudeStdDev`
* `frequencyBodyAccelerometerJerkMagnitudeMean`
* `frequencyBodyAccelerometerJerkMagnitudeStdDev`
* `frequencyBodyGyroscopeMagnitudeMean`
* `frequencyBodyGyroscopeMagnitudeStdDev`
* `frequencyBodyGyroscopeJerkMagnitudeMean`
* `frequencyBodyGyroscopeJerkMagnitudeStdDev`






## Activity Labels

* `walking` : subject was walking during the test
* `walking_upstairs` : subject was walking up a staircase during the test
* `walking_downstairs` : subject was walking down a staircase during the test
* `sitting` : subject was sitting during the test
* `standing` : subject was standing during the test
* `laying` : subject was laying down during the test
