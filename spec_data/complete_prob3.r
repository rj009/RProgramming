complete_prob3 <- function(directory,id =1:332, count= 0)    {
        
        files_list <- list.files(directory, full.names =TRUE)
        
        no_compl_results  <- integer()
        for( i in id) {
                count <- 0
                file_name <- read.csv(files_list[i])
                for (j in 1: nrow( file_name)) {
                        if((is.na(file_name[j, 2])== FALSE) && (is.na(file_name[j,3])== FALSE))
                                count <- count + 1
                        
                        
                }
                print(count)
                no_compl_results[i] <- count 
                
                
        }
        
        no_compl_results
}


