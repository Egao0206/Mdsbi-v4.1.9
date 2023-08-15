%calculate ti
ts=81.24;
mu=32.04;
td=63;
dc=0.4;
W=10;
gratio=[0.4 0.5 0.8 0.88 0.9 0.92 0.95 0.97]
ti=zeros(1,length(gratio));
Gc=0.5*(ts-td)*dc;
for i=1:length(gratio)
    G0=Gc/gratio(i)
    ti(i)=sqrt((G0*pi*mu)/0.96/W)+td;
end
ti