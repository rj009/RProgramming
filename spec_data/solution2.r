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
            a <- c(a, i, count) 
        
        }
     #print(length(a))
     mat(a,id_count)  
}

mat <- function(a,x)  {
          matr <- matrix(data=a, ,2,byrow=TRUE)
          dimnames(matr) <- list(1:x, c("id", "nobs"))
           matr <- data.frame(matr)
          #is.recursive(matr)
          print(matr)
          #count <- 1
       #for (i in 1:(length(a))/2 ) {
        #       matr[i, 1] <- a[count]
         #      matr[i, 2] <- a[count+1]
          #     count <- count + 1
           #     }
      
       
       
        
}

