"dbb4"<-function()
  {
    OnOk()
    locate.dir<-if (interactive()) choose.dir(getwd(), "Select folder containing oligonucleotide databases files")
    myfiles<-paste(locate.dir,list.files(locate.dir),sep="\\")
    dimtemp<- vector("list", c(length(myfiles)+3))
        
    for (j in 1:length(myfiles)) { 
      txttemp<-0
      txttemp<-scan(file=myfiles[j],what="character",fill=TRUE,quiet=TRUE)
      a<-which(txttemp==separator)
    b<-vector(length=length(a))
    for (i in 1:c(length(a)-1)){
    if(i/1000==round(i/1000)) waitGUI(i,c(length(a)-1))
    b[i]<-paste(txttemp[c(a[i]+1):c(a[i+1]-1)],collapse="")}
    b[length(a)]<-paste(txttemp[c(a[length(a)]+1):length(txttemp)],collapse="")
    if(length(a)>=1000) dev.off()  
      dimtemp[[j]]<-b}
      txt4<-unlist(dimtemp)
      txt4<<-txt4
    if(length(txt1)!=1) dimtemp[[c(length(myfiles)+1)]]<-txt1
    if(length(txt2)!=1) dimtemp[[c(length(myfiles)+2)]]<-txt2
    if(length(txt3)!=1) dimtemp[[c(length(myfiles)+3)]]<-txt3
     val<-vector(length=3);val[]<-0
     if (length(txt1)!=1) val[1]<-1
     if (length(txt2)!=1) val[2]<-1
     if (length(txt3)!=1) val[3]<-1
     val<-sum(val)
     val<<-val
     
   ONDB4name<<-paste("Loaded from ",locate.dir,sep="")
   print(paste("Your oligonucleotide database has",length(txt4),"sequences"))
   print(paste(length(myfiles)," databases have been successfully imported",sep=""))
  }
  
