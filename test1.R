
build_ziggurat <- function(n) {
  if (n==1) {
    m <- matrix(n,n,n)
  } else {
    m <- matrix(n,n*2-1,n*2-1)
    for (i in n:1) {
      m[c(i,nrow(m)-i+1), ] <- i
      m[, c(i,ncol(m)-i+1)] <- i
    }
  }
  return (m)
}

w <- build_ziggurat(4); w
