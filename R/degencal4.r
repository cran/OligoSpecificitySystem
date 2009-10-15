"degencal4"<-function(){
  if (val!=3 & nbsequence=="optional")tkmessageBox(message=paste("Degenerate oligonucleotide matchs ",c(length(levels(factor(txt4))))-1," unique sequences"))
  if (val==3 & nbsequence=="optional")tkmessageBox(message=paste("Degenerate oligonucleotide matchs ",c(length(levels(factor(txt4))))," unique sequences"))
  if (val!=3 & nbsequence!="optional")tkmessageBox(message=paste("Degenerate oligonucleotide matchs ",c(round((c(c(c(length(levels(factor(txt4))))-1)/as.numeric(nbsequence))*100)))," % of unique sequences"))
  if (val==3 & nbsequence!="optional")tkmessageBox(message=paste("Degenerate oligonucleotide matchs ",c(round((c(c(length(levels(factor(txt4))))/as.numeric(nbsequence))*100)))," % of unique sequences"))
}