pollutantmean <- function(directory, pollutant, id =1:332)    {
        
        files_list <- list.files(directory, full.names =TRUE)
        dat <- data.frame()
        for (i in id)  {
                dat<- rbind(dat, read.csv(files_list[i]))
                
        }
        
        data_subset <- dat[, pollutant]
        mean(data_subset, na.rm=TRUE)
    
}