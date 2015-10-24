## Maybe i don`t understand this assignment task but
## functions almost the same to assignment example functions
## First function crates special objcect of cachedMatrix
## Second function calculate inverse matrix stored in 'cachedMatrix' object
## 

## Create a special object contain matrix and setters/getters for it
## and cached value of inverted 'x'

makeCacheMatrix <- function(x = matrix()) {
    invert<-NULL
    set <- function(y) {
        x <<- y
        invert <<- NULL
    }
    get <- function() x
    set_invert <- function(invert_matrix) invert <<- invert_matrix
    get_invert <- function() invert
    list(set = set, get = get,
         set_invert = set_invert,
         get_invert = get_invert)
}

## Write a short comment describing this function
## Function return inverse matrix of matrix inside special object 
## created by makeCachedMatrix function. If inverse were already calculated
## cached value will be return

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invert <- x$get_invert()
    if(!is.null(invert)) {
        message("getting cached data")
        return(invert)
    }
    data <- x$get()
    invert <- solve(data, ...)
    x$set_invert(invert)
    invert
}
