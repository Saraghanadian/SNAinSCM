
in_degree <- function(frame){
  colnames(frame) <- c("From", "to", "value")
  colnames(frame) <- toupper(colnames(frame))
  my_data_subset <- subset(frame, frame[,3] != 0, select = c(1:3))
  my_data_subset<- my_data_subset[with(my_data_subset, order(my_data_subset$FROM,my_data_subset$VALUE)),]
  CD_in<- as.data.frame(table(my_data_subset[,2]))
  colnames(CD_in) <- c("Facility","degree_centrality")
  
  return(CD_in)
}
