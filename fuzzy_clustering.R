# 模糊聚类法
library(foreign)
library(cluster)

mydata<-read.spss("./3.7.1Asia.sav") 
mydata
X<-as.data.frame(mydata)  #转换数据格式
X
Z<-data.frame(scale(X[,2:7]),row.names=X[,1]) #对数据进行标准化，并将各行命名为相应的国家
Z
fresult<-fanny(Z,3)#聚成三类
fresult
summary(fresult)
plot(fresult)#输出分类图，与侧影图（类似冰柱图1:5|0.60，代表第一类包含5个样品，并且这5个样品平均轮廓宽度为0.60）
