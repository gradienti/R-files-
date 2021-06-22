
# This function calculates Delta score mentioned by Dimitrov 2018, "The Delta-Scoring Method
# of Tests With Binary Items: A Note on True Score Estimation and Equating"


dscore <- function(df){
if (!is.matrix(df)) {
      stop("invalid data type! please use matrix")
    } else {

itemdiff <- colMeans(df)
totaldiff <- sum(itemdiff)

for (i in 1:nrow(df)) {
df[i,]<- itemdiff*df[i,]
}
dscore <- list()
dscore$scores = data.frame(dscore= rowSums(df)/totaldiff) 
rownames(dscore$scores) <- sprintf("person%05i",1:nrow(df))
dscore$meanDscore <- mean(rowSums(df)/totaldiff)
print(dscore)
}
}


