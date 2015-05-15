complete <- function(directory, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        
        dat <- data.frame()
        
        for(i in id) {
                dat <-rbind(dat, sum(complete.cases(read.csv(files_list[i]))))
        }
        
        dat_2 <- data.frame()
        dat_2 <- data.frame(id, dat)
        col_headings <- c('id','nobs') 
        names(dat_2) <- col_headings
        dat_2
}