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
frobnorm1(A) = sqrt(reduce(+, (map(x -> x^2, A))))

## (defn frobnorm [A]
##   (Math/sqrt (reduce + (map #(* % %) A))))

# more efficient using LinearAlgebra package

using LinearAlgebra

frobnorm2(A) = sqrt(tr(A' * A))

frobnorm3(A) = norm(A)
#=

2) Induced 2-norm - ascertains how much matrix A scales vector x

the magnitude of vector Ax (A matrix multiplied by vector x results in a vector),
divided by the magnitude of vector x

(where x is not a zero vector)

||Ax|| / ||x||
=#

twonorm(A,x) = norm(A * x) / norm(x)

# if A is a pure rotation matrix, then ||Ax|| would be equal to ||x||
# so the induced two-norm would be 1

#=
3) Schatten P-norm
Sum of the singluar values of a matrix

Singluar values is a set of scalar values associated with a matrix.

Singular Value Decomposition determines these values

=#

# Examples

A = [1 2 3;
     4 5 6;
     7 8 9]

