weightmedian <- function(directory, day) # content of the function
{
        files_list <- list.files(directory, full.names = TRUE) # creates a list of files
        dat <- data.frame()
        for (i in 1:5) {
                # loops through the files, rbinding them together
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[, "Day"]== day), ] # subsets the rows tha match the 'day'  argument
        median(dat_subset[, "Weight"], na.rm = TRUE)   # identifies the median weight 
}



