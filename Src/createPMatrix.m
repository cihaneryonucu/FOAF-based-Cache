function [ P, sizesOfCommonFriends ] = createPMatrix( adjList,sizes,list,k )
P = zeros(k,k,1098);%Max friend can be 1098
sizesOfCommonFriends = zeros(k,k);
for i=1:k
    for j=i+1:k
        [P(i,j,:), sizesOfCommonFriends(i,j)] = commonFriends(adjList(list(i),:),sizes(list(i),:),adjList(list(j),:),sizes(list(j),:));
    end
end

end

