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

# initialise zero matrix to hold result
# matrix size is the outer dimensions of the two matrices
  result = zeros(rowA,colB)

# calculate A*B, populate zero matrix with results

  for i in 1:rowA
    for j in 1:colB
      result[i,j] = A[i,:]' * B[:,j]
    end
  end
  
# return the result
  return result
end
