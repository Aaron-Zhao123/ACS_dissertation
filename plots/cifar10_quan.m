cluster = [2, 4, 8, 16, 32]
bits = [1, 2, 3, 4, 5]

pre_train_acc = 1 -[0.11589999, 0.37299991, 0.70639998, 0.79110003, 0.79930007];

% post_train_acc = 1 - [0.98450017, 0.98820013, 0.98860019, 0.98990018, 0.99010015];

plot(bits,pre_train_acc, '*-black','LineWidth',3);
% hold on
% plot(bits,post_train_acc,'--black','LineWidth',3);
lgd = legend('Pre Train');
set(lgd, 'FontSize', 28);
xlabel('Number of Bits','FontSize',30);
ylabel('Error Rate','FontSize',30);
set(gca,'xscale','log', 'fontsize',28);

x_width=3.25 ;y_width=1.125
set(gcf,'Units','normalized');
set(gcf,'Position',[0 0 x_width y_width]);
% saveas(gcf,'fig1.pdf')
name_fig = 'hybrid_cycle'
export_fig([name_fig,'.pdf'], '-pdf','-transparent');
