"dbb2"<-function()
  { 
    OnOk()
    txt2<-0;txt2<<-txt2
    fil2=if (interactive()) choose.files(filters = Filters["All",],caption="Select the 2nd oligonucleotide data base")
    ONDB2name<<-fil2
    print("Please wait while loading")
    txt2<-scan(file=fil2,what="character",fill=TRUE)
    a<-which(txt2==separator)
    a<-a+1
    txt2<-txt2[a]
    txt2<<-txt2
    print("DataBase 2 successfully imported")
  }