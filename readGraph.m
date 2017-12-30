function [ adjList,sizes ] = readGraph()

in=fopen('input.txt','r');
data=textscan(in,'%d %d %d %d');
%fgetl(in) '1 2 1 0'
adjList = zeros(63731,1098);
sizes = zeros(63731,1);
for i=1:817035
   fromNode=data{1}(i);
   toNode = data{2}(i);
   
   adjList( fromNode, sizes( fromNode ) +1 )=toNode;
   sizes( fromNode ) = sizes( fromNode ) + 1;
   adjList( toNode, sizes( toNode)+1 )=fromNode;
   sizes( toNode ) = sizes( toNode) + 1;   
end

end

