corr <- function(directory, threshold = 0){
        files <- list.files(path = directory)
       
        cr <- c()
        for (f in 1:length(files)) {
                value <- read.csv(paste(directory, "/", files[f], sep = ""))
                value <- value[complete.cases(value),]
                if (nrow(value) > threshold){
                        cr <- c(cr, cor(value$sulfate, value$nitrate))
                }
        }
        return(cr)
}
