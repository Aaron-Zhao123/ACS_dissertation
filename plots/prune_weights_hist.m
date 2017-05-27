load('org.mat');
load('prunned.mat');
figure
o_data = o_data(:);
o_data = o_data(o_data~=0);

p_data = p_data(:);
p_data = p_data(p_data~=0);

nbins = 150
subplot(2,1,1);
hist(o_data, nbins);
xlabel('Values','FontSize',18);
ylabel('Counts','FontSize',18);
set(gca,'fontsize',18);
title('\fontsize{18} Distribution of weights in fc1 layer of LeNet5')
subplot(2,1,2);
hist(p_data, nbins);
xlabel('Values','FontSize',18);
ylabel('Counts','FontSize',18);
set(gca,'fontsize',18);
title('\fontsize{18} Distribution of weights in fc1 layer of pruned LeNet5')

figure

d_width = 3;
frac_width = 1
max_frac = (2^frac_width-1)*2^(-frac_width);
d_ranges = zeros(1,2^d_width);
x_val = zeros(1,2*2^d_width);
y_val = zeros(1,2*2^d_width);
j = 1
for i = 0:(2^d_width - 1)
    d_ranges(1,i+1) = max_frac * 2 ^ (-i);
    x_val(1,j) = max_frac * 2 ^ (-i);
    if (j == 1)
        y_val(1,j) = i;
    else
        y_val(1,j) = i;
    end
    j = j + 1;
    x_val(1,j) = max_frac * 2 ^ (-i);    
    y_val(1,j) = i+1;
    j = j + 1;   
end

xlabel('Values of parameters','FontSize',16);
ylabel('Number of parameters','FontSize',16);
set(gca,'fontsize',18);

x_agg = [-x_val, fliplr(x_val)]
y_agg = [y_val, fliplr(y_val)]
hist(o_data, nbins); hold on
% plot(x_agg,y_agg,'r');

ylabel('Number of parameters','FontSize',16);
xlabel('Values of parameters','FontSize',16);
set(gca,'fontsize',18);

figure
hist(p_data, nbins);
ylabel('Number of parameters','FontSize',16);
xlabel('Values of parameters','FontSize',16);
set(gca,'fontsize',18);

pbaspect([3.2 1 1])


