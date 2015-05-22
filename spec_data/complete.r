complete <- function(directory,id =1:332, count= 0)    {
        
        files_list <- list.files(directory, full.names =TRUE)
        
        a <- integer()
        id_count <- integer()
        id_count <- 0
        for( i in id) {
                count <- 0
                id_count <- id_count + 1
                file_name <- read.csv(files_list[i])
                for (j in 1: nrow( file_name)) {
                        if((is.na(file_name[j, 2])== FALSE) && (is.na(file_name[j,3])== FALSE))
                                count <- count + 1
                        
                        
                }
               # print(i)
                #print(count)
            a <- c(a, count) 
       
        }
        a
}



