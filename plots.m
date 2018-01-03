
% plot([5 10 15],[ 4*Result5_5 4*Result10_5 4*Result15_5],'-*');%h=5 k values
% text(4.5,4*Result5_5-4,num2str(4*Result5_5),'FontSize',12);
% text(9.5,4*Result10_5-4,num2str(4*Result10_5),'FontSize',12);
% text(14.5,4*Result15_5-4,num2str(4*Result15_5),'FontSize',12);

%  plot([5 10 15],[ 4*Result5_10 4*Result10_10 4*Result15_10],'-*');%h=10 k values
%  text(4.7,4*Result5_10-3,num2str(4*Result5_10),'FontSize',12);
%  text(9.7,4*Result10_10-3,num2str(4*Result10_10),'FontSize',12);
%  text(14.6,4*Result15_10-3,num2str(4*Result15_10),'FontSize',12);

% plot([5 10 15],[ 4*Result5_15 4*Result10_15 4*Result15_15],'-*');%h=15 k values
% text(4.5,4*Result5_15-3,num2str(4*Result5_15),'FontSize',12);
% text(9.7,4*Result10_15-3.5,num2str(4*Result10_15),'FontSize',12);
% text(14.7,4*Result15_15-3,num2str(4*Result15_15),'FontSize',12);

% plot([5 10 15],[ 4*Result5_5 4*Result5_10 4*Result5_15],'-*');%k=5 h values
% text(4.5,4*Result5_5-3,num2str(4*Result5_5),'FontSize',12);
% text(9.5,4*Result5_10-3.5,num2str(4*Result5_10),'FontSize',12);
% text(14.5,4*Result5_15-3.7,num2str(4*Result5_15),'FontSize',12);

% plot([5 10 15],[ 4*Result10_5 4*Result10_10 4*Result10_15],'-*');%k=10 h values
% text(4.5,4*Result10_5-3,num2str(4*Result10_5),'FontSize',12);
% text(9.5,4*Result10_10-3.5,num2str(4*Result10_10),'FontSize',12);
% text(14.5,4*Result10_15-3.7,num2str(4*Result10_15),'FontSize',12);

plot([5 10 15],[ 4*Result15_5 4*Result15_10 4*Result15_15]);%k=15 h values
text(4.5,4*Result15_5-3,num2str(4*Result15_5),'FontSize',12);
text(9.5,4*Result15_10-3.5,num2str(4*Result15_10),'FontSize',12);
text(14.5,4*Result15_15-3.7,num2str(4*Result15_15),'FontSize',12);

ylabel('R-Precision')
axis([3 17 0 100])%Axis limits;
xlabel('h Value')