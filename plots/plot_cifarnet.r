library(ggplot2)
acc <- read.table("/Users/aaron/Projects/Mphil_project/report/data/cifarnet/acc_cifar.txt",head=FALSE);
x_axis = seq(0,80,length.out=9)
print(x_axis)
print(acc)
prune_data <- data.frame(x_axis,acc);
names(prune_data) <- c("prune","acc");

p <- ggplot() +
  geom_point(data = prune_data, aes(x = prune, y = acc), color = "darkred")+
  geom_line(data = prune_data, aes(x = prune, y = acc), color = "darkred",linetype = "dashed") +
  labs(
    x = "Pruning Percentage",
    y = "Accuracy"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=10),
        axis.text.y = element_text(colour="grey20",size=10),
        axis.title.x = element_text(colour="grey20",size=12),
        axis.title.y = element_text(colour="grey20",size=12))
pdf(file="cifar10.pdf", width=4, height=3)
p
dev.off()
