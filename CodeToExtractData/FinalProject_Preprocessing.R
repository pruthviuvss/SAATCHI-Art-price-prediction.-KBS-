setwd("D:/pruthvi/Spring-17/KBS/Final Project")
df<-read.csv('rmblankrows.csv')
dfFN<-read.csv('followers&numofposts.csv')
print(nrow(df))
df<-df[!df$Price=="", ]
print(nrow(df))
write.csv(df,'rmblankrows2.csv')
df$Height<-gsub("H",'',df$Height)
df$Width<-gsub("W",'',df$Width)
df$Price<-gsub('[$]|(;.*)|(,)','',df$Price)
df$Height<-as.numeric(df$Height)
df$Width<-as.numeric(df$Width)
typeof(df$Height)
df$Height<-ceiling(df$Height)
df$Width<-ceiling(df$Width)
dfFN$Followers<-gsub('[a-zA-Z]','',dfFN$Followers)
dfFN$X.ofArtWorks<-gsub('[a-zA-Z]|[[:punct:]]','',dfFN$X.ofArtWorks)
write.csv(dfFN,'rmblankrowsFN.csv')
df$Followers<-NULL
df$X.ofArtWorks<-NULL
dfFN$Followers_link<-NULL
dfFN$ï..url<-NULL
df<-cbind(df,dfFN)
write.csv(df,'rmblankrows2.csv')


