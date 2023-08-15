function MPlotColor = getRGBFromColorSet(MColor,ShowOrNot)
%% 函数作用
% getRGBFromColorSet的目的是从原始的MColor取部分颜色生成画图用的MPlotColor
% 从给定色卡中取部分颜色

%% 输入与输出
% MColor是一个n行3列矩阵，每一行都是一个RGB三元组，每个RGB值的取值范围是0-255
% 通过鼠标取出你想用的颜色，输入回车结束
% ShowOrNot = 1，显示色卡MPlotColor

%% 函数示例
% clear;
% close all;
% MColor = [12,46,87;0,95,139;217,41,71];
% ShowOrNot = 1;
% MPlotColor = getRGBFromColorSet(MColor,ShowOrNot)

%% Main
% 把要读取的色卡存为图片
    Fig1 = figure;
    showMColor(MColor);
    saveas(Fig1,'MColor.jpg');
    close(Fig1);
% 读取色卡图片
    im = imread('MColor.jpg');%读取图片的RGB矩阵
    Fig2 = figure;
    imshow(im);%显示图片
    [xi,yi] = getpts;%用鼠标从图片上取点，获取坐标，回车结束
    for ipt = 1:1:length(xi)
        MPlotColor(ipt,:)  =double(im(floor(yi(ipt)),floor(xi(ipt)),:));%通过坐标获取图像的RGB值
    end
    close(Fig2);
    if ShowOrNot == 1
    figure;
    showMColor(MPlotColor);
    end
    delete('MColor.jpg');
end
