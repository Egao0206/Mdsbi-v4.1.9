% single point
clc;clear
% name = 'slipweak_test'; % only for test time-weakening
datadir = '/home/test/seis_software/mdsbi-v4.1.9/data';

A=init(name(15,1),datadir);
% sx=loadmesh(A,'hypo_sx');
% Vx=loadmesh(A,'hypo_Vx');
% 
% % plot hypo stress and slip velocity and peek slip rate
% figure('color',[1,1,1])
% subplot(221)
% plot(sx.t,sx.sx,'LineWidth',1.5);
% p_format('t(s)','Stress(MPa)','Stress')
% subplot(222)
% plot(Vx.t,Vx.Vx,'LineWidth',1.5);
% p_format('t(s)','Slip rate(m/s)','Slip rate')

% plot along strike
sxx=loadmesh(A,'flt_sx');
Vxx=loadmesh(A,'flt_Vx');
nt=sxx.nt;
nx=Vxx.nx/2;
subplot(223)
plot(Vxx.y,max(squeeze(Vxx.Vx(nx,:,:)),[],2));
p_format('position along fault strike','slip rate(m/s)','Peek slip rate')
hold on;
plot(Vxx.y,squeeze(Vxx.Vx(nx,:,nt)));
legend('peek slip rate','final slip rate')
subplot(224)
plot(sxx.y,squeeze(sxx.sx(nx,:,nt)));
p_format('position along fault strike','Stress(MPa)',['Stress distribution (nt=',num2str(nt),')'])

