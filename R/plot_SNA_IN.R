
plot_SNA_IN<- function(df, type){
  df <- as.data.frame(df)
  if ( type ==1){
    type= "Manufacturer"}
  else if (type == 2){
    type = "Distribution centers" 
  }
  else if ( type == 3){
    type= "Retailers"}
  
  else  if (type == 4){
    type = "Remanufacturer" 
  }
  else  {
    print("type is not correct")
  }
  layout(mat = matrix(c(2, 1, 0, 3), 
                      nrow = 2, 
                      ncol = 2),
         heights = c(1, 2),    # Heights of the two rows
         widths = c(2, 1)) 
  
  par(mfrow=c(3,3))
  
  m <- (max((df$SD_in)/10000)+20)
  n <- max(df$CD_in)+10
  barplot(height=df$CD_in,names.arg=df$Facility
          ,xlab=type,ylab="CD-in",col="orange", main = "in-Degree centrality",
          ylim = c(0,n))
  
  barplot(height=(df$SD_in)/10000,names.arg=df$Facility
          ,xlab=type,ylab="SD-in(×10e4)",col="light green", main = " in-degree Strength centrality ",
          ylim = c(0,m))
  barplot(height=df$R_absorb,names.arg=df$Facility
          ,xlab=type, ylab="R_absorb",col="light blue", main = " R absorb ",
          ylim = c(0,1))
  
}

