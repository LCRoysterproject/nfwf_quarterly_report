library(ggplot2)
library(reshape2)


wq <- read.csv("C:/Users/stephen.parker/Downloads/wq.csv",header=TRUE)

#Change class? of date and year
wq$Obs_Date <- as.POSIXct (wq$Obs_Date)

wq$year <- strftime(wq$Obs_Date, format = "%Y")

#Remove 2017
wq <- wq %>%
  subset(year %in% c('2018','2019')) %>%
  subset(Site %in% c(1:9))

#Calculate mean salinity by date and site
wq2 <- aggregate(Salinity ~ Obs_Date + Site, FUN = mean, data = wq) 

#Calculate the standard deviations for salinity by date and site
wq3 <- aggregate(Salinity ~ Obs_Date + Site, FUN = sd, data = wq)  

#Rename salinity sd to prevent redundant names
colnames(wq3)[colnames(wq3)=="Salinity"] <- "sal.sd"

#Add salinity sd vector to df with salinity mean values
wq2$sal.sd <- wq3$sal.sd

#Change the name of the mean salinity column
colnames(wq2)[colnames(wq2)=="Salinity"] <- "sal.mean"

#Plot of mean salinity by observation date with 95% CI for each site
h <- ggplot(wq2, aes(Obs_Date, sal.mean))
h + geom_ribbon(aes(ymin = sal.mean - 1.96*sal.sd, ymax = sal.mean + 1.96*sal.sd), fill = "grey70") +
  geom_line(aes(y = sal.mean))+
  facet_wrap(~Site)







#Notes and scratchwork

# sal <- ggplot(data=wq2, aes(x=Obs_Date, y=sal.mean)) + geom_point() + geom_line()
# p<-sal+geom_ribbon(aes(ymin=sal.mean-1.96*sal.sd, ymax=sal.mean+1.96*sal.sd), linetype=2, alpha=0.1)
# 
# with(mp,data.frame(year,wav, wow=fit,lwr=fit-1.96*se.fit,upr=fit+1.96*se.fit))
# 
# #----------------------------------------------
# 
# ggplot(wq, aes(Obs_Date, Salinity)) +
#   geom_point() +
#   geom_smooth(span = 1) +
#   facet_wrap(~Site)
# 
# 



















