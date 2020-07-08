#load iris
data("iris")
#rename dataset
dataset <- iris
#create training set
validation_index <- createDataPartition(dataset$Species, p=0.80, list=FALSE)
#create validation set
validation <- dataset[-validation_index,]
#set rest of data as dataset
dataset <- dataset[validation_index,]

