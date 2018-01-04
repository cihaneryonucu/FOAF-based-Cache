
% plot([5 7 9 10 11 13 15],[ 4*Result5_5 Result7_5 Result9_5 4*Result10_5 Result11_5 Result13_5 4*Result15_5],'-*');%h=5 k values
% text(4.5,4*Result5_5-4,num2str(4*Result5_5),'FontSize',12);
% text(9.5,4*Result10_5-4,num2str(4*Result10_5),'FontSize',12);
% text(14.5,4*Result15_5-4,num2str(4*Result15_5),'FontSize',12);

%  plot([5 7 9 10 11 13 15],[ 4*Result5_10 Result7_10 Result9_10 4*Result10_10 Result11_10 Result13_10 4*Result15_10],'-*');%h=10 k values
%  text(4.7,4*Result5_10-3,num2str(4*Result5_10),'FontSize',12);
%  text(9.7,4*Result10_10-3,num2str(4*Result10_10),'FontSize',12);
%  text(14.6,4*Result15_10-3,num2str(4*Result15_10),'FontSize',12);

% plot([5 7 9 10 11 13 15],[ 4*Result5_15 Result7_15 Result9_15 4*Result10_15 Result11_15 Result13_15 4*Result15_15],'-*');%h=15 k values
% text(4.5,4*Result5_15-3,num2str(4*Result5_15),'FontSize',12);
% text(9.7,4*Result10_15-3.5,num2str(4*Result10_15),'FontSize',12);
% text(14.7,4*Result15_15-3,num2str(4*Result15_15),'FontSize',12);

% plot([5 7 9 10 11 13 15],[ 4*Result5_5 Result5_7 Result5_9 4*Result5_10 Result5_11 Result5_13 4*Result5_15],'-*');%k=5 h values
% text(4.5,4*Result5_5-3,num2str(4*Result5_5),'FontSize',12);
% text(9.8,4*Result5_10-3.5,num2str(4*Result5_10),'FontSize',12);
% text(14.5,4*Result5_15-3.7,num2str(4*Result5_15),'FontSize',12);

% plot([5 7 9 10 11 13 15],[ 4*Result10_5 Result10_7 Result10_9 4*Result10_10 Result10_11 Result10_13 4*Result10_15],'-*');%k=10 h values
% text(4.5,4*Result10_5-3,num2str(4*Result10_5),'FontSize',12);
% text(9.5,4*Result10_10-3.5,num2str(4*Result10_10),'FontSize',12);
% text(14.5,4*Result10_15-3.7,num2str(4*Result10_15),'FontSize',12);

% plot([5 7 9 10 11 13 15],[ 4*Result15_5 Result15_7 Result15_9 4*Result15_10 Result15_11 Result15_13 4*Result15_15], '-*');%k=15 h values
% text(4.5,4*Result15_5-3,num2str(4*Result15_5),'FontSize',12);
% text(9.5,4*Result15_10-3.5,num2str(4*Result15_10),'FontSize',12);
% text(14.5,4*Result15_15-3.7,num2str(4*Result15_15),'FontSize',12);

ylabel('R-Precision')
axis([3 17 0 100])%Axis limits;
% xlabel('h Values')
% xlabel('Cache Size')
