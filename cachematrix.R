## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
        inverseX <-NULL;
        set <- function(aMatrix){
                x <<-aMatrix;
                inverseX <<- NULL;
        }
        get <- function() x;
        setInverse <- function(inverseMatrix) inverseX <<- inverseMatrix
        getInverse <- function() inverseX
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseX <- x$getInverse();
        if(!is.null(inverseX)){
                message("getting cached data")
                return(inverseX)
        }
        matrix <- x$get()
        inverseX <-slove(matrix)
        x$setInverse(inverseX)
        inverseX
}
