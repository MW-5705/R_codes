Q1
n = 100
df = n-1
a = rt(n = 100, df = df)
a
hist(a)

Q2
n= 100
df = c(2,10,25)
length(df)

q = c()

for (i in df)
{
	a = rchisq(n, i)
	
	q = append(q, c(a), after = length(q))
}

hist(q[1:100])

hist(q[101:200])

hist(q[201:300])

q3

x = seq(-6, 6, length = 100)
df = c(1,14,10, 30)
length(df)

q = c()

for (i in df)
{
	a = dt(x, i)
	a	
	q = append(q, c(a), after = length(q))
}

q

q[1:100]
q[101:200]
q[201:300]
q[301:400]

plot(x, q[301:400], col = 'blue')
hist(q[1:100])

hist(q[101:200])

hist(q[201:300])


