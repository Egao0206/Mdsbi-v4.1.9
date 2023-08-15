clc;clear
datadir = ['/home/test/seis_software/mdsbi-v4.1.9/data'];
% %% Dc & Asperity_compare
% %dc=1.6
% figure('color',[1,1,1])
% subplot(122)
% Vr('slipweak_m3_0.6_cfl',datadir,5,'b');
% hold on ; 
% Vr('slipweak_m3_0.6_smooth',datadir,5,'r');
% Vr('slipweak_m3_0.6_gaussian',datadir,5,'g');
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);
% axis([0 50 0 4.5]);
% legend('Ellipse','Smooth','Gaussian','Vs','Location','best');title('Dc=1.6')
% %dc=0.4
% subplot(121)
% Vr('slipweak_m3_0.6',datadir,5,'b');
% hold on;
% Vr('slipweak_m3_smooth',datadir,5,'r');
% Vr('slipweak_m3_gaussian',datadir,5,'g');
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);
% axis([0 50 0 4.5]);
% legend('Ellipse','Smooth','Gaussian','Vs','Location','best');title('Dc=0.4')
% 
% %% cfl_compare
% figure('color',[1,1,1])
% % gc/g0=0.6
% Vr('slipweak_m3_0.6_tcfl_0.55',datadir,5,'c');
% hold on;
% Vr('slipweak_m3_0.6',datadir,5,'r');
% 
% Vr('slipweak_m3_0.6_tcfl_0.6',datadir,5,'b');
% Vr('slipweak_m3_0.6_tcfl',datadir,5,'g');
% legend('0.1','0.3464','0.4','0.5')
% axis([0 50 0 3.4641]);

%% dc compare
% figure('color',[1,1,1])
% Vr('slipweak_m3_0.4',datadir,5,'b');
% hold on;pf_sy_ye
% Vr('slipweak_m3_0.4_dc_0.6',datadir,5,'r');
% Vr('slipweak_m3_0.4_h_0.8',datadir,5,'g');
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);
% legend('dc=0.4(oringin)','dc=0.6','dc=0.8','Vs')
% axis([0 50 0 3.6]);

%% h compare (Wbuff+W=40km)
% Wbuff/W=1/3
% figure('color',[1,1,1])
% Vr('slipweak_m3_0.8_h_0.04_buff',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.8_h_0.03_buff',datadir,5,'r',0.03);
% Vr('slipweak_m3_0.8_h_0.02_buff',datadir,5,'g',0.02);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('h=0.04','h=0.03','h=0.02','Vs')
% title('Wbuff=30km,W=10km')
% Wbuff/W=1/2
% figure('color',[1,1,1])
% Vr('slipweak_m3_0.8_h_0.04_buff2',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.8_h_0.03_buff2',datadir,5,'r',0.03);
% Vr('slipweak_m3_0.8_h_0.02_buff2',datadir,5,'g',0.02);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('h=0.04','h=0.03','h=0.02','Vs')
% title('Wbuff=20km,W=10km')
% figure('color',[1,1,1])
% Vr('slipweak_m3_0.8_h_0.04_buff3',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.8_h_0.03_buff3',datadir,5,'r',0.03);
% Vr('slipweak_m3_0.8_h_0.02_buff3',datadir,5,'g',0.02);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('h=0.04','h=0.03','h=0.02','Vs')
% title('Wbuff=10km,W=10km')

%% computing domain compare
figure('color',[1,1,1])
% Vr('slipweak_m3_0.4_h_0.04',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.4_h_0.04_800*2000',datadir,5,'r',0.04);
% Vr('slipweak_m3_0.4_h_0.04_400*1000',datadir,5,'g',0.04);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);

%% g_ratio=0.8
% Vr('slipweak_m3_0.8_h_0.04_1800*4500',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.8_h_0.04_800*2000',datadir,5,'r',0.04);
% Vr('slipweak_m3_0.8_h_0.04_400*1000',datadir,5,'g',0.04);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('nx=1800, ny=4500','nx=800, ny=2000','nx=400, ny=1000','Vs')
% title('h=0.04')
% Vr('slipweak_m3_0.8_h_0.04_800*2000',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.8_h_0.03_800*2000',datadir,5,'r',0.03);
% Vr('slipweak_m3_0.8_h_0.02_800*2000',datadir,5,'g',0.02);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('h=0.04','h=0.03','h=0.02','Vs')
% title('nx=800,ny=2000')


%% g_ratio=0.6
% Vr('slipweak_m3_0.6_h_0.04_1800*4500',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.6_h_0.04_800*2000',datadir,5,'r',0.04);
% Vr('slipweak_m3_0.6_h_0.04_400*1000',datadir,5,'g',0.04);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('nx=1800, ny=4500','nx=800, ny=2000','nx=400, ny=1000','Vs')
% title('gratio=0.6,h=0.04');

% Vr('slipweak_m3_0.6_h_0.04_800*2000',datadir,5,'b',0.04);
% hold on;
% Vr('slipweak_m3_0.6_h_0.03_800*2000',datadir,5,'r',0.03);
% Vr('slipweak_m3_0.6_h_0.02_800*2000',datadir,5,'g',0.02);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('h=0.04','h=0.03','h=0.02','Vs')
% title('gratio=0.6,nx=800,ny=2000')

%% thermal_compare
% nz & dz
% Vr('slipweak_m3_0.8_h_0.03_buff2',datadir,5,'b',0.03);
% hold on;
% Vr('slipweak_m3_thermpre_nz_200_dz_0.3',datadir,5,'k',0.03);
% Vr('slipweak_m3_thermpre_nz_100_dz_0.3',datadir,5,'m',0.03);
% Vr('slipweak_m3_thermpre',datadir,5,'r',0.03);
% Vr('slipweak_m3_thermpre_dz_0.3',datadir,5,'g',0.03);
% Vr('slipweak_m3_thermpre_nz_1',datadir,5,'c',0.03);
% Vr('slipweak_m3_thermpre_nz_1_dz_0.1',datadir,5,'k--',0.03);
% plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
% legend('thermalpre=F','nz=200,dz=0.3','nz=100,dz=0.3','nz=10,dz=0.5','nz=10,dz=0.3','nz=1,dz=0.3','nz=1,dz=0.1','Vs')
% title('slip-on-a-plane,g_ratio=0.8',Interpreter='latex')

% intact rock wall
Vr('slipweak_m3_0.8_h_0.03_buff2',datadir,5,'k',0.03);
hold on;
Vr('slipweak_m3_thermpre',datadir,5,'b',0.03);
Vr('slipweak_m3_thermpre_intact',datadir,5,'r',0.03);
Vr('slipweak_m3_thermpre_damage',datadir,5,'g',0.03);
plot([0 50],[3.4641 3.4641],'linewidth',1.5);axis([0 50 0 4.6]);
legend('thermalpre=F','inital','intact','damage','Vs')
title('slip-on-a-plane,g_ratio=0.8',Interpreter='latex')