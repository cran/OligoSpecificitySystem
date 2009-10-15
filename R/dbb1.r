"dbb1"<-function()
  {
    OnOk()
    txt1<-0;txt1<<-txt1
    fil1=if (interactive()) choose.files(filters = Filters["All",],caption="Select the 1st oligonucleotide data base")
    print("Please wait while loading")
    ONDB1name<<-fil1
    txt1<-scan(file=fil1,what="character",fill=TRUE)
    a<-which(txt1==separator)
    a<-a+1
    txt1<-txt1[a]
    txt1<<-txt1
  print("DataBase 1 successfully imported")
  }
  
