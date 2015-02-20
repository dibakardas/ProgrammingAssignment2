##Please execute the code in following sequence

## > source("cacheMatrix.R")
## > m<-matrix(5:8,2,2)
## > z<-makeCacheMatrix(m)
## [1] "setMatrix called..."
## > k<-cacheSolve(z)
## [1] "getInverse called..."
## [1] "calculating inverse..."
## [1] "getMatrix called..."
## [1] "setInverse called..."
## > k<-cacheSolve(z)
## [1] "getInverse called..."
## [1] "getting from cache..."
## > k<-cacheSolve(z)
## [1] "getInverse called..."
## [1] "getting from cache..."
## > 