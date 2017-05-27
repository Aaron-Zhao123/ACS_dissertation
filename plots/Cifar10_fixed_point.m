nbits = [2, 4, 8, 16, 32]
% nbits = [1, 2, 3, 4, 5, 6]
fp_pre_train_acc = [0.099659458, 0.10236378, 0.1713742, 0.53415465, 0.75580931];
fp_post_train_acc = [0.10036058, 0.1219952, 0.25981569, 0.59725559, 0.76963139];

figure
% subplot(2,1,1)
plot(nbits,fp_pre_train_acc, '*:black','LineWidth',3);
hold on
plot(nbits,fp_post_train_acc,'*-black','LineWidth',3);
lgd = legend('Pre Train', 'After Train');
set(lgd, 'FontSize', 22);
xlabel('Number of fractional bits','FontSize',22);
ylabel('Test Accuracy','FontSize',22);
set(gca,'fontsize',22);


x_width=3.25 ;y_width=1.125
set(gcf,'Units','normalized');
set(gcf,'Position',[0 0 x_width y_width]);
set(gca,'XLim',[2 32])
% set(gca,'yscale','log')

pbaspect([3.2 1 1])

