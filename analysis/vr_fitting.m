clc;clear;
% Vr_fitting
l=200;
w=10;
% g_ratio=[0.6,0.7,0.84,0.88,0.9,0.92,0.95,0.97];
% g_ratio = ["0.6","smooth","gaussian"]
% na=["0.4_h_0.04_800*2000","0.6_h_0.04_800*2000","0.8_h_0.04_800*2000","0.4_h_0.03_800*2000","0.6_h_0.03_800*2000","0.8_h_0.03_800*2000","0.4_h_0.02_800*2000","0.6_h_0.02_800*2000","0.8_h_0.02_800*2000"];
g_ratio=[0.5,0.6,0.8,0.9];
na=["0.5","0.6","0.8_h_0.03_buff2","0.9"];
% g_ratio=[0.8,0.8,0.8];
W=(0.96/pi)*w;
L=linspace(0,l/2,1000);
LW=L/W;
vs=3.4641;

datadir = ['/home/test/seis_software/mdsbi-v4.1.9/data'];
figure('color',[1,1,1],'Position',[200 200 1500 700])
for i=1:length(na)
    % numercial
    for L2 = 15
        name=strcat('slipweak_m3_',num2str(na(i)));
        [Vx,A] = load(name,datadir,'flt_Vx');
        [x,vrr]=Vr(name,datadir,5,'r',Vx.dy);
        % subplot(1,length(na),i);
        h=plot(x/W,vrr/vs,'LineWidth',1.5);hold on
        % theoretical
        v2=vrr(L2/(Vx.dy)+Vx.ny/2);
        as2=sqrt(1-(v2/vs)^2);
        vrs=sqrt(1-(as2^(-1)+(1-g_ratio(i))*(LW-L2/W)).^(-2));
        plot(LW,vrs,'k')
        axis([0 16 0 1])
        plot(L2/W,v2/vs,'r*')
        title('slipweak_different_gratio(0.5,0.6,0.8,0.9)','Interpreter','latex');
        % legend('Numercial','Theoretical','Location','best');
    end
end
% legend(h,'0.6','0.7','0.84','0.88','0.9','0.92','0.95','0.97','Location','best');



