## Multiply 2 matrices
# checks for invalid dimensions
# uses 1st method (element dot product method)

function outer(A,B)
  return A * B'
end

function matmul(A,B)

# convert any 1D column vectors into 1*x 2D matrices
  if ndims(A) = 1
    A = A[:,:]
  end
  
  if ndims(B) = 1
    B = B[:,:]
  end
  
# define row and column sizes
# for each matrix
  rowA, colA = size(A)
  rowB, colB = size(B)
  
# check that dimensions are valid for multiplication, otherwise throw error
  if colA != rowB
    throw(DimensionMismatch("Matrices of dimensions $(size(A)) and $(size(B)) cannot be multiplied together"))
  end

# initialise zero matrix to hold result
# matrix size is the outer dimensions of the two matrices
  result = zeros(rowA, colB)

# calculate A*B, populate zero matrix with results
# uses the outer products of each row with its corresponding column
# and adds the results together
  for i in 1:rowB # could also use colA, as colA = rowB
      result += outer(A[:, i], B[i, :])
  end
  
# return the result
  return result
end
