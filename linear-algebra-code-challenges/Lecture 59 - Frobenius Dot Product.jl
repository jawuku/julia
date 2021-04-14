#= Frobenius Dot product
   ---------------------

1st method of calculation

a) element-wise multiplication between 2 matrices (which have the same size)

b) Sum all elements
=#
Frb1(A,B) = reduce(+, (A .* B))

#= 2nd method
   ----------
a) Vectorise both matrices
b) Compute vector dot product

Vectorising a Matrix
--------------------

Create a vector from a matrix

e.g. [a c e; b d f]

goes to [a b c d e f]' (column-wise concatenation)
=#
function Frb2(A,B)
  va = A[:]
  vb = B[:]
  
  return va .* vb
end

#=
3rd way of Frobenius (most efficient)
-------------------------------------

take the trace of A' * B
=#
Frb3(A,B) = tr(A' * B)

#=
Frobenius Norm
--------------

Frobenius dot product of matrix with itself
=#

Fnorm(A) = sqrt(Frb3(A,A))

# Implementation in code
# ----------------------

m = 9; n = 4;

A = randn(m,n);
B = randn(m,n);

Av = A[:] # reshapes into a (mxn) x 1 column vector

Bv = B[:] # same for B

Frb1(A,B) = reduce(+, (A .* B))

Frb2(A,B) = sum(Av .* Bv)

Frb3(A,B) = tr(A' * B)

Fnorm1(A) = sqrt(Frb3(A,A))

Fnorm2(A) = norm(A, 2) # 2nd way of doing Frobenius norm in Julia
