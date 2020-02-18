
SNAIN<- function(frame){
  SNA_merics<- data.frame(matrix(NA, nrow = nrow(in_strength(frame)), ncol = 4))
  colnames(SNA_merics) = c("Facility" ,"CD_in", "SD_in","R_absorb")
  SNA_merics$Facility <- in_strength(frame)$Facility
  SNA_merics$CD_in<- in_degree(frame)$degree_centrality
  SNA_merics$SD_in <- in_strength(frame)$strenght_centrality
  SNA_merics$R_absorb <- R_absorb(frame)$R_absorb
  return(SNA_merics)
}
