R_disperse <- function(frame){
  colnames(frame) <- c("From", "to", "value")
  colnames(frame) <- toupper(colnames(frame))
  my_data_subset <- subset(frame, frame[,3] != 0, select = c(1:3))
  my_data_subset<- my_data_subset[
    with(my_data_subset, order(my_data_subset$FROM,my_data_subset$VALUE)),
    ]
  CD_out <- as.data.frame(table(my_data_subset[,1]))
  colnames(CD_out) <- c("Facility","degree_centrality")
  SD_out<-aggregate(x= my_data_subset$VALUE,by=list(my_data_subset$FROM), FUN="sum")
  colnames(SD_out) <- c("Facility","strenght_centrality")
  R <-aggregate(x= my_data_subset$VALUE,by=list(my_data_subset$FROM), FUN="cumsum")
  colnames(R) <- c("Facility","cumulativeweight")

  solution <- list()
  Rfac <-matrix()
  for (i in 1:length(R$Facility)){
    degreevec <- as.vector(CD_out$degree_centrality)
    stvect <- as.vector(SD_out$strenght_centrality)
    maxarea <- (degreevec *stvect)/2
    solution[[i]] <- as.numeric((sum(R$cumulativeweight[[i]])*2 -max(R$cumulativeweight[[i]]))/2)
    Rfac[i] <- solution[[i]]/maxarea[i]
  }
  Rfinal <- ifelse(degreevec != 1, Rfac, NA)
  Rfactor <- as.data.frame(cbind(R$Facility,Rfinal))
  colnames(Rfactor) <- c("Facility","R_disperse")

  return(Rfactor)

}


