install.packages('pracma')

library('pracma')

#question 1
#first
f = function (x, y){
	return (2*(2*x + 3*y)/5)
}

integral2(f, 0, 1, 0, 1)$Q
#second
g = function(y){
	return (f(1, y))
}

integral(g, 0, 1)
#third
h = function(x){
	return (f(x, 0))
}

integral(h, 0, 1)

#fourth

g = function(x, y){

	return (x * y)
}

final = function(x, y){
	return (g(x, y)*f(x,y))
}

integral2(final, 0,1, 0, 1)

#question 2

f = function (x, y){
	return ((x+y)/30)
}

a = c(1,2,3,4)
matrix(a, nrow = 2, ncol = 2, byrow = TRUE)
#first
val = c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2))
ans = matrix(val, nrow = 4, ncol = 3, byrow = TRUE)
ans
#second
sum(ans)

#third
gx = apply(ans, 1, sum)
gx
hy = apply(ans, 2, sum)
hy

f(0,1)/hy[2]

x = seq(0,3)
y = seq(0,2)
x
y

exp_x = sum(x*gx)
exp_y = sum(y*hy)

exp_x
exp_y

x_2 = x^2
x_2
exp_x_2 = sum(x_2, gx)
exp_x_2

y_2 = y^2;
y_2
exp_y_2 = sum(y_2, hy)
exp_y_2 

var_x = exp_x_2 - exp_x^2
var_x

var_y = exp_y_2 - exp_y^2
var_y

f1 = function(x, y){
	return (x*y*f(x,y))
}

val2 = c(f1(0, 0:2), f1(1, 0:2), f1(2, 0:2), f1(3, 0:2))
val2

ans2 = matrix(val2, nrow = 4, ncol = 3, byrow = TRUE)
ans2

e_x_y = sum(ans2)
e_x_y

covar = e_x_y - exp_x*exp_y
covar

