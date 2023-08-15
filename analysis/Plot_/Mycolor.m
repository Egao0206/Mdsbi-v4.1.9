function [Mcolor] = Mycolor(num,nm)
if nargin<2
    nm=0;
end
% 2~6 from p1 (order-34562)
switch num
    case 1
        Mcolor=[0.9961,0.4805,0.4258];
    case 2
        Mcolor=[0.0234,0.1289,0.3906]; % deep blue
    case 3
        Mcolor=[0.9961    0.6406    0.3828]; % yellow
    case 4
        Mcolor=[0.9961    0.5234    0.4180]; % pitch
    case 5
        Mcolor=[0.9961    0.3359    0.4531]; % purple
    case 6
        Mcolor=[0.7773    0.2461    0.4570]; %deep blue
    case 7
        Mcolor=[0.8828    0.1992    0.7344]; %purple-pitch mix
    case 8
        if(nm==1)
        Mcolor=[];
end
end