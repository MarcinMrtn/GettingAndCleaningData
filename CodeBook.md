## Transformations of data

1. Training and test data sets merged together using `rbind`.
2. Extracted only the measurements that are mean or standard deviation.
3. Data set that represents activites updated with descriptive activity names.
4. Labels for measurements, activities, subjects were added.
5. A new data set created with an average of each measurement for each activity and subject.

## Variables

`x_train`, `x_test` - training and test sets that represent accelerometer and gyroscope measurements loaded from input files  
`y_train`, `y_test` - training and test sets that represent activites loaded form input files  
`subject_train`, `subject_test` - training and test sets that represent test subjects loaded from input file
`X`, `Y`, `S` - measurements, activities and subjects merged
`features`, `feature_names`, `selected_feature_indices` - features loaded from input file, feature names and indices that represent mean or standard deviation respectively
`activity_labels` - activity labels loaded from an input file
`data_combined` - a combined data set that contains subjects, activities and measurements data
`data_grouped` - a data set that is grouped by subject and actifity
`data_combined_averages` - the final data set that contains an average of each measurement for each activity and subject
