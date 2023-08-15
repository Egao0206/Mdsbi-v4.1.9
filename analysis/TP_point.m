function [] = TP_point(name,title,point,cases)
% plot single picture to show the P and Sx change on the lone site
if nargin<3
    point = 'lone';
    cases = 1;
end
if(point==2)
    point = 'ltwo';
elseif(point==0)
    point='hypo';
else
    point = 'lone';
end

if(nargin==4)
    cases = cases;
else
    cases = 1;
end


p = [point,'_p'];
sx = [point,'_sx'];
T = [point,'_T'];
Ux = [point,'_Ux'];
Vx = [point,'_Vx'];
datadir = '/home/test/seis_software/mdsbi-v4.1.9/data';
A=init(name,datadir);
pd=loadmesh(A,p);
sxx=loadmesh(A,sx);
Ux = loadmesh(A,Ux);
Vx=loadmesh(A,Vx);
if (cases==1)
    % p and sx
    yyaxis right
    plot(pd.t,smooth(pd.p(1,:)),'LineWidth',3.5)
    ylim([min(pd.p(1,:))-1 max(pd.p(1,:))+1])
    hold on
    p_format('t(s)','Pressure (MPa)',title)
    set(gca,'colororder',Mycolor(6)); % selected curve color
    set(gca,'YColor',Mycolor(6));
    ylim([-1 80])

    yyaxis left
    plot(sxx.t,smooth(sxx.sx),'LineWidth',3.5);
   
    ylim([min(sxx.sx)-1 max(sxx.sx)+1])
    ylim([25 79])
    p_format('t(s)','Stress (MPa)',title)
    l=legend('Pressure (MPa)','Sress (MPa)')
    set(l,'FontWeight','bold','FontSize',16);
    set(gca,'colororder',Mycolor(2));
    set(gca,'YColor',Mycolor(2));
    set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
    'on','FontName','Times','FontSize',24,'FontWeight','bold'); % Grid on
elseif(cases==2)
    % Sx and p on the left
    yyaxis left
    plot(pd.t,smooth(pd.p(1,:)),'LineWidth',2.5);set(gca,'colororder',Mycolor(2));
    ylim([min(min(sxx.sx),min(pd.p(1,:)))-1 max(max(sxx.sx),max(pd.p(1,:)))+1])
    hold on;
    plot(sxx.t,smooth(sxx.sx),'LineWidth',2.5);
    p_format('t(s)','Pressure (MPa) & Stress (MPa)',title)
    set(gca,'YColor',[0.0823529411764706 0.0823529411764706 0.301960784313725]); %setting left yxis color
    % Ux and Vx on the right
    yyaxis right
    % plot(Ux.t,smooth(Ux.Ux),'r','LineWidth',2.5);
    % hold on;
    % ylim([min(min(Ux.Ux),min(Vx.Vx))-1 max(max(Ux.Ux),max(Vx.Vx))+1])
    plot(Vx.t,smooth(Vx.Vx),'color',Mycolor(6),'LineWidth',2.5);
    p_format('t(s)','Slip rate (m/s)',title)
    set(gca,'Ycolor',Mycolor(6));
    l=legend('P','Sx','Ux','Vx');
    set(l,'FontWeight','bold','FontSize',16);
set(gca,'LineStyleOrder',{'-'},'XGrid','on','XMinorGrid','on','YGrid',...
    'on','FontName','Times','FontSize',24,'FontWeight','bold'); % Grid on
    xlim([0 3.4641])
    ylim([0 max(Vx.Vx)*2])
elseif(cases==3) % Tempreture only
    TT = loadmesh(A,T)
    plot(TT.t,smooth(TT.T(1,:)),'LineWidth',1.5);
    ylim([min(TT.T(1,:))-1 max(TT.T(1,:))+1])
elseif(cases==4) % Pressure only
    plot(pd.t,pd.p(1,:),'LineWidth',2.5)
    % ylim([min(pd.p(1,:))-1 max(pd.p(1,:))+1])
    p_format('t(s)','Pressure (MPa)',title)
elseif(cases==5) % Strsss only
    plot(sxx.t,sxx.sx,'LineWidth',1.5);
    ylim([min(sxx.sx)-1 max(sxx.sx)+1])
    p_format('t(s)','Stress (MPa)',title)
elseif(cases==6)
    yyaxis left
    plot(pd.t,smooth(pd.p(1,:)),'LineWidth',1.5);set(gca,'colororder',Mycolor(2));
    ylim([min(min(sxx.sx),min(pd.p(1,:)))-1 max(max(sxx.sx),max(pd.p(1,:)))+1])
    hold on;
    plot(sxx.t,smooth(sxx.sx),'LineWidth',1.5);
    p_format('t(s)','Pressure (MPa)',title)
    set(gca,'YColor',[0.0823529411764706 0.0823529411764706 0.301960784313725]);
    yyaxis right
    TT = loadmesh(A,T)
    plot(TT.t,smooth(TT.T(1,:)),'LineWidth',1.5);
    ylim([min(TT.T(1,:))-1 max(TT.T(1,:))+1])
end
end