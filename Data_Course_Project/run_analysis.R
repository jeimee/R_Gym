setwd('/Users/jaimiechoi/Desktop/R_Programming/UCI HAR Dataset')
library("dplyr")
# Read txt datasets into  R
features <- read.csv('features.txt', header = FALSE, sep = "")
features <- as.character(features[,2])

x_test <- read.csv('test/X_test.txt', header = FALSE, sep = "")
x_train <- read.csv('train/X_train.txt', header = FALSE, sep = "")

subject_test <- read.csv('test/subject_test.txt', header = FALSE, sep = "")
subject_train  <- read.csv('train/subject_train.txt', header = FALSE, sep = "")

y_test <- read.csv('test/y_test.txt', header = FALSE, sep = "")
y_train <- read.csv('train/y_train.txt', header = FALSE, sep = "")

# Combine all the columns into a test and train dataset. Add proper column names.
test <- cbind(subject_test, y_test, x_test)
colnames(test) <- c("subject", "activity", features)

train <- cbind(subject_train, y_train, x_train)
colnames(train) <- c("subject", "activity", features)

#Append the train and test datasets to each other.
df <- rbind(test,train)

#Select columns that measures the mean and standard deviation.
mean_std_col <- grep('mean|std', names(df))
df_select <- df[, c("subject","activity",mean_std_col)]

#Merge the descriptive activity names with the activity numbers in the data set
labels <- read.csv("activity_labels.txt", header = FALSE, sep ="")
names(labels) <- c("activity", "activityLabel")
labels$activityLabel <- tolower(labels$activityLabel)
df_merge <- merge(labels, df_select, by = "activity")

#Replace column names with descriptive variable names.
name2 <- names(df_merge)
colnames(df_merge) <- name2 %>%
    gsub("\\(\\)", "",.) %>%
    gsub("-","_",.) %>%
    gsub("^t", "time",.) %>%
    gsub("^f", "frequency",.) %>%
    gsub("Acc", "Accelerometer",.) %>%
    gsub("Gyro", "Gyroscope",.) %>%
    gsub("Mag", "Magnitude",.)
    
# Create a dataset that has the mean of each variable for each subject and activity type.
#Then export this data set as "data_average.csv"
df_means <- df_merge %>% group_by(subject, activityLabel) %>% summarize_all(mean)
write.csv(df_means, file = "data_average.csv", row.names = FALSE)
