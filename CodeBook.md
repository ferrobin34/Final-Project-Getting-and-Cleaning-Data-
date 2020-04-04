
In this database we exract it of the original data in:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For more information consult original README.txt in the original data.

We show in the data the variables:

- "1" "Subject" : Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- "2" "Activity" : Activity name.
- "3" "TimeBodyAccelerometer.Mean.X"
- "4" "TimeBodyAccelerometer.Mean.Y"
- "5" "TimeBodyAccelerometer.Mean.Z"
- "6" "TimeBodyAccelerometer.Std.X"
- "7" "TimeBodyAccelerometer.Std.Y"
- "8" "TimeBodyAccelerometer.Std.Z"
- "9" "TimeGravityAccelerometer.Mean.X"
- "10" "TimeGravityAccelerometer.Mean.Y"
- "11" "TimeGravityAccelerometer.Mean.Z"
- "12" "TimeGravityAccelerometer.Std.X"
- "13" "TimeGravityAccelerometer.Std.Y"
- "14" "TimeGravityAccelerometer.Std.Z"
- "15" "TimeBodyAccelerometerJerk.Mean.X"
- "16" "TimeBodyAccelerometerJerk.Mean.Y"
- "17" "TimeBodyAccelerometerJerk.Mean.Z"
- "18" "TimeBodyAccelerometerJerk.Std.X"
- "19" "TimeBodyAccelerometerJerk.Std.Y"
- "20" "TimeBodyAccelerometerJerk.Std.Z"
- "21" "TimeBodyGyroscope.Mean.X"
- "22" "TimeBodyGyroscope.Mean.Y"
- "23" "TimeBodyGyroscope.Mean.Z"
- "24" "TimeBodyGyroscope.Std.X"
- "25" "TimeBodyGyroscope.Std.Y"
- "26" "TimeBodyGyroscope.Std.Z"
- "27" "TimeBodyGyroscopeJerk.Mean.X"
- "28" "TimeBodyGyroscopeJerk.Mean.Y"
- "29" "TimeBodyGyroscopeJerk.Mean.Z"
- "30" "TimeBodyGyroscopeJerk.Std.X"
- "31" "TimeBodyGyroscopeJerk.Std.Y"
- "32" "TimeBodyGyroscopeJerk.Std.Z"
- "33" "TimeBodyAccelerometerMag.Mean"
- "34" "TimeBodyAccelerometerMag.Std"
- "35" "TimeGravityAccelerometerMag.Mean"
- "36" "TimeGravityAccelerometerMag.Std"
- "37" "TimeBodyAccelerometerJerkMag.Mean"
- "38" "TimeBodyAccelerometerJerkMag.Std"
- "39" "TimeBodyGyroscopeMag.Mean"
- "40" "TimeBodyGyroscopeMag.Std"
- "41" "TimeBodyGyroscopeJerkMag.Mean"
- "42" "TimeBodyGyroscopeJerkMag.Std"
- "43" "FreqBodyAccelerometer.Mean.X"
- "44" "FreqBodyAccelerometer.Mean.Y"
- "45" "FreqBodyAccelerometer.Mean.Z"
- "46" "FreqBodyAccelerometer.Std.X"
- "47" "FreqBodyAccelerometer.Std.Y"
- "48" "FreqBodyAccelerometer.Std.Z"
- "49" "FreqBodyAccelerometerJerk.Mean.X"
- "50" "FreqBodyAccelerometerJerk.Mean.Y"
- "51" "FreqBodyAccelerometerJerk.Mean.Z"
- "52" "FreqBodyAccelerometerJerk.Std.X"
- "53" "FreqBodyAccelerometerJerk.Std.Y"
- "54" "FreqBodyAccelerometerJerk.Std.Z"
- "55" "FreqBodyGyroscope.Mean.X"
- "56" "FreqBodyGyroscope.Mean.Y"
- "57" "FreqBodyGyroscope.Mean.Z"
- "58" "FreqBodyGyroscope.Std.X"
- "59" "FreqBodyGyroscope.Std.Y"
- "60" "FreqBodyGyroscope.Std.Z"
- "61" "FreqBodyAccelerometerMag.Mean"
- "62" "FreqBodyAccelerometerMag.Std"
- "63" "FreqBodyAccelerometerJerkMag.Mean"
- "64" "FreqBodyAccelerometerJerkMag.Std"
- "65" "FreqBodyGyroscopeMag.Mean"
- "66" "FreqBodyGyroscopeMag.Std"
- "67" "FreqBodyGyroscopeJerkMag.Mean"
- "68" "FreqBodyGyroscopeJerkMag.Std"

We extrac this variables of the files from the orginal data sets:
"subject_test.txt", "X_test.txt","y_test.txt","subject_train.txt", "X_train.txt","y_train.txt"

We join those files and just keep the variables with mean() or std().
and we group by Subject and Activity and after summarize with mean.

Note: We change the variables name we change:
f to Freq
t to Time
mean() to Mean
std() to Std
Acc to Accelerometer 
Gyro to Gyroscope
BodyBody to Body
