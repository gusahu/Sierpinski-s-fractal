
##########################################
########## Sierpinski Carpet #############
##########################################

# First, create a matrix with 3 rows and 3 columns
IterateCarpet <- function(A) {
  B <- cbind(A,A,A)
  C <- cbind(A,A*0,A) # blank cell
  D <- rbind(B,C,B)
  return(D)
}

# Second, create a matrix where the value for each cell is equal to 1
S <- matrix(1,1,1)
S <- IterateCarpet(S); # applicate the IterateCarpet function
image(S, col = c(0, 12), axes=FALSE, asp = 1) # plot

# Replicate the same pattern in each cell
S <- matrix(1,1,1)
for(i in 1:2)
  S <- IterateCarpet(S);
image(S, col = c(0, 12), axes=FALSE, asp = 1)

S <- matrix(1,1,1)
for(i in 1:3)
  S <- IterateCarpet(S);
image(S, col = c(0, 12), axes=FALSE, asp = 1)

S <- matrix(1,1,1)
for(i in 1:4)
  S <- IterateCarpet(S);
image(S, col = c(0, 12), axes=FALSE, asp = 1)

S <- matrix(1,1,1)
for(i in 1:5)
  S <- IterateCarpet(S);
image(S, col = c(0, 12), axes=FALSE, asp = 1)

S <- matrix(1,1,1)
for(i in 1:6)
  S <- IterateCarpet(S);
image(S, col = c(0, 12), axes=FALSE, asp = 1)

# We can generate a matrix with a different dimension
IterateModified <- function(A) {
  B <- cbind(A*0,A,A)
  C <- cbind(A,A*0,A)
  D <- cbind(A,A,A*0)
  E <- rbind(B,C,D)
  return(E)
}

t <- matrix(1,1,1);
for(i in 1:1) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:2) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)


t <- matrix(1,1,1);
for(i in 1:3) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:5) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:6) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)


IterateModified <- function(A) {
  B <- cbind(A,A*0,A)
  C <- cbind(A*0,A,A*0)
  D <- cbind(A,A*0,A)
  E <- rbind(B,C,D)
  return(E)
}

t <- matrix(1,1,1);
for(i in 1:1) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:2) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:3) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)

t <- matrix(1,1,1);
for(i in 1:5) 
  t <- IterateModified(t);
image(t, col = c(0, 12), axes=FALSE, asp = 1)



##########################################
#### Flametree to make pretty pictures ###
##########################################


#devtools::install_github("djnavarro/flametree")
library(flametree)
dat <- flametree_grow(seed = 4, time = 13) # data structure
img <- flametree_plot(tree = dat)          # ggplot object
plot(img)

flametree_plot(
  dat,
  background = "gray70",
  palette = "viridis::cividis"
)


flametree_plot(
  dat,
  background = "gray92",
  palette = "rainbow::viridis"
)

