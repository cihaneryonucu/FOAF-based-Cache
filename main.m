%Runtime Settings
global maxFriends
global k
global currentCache
global h
h=5;
k=10;
maxFriends=1098;%maxFriends is 1098 in our test data. This is useful for creating arrays
currentCache= [1,2,3,4,5,23,46,76,34,78];
targetFriendNo=100;
currentFriends = zeros(targetFriendNo,1);
currentFriends(1:k)=currentCache;
numberOfFriends = k;


[adjList, sizes]=readGraph();%This reads the graph and convert it to the adj. list.
    %i'th row of the adjList has the friends of the i'th user. sizes are the
    %friend number of i'th user
targetUsers=randomlyMarkUsers(targetFriendNo);
targetUsers(7)=1;
[P,sizeOfCommonFriends]=createPMatrix(adjList,sizes,currentCache,k);% Now that we have our P matrix

for i=1:100
    
    topH=rankH(P,sizeOfCommonFriends,h,currentFriends,numberOfFriends);%Get the top ranked h users.

    %Now that we ranked the top 5 friends. We will select and add one friend
    %preferably from the same community
    for j=1:h
        if targetUsers(topH(j)) == 1
            currentCache(1:k-1) = currentCache(2:k);
            currentCache(k)=topH(j);
            numberOfFriends = numberOfFriends + 1;
            currentFriends(numberOfFriends)=topH(j);
            [P,sizeOfCommonFriends]=insertToP(P,sizeOfCommonFriends,adjList,sizes,k,currentCache);
            break;
        end
    end
    
end
% xlabel('R-Precision')
% axis([0 100 5 15])%Axis limits
% 
% plot(RPrecisions,Kvalues);
% ylabel('Cache Size')
% 
% 
% plot(RPrecisions,Hvalues);
% ylabel('h value')
