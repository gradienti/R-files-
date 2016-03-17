readSimuMCAT_SS <- function(file_and_path){

  #Line lengths 77, 20, 20
   OutputMatrix1 <- read.fwf(file_and_path,
      width=list(c(1,-3,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-1,4,-1,4,-1,4)), skip=1, 
      col.names=c("Item_N", "True_Ab1", "True_Ab2", "True_Ab3", "True_All", "Est_Ab1", "Est_Ab2", "Est_Ab3", "Est_All", "SE_1", "SE_2", "SE_3", "SE_All", "Time", "Rel", "Angle1", "Angle2", "Angle3"), as.is=T, n=9)
	  
   OutputMatrix2 <- read.fwf(file_and_path,
      width=list(c(2,-3,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-1,4,-1,4,-1,4)), skip=10, 
      col.names=c("Item_N", "True_Ab1", "True_Ab2", "True_Ab3", "True_All", "Est_Ab1", "Est_Ab2", "Est_Ab3", "Est_All", "SE_1", "SE_2", "SE_3", "SE_All", "Time", "Rel", "Angle1", "Angle2", "Angle3"), as.is=T, n=90)
	  


   OutputMatrix3 <- read.fwf(file_and_path,
      width=list(c(3,-3,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-1,4,-1,4,-1,4)), skip=100, 
      col.names=c("Item_N", "True_Ab1", "True_Ab2", "True_Ab3", "True_All", "Est_Ab1", "Est_Ab2", "Est_Ab3", "Est_All", "SE_1", "SE_2", "SE_3", "SE_All", "Time", "Rel", "Angle1", "Angle2", "Angle3"), as.is=T, n=900)
	  

   OutputMatrix4 <- read.fwf(file_and_path,
      width=list(c(4,-3,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-2,7,-1,4,-1,4,-1,4)), skip=1000, 
      col.names=c("Item_N", "True_Ab1", "True_Ab2", "True_Ab3", "True_All", "Est_Ab1", "Est_Ab2", "Est_Ab3", "Est_All", "SE_1", "SE_2", "SE_3", "SE_All", "Time", "Rel", "Angle1", "Angle2", "Angle3"), as.is=T, n=1)
	  
Matrix <- data.frame(rbind(OutputMatrix1,OutputMatrix2,OutputMatrix3,OutputMatrix4), stringsAsFactors = FALSE)


}

SS <- readSimuMCAT_SS("S1000-4D-C1-1-10.ss")
str(SS)

