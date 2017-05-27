nbits = [2, 4, 8, 16, 32, 64]
% nbits = [1, 2, 3, 4, 5, 6]
fp_pre_train_acc = [0.099459134, 0.25250402, 0.68990386, 0.72776443,0.79817706, 0.79707533];
fp_post_train_acc = [0.17207532, 0.65695113, 0.79046476, 0.82241589,0.823125, 0.82302486];

figure
% subplot(2,1,1)
plot(nbits,fp_pre_train_acc, '*:black','LineWidth',3);
hold on
plot(nbits,fp_post_train_acc,'*-black','LineWidth',3);
lgd = legend('Pre Train', 'After Train');
set(lgd, 'FontSize', 22);
xlabel('Number of clusters','FontSize',22);
ylabel('Test Accuracy','FontSize',22);
set(gca,'fontsize',22);


x_width=3.25 ;y_width=1.125
set(gcf,'Units','normalized');
set(gcf,'Position',[0 0 x_width y_width]);
set(gca,'XLim',[2 64])
% set(gca,'yscale','log')

pbaspect([3.2 1 1])

