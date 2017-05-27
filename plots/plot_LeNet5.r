library(ggplot2)
acc <- read.table("/Users/aaron/Projects/Mphil_project/report/data/LeNet5_431K/acc_log.txt",head=FALSE);
acc2 <- read.table("/Users/aaron/Projects/Mphil_project/report/data/LeNet5_431K/acc_log_10.txt",head=FALSE);
print(typeof(acc))
a = seq(0,90,length.out=10)
b = c(91:99)
x_axis = apply( cbind( list(a), list(b) ) , 1 , unlist )
y_axis = apply( cbind( list(acc), list(acc2) ) , 1 , unlist )
prune_data <- data.frame(x_axis,y_axis);
names(prune_data) <- c("prune","accuracy");

p <- ggplot() +
  geom_point(data = prune_data, aes(x = prune, y = accuracy), color = "darkred")+
  geom_line(data = prune_data, aes(x = prune, y = accuracy), color = "darkred",linetype = "dashed") +
  labs(
    x = "Pruning Percentage",
    y = "Accuracy"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=12),
        axis.text.y = element_text(colour="grey20",size=12),
        axis.title.x = element_text(colour="grey20",size=14),
        axis.title.y = element_text(colour="grey20",size=14))
pdf(file="LeNet5.pdf", width=4, height=3)
p
dev.off()
