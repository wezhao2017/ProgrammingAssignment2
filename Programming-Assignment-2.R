  ## Create founction makeCacheMatrix, an argument x is a matrix
makeCacheMatrix <- function(x = matrix()) {
  ## Assign NULL value to cache
  cache <- NULL
  ## Create a list to store both the matrix and caching its inverse
  list(data = x,
  solve = cache)
}

  ## Create a function cacheSolve, an argument call b
  ## Assign cache is b which extract from inverse of matrix
cacheSolve <- function(b) {
  cache <- b$solve
  ## Go through the cache, get result from cache if inverse has been computed
  if (!is.null(cache)) {
    message("getting cached")
    return(cache)
  }
 
  ## Calculate the inverse matrix of the data 
  b$solve <<- solve(b$data)
  solve(b$data)
}

## Test set
a <- matrix(c(1,2,3,4),2,2)
b <- makeCacheMatrix(a)
cacheSolve(b)


