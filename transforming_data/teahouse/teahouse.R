 # creating the decision array

matrix <- matrix(
c("Green", "Chamomile", "Black", "Rooibos"),
nrow = 2,
ncol = 2
)

# rename the columns and the name to match the problem
colnames(matrix) <-  c("Light", "Bold")
rownames(matrix) <- c("Yes", "No")


# Give name to the dimension
dimnames(matrix) <- list(Caffeine = rownames(matrix), flavor = colnames(matrix))

# display the matrix
matrix["Yes", "Light"]

# Prompt the user for desired Flavor then Caffeine
flavor <- readline("Flavor: ")
caffeine <-readline("Caffeine: ")

if (flavor %in% c("Light", "Bold") & caffeine %in% c("Yes", "No")) {
  print(paste("You might like", matrix[caffeine, flavor], "tea."))
} else {
  if (!flavor %in% c("Light", "Bold")) {
    print("Enter either 'Light or 'Bold for flavor")
  }
  if (!caffeine %in% c("Yes", "No")) {
    print("Enter either 'No' or 'Yes' for caffeine")
  }
}
