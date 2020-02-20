library(datasets)
data(iris)
data(mtcars)


## Question 1
## There will be an object called 'iris' in your workspace.
## In this dataset, what is the mean of 'Sepal.Length' for the species virginica?
## Please round your answer to the nearest whole number.
sapply(split(iris$Sepal.Length, iris$Species), mean)

tapply(iris$Sepal.Length, iris$Species, mean)


## Question 3
## How can one calculate the average miles per gallon (mpg)
## by number of cylinders in the car (cyl)? Select all that apply.
sapply(split(mtcars$mpg, mtcars$cyl), mean)

tapply(mtcars$mpg, mtcars$cyl, mean)

with(mtcars, tapply(mpg, cyl, mean))


# Question 4
## "hat is the absolute difference between the average horsepower
## of 4-cylinder cars and the average horsepower of 8-cylinder cars?
sapply(split(mtcars$hp, mtcars$cyl), mean)

print(209.21429-82.63636)







