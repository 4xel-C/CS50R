# get the documentation
?file

# get the cwd
getwd()

# get the list of the files in the cwd (== DIR)
list.files()
dir()

# create a directory
dir.create("hello")

# change wd to the folder hello, present in then cwd
setwd("hello")

# file creation and edition
dir.create("hello.R")
file.rename("hello.R", "Newname.R")
file.remove("filename")

# remove a folder with all the folders and files inside
unlink("folderName", recursive = TRUE)
