## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ##function for make a matrix
	 inv <- NULL## assign inv as NULL
	 set <- function(y){
			x <<- y
			inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {##function for make a solve
        ## Return a matrix that is the inverse of 'x'
		 inv <- x$getInverse()## assign inv as get function
		 if(!is.null(inv)){
			message("getting cached data")##message for viewers
			return(inv)
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
