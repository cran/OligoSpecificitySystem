"dbb3"<-function(){
    OnOk()
    txt3<-0;txt3<<-txt3
    fil3=if (interactive()) choose.files(filters = Filters["All",],caption="Select the 3rd oligonucleotide data base")
    print("Please wait while loading")
    ONDB3name<<-fil3
    txt3<-scan(file=fil3,what="character",fill=TRUE)
    a<-which(txt3==separator)
    a<-a+1
    txt3<-txt3[a]
    txt3<<-txt3
    print("DataBase 3 successfully imported")
  }