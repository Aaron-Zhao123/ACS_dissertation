nbits = [0, 1, 2, 3, 4]
% nbits = [1, 2, 3, 4, 5, 6]

% pre_train_acc = [0.78920001, 0.82190001, 0.93260014, 0.98160011, 0.99110007, 0.99300015];
% post_train_acc = [0.99360013, 0.99360013, 0.99360013, 0.99360007, 0.99360013, 0.99400008];
% fp_pre_train_acc = [0.1045, 0.16580001, 0.82910001, 0.97539997, 0.99010003, 0.99290001];
% fp_post_train_acc = [0.97970003, 0.98040003, 0.9835, 0.98589998, 0.99250001, 0.9939];
fp_pre_train_acc = 1- [0.11319999, 0.1135, 0.56759989, 0.84180003, 0.84279996];
fp_post_train_acc = 1 - [0.31889996, 0.98990011, 0.99360013, 0.99360013, 0.99360013];

figure
% subplot(2,1,1)
plot(nbits,fp_pre_train_acc, '*:black','LineWidth',3);
hold on
plot(nbits,fp_post_train_acc,'*-black','LineWidth',3);
lgd = legend('Pre Train', 'After Train');
set(lgd, 'FontSize', 22);
xlabel('Number of dynamic bits','FontSize',22);
ylabel('Error Rate','FontSize',22);
set(gca,'fontsize',22);


x_width=3.25 ;y_width=1.125
set(gcf,'Units','normalized');
set(gcf,'Position',[0 0 x_width y_width]);
set(gca,'XLim',[0 4])
set(gca,'yscale','log')

pbaspect([3.2 1 1])

