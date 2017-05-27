library(ggplot2)
rt <- read.table("runtime_pp.txt",head=FALSE);
bt <- read.table("buildtime_pp.txt",head=FALSE);
rt_nn <- read.table("runtime_nn.txt",head=FALSE);
bt_nn <- read.table("buildtime_nn.txt",head=FALSE);
rt_nn_all <- read.table("runtime_nn_all.txt",head=FALSE);
bt_nn_all <- read.table("buildtime_nn_all.txt",head=FALSE);
rt_2mm <- read.table("runtime_nn_2mm.txt",head=FALSE);
bt_2mm <- read.table("buildtime_nn_2mm.txt",head=FALSE);
rt_3mm <- read.table("runtime_nn_3mm.txt",head=FALSE);
bt_3mm <- read.table("buildtime_nn_3mm.txt",head=FALSE);
time <- data.frame(rt, bt);
time_nn <- data.frame(rt_nn, bt_nn);
time_nn_all <- data.frame(rt_nn_all, bt_nn_all);
time_nn_2mm <- data.frame(rt_2mm , bt_2mm);
time_nn_3mm <- data.frame(rt_3mm, bt_3mm);
names(time) <- c("runtime","buildtime");
names(time_nn) <- c("runtime","buildtime");
names(time_nn_all) <- c("runtime","buildtime");
names(time_nn_2mm) <- c("runtime","buildtime");
names(time_nn_3mm) <- c("runtime","buildtime");
run_time <- data.frame(c(1:dim(rt)[1]),rt);
names(run_time) <- c("iterations","runtime");
label_opt <- data.frame(
  x = c(0, 0),
  y = c(38.616, 60.683),
  text = c("O0", "O3"))

ggplot() +
  geom_point(data = time, aes(x = runtime, y = buildtime), color = "darkred")+
  geom_point(data = time_nn, aes(x = runtime, y = buildtime), color = "darkblue")+
  labs(
    x = "Runtime",
    y = "Buildtime"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))



ggplot() +
  geom_point(data = time_nn_all, aes(x = runtime, y = buildtime), color = "darkblue")+
  labs(
    x = "Runtime",
    y = "Buildtime"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))


ggplot() +
  geom_point(data = time_nn_2mm, aes(x = runtime, y = buildtime), color = "darkblue")+
  labs(
    x = "Runtime",
    y = "Buildtime"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))



ggplot() +
  geom_point(data = time_nn_3mm, aes(x = runtime, y = buildtime), color = "darkblue")+
  labs(
    x = "Runtime",
    y = "Buildtime"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))



ggplot(data = run_time, mapping = aes(x = iterations, y = runtime)) +
  geom_point(color = "darkred") +
  geom_line(linetype = "dashed") +
  geom_hline(yintercept = 60.683, color = "darkgreen" , linetype = "dashed") +
  geom_hline(yintercept = 38.616, color = "blue" , linetype = "dashed") +
  annotate("text", x = -3, y = 38.616 + 0.3, label = "O3") +
  annotate("text", x = -3, y = 60.683 + 0.3, label = "O0") +
  labs(
    x = "Iterations",
    y = "Runtime"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=20),
        axis.title.y = element_text(colour="grey20",size=20))


raw_data <- read.table("../log/training_data_epoch.txt",head=FALSE,sep=",");
names(raw_data) <- c("accuracy","error");
train_info <- data.frame(c(1:dim(raw_data)[1]),raw_data["accuracy"],raw_data["error"]);
names(train_info) <- c("index","cross_entropy","accuracy");
ggplot(data = train_info, mapping = aes(x = index, y = accuracy)) +
  geom_point(color = "darkred")+
  geom_line(linetype = "dashed") +
  labs(
    x = "Number of Epochs",
    y = "Training Accuracy"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=18),
        axis.title.y = element_text(colour="grey20",size=18))


ggplot(data = train_info, mapping = aes(x = index, y = cross_entropy)) +
  geom_point(color = "darkred")+
  geom_line(linetype = "dashed") +
  labs(
    x = "Number of Epochs",
    y = "Cross Entropy"
  ) +
  theme(axis.text.x = element_text(colour="grey20",size=15),
        axis.text.y = element_text(colour="grey20",size=15),
        axis.title.x = element_text(colour="grey20",size=18),
        axis.title.y = element_text(colour="grey20",size=18))
