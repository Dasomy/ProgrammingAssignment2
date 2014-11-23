## Functions that create matrix and use cache to solve for inverse matrix

## Makes a matrix to cache 

makeCacheMatrix <- function(m = matrix()) {
    i <- NULL
    
    ## Setter
    set <- function(matrix) {
        m <<- matrix
        i <<- NULL
    }
    
    ## Getter
    get <- function() {
        m
    }
    
    ## Setter for inverse matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Getter for inverse matrix
    getInverse <- function() {
        i
    }
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Get the inverse of the matrix using cache, if possible

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    matrix <- x$get()
    m <- solve(matrix)
    x$setInverse(m)
    m
}
