function [ P, sizeOfCommonFriends ] = insertToP( P,sizeOfCommonFriends,adjList,sizes,k,list )
%First shift elements.
for i=1:k
   for j=i+1:k-1
      P(i,j,:) = P(i+1,j+1,:);
      sizeOfCommonFriends(i,j) = sizeOfCommonFriends(i+1,j+1);
   end 
end

for i=1:k
    [P(i,k,:), sizeOfCommonFriends(i,k)] = commonFriends(adjList(list(i),:),sizes(list(i),:),adjList(list(k),:),sizes(list(k),:));
end

