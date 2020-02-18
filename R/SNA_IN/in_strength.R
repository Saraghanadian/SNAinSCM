in_strength <- function(frame){
  colnames(frame) <- c("From", "to", "value")
  colnames(frame) <- toupper(colnames(frame))
  my_data_subset <- subset(frame, frame[,3] != 0, select = c(1:3))
  my_data_subset<- my_data_subset[
    with(my_data_subset, order(my_data_subset$TO,my_data_subset$VALUE)),
    ]
  
  SD_in<-aggregate(x= my_data_subset$VALUE,by=list(my_data_subset$TO), FUN="sum")
  colnames(SD_in) <- c("Facility","strenght_centrality")
  
  return(SD_in)
}
