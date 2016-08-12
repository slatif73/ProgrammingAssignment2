## Programming Assignment 2 - Matrix
## makeCacheMatrix - makes a matrix object from a matrix
## cacheSolve - retuns inverse of matrix

## takes a matrix x and creates a matrix object

makeCacheMatrix <- function(x = matrix()) {
        invMat <- NULL
        set <- function(y) {
                x <<- y
                invMat <<- NULL
        }c
        get <- function () x
        setInverse <- function (inverseMatrix = matrix()) {
                invMat <<- inverseMatrix
        }
        getInverse <- function() invMat
        list(set=set, get=get, 
             setInverse=setInverse, 
             getInverse=getInverse)
}


## returns cached inverse of matrix
## if not cached, calcuates it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMat <- x$getInverse()
        if (!is.null(invMat)) {
                message("getting cached matrix")
                return (invMat)
        }
        data <- x$get()
        invMat <- solve(data)
        x$setInverse(invMat)
        invMat
}
