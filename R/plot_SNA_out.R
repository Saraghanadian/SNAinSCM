


plot_SNA_OUT<- function(df, type){
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

  m <- ceiling(max((df[,3])/10000)+20)
  n <- max(df[,2])+10
  barplot(height= df[,2],names.arg=df$Facility
          ,xlab=type,ylab="CD-out",col="orange", main = "Out-Degree centrality",
          ylim = c(0,n))

  barplot(height= df[,3]/10000, names.arg=df$Facility
          ,xlab=type,ylab="SD-out(×10e4)",col="light green", main = " Out-degree Strength centrality ",
          ylim = c(0,m))
  barplot(height=df[,4],names.arg=df$Facility
          ,xlab=type, ylab="R_disperse",col="light blue", main = " R disperse ",
          ylim = c(0,1))


}
