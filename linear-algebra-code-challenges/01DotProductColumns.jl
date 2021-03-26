#= udemy.com code challenge
from Prof. Mike X Cohen's course in Linear Algebra
https://www.udemy.com/course/linear-algebra-theory-and-implementation

Objective:
create 2 4x6 matrices with random numbers
calculate dot products with corresponding columns
=#

using LinearAlgebra

# define 4x6 matrices - numbers range from -10 to 10
a = rand(-10:10, 4,6)
b = rand(-10:10, 4,6)

# display matrices
println("Matrix A:")
display(a)
println("\n") # 2 newlines
println("Matrix B:")
display(b)
println("\n")

# size function generates a tuple of dimensions
# in this case (4,6)
# thus rows = 1st element of tuple (4)
# cols = 2nd element of tuple (6)
rows = size(a)[1] # unused in this example

cols = size(a)[2]

# Main for loop
for i in 1:cols
  dp = dot(a[:, i], b[:, i])
  println("Dot product of matrix column $i is $(dp)")
end
