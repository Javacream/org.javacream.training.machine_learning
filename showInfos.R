#dimensions of dataset
dim(dataset)
#list types for each attribute
sapply(dataset, class)
#take a peek at the first 5 rows of the data
head(dataset)
#list the levels for the class
levels(dataset$Species)
#summarize the class distribution
percentage <- prop.table(table(dataset$Species)) * 100
cbind(freq=table(dataset$Species), percentage=percentage)
#summarize attribute distributions
summary(dataset)
