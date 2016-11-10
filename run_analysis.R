
# a character vector which contains the list of activities

activities <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

# vectors which contain the labels of activities of each observation, and we convert it to factor

labelactivities1 <- read.table("test/y_test.txt") 
labelactivities2 <- read.table("train/y_train.txt") 

labelactivities <- rbind(labelactivities1, labelactivities2)

activity <- factor(labelactivities$V1, levels = 1:6, labels = activities)

rm(labelactivities)
rm(labelactivities1)
rm(labelactivities2)

# data sets

testdata  <- read.table("test/x_test.txt")  
traindata <- read.table("train/x_train.txt")

data <- rbind(testdata, traindata)

rm(testdata)
rm(traindata)

# we add raw names / features to variables of the data table

features <- read.table("features.txt") 
names(data) <- features$V2

# we add the variable that contains the name of each activity of each row of the data table

data <- data.frame(activity, data)

rm(activity)





