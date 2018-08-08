setwd("c:/bigdata")

#googleVis ���̺귯�� ��ġ �� ȣ��
install.packages("googleVis")
library(googleVis)

#������ ���� loc�� �ҷ�����. 
loc <- read.csv("wifi.csv",header=T)
loc

#���� �̸��� ���� �̸� ����.
wifi <- gvisMap(loc, "LATLON" , "name",
                   options=list(showTip=TRUE, showLine=TRUE, enableScrollWheel=TRUE,
                                mapType='normal', useMapTypeControl=TRUE))

#�÷� ��Ʈ ���� �̸� ����
plot(wifi)
