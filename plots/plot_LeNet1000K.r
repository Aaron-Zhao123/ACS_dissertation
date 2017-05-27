library(ggplot2)
acc <- read.table("/Users/aaron/Projects/Mphil_project/report/data/LeNet5_1000K/acc.txt",head=FALSE);
a = seq(0,90,length.out=10)
b = c(91:99)
x_axis = apply( cbind( list(a), list(b) ) , 1 , unlist )
print(x_axis)
print(acc)
prune_data <- data.frame(x_axis,acc);
names(prune_data) <- c("prune","acc");

ggplot() +
  geom_point(data = prune_data, aes(x = prune, y = acc), color = "darkred")+
  geom_line(data = prune_data, aes(x = prune, y = acc), color = "darkred",linetype = "dashed") +
  labs(
    x = "Pruning Percentage",
    y = "Accuracy"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))
