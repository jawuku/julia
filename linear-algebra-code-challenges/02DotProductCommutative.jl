#= udemy.com code challenge
from Prof. Mike X Cohen's course in Linear Algebra
https://www.udemy.com/course/linear-algebra-theory-and-implementation

# Is the dot product commutative?
# A*B' == B*A' ?
=#

using LinearAlgebra

# generate two 100-element random row vectors, transposed from default column layout.
a = randn(100)'
b = randn(100)'

# display vectors (in truncated form)
println("Vector a with 100 elements:")
display(a)
println("\n")

println("Vector b of the same size:")
display(b)
println("\n")

# calculate dot products
dp1 = dot(a, b) # a * b' also works
dp2 = dot(b, a) # b * a'

# display them
println("Dot product of a and b is $(dp1)")
println("Dot product of b and a is $(dp2)\n")

# are they equal?
if dp1 == dp2
  println("The dot product of the 100-element vector is commutative.\n")
else
  println("Dot product is not commutative.\n")
end

# generate 1 row, 2 column array with random integers from -10:10
c = rand(-10:10, 1, 2)

d = rand(-10:10, 1, 2)

println("Array c = $c")
println("Array d = $d\n")

dp3 = c * d'
dp4 = d * c'

println("Dot product of c and d is $(dp3)")
println("Dot product of d and c is $(dp4)")

if dp3 == dp4
  println("Thus, the dot product of the 2-element vector is commutative.")
else
  println("Dot product is not commutative")
end
