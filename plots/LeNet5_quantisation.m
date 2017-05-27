ncluster = [2, 4, 8, 16, 32, 64]
nbits = [1, 2, 3, 4, 5, 6]

han_pre_train_acc = 1- [0.94669998, 0.98900002, 0.99290001, 0.99360001, 0.99400002, 0.99400002];
% han_pre_train_acc = [0.16579999, 0.82910001, 0.97540009, 0.99010015, 0.99290013];
% han_post_train_acc = [0.98659998, 0.99150002, 0.99360001, 0.99370003, 0.99440002, 0.9939];
han_post_train_acc = 1- [0.98659998, 0.99150002, 0.99360001, 0.99370003, 0.99370003, 0.99390018];
plot(ncluster,han_pre_train_acc, '*:black','LineWidth',3);
hold on
plot(ncluster,han_post_train_acc,'*-black','LineWidth',3);
lgd = legend('Pre Train', 'After Train');
set(lgd, 'FontSize', 22);
xlabel('Number of clusters','FontSize',22);
ylabel('Error Rate','FontSize',22);
set(gca,'fontsize',22);

x_width=3.25 ;y_width=1.125
set(gcf,'Position',[0 0 x_width y_width]);
set(gca,'XLim',[2 64])
% set(gca,'XTick',(1:1:6))
set(gca,'yscale','log')
pbaspect([3.2 1 1])

% % saveas(gcf,'fig1.pdf')
% % name_fig = 'hybrid_cycle'
% % export_fig([name_fig,'.pdf'], '-pdf','-transparent');
% figure
% 
% nbits = [2, 4, 8, 16, 32, 64]
% 
% fp_pre_train_acc = [0.1045, 0.16580001, 0.82910001, 0.97539997, 0.99010003, 0.99290001];
% 
% fp_post_train_acc = [0.97970003, 0.98040003, 0.9835, 0.98589998, 0.99250001, 0.9939];
% 
% figure
% plot(nbits,fp_pre_train_acc, '*:black','LineWidth',3);
% hold on
% plot(nbits,fp_post_train_acc,'*-black','LineWidth',3);
% lgd = legend('Pre Train', 'After Train');
% set(lgd, 'FontSize', 22);
% xlabel('Number of fractional bits','FontSize',22);
% ylabel('Test Accuracy','FontSize',22);
% set(gca,'fontsize',22);
% % set(gca, 'YScale', 'log')
% 
% 
% x_width=3.25 ;y_width=1.125
% set(gcf,'Units','normalized');
% set(gcf,'Position',[0 0 x_width y_width]);
% set(gca,'XLim',[1 64])
% % set(gca,'XTick',(1:1:64))
% pbaspect([3.2 1 1])
% 
% 
% figure
% plot(nbits(4:6),fp_pre_train_acc(4:6), '*:black','LineWidth',3);
% hold on
% plot(nbits(4:6),fp_post_train_acc(4:6),'*-black','LineWidth',3);
% lgd = legend('Pre Train', 'After Train');
% set(lgd, 'FontSize', 22);
% xlabel('Number of fractional bits','FontSize',22);
% ylabel('Test Accuracy','FontSize',22);
% set(gca,'fontsize',22);
% 
% 
% x_width=3.25 ;y_width=1.125
% set(gcf,'Units','normalized');
% set(gcf,'Position',[0 0 x_width y_width]);
% set(gca,'XLim',[16 64])
% pbaspect([3.2 1 1])
% 
% % set(gca,'XTick',(1:1:64))
% 
