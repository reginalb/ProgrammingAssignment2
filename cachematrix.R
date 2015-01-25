## Functions that accomplishes the Assignment 2 of the Coursera - R Programming Course

## Function that prepares a matrix to be cacheable

makeCacheMatrix <- function(x = matrix()) {
                i <- NULL
                set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Function that returns the matrix inverse cached, if available, otherwise calculates and caches for further use 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
