%This version only for Mode III (slip in y direction, Vr average in x derection)
% 3-D rupture velocity
function [y,v1,vr] = Vr(name,datadir,x_half,color,g)
% load front dataVr(name,datadir,5)
A = init(name,datadir);
frt = loadmesh(A,'frt');
h=A.mdl.h;
if nargin ==2
    x_half=5;
    color = Mycolor(2);
    g=0;
end
if nargin < 4
    color = Mycolor(2);
    g=0;
end
if nargin < 5
    g=0;
end



% locate calculate domain
x=frt.x;
y=frt.y;
nx=frt.nx;
ny=frt.ny;
t=squeeze(frt.t);
vr=zeros(nx,ny);
vh=zeros(nx,ny);

for i=2:nx-1
    for k=2:ny-1
        d1=(1/frt.dy)*(t(i+1,k+1)-t(i-1,k+1)+t(i+1,k-1)-t(i-1,k-1))/4;
        d2=(1/frt.dx)*(t(i+1,k+1)-t(i+1,k-1)+t(i-1,k+1)-t(i-1,k-1))/4;
        if( d1 ==0 && d2==0)
                 continue;
        else
            vr(i,k)=1/(sqrt(d1^2+d2^2));
        end
        if(d2==0)
            continue
        else
             vh(i,k)=1/d2;
        end
    end
end      

v1=zeros(1,ny);
v2=zeros(1,ny);

for i=2:ny-1
    v1(i)=sum(vr(:,i))/(x_half*2/h);
    v2(i)=sum(vh(:,i))/(x_half*2/h);
end
% plot(frt.x,vr(:,1180),'b',LineWidth=1.5);
if nargout==0
    if g==0
    plot(y,smooth(v1),'color',color,'LineWidth',3);
    % set(gca,'colororder',color);
    xlabel("Distance in X direction(km)","Fontname",'Times Romans New')
    ylabel("Rupture Velocity(km/s)")
    p_format("Distance in X direction(km)","Rupture Velocity (km/s)","Rupture Speed")
    l=legend('Vr');
    set(l,'FontWeight','bold','FontSize',16);
    fig_frame()
    set(gca,'FontName','Times','FontSize',16,'FontWeight','bold')
    else
    subplot(211)
    plot(y,smooth(v1),'color',color,'LineWidth',3);
    % set(gca,'colororder',color);
    xlabel("Distance in X direction(km)","Fontname",'Times Romans New')
    ylabel("Rupture Velocity(km/s)")
    p_format("Distance in X direction(km)","Rupture Velocity (km/s)","Rupture Speed")
    l=legend('Vr');
    subplot(212)
    plot(frt.y,frt.t(frt.nx/2,:),'color',color,'LineWidth',3)
    set(l,'FontWeight','bold','FontSize',16);
set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
    'on'); 
    end
end






end
