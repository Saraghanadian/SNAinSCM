


plot_SNA_OUT<- function(df, type){
  df <- my_data

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

  m <- (max((df$SD_out)/10000)+20)
  n <- max(df$CD_out)+10
  barplot(height= (df$CD_out),names.arg=df$Facility
          ,xlab=type,ylab="CD-out",col="orange", main = "Out-Degree centrality",
          ylim = c(0,n))

  barplot(height= (df$SD_out)/10000, names.arg=df$Facility
          ,xlab=type,ylab="SD-out(×10e4)",col="light green", main = " Out-degree Strength centrality ",
          ylim = c(0,m))
  barplot(height=(df$R_disperse),names.arg=df$Facility
          ,xlab=type, ylab="R_disperse",col="light blue", main = " R disperse ",
          ylim = c(0,1))

}
