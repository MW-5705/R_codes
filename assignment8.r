#q1 for binomial

n = 10
p = 0.4

k = 20
N = 10


#find means of samples
means = c()
for (i in 1:k)
{
	s = rbinom(N, n, p) #collect sample
	means = c(means, mean(s)) # collect means
}
means
# empirical mean
e_mean = sum(means)/k
e_mean

#find empirical var
e_var = sum(((means - e_mean)^2)/ (k-1))


e_var

#find empirical var
e_var = sum(((means - e_mean)^2)/ (k-1))


e_var

th_mean = n*p
th_mean
th_var = (n*p*(1-p))/N
th_var

hist(means)
