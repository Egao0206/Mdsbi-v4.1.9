clc;clear
datadir = '/home/test/seis_software/mdsbi-v4.1.9/data';
nm1=name(1,1); % None
A=init(nm1,datadir);
Vx=loadmesh(A,'flt_Vx');
sx=loadmesh(A,'flt_sx');
frt=loadmesh(A,'frt');
%Dil (Phi/beta)
% name(2); % Phi/beta = 0;
% name(9); % Phi/beta = 12;
% name(10); % Phi/beta = 120;
% name(13); % Phi/beta = 300;
% name(15); % Phi/beta = 500;
% name(6); % Phi/beta = 1200;
% name(7); % Phi/beta = 12000;
% name(8); % Phi/beta = 120000;
% n=[2,9,10,13,15,6,7,8];
% figure('Color',[1,1,1],'Position',[500,500,1500,800])
% for i=1:8
%     subplot(2,4,i)
%     TP_point(name(n(i)),'Phi/beta test',0,2)
% end

%Dil(compare with benchmark)
% figure('Color',[1,1,1],'Position',[500,500,1500,800])
% subplot(121)
% TP_point(name(5,1),'Phi/beta test=0',1,2);
% subplot(122)
% TP_point(name(13),'Phi/beta test=350',1,2);

% Rupture speed(Dil) 
% Mcolor=[
%     0.9961    0.7930    0.3203
%     0.9961    0.5859    0.3984
%     0.9961    0.4258    0.4375
%     0.8516    0.2578    0.4570
%     0.5859    0.2227    0.4492
%     0.2461    0.1758    0.4375
%     ];
% figure('Color',[1,1,1],'Position',[500,500,800,800])
% subplot(411)
% Vr(name(15,2),datadir,5,Mcolor(4,:),Vx.dy); 
% axis([0 14 0 3.4641])
% subplot(412)
% Vr(name(12),datadir,5,Mcolor(3,:),Vx.dy); 
% axis([0 14 0 3.4641])
% subplot(413)
% Vr(name(18),datadir,5,Mcolor(2,:),Vx.dy); 
% axis([0 14 0 3.4641])

% Pressure compare
% figure('Color',[1,1,1],'Position',[500,500,800,800])
% name1 = 'slipweak_m3_thermpre';  % TP = T , Dia = F , W = 0.005
% name2 = 'slipweak_m3_thermpre_dia_deltaD'; % Phi/beta = 12d0
% name3 = 'slipweak_m3_thermpre_deltaD2'; % Phi/beta = 6d1
% name4 = 'slipweak_m3_thermpre_deltaD1'; % Phi/beta = 12d1
% name5 = 'slipweak_m3_thermpre_deltaD4'; % Phi/beta = 3d2
% name6 = 'slipweak_m3_thermpre_deltaD7'; % Phi/beta = 3.5d2
% name7 = 'slipweak_m3_thermpre_deltaD5'; % Phi/beta = 4d2
% name8 = 'slipweak_m3_thermpre_deltaD8'; % Phi/beta = 4.5d2
% name9 = 'slipweak_m3_thermpre_deltaD6'; % Phi/beta = 5d2
% name10= 'slipweak_m3_thermpre_deltaD3'; % Phi/beta = 6d2
% % % subplot(211)
% % 
%  Mcolor2=[       0.9922    0.8789    0.3359
%     0.9961    0.7930    0.3203
%     0.9961    0.6484    0.3789
%     0.9961    0.4805    0.4258
%     0.9570    0.3906    0.4414
%     0.9453    0.3125    0.4531
%     0.8789    0.2617    0.4609
%     0.6992    0.2383    0.4531
%     0.4062    0.1953    0.4414
%     0.3906    0.1914    0.4414];
% for i = 1:10
%     % subplot(2,4,i)
%     nm = ['name',num2str(i)];
%     TP_point(eval(nm),eval(nm),0,4);
%     hold on;
% end    
% plot([0 3.4641],[0 0],'k--','LineWidth',2)
% set(gca,'colororder', Mcolor2);
% 
% l = legend('TP','Phi/beta=10','Phi/beta=50','Phi/beta=100','Phi/beta=300', ...
%     'Phi/beta=350','Phi/beta=400','Phi/beta=450','Phi/beta=500','Phi/beta=600');
% set(l,'FontWeight','bold','FontSize',15);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on'); % Grid on
% title('Pressure change(MPa)','FontWeight','bold','FontAngle','italic',...
%     'FontSize',24,...
%     'Interpreter','latex');
% 
% fig_frame();
% axis([0 3.4641 -10 77])

