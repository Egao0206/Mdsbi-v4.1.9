function [] = analyze(name,datadir,nt,nx,ny)
% Default value
% Model size : nx = 1200 , ny = 2000 , h = 0.03
% nx = Vx.nx/2
% ny = Vx.ny/2
% nt = Vx.nt/2
A = init(name,datadir);
Vx = loadmesh(A,'flt_Vx');

if nargin<3
    nt = A.mdl.nt/(2*Vx.stride_t);  
    nx = A.mdl.nx/2; 
    ny = A.mdl.ny/2;
elseif nargin==3
    nx = A.mdl.nx/2; 
    ny = A.mdl.ny/2;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Model Datas Load %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    

Sx = loadmesh(A,'flt_sx');
frt = loadmesh(A,'frt');
Ux = loadmesh(A,'flt_Ux');
figure('color',[1,1,1],'Position',[1000,2000,2000,1000])
ts = 81.24;  % Static strength
td = 63 ; % Dynamic strength
Dc = 0.4 ; % Dc
if(nargin==3)
    p = loadmesh(A,'flt_p');
end
if(nargin==4)
    p = loadmesh(A,'flt_p');
    T = loadmesh(A,'flt_T');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Rupture Gif %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% f_num = 1;
% figure('Color',[1,1,1],'Position',[500,500,1000,350])
% filename='rupture.gif'
% 
% for nt=1:Vx.nt
%     pcolor(Vx.y,Vx.x,squeeze(Vx.Vx(:,:,nt)))
%     shading flat;
%     colormap('cool');
%     p_format('y(km)','x(km)',['t=',num2str(Vx.t(nt)),'s'])
%     % title(['t=',num2str(Vx.t(nt)),'s'])
%     colorbar
% 
%     F = getframe(gcf);
%     I=frame2im(F);
%     [I,map]=rgb2ind(I,256);
%   if f_num==1
%       imwrite(I,map,filename,'gif','LoopCount',inf,'DelayTime',0.1);
%   else
%       imwrite(I,map,filename,'gif','WriteMode','append','DelayTime',0.1);
%   end
%   f_num=f_num+1;
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rupture Speed  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(241)
[x,y]=Vr(name,datadir,5,'r',Vx.dy);
plot(x,y,'b','LineWidth',1.5);
p_format('L (km)','Rupture speed (km/s)','Rupture Speed')
ylim([0 3.5641])
xlim([0 30])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Slip rate contour %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(242)
% [x,y,vr]=Vr(name,datadir,5,Mycolor(2),Vx.dy);
% a=pcolor(Vx.x-Vx.dx/2,Vx.y-Vx.dy/2,squeeze(vr)'),shading interp;
% colorbar;hold on;
% contour(frt.x,frt.y,squeeze(frt.t)',[0:0.5:Vx.tmax],'b');
% p_format('L (km)','D (km)','Slip Speed Contour')

pcolor(Vx.x-Vx.dx/2,Vx.y-Vx.dy/2,squeeze(Vx.Vx(nt,:,:))),shading interp;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Stress Drop  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(243)
a=size(Sx.sx);
if a(1)<500 
        plot(Sx.y,squeeze(Sx.sx(nt,nx,:)),'LineWidth',1.5);
else 
        plot(Sx.y,squeeze(Sx.sx(nx,:,nt)),'LineWidth',1.5);
end
p_format('L (km)','Stress (MPa)',['Stress at (nt=',num2str(nt),')'])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Cohesive Size  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(244)
Lambda0 = (9*pi*A.mdl.mu*Dc)/(32*(ts-td)); % Static cohesive size
as = sqrt(1-power(y/A.mdl.cs,2));
Lambda=as*Lambda0; % Cohesive size
plot(x,Lambda,'LineWidth',1.5);
p_format('L (km)','Cohesive Size (km)','Cohesive Zone')
xlim([0 30])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Slip  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Not averge in dip
% Choose the middle grid line of the fault to draw the slip line
subplot(245)
    if a(1)<500
        plot(Ux.y,squeeze(Ux.Ux(nt,nx,:)),'LineWidth',1.5);
    else
        plot(Ux.y,squeeze(Ux.Ux(nx,:,nt)),'LineWidth',1.5);
    end
p_format('L (km)','Slip (m)',['Slip distributed at (nt=',num2str(nt),')'])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Friction Law  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(246)
    if a(1)<500
        plot(squeeze(Ux.Ux(:,nx,ny)),squeeze(Sx.sx(:,nx,ny)),'LineWidth',1.5) 
    else
        plot(squeeze(Ux.Ux(nx,ny,:)),squeeze(Sx.sx(nx,ny,:)),'LineWidth',1.5)
    end
p_format('Slip (m)','Stress (MPa)','Slip-weakening')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Slip rate  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(247)
plot(Vx.y,squeeze(Vx.Vx(nx,:,nt)),'LineWidth',1.5)
p_format('L (km)','Slip rate (m/s)',['Slip Velocity (nt=',num2str(nt),')'])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Thermal Pressurization  %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Optional Selection

if(exist('p'))
    subplot(248)
    yyaxis left
    plot(p.t,squeeze(p.p(nx,ny,1,:)),'LineWidth',1.5); % z = 0 km , on the plane
    p_format('t(s)','Pressure (MPa)',['z= 0 km off the fault'])
    hold on;
end
   
if(exist('T'))
    subplot(248)
    yyaxis right
    plot(T.t,squeeze(T.T(nx,ny,1,:)),'LineWidth',1.5); % z = 0 km , on the plane
    p_format('t(s)','Tempreture (C)',['z= 0 km off the fault'])
end
%     for i=1:p.nt
%         plot(p.z,squeeze(p.p(386,1005,:,i)));
%         pause(0.1)
%     end
%     xlabel('z (km)')
%     ylabel('Pressure (MPa)')
% end


end
