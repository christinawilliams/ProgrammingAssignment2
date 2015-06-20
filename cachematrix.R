## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#x by default is matrix object 
makeCacheMatrix <- function(x = matrix()) { 
	m <- NULL
	print(m)
        set <- function(y) {
                x <<- y
                m <<- NULL
		print(m)
        }
	print(m)
        get <- function() x
	print(m)
        setinv <- function(inv) m <<- inv
        getinv <- function() m
	print("makecachematrix value of m = ")
	print(m)
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	m <- x$getinv()
	print("cachesolve value of m = ")
	print(m)
	if(!is.null(m)) {
         	message("getting cached data")
                return(m)
	}
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
	print(m)
        m


}
