## Transformations of data

1. Using `rbind` to merge together the training and test data sets.
2. Using `grep` to extract only the measurements (features) that are mean or standard deviation. Updating the measurement data set accordingly.
3. Loading activity labels from an input file and updating the activity data sets with descriptive activity names.
4. Adding variable names for measurements, activities and subjects. Additionaly, combining subjects, activities and measurements together.
5. Creating a new data set that contains average values of each measurement for each activity and subject.

## Variables

`x_train`, `x_test` - training and test sets that represent accelerometer and gyroscope measurements loaded from input files  
`y_train`, `y_test` - training and test sets that represent activites loaded form input files  
`subject_train`, `subject_test` - training and test sets that represent test subjects loaded from input file  
`X`, `Y`, `S` - measurements, activities and subjects merged  
`features`, `feature_names`, `selected_feature_indices` - features loaded from input file, feature names and indices that represent mean or standard deviation respectively  
`activity_labels` - activity labels loaded from an input file  
`data_combined` - a combined data set that contains subjects, activities and measurements data  
`data_grouped` - a data set that is grouped by subject and activity  
`data_combined_averages` - the final data set that contains an average of each measurement for each activity and subject
