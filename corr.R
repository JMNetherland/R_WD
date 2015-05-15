corr <- function(directory, threshold = 0) {
                
        comp <- complete(directory)
        
        comp_2 <- comp[comp$nobs > threshold,]
                
        files_list <- list.files(directory, full.names = TRUE)
        
        dat <- data.frame()
        cr2 <- c()
        
        for (i in comp_2$id) {
             dat <- na.omit(read.csv(files_list[i]))
             sulfate <- dat[["sulfate"]]
             nitrate <- dat[["nitrate"]]
             cr2 <- c(cr2, cor(sulfate,nitrate, use = "complete.obs"))
        }
        cr2
}