"dbb4"<-function()
  {
    OnOk()
    locate.dir<-if (interactive()) choose.dir(getwd(), "Select folder containing oligonucleotide databases files")
    myfiles<-paste(locate.dir,list.files(locate.dir),sep="\\")
    dimtemp<-vector(length=c(length(myfiles)+3))
    dimtemp[]<-1
    for (i in 1:length(myfiles)) { 
      txttemp<-0
      txttemp<-scan(file=myfiles[i],what="character",fill=TRUE)
      dimtemp[i]<-length(c(which(txttemp==separator)+1))}
      dimtemp<<-dimtemp
    if(length(txt1)!=1) dimtemp[c(length(myfiles)+1)]<-length(txt1)
    if(length(txt2)!=1) dimtemp[c(length(myfiles)+2)]<-length(txt2)
    if(length(txt3)!=1) dimtemp[c(length(myfiles)+3)]<-length(txt3)
    txt4<-vector(length=sum(dimtemp))
    j<-1
    k<-dimtemp[1]
    for (i in 1:length(dimtemp)){
      if(i<=c(length(dimtemp)-3)) txt4temp<-scan(file=myfiles[i],what="character",fill=TRUE)
      if(i<=c(length(dimtemp)-3)) txt4[j:k]<-txt4temp[which(txt4temp==separator)+1]
      if(i==c(length(dimtemp)-2)) txt4[j:k]<-txt1
      if(i==c(length(dimtemp)-1)) txt4[j:k]<-txt2
      if(i==c(length(dimtemp))) txt4[j:k]<-txt3
      j<-j+dimtemp[i]
      k<-k+dimtemp[i+1]
      }
     txt4<<-txt4
     val<-vector(length=3);val[]<-0
     if (length(txt1)!=1) val[1]<-1
     if (length(txt2)!=1) val[2]<-1
     if (length(txt3)!=1) val[3]<-1
     val<-sum(val)
     val<<-val
   ONDB4name<<-paste("Loaded from ",locate.dir,sep="")
   print(paste(length(myfiles)," databases have been successfully imported",sep=""))
  }
  
