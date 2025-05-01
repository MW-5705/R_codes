data = read.csv(file.choose())
data = mtcars
dim(data)
head(data)
mean_val = mean(data$Wall.Thickness)
mean_val
hist(data$Wall.Thickness)


abline(v = mean_val,col = 'red')