% Rupture Speed (Dil>=1000)
figure('Color',[1,1,1],'Position',[500,500,800,800])
Mcolor=[
    0.9961    0.7930    0.3203
    0.9961    0.5859    0.3984
    0.9961    0.4258    0.4375
    0.8516    0.2578    0.4570
    0.5859    0.2227    0.4492
    0.2461    0.1758    0.4375
    0.0312    0.0859    0.3359
    ];

% Vr(name(20),datadir,5,Mcolor(7,:)); %5000
% hold on;
% Vr(name(22),datadir,5,Mcolor(5,:)); %4000
% Vr(name(23),datadir,5,Mcolor(4,:)); %3000
% Vr(name(24),datadir,5,Mcolor(7,:)); %2000
Vr(name(32),datadir,5,Mcolor(7,:),2); %2000
xlim([0 45])
ylim([0 0.05])
legend('500','600','1000','2000','3000','4000','5000')
legend('nx=600,ny=667,h=0.09','nx=600,ny=1000,h=0.06', ...
    'nx=600,ny=2000,h=0.03')


% Rupture Speed(<1000)
% figure('Color',[1,1,1],'Position',[500,500,800,800])
% Mcolor=[
%     0.9961    0.7930    0.3203
%     0.9961    0.5859    0.3984
%     0.9961    0.4258    0.4375
%     0.8516    0.2578    0.4570
%     0.5859    0.2227    0.4492
%     0.2461    0.1758    0.4375
%     ]
% nm1=name(1,1); 
% Vr(nm1,datadir,5,[127 127 127]/256);% None
% hold on;
% Vr(name(4,1),datadir,5,Mcolor(6,:)); % TP-intact
% Vr(name(10),datadir,5,Mcolor(4,:)); % 100
% Vr(name(13),datadir,5,Mcolor(3,:)); % 300
% Vr(name(14,1),datadir,5,Mcolor(2,:)); % 400
% Vr(name(17,1),datadir,5,Mcolor(2,:)); % 400
% 
% [x,y]=Vr(name(15,2),datadir,5,Mcolor(1,:)); % 500
% plot(x(1000:1181),smooth(y(1000:1181)),'color',Mcolor(1,:),'LineWidth',3);
% set(gca,'FontName','Times','FontSize',16,'FontWeight','bold')
% axis([0 15 0 3.4641])
% l=legend('None','TP','TP+Dil-100','TP+Dil-300','TP+Dil-400','TP+Dil-500')
% p_format('y(km)','Rupture velocity(km/s)','Rupture Speed (km/s)')

% Rupture Speed(Dil5)
% figure('Color',[1,1,1],'Position',[500,500,1000,350])
% [x,y]=Vr(name(12),datadir,5,Mycolor(2),Vx.dy); % 600
% plot(x(1000:1174),smooth(y(1000:1174)),'color',Mycolor(2),'LineWidth',3);
% hold on;
% [x,y]=Vr(name(15,3),datadir,5,Mycolor(6),Vx.dy); % 500
% plot(x(1000:1181),smooth(y(1000:1181)),'color',Mycolor(6),'LineWidth',3);
% p_format("y (km)","Rupture Velocity (km/s)","Rupture Speed");
%   set(gca,'FontName','Times','FontSize',16,'FontWeight','bold'); 
% legend('600','500')


