clc;clear;
% lone:633 1267 ltwo:386 1267
% name0 ='slipweak_m3_0.8_h_0.03_buff2'; % TP = F , Dia = F 
name1 = 'slipweak_m3_thermpre';  % TP = T , Dia = F , W = 0.005
name2 = 'slipweak_m3_thermpre_dia_deltaD'; % Phi/beta = 12d0
name3 = 'slipweak_m3_thermpre_deltaD2'; % Phi/beta = 6d1
name4 = 'slipweak_m3_thermpre_deltaD1'; % Phi/beta = 12d1
name5 = 'slipweak_m3_thermpre_deltaD4'; % Phi/beta = 3d2
name6 = 'slipweak_m3_thermpre_deltaD5'; % Phi/beta = 4d2
name7 = 'slipweak_m3_thermpre_deltaD6'; % Phi/beta = 5d2
name8 = 'slipweak_m3_thermpre_deltaD3'; % Phi/beta = 6d2
name6 = 'slipweak_m3_thermpre_dia'; % Phi/beta = 12d2
name7 = 'slipweak_m3_thermpre_dia2'; % Phi/beta = 12d3 
name8 = 'slipweak_m3_thermpre_dia3'; % Phi/beta = 12d4 

% second selected
name11 = 'slipweak_m3_thermpre_deltaD1'; % Phi/beta = 12d1
name22 = 'slipweak_m3_thermpre_deltaD4'; % Phi/beta = 3d2
name33 = 'slipweak_m3_thermpre_deltaD5'; % Phi/beta = 4d2
name44 = 'slipweak_m3_thermpre_deltaD6'; % Phi/beta = 5d2
name55 = 'slipweak_m3_thermpre_deltaD3'; % Phi/beta = 6d2

datadir = '/home/test/seis_software/mdsbi-v4.1.9/data';
% A=init(name2,datadir);
% p=loadmesh(A,'flt_p');
% sx=loadmesh(A,'flt_sx');
% T=loadmesh(A,'lone_T');
% Ux=loadmesh(A,'flt_Ux');
% Vx=loadmesh(A,'flt_Vx');

figure('Color',[1,1,1],'Position',[200,1000,1500,1000])
%% Strss & Pressure at z = 0km
% x range (335,667)
% subplot(222)
% yyaxis left
% plot(sx.t,squeeze(sx.sx(386,1243,:)),'LineWidth',1.5)
% ylabel('shear strength (MPa)','FontSize',14,'FontWeight','bold')
% yyaxis right
% plot(p.t,squeeze(p.p(386,1243,1,:)),'LineWidth',1.5)
% ylabel('Fluid pressure (MPa)','FontSize',14,'FontWeight','bold')
% xlabel('t(s)','FontSize',15,'FontWeight','bold')
% title(['x=',num2str(p.x(386)),'km,y=',num2str(p.y(1243)),'km'] ...
%     ,'FontSize',16,'FontWeight','bold')
% subplot(221)
% rectangle('Position',[-5,-30,10,60],'Linewidth',3);hold on;
%  plot([0 0],[-30 30],'r');plot([-5 5],[0 0],'r');
%  plot(p.x(386),p.y(1243),'o','MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',4)
%  axis([-15 15 -40 40])
%  title('Model Domain','FontSize',16,'FontWeight','bold')
% 
% subplot(224)
% yyaxis left
% plot(sx.t,squeeze(sx.sx(386,1483,:)),'LineWidth',1.5)
% p_format('t(s)','shear strength (MPa)',['x=',num2str(p.x(386)),'km,y=',num2str(p.y(1483)),'km'])
% yyaxis right
% plot(p.t,squeeze(p.p(386,1483,1,:)),'LineWidth',1.5)
% p_format('t(s)','Fluid pressure (MPa)')
% 
% subplot(223)
% rectangle('Position',[-5,-30,10,60],'Linewidth',3);hold on;
%  plot([0 0],[-30 30],'r');plot([-5 5],[0 0],'r');
%  plot(p.x(386),p.y(1483),'o','MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',4)
%  axis([-15 15 -40 40])
%  title('Model Domain','FontSize',16,'FontWeight','bold')
% plot(T.t,squeeze(T.T(386,1243,1,:)))

%% Strss & Pressure at z = 0km (along strike)
% subplot(211)
% plot(p.y,squeeze(p.p(386,:,1,100)));
% p_format('along fault strike','Pressure (MPa)','Pressure Distributed on fault (nt=100)')
% 
% subplot(212)
% plot(sx.y,squeeze(sx.sx(386,:,100)));
% p_format('along fault strike','Shear stress (MPa)','Stress Distributed on fault (nt=100)')

%% compare Phi/beta
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
% % subplot(211)
% 
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
% l = legend('TP','Phi/beat=10','Phi/beat=50','Phi/beat=100','Phi/beat=300', ...
%     'Phi/beat=350','Phi/beta=400','Phi/beta=450','Phi/beta=500','Phi/beta=600');
% set(l,'FontWeight','bold','FontSize',15);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on'); % Grid on
% title('Pressure change(MPa)','FontWeight','bold','FontAngle','italic',...
%     'FontSize',24,...
%     'Interpreter','latex');
% 
% fig_frame();
% axis([0 3.4641 -10 77])

% subplot(212)
% for i = 1:11
%     % subplot(2,4,i)
%     name = ['name',num2str(i)];
%     TP_point(eval(name),eval(name),0,5);hold on ;
% end
% axis([0 3.4641 21 68])
% 
% set(gca,'colororder',MColor2)
% l = legend('TP','Phi/beat=12','Phi/beat=60','Phi/beat=120','Phi/beat=300', ...
%     'Phi/beat=350','Phi/beat=400','Phi/beat=450','Phi/beat=500','Phi/beat=550', ...
%     'Phi/beat=600');
% set(l,'FontWeight','bold','FontSize',12);
% set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
%     'on'); % Grid on
% title('Stress (MPa)','FontWeight','bold','FontAngle','italic',...
%     'FontSize',24,...
%     'Interpreter','latex');

%% show all cruves
% name1 = 'slipweak_m3_thermpre_deltaD1'; % Phi/beta = 12d1
% name2 = 'slipweak_m3_thermpre_deltaD4'; % Phi/beta = 3d2
% name3 = 'slipweak_m3_thermpre_deltaD7'; % Phi/beta = 3.5d2
% name4 = 'slipweak_m3_thermpre_deltaD5'; % Phi/beta = 4d2
% name5 = 'slipweak_m3_thermpre_deltaD8'; % Phi/beta = 4.5d2
% name6 = 'slipweak_m3_thermpre_deltaD6'; % Phi/beta = 5d2
% name7 = 'slipweak_m3_thermpre_deltaD9'; % Phi/beta = 5.5d2
% name8 = 'slipweak_m3_thermpre_deltaD3'; % Phi/beta = 6d2
% for i = 1:8
%     subplot(2,4,i)
%     name = ['name',num2str(i)];
%     TP_point(eval(name),eval(name),1,2);
%     hold on;
% end

%% compare two
% num=[11,22,33,44,55];
% j=1;
% for i=1:2:9
%     subplot(5,2,i)
%     TP_point(eval(['name',num2str(num(j))]),'Stress & Pressure',0,2);
%     subplot(5,2,i+1)
%     Vr(eval(['name',num2str(num(j))]),datadir,5);
%     axis([0 30 0 3.4641])
%     j=j+1;
% end





