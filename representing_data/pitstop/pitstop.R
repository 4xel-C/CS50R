# prompt user for the csv
csvList <-list.files(pattern = "\\.csv")

print("Choose the csv file you want to analyse: ")
print(csvList)

csv <- readline("CSV: ")

df = read.csv(csv)

# Total number of pitstop (number of lines in the df)
totalPitStop <- nrow(df)
shortest <- min(df$time)
longest <- max(df$time)
totalTime <- sum(df$time)

# Print the values
print("Total Pit Stop:")
print(totalPitStop)
print("TotalShortest:")
print(shortest)
print("Longest:")
print(longest)
print("Total time:")
print(totalTime)