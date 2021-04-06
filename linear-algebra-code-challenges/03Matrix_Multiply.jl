## Multiply 2 matrices
# checks for invalid dimensions
# uses 1st method (element dot product method)
# WIP - get BoundsError on some combinations

function matmul(A,B)

# define row and column sizes
# for each matrix
  rowA = size(A)[1]
  colA = size(A)[2]
  
  rowB = size(B)[1]
  colB = size(B)[2]

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

  for i in 1:rowA
    for j in 1:colB
      result[i,j] = dot(A[i,:], B[:,j])
    end
  end
#= alternatively, do the layering addition of outer product
  for i in 1:colA
    result += A[:, i] * B[i, :]'
  end
    
=#
  
# return the result
  return result
end

