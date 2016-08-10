library('d3treeR')
library('treemap')

data<-read.csv('treemap_com_dis.csv', stringsAsFactors = F)

tm <-  treemap(data,
index=c("donor","recipient"),
vSize="com_dis",
vColor="com_dis",
type="value", 
palette="-RdGy",
range=c(-30000,30000),inflate.labels = TRUE,bg.labels = 220)

#MyClickScript <-'alert("You clicked " + data.com_dis");'
d3tree(tm, rootname = "Donor",width = 550, height=450)