setwd("C:\\Users\\Praveen\\Desktop\\R Programming\\Coursera-Computing-for-Data-Analysis-R-master\\Week 2")


pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332) {
    if(grep("specdata", directory) == 1) {
        directory <- ("./specdata/")
    }
   
    mean_vector <- c()
    entire_file <- as.character( list.files(directory) )
    file_paths <- paste(directory, entire_file, sep="")
    for(i in id) {
        current_file <- read.csv(file_paths[i], header=T, sep=",")
        head(current_file)
        pollutant
        na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
        mean_vector <- c(mean_vector, na_removed)
    }
    result <- mean(mean_vector)
    return(round(result, 3)) 
}



