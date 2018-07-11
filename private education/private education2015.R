#working directory
setwd("c:/bigdata")
#data load
data <- read.csv("private education.csv",  header = F, na.strings = c("."))
head(data, 10)
str(data)

#�米���� �޴� �л��� ���� ����
data$V2 <- factor(data$V2, levels = 1:2, labels = c("����", "����"))
data.V2 <- table(data$V2)
data.V2
barplot(data.V2, main = "�л��� ������ ���� ��", ylim = c(0,50000), col=c("yellow", "green"))
pie(data.V2, main = "�л��� ������ ���� ��", init.angle = 90)

#�米�� ���� �ð�
data$V1 <- factor(data$V1)
data.V1 <- table(data$V1)
data.V1
barplot(data.V1, main="�米�� ���� �ð�",)

#�米����
data$V3 <- factor(data$V3)
data.V3 <- table(data$V3)
data.V3
barplot(data.V3, ylim = c(0,1200))