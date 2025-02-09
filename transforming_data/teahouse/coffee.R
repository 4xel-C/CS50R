# creating the decision array

matrix <- matrix(
  c("Americano", "Espresso", "Cappuccino", "Cortado"),
  nrow = 2,
  ncol = 2
)

# rename the columns and the name to match the problem
rownames(matrix) <- c("Long", "Short")
colnames(matrix) <-  c("No", "Yes")


# Give name to the dimension
dimnames(matrix) <- list(Size = rownames(matrix), Milk = colnames(matrix))

# display the matrix
matrix

# Prompt the user for desired Milk then Size
Milk <- readline("Milk: ")
Size <-readline("Size: ")

if (Milk %in% c("Yes", "No") & Size %in% c("Short", "Long")) {
  print(paste("Let me propose you", matrix[Size, Milk]))
} else {
  if (!Milk %in% c("Yes", "No")) {
    print("Enter either 'Yes' or 'No' for Milk")
  }
  if (!Size %in% c("Long", "Short")) {
    print("Enter either 'Long' or 'Short' for Size")
  }
}
