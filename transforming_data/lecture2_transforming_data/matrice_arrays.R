# Creation of matrix

# representation of the following matrix:
#  [
#     [60, 60, 65],
#     [55, 60, 60],
#     [50, 55, 60]
#  ]

# Matrix values number are numeroted as follow:
#  [
#     [1, 4, 7],
#     [2, 5, 8],
#     [3, 6, 9]
#  ]
# matrix[5] will give 5th element 5

# creation of the vector storing all the temperatures
temps <- c(60, 55, 50, 60, 60, 55, 65, 60, 60)

# matrix creation from the vector:
weather <- matrix(
    temps,
    nrow = 3,
    ncol = 3
)

View(weather)


# accessing the first row and the first column of the matrix:
weather[1, ]
weather[, 1]

# accessing the first row / first column
weather[1, 1]

# 3 dimensions matrix (temperature evolving overtime)
#  [
#     [
#         [60, 60, 65],
#         [55, 60, 60],
#         [50, 55, 60],
#     ],
#     [
#         [55, 60, 65],
#         [50, 55, 60],
#         [50, 50, 55],
#     ],
#     [
#         [55, 55, 55],
#         [50, 55, 55],
#         [50, 50, 55],
#     ]
#  ]

# creation of the vector containing all the values:
temps <- c(
    60, 55, 50, 60, 60, 55, 65, 60, 60,
    55, 50, 50, 60, 55, 50, 65, 60, 55,
    55, 50, 50, 55, 55, 50, 55, 55, 55
)

temps

# create the matrix using the array function
# dim=c(row, col, matrix) specify the dimension of the array
# and the value of each dimensions
array <- array(temps, dim = c(3, 3, 3))

array
