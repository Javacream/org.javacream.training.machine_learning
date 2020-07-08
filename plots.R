#split input and output
x <- dataset[,1:4]
y <- dataset[,5]
#boxplot for each attribute on one image
par(mfrow=c(1,4))
for(i in 1:4) {
  boxplot(x[,i], main=names(iris)[i])
}
#barplot for class breakdown
plot(y)
#scatterplot matrix
featurePlot(x=x, y=y, plot="ellipse")
#box and whisker plots for each attribute
featurePlot(x=x, y=y, plot="box")
#density plots for each attribute by class value
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)
