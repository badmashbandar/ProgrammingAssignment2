## the two functions together first store a matrix and then calculate the inverse of that matrix and store that too.During further run of the functions it check if the same matrix inverse is calculated and stored,if so it returns that matrix inverse.Or else it will calculate the inverse of the matrix and return the values.

# Put comments here that give an overall description of what your functions do 
## Write a short comment describing this function 


makeCacheMatrix <- function(x = matrix()) { 
        
        m<- NULL
        set  <- function (Y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setmatrixinverse <- function(matrixinverse) m <<- solve(x)
        getmatrixinverse <- function() m
        
        
        list(set = set, get = get,
             setmatrixinverse = setmatrixinverse,
             getmatrixinverse = getmatrixinverse)
        
} 


## Write a short comment describing this function 
cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x' 
        
        m <- x$getmatrixinverse(m)
        if(!is.null(m)) {
                
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrixinverse(m)
        m
}


