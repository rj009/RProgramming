complete <- function(directory,id =1:332)    {
        
        files_list <- list.files(directory, full.names =TRUE)
        rown <- 0
        coln <- 1
        mat <- matrix()
       
        for( i in id) {
                count <- 0           
                file_name <- read.csv(files_list[i])
                for (j in 1: nrow( file_name)) {
                        if((is.na(file_name[j, 2])== FALSE) && (is.na(file_name[j,3])== FALSE))
                                count <- count + 1                        
                }
            rown <- rown + 1  
            mat[rown, coln] <- i 
            mat[rown, coln+1]<- count
            print(mat)
                
        }
        
}
