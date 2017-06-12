% sizes = [240, 528, 548, 96, 102];
% layers = [5,8,16,19,22,200]
years = [1998, 2012, 2014, 2015, 2015];
names = ['AlexNet', 'VGG16',  'InceptionV3', 'ResNet-200'];
sizes = [240, 528, 96, 102];

acc = [18.2,7.4, 10.07,5.79];

% names = ['AlexNet', 'VGG16', 'VGG19', 'InceptionV3', 'ResNet-200'];

scatter(acc(1),sizes(1),100,'ro','LineWidth',5);
hold on
t = text(acc(1),sizes(1)*1.1,'AlexNet');
t.FontSize = 15;
hold on

scatter(acc(2),sizes(2),100,'bx','LineWidth',5);
hold on
t = text(acc(2),sizes(2)*1.04,'VGG16');
t.FontSize = 15;
hold on
scatter(acc(3),sizes(3),100,'c*','LineWidth',5);
hold on
t = text(acc(3),sizes(3)*1.2,'InceptionV3');
t.FontSize = 15;
hold on
scatter(acc(4),sizes(4),100,'m^','LineWidth',5);
hold on
t = text(acc(4),sizes(4)*1.2,'ResNet-200');
t.FontSize = 15;
set(gca, 'fontsize',18);
xlabel('Top-5 error rates on ImageNet (%)','FontSize',20);
ylabel('Size of the Network (MB)','FontSize',20);
% set(gca,'xscale','log');
% set(gca,'yscale','log');