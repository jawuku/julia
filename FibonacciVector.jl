"""

    fibonacci(iterations, [num1, num2])

Builds a series of fibonacci numbers `n` iterations in a vector
    
    Args: iterations: length of fibonacci sequence to be calculated
        
    Optional: num1 and num2 default to 0 and 1 respectively, the starting numbers of the sequence.
    
# Examples
```julia-repl

# one argument -  starting values are 0 and 1
julia> fibonacci(10)
12-element Array{Int64,1}:
  0
  1
  1
  2
  3
  5
  8
 13
 21
 34
 55
 89

# two arguments - starting values are 4 and 1
julia> fibonacci(10, 4)
12-element Array{BigInt,1}:
   4
   1
   5
   6
  11
  17
  28
  45
  73
 118
 191
 309

# Three arguments - starting values are 3 and -1
julia> fibonacci(10, 3, -1)
12-element Array{Int64,1}:
  3
 -1
  2
  1
  3
  4
  7
 11
 18
 29
 47
 76
 ```
 """
function fibonacci(iterations, num1=0, num2=1)
    arr = (BigInt)[num1, num2]
    for i in 1:iterations
        push!(arr, +(arr[end], arr[end - 1]))
    end
    return arr
end
