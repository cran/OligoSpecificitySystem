"pcrcal4"<-function(){
if (val==3 & nbsequence=="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",(length(which(summary(factor(txt4))==length(dimtemp))))," common sequences"))
if (val==2 & nbsequence=="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",(length(which(summary(factor(txt4))==length(c(dimtemp))-1)))," common sequences"))
if (val==1 & nbsequence=="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",(length(which(summary(factor(txt4))==length(c(dimtemp))-2)))," common sequences"))
if (val==0 & nbsequence=="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",(length(which(summary(factor(txt4))==length(c(dimtemp))-3))-1)," common sequences"))

if (val==3 & nbsequence!="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",c(round(((length(which(summary(factor(txt4))==length(dimtemp))))/as.numeric(nbsequence))*100))," % of common sequences"))
if (val==2 & nbsequence!="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",c(round(((length(which(summary(factor(txt4))==length(c(dimtemp))-1)))/as.numeric(nbsequence))*100))," % of common sequences"))
if (val==1 & nbsequence!="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",c(round(((length(which(summary(factor(txt4))==length(c(dimtemp))-2)))/as.numeric(nbsequence))*100))," % of common sequences"))
if (val==0 & nbsequence!="optional") tkmessageBox(message=paste("Oligonucleotides set matchs ",c(round(((length(which(summary(factor(txt4))==length(c(dimtemp))-3))-1)/as.numeric(nbsequence))*100))," % of common sequences"))
}