#**************************input data***************************************#
setwd("D:/S2/Spasial/eas")
df=read.csv("kelontong.csv", sep = ";")
window<- gadm.subset(Ind1sia, regions=c("Surabaya"))
area.window<-area.owin(window)
#***********************Membuat Planar Point Pattern********************#
long<-df$lon
lat<-df$lat
kelontong<-ppp(long,lat,window = window) #point pattern gempa sulawesi#
area.window<-area.owin(window)
#**************************Membuat Window***************************#
window<-owin(xrange=c(112.6,112.9),
yrange=c(-7.35,-7.15))
window
plot(kelontong,cex=1,pch=20, add=T)
#**************************Membuat Window***************************#
window<-owin(xrange=c(112.6,112.9),
yrange=c(-7.35,-7.15))
area.window<-area.owin(window)
kelontong<-ppp(long,lat,window = window) #point pattern gempa sulawesi#
plot(kelontong,cex=1,pch=20, add=T)
points(kelontong,cex=1,pch=20, add=T)
plot(sby)
plotmap(sby)
points(kelontong,cex=1,pch=20, add=T)
plot(kelontong,cex=1,pch=20)
plotmap(sby,add=T)
library(rgdal)
library(shapefiles)
install.packages("shapefiles")
library(shapefiles)
setwd("D:/S2/Spasial/eas")
S<-readOGR("INDONESIA_KAB.shp",require_geomType="wkbPolygon")
SP<-as(S, "SpatialPolygons")
W<-as(SP,"owin")
plot(W)
View(Ind1sia)
View(sby)
View(sby)
View(Ind1sia)
sby
plotmap(sby)
plotmap(sby)
plotmap
as
?as
