function [nm] = name(num,nu)
if nargin==1
    nu=0;
end


switch num
    case 1
        nm='slipweak_m3_0.8_h_0.03_buff2';  % TP = F , Dia = F , W = 0 , nt=2000
        if(nu==1)
            nm='slipweak_m3_0.8_h_0.03_nt_3200'; % TP = F , Dia = F , W = 0 , nt=3200
        end
    case 2
        nm='slipweak_m3_thermpre';  % TP = T , Dia = F, W = 0
    if(nu==1)
        nm='slipweak_m3_thermpre'; % intact wall, TP , W = 0.05
    end
    case 3
        nm='slipweak_m3_thermpre'; % TP = T , Dia = F , W = 0.05
    case 4
        nm='slipweak_m3_thermpre_intact'; % intact wall, TP , W = 0
        if(nu==1)
           nm='slipweak_m3_thermpre_intact2'; % intact wall, TP , W = 0.05
        elseif(nu==2)
           nm='slipweak_m3_thermpre_intact22'; % intact wall, TP , W = 0.005
        end
    case 5
        nm='slipweak_m3_thermpre_damage'; % damage wall ,TP , W = 0
        if(nu==1)
           nm='slipweak_m3_thermpre_damage2'; % damage wall, TP , W = 0.05
        end
    case 6
        nm='slipweak_m3_thermpre_dia'; % Phi/beta = 12d2 , TP+Dil , W = 0.05
    case 7
        nm='slipweak_m3_thermpre_dia2'; % Phi/beta = 12d3 , TP+Dil, W = 0.05
    case 8
        nm='slipweak_m3_thermpre_dia3'; % Phi/beta = 12d4 , TP+Dil, W = 0.05
    case 9
        nm='slipweak_m3_thermpre_dia_deltaD'; % Phi/beta = 12d0 , TP+Dil, W = 0.05
    case 10
        nm='slipweak_m3_thermpre_deltaD1'; % Phi/beta = 12d1 , TP+Dil, W = 0.05
    case 11
        nm='slipweak_m3_thermpre_deltaD2'; % Phi/beta = 6d1 , TP+Dil , W = 0.05
    case 12
        nm='slipweak_m3_thermpre_deltaD3'; % Phi/beta = 6d2, TP+Dil, W = 0.05
    case 13
        nm='slipweak_m3_thermpre_deltaD4'; % Phi/beta = 3d2, TP+Dil, W = 0.05
        if(nu==1)
        nm='slipweak_m3_thermpre_300';
        end
    case 14
        nm='slipweak_m3_thermpre_deltaD5'; % Phi/beta = 4d2, TP+Dil, W = 0.05
        if(nu==1)
        nm='slipweak_m3_thermpre_400'; % Phi/beta = 4d2, TP+Dil, W = 0.05,nt=2000
        end
    case 15
        nm='slipweak_m3_thermpre_deltaD6'; % Phi/beta = 5d2, TP+Dil, W = 0.05
        if(nu==1)
        nm='slipweak_m3_thermpre_500'; % Phi/beta = 5d2, TP+Dil, W = 0.05,nt=2000
        elseif(nu==2)
            nm='slipweak_m3_thermpre_500_nt5000' % Phi/beta = 5d2, TP+Dil, W = 0.05,nt=5000
        elseif(nu==3)
             nm='slipweak_m3_thermpre_5001' % Phi/beta = 5d2, TP+Dil, W = 0.05,nt=5000 
        end
    case 16
        nm='slipweak_m3_thermpre_deltaD7'; % Phi/beta = 3.5d2, TP+Dil, W = 0.05
    case 17
        nm='slipweak_m3_thermpre_deltaD8'; % Phi/beta = 4.5d2, TP+Dil, W = 0.05
        if(nu==1)
        nm='slipweak_m3_thermpre_450'; % Phi/beta = 4.5d2, TP+Dil, W = 0.05,nt=2000
        end
    case 18
        nm='slipweak_m3_thermpre_deltaD9'; % Phi/beta = 5.5d2, TP+Dil, W = 0.05
    case 19
        nm='slipweak_m3_thermpre_quasi_tw_Phi_1200_longer'; 
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta =
        % 1000;nx=600;ny=400;h=0.06
        if(nu==1)
            nm='slipweak_m3_thermpre_quasi_tw_Phi_1000_longer';
            % nx=300,ny=300,h=0.12
        elseif(nu==2)
            nm='slipweak_m3_thermpre_quasi_tw_Phi_1000_h0.15';
            % nx=300,ny=300,h=0.15
        elseif(nu==3)
            nm='slipweak_m3_thermpre_quasi_tw_Phi_1000_h0.15_600';
            % nx=600,ny=600,h=0.15
        elseif(nu==4)
            nm='slipweak_m3_thermpre_quasi_tw_Phi_1000_nt300000'
             % nx=600,ny=600,h=0.15, nt=300000
        elseif(nu==5)
            nm= 'slipweak_m3_thermpre_quasi_tw_Phi_1000'
            % nx = 600, ny = 1000 , h=0.06, nt=400000 , phi/beta=1000
        end
    case 20
        nm='slipweak_m3_thermpre_quasi_tw_Phi_5000'
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 5000
    case 21
        nm='slipweak_m3_thermpre_quasi_tw_Phi_5000_V0.01'
        % quasidynamic, time-weakening 
        % L=3km,V=0.01km/s,T=500s, nt=200000,Phi/beta = 5000
    case 22
        nm='slipweak_m3_thermpre_quasi_tw_Phi_4000'
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 4000
    case 23
        nm='slipweak_m3_thermpre_quasi_tw_Phi_3000'
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 3000
    case 24
        nm='slipweak_m3_thermpre_quasi_tw_Phi_2000'
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 2000
    case 25
        nm='slipweak_m3_thermpre_quasi_tw_Phi_500'
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 500
    case 26
        nm='slipweak_m3_thermpre_quasi_tw_Phi_600';
        % quasidynamic, time-weakening 
        % L=3km,V=0.05km/s,T=100s, nt=200000,Phi/beta = 600
    case 27
        nm= 'slipweak_m3_thermpre_quasi_tw_Phi_1200'
        % nx = 600, ny = 1000 , h=0.06, nt=400000 , phi/beta = 1200
    case 28
        nm='h1'
        % nx = 600, ny = 600 , h = 0.15   
    case 29
        nm='h4'
        % nx=600, ny=700,h=0.09
    case 30
        nm='h2'
        % nx = 600, ny = 1000, h = 0.06
    case 31
        nm='h3'
         % nx = 600, ny = 2000, h = 0.03
    case 32
        nm='slipweak_m3_thermpre_quasi_tw_Phi_1000l'
    case 33
        nm='hh'
    case 34
        nm='hhf'
end