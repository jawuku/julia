# Dot product commutative?
# A.B == B.A ?
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
dp1 = dot(a, b)
dp2 = dot(b, a)

# display them
println("Dot product of a and b is $(dp1)")
println("Dot product of b and a is $(dp2)")

# are they equal?
if dp1 == dp2
  println("Therefore, dot product of the 100-element vector is commutative.")
else
  println("Dot product is not commutative")
end

# generate 1 row, 2 column array with random integers from -10:10
c = rand(-10:10, 1, 2)

d = rand(-10:10, 1, 2)

println("Array c = $c")
println("Array d = $d")

dp3 = dot(c, d)
dp4 = dot(d, c)

println("Dot product of c and d is $(dp3)")
println("Dot product of d and c is $(dp4)")

if dp3 == dp4
  println("Thus, dot product of the 2-element vector is commutative.")
else
  println("Dot product is not commutative")
end