% TP(intact + Damage)
% nm2=name(4); % TP,intact
% nm3=name(5); % TP,damage
% A2=init(nm2,datadir);
% Vx2=loadmesh(A2,'flt_Vx');
% sx2=loadmesh(A2,'flt_sx');
% A3=init(nm3,datadir);
% Vx3=loadmesh(A3,'flt_Vx');
% sx3=loadmesh(A3,'flt_sx');
% nx=Vx2.nx/2;
% ny=1300; % 9km
% c= [0.7695    0.2578    0.4297;
%     0.5820    0.2109    0.4414;
%     0.3945    0.1680    0.4492]
% figure('Color',[1,1,1],'Position',[500,500,1000,350])
% plot(sx.y,smooth(squeeze(sx.sx(nx,:,150))),'color',c(1,:),'LineWidth',3.5);hold on;
% plot(sx2.y,smooth(squeeze(sx2.sx(nx,:,150))),'color',c(2,:),'Linewidth',3.5);
% plot(sx3.y,smooth(squeeze(sx3.sx(nx,:,150))),'color',c(3,:),'LineWidth',3.5);
% p_format('y(km)','Stress(MPa)','Shear Stress on fault(MPa)')
% l=legend('TP-off','Intact','Damage')
% set(l,'FontWeight','bold','FontSize',16);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
    % 'on');


% TP_point
% TP_point(name(5,1),'Single point on fault',1,1);
% xlim([0 7])


% TP+Dil intact
% nm2=name(17); % Phi/beta=400
% nm3=name(15); % Phi/beta=500
% A2=init(nm2,datadir);
% Vx2=loadmesh(A2,'flt_Vx')
% plot(Vx2.y,max(squeeze(Vx2.Vx(600,:,:)),[],2),'LineStyle','--');hold on;
% plot(Vx2.y,squeeze(Vx2.Vx(600,:,Vx2.nt)));
% legend('peak slip rate','final slip rate')

% Vx_Sx Gif
% nx=Vx.nx/2;
% ny=1300 %9km
% f_num = 1;
% filename='sx_Vx.gif'
% figure('Color',[1,1,1],'Position',[500,500,700,600])
% for nt=1:Vx.nt
% subplot(211)
% plot(sx.t(1:nt),squeeze(sx.sx(nx,ny,1:nt)),'color',[0.5820 0 0.9961],'LineWidth',1.5)
% p_format('t(s)','Stress(MPa)','9 km-long from the epicenter')
% l=legend('Sx');
%     set(l,'FontWeight','bold','FontSize',16);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on');
% axis([0 7 62 82])
% subplot(212)
% plot(Vx.t(1:nt),squeeze(Vx.Vx(nx,ny,1:nt)),'color',[0.6758 0 0.9961],'LineWidth',1.5)
% p_format('t(s)','Slip rate(m/s)','9 km-long from the epicenter')
% l=legend('Vx');
%     set(l,'FontWeight','bold','FontSize',16);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on');
% axis([0 7 -0.1 4])
% 
% F = getframe(gcf);
% I=frame2im(F);
% [I,map]=rgb2ind(I,256);
% if f_num==1
%     imwrite(I,map,filename,'gif','LoopCount',inf,'DelayTime',0.1);
% else
%     imwrite(I,map,filename,'gif','WriteMode','append','DelayTime',0.1);
% end
% f_num=f_num+1;
% 
% end


% Rupture Gif
% f_num = 1;
% figure('Color',[1,1,1],'Position',[500,500,1000,350])
% filename='TP300.gif'
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


% Front coutour
% [x,y,vr]=Vr(nm1,datadir,5,Mycolor(2),Vx.dy);
% a=pcolor(Vx.x-Vx.dx/2,Vx.y-Vx.dy/2,squeeze(vr)'),shading interp;
% colorbar;hold on;
% figure('Color',[1,1,1],'Position',[500,500,800,800])
% contour(frt.y,frt.x,squeeze(frt.t),[0:0.5:Vx.tmax],'color',Mycolor(7),'linewidth',1.5);
% p_format('y (km)','x (km)','Rupture front Arrival Time(every 0.5s)')
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on','FontName','Times','FontSize',16,'FontWeight','bold');

% Rupture Speed
% 
% figure('Color',[1,1,1],'Position',[500,500,800,800])
% Vr(nm1,datadir,5,Mycolor(7),Vx.dy)
% axis([0 28 0 3.4641])
% p_format('y(km)','Rupture velocity(km/s)','Rupture Speed (km/s)')

