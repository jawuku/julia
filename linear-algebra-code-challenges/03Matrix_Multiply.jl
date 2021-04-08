## Multiply 2 matrices
# checks for invalid dimensions
# uses 1st method (element dot product method)
# WIP - get BoundsError on some combinations

function matmul(A,B)

# define row and column sizes
# for each matrix
  julia

# check that dimensions are valid for multiplication, otherwise throw error
  if colA != rowB
    throw(DimensionMismatch("Matrices of dimensions $(colA) and $(rowB) cannot be multiplied together"))
  end

# convert any 1D column vectors into 1*x 2D matrices
  if   colA == 1
    A = reshape(A, length(A), 1)
  end
  
  if colB == 1
    B = reshape(B, length(B), 1)
  end
  
# initialise zero matrix to hold result
# matrix size is the outer dimensions of the two matrices
  result = zeros(rowA,colB)

# calculate A*B, populate zero matrix with results
  for outerproduct in 1:rowB
      result += A[:, i] * B[i, :]'
  end
    
#= 2nd alternative:
for i in 1:colA
  BLAS.ger_64!(1.0, A[:, i], B[i, :], result)
end
  =#
  
# return the result
  return result
end

