% clear;clc;close all;
% 先看一下默认颜色，其实还是很漂亮的颜色
figure;
DemoPlot();

% clear;clc;close all;
% 先看一下默认颜色，其实还是很漂亮的颜色
figure;
DemoPlot();


[all_themes, all_colors] = GetColors();
figure;
% 类似subplot
tiledlayout(3, 3, 'TileSpacing', 'compact');
for j = 1 : 9
    nexttile;
    DemoPlot();
    % 这里修改一下颜色顺序colororder即可
    set(gca, 'colororder', MColor(j,:));
end

function DemoPlot()
% 定义一个简单的绘图函数
x = 1:100;
y = log(x);
for i = 1:5
    plot(x, y + 3*i, 'LineWidth', 1.5);
    hold on
end
hold off
end