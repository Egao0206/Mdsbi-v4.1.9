function MColor = getRGBFromPicture
% 从图片中提取RGB值形成色卡矩阵MColor
% Example
% MColor = getRGBFromPicture;
[file,path] = uigetfile('*.*'); %返回所选文件名和路径
filename = fullfile(path,file);   %根据返回值生成完整的文件名
im = imread(filename);%读取图片的RGB矩阵
imshow(im);%显示图片

[xi,yi] = getpts;%用鼠标从图片上取点，获取坐标，回车结束

for ipt = 1:1:length(xi)
    
    MColor(ipt,:)  =double(im(floor(yi(ipt)),floor(xi(ipt)),:))/256;%通过坐标获取RGB值
    im = insertShape(im,'FilledRectangle',[ipt*60,250,60,100],'Color',MColor(ipt,:)*255,'Opacity' ,1);%在图像上创建矩形色块
    
end

imshow(im);

%% 在新图窗显示色卡
figure('Name','ColorSet','NumberTitle','off');%创建图窗
Height = size(MColor,1);%Height是色卡矩阵的高度,表示色卡中的颜色数量
for iColor = 1 : Height
    
    rectangle('Position',[(iColor-1)*80,250,80,100],'FaceColor',MColor(iColor,:));%创建矩形色块
    hold on
    
end
axis off%关闭坐标轴
end


