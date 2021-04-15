#=
Matrix Norms
------------

Many different matrix norms with different numerical values for the same matrix

3 main types of Matrix Norms
----------------------------

1) Frobenius norm aka Euclidian Norm

Square all individual matrix elements,
add them together
take square root

=#
A = [1 2 3;4 5 6;7 8 9]
# naive implementation
frobnorm1(A) = sqrt(reduce(+, (map(x -> x^2, A))))

## (defn frobnorm [A]
##   (Math/sqrt (reduce + (map #(* % %) A))))

# more efficient ways using LinearAlgebra package

using LinearAlgebra

frobnorm2(A) = sqrt(tr(A' * A))

frobnorm3(A) = norm(A) # default in Julia
#=

2) Induced 2-norm - ascertains how much matrix A scales vector x

the magnitude of vector Ax (A matrix multiplied by vector x results in a vector),
divided by the magnitude of vector x

(where x is not a zero vector)

||Ax|| / ||x||
=#

twonorm(A,x) = norm(A * x) / norm(x)

normInd2(A) = sqrt(eigmax(A' * A)) 

# if A is a pure rotation matrix, then ||Ax|| would be equal to ||x||
# so the induced two-norm would be 1

#=
3) Schatten P-norm
Sum of the singluar values of a matrix

Singluar values is a set of scalar values associated with a matrix.

Singular Value Decomposition determines these values

=#

p = 1 # Schatten 1-norm
s = svdvals(A) # extracts singular values into a vector
normSchat = sum(s.^p)^(1/p)

p = 2 # same as Frobenius norm
normSchat = sum(s.^p)^(1/p)

#= Orthogonal Matrix
   -----------------

All the columns have a magnitude of 1, and each column is par-wise orthogonal to every other column

This can be a purely rotational matrix, so the induced 2-norm is 1

Can be extracted as the Q matrix of the pair from QR Decomposition
=#

Q, R = qr(randn(5,5))

# induced 2-norm = 1
ind2norm = sqrt(eigmax(Q' * Q))
