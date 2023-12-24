# calculate realpi

# define bit precision
setprecision(1024)

# define bigInt numbers
一 = big(1)
二 = big(2)
四 = big(4)
五 = big(5)

# calculate phi and real pi
ϕ = (一 + sqrt(五)) / 二

真正pi = 四 / sqrt(ϕ)

println("Real value of pi = ", 真正pi)

