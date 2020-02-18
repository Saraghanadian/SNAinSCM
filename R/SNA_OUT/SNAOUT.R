
SNAOUT <- function(frame){
  SNA_merics<- data.frame(matrix(NA, nrow = nrow(out_strength(frame)), ncol = 4))
  colnames(SNA_merics) = c("Facility" ,"CD_out", "SD_out","R_disperse")
  SNA_merics$Facility <- out_strength(frame)$Facility
  SNA_merics$CD_out<- out_degree(frame)$degree_centrality
  SNA_merics$SD_out <- out_strength(frame)$strenght_centrality
  SNA_merics$R_disperse <- ifelse(SNA_merics$CD_out !=1, R_disperse(frame)$R_disperse, NA)
  return(SNA_merics)
}