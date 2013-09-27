% This code plots the Figure 2(a) of the research proposal
%clc; clear;
%load reactiondata.mat; % Make sure Data directory is in MATLAB path
kvtot=2000;
Y=KvA([1:20:end],2)./kvtot;
t=KvA([1:20:end],1);
Y2=IKvA([1:20:end],2)./kvtot;
Y3=KvAWorld([1:20:end],2)./kvtot;
Y4=KvACluster([1:20:end],2)./kvtot;
h=figure();
plot(t,Y,'-rs','LineWidth',1)
hold on;
plot(t,Y2,'-bo','LineWidth',1)
plot(t,Y3,'-gp','LineWidth',1)
plot(t,Y4,'-m>','LineWidth',1)
title('Normalized Channel Activity','FontSize',12);
h_legend=legend('Without inhibition','Inhibtion','Increased Diffusion','SUMO Molecules Clustered',2,'Location','SouthEast');
set(h_legend,'FontSize',12);
set(gca,'YLim',[0 0.55]);
set(gca,'XLim',[0 0.0020],'XTick',[0,.0020/2,.0020]);
set(gca,'XTickLabel',{'0','0.5','1'},'FontSize',12);
xlabel('time','FontSize',12);
ylabel('KvA/Ktot','FontSize',12);
print(h,'-dtiff','GraphInhibit');
print -dpdf resu.pdf
