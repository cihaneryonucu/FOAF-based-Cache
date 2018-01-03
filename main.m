%Runtime Settings
% global maxFriends
% global k
% global currentCache
% global h
h=15;
k=15;
maxFriends=1098;%maxFriends is 1098 in our test data. This is useful for creating arrays
targetFriendNo=25;
res=zeros(10,1);
for a=1:10
    targetUsers = zeros(63731,1);
    tmp=linkGenerator();
    targetUsers(tmp)=1;

    currentCache=zeros(k,1);
    currentCache(1:floor(k/2))= tmp(1:floor(k/2));%Get first 2
    %currentCache(1:floor(k/2))= tmp(targetFriendNo+1-floor(k/2):targetFriendNo);%Get last 2
    currentCache(ceil(k/2):k)= randi([1 63731], ceil(k/2),1);

    currentFriends = zeros(targetFriendNo,1);
    currentFriends(1:k)=currentCache;
    numberOfFriends = k;

    [adjList, sizes]=readGraph();%This reads the graph and convert it to the adj. list.
        %i'th row of the adjList has the friends of the i'th user. sizes are the
        %friend number of i'th user
    %targetUsers=randomlyMarkUsers(targetFriendNo);
    %targetUsers(7)=1

    [P,sizeOfCommonFriends]=createPMatrix(adjList,sizes,currentCache,k);% Now that we have our P matrix

    for i=1:(targetFriendNo-floor(k/2))

        topH=rankH(P,sizeOfCommonFriends,h,currentFriends,numberOfFriends);%Get the top ranked h users.

        %Now that we ranked the top h friends. We will select and add one friend
        %preferably from the same community
        selected=0;
        for j=1:h
            if targetUsers(topH(j)) == 1
                currentCache(1:k-1) = currentCache(2:k);
                currentCache(k)=topH(j);
                numberOfFriends = numberOfFriends + 1;
                currentFriends(numberOfFriends)=topH(j);
                [P,sizeOfCommonFriends]=insertToP(P,sizeOfCommonFriends,adjList,sizes,k,currentCache);
                selected=1;
                break;
            end
        end
        if selected==0
            currentCache(1:k-1) = currentCache(2:k);
            currentCache(k)=topH(1);
            numberOfFriends = numberOfFriends + 1;
            currentFriends(numberOfFriends)=topH(1);
            [P,sizeOfCommonFriends]=insertToP(P,sizeOfCommonFriends,adjList,sizes,k,currentCache);
        end


    end
    hits=0;
    for i=1:numberOfFriends
       for j=1:targetFriendNo
          if(currentFriends(i) == tmp(j))
              hits = hits+1;
              break;
          end
       end 
    end
    res(a)=hits;
end
% plot(RPrecisions,Kvalues);
% 
% ylabel('R-Precision')
% axis([0 15 0 100])%Axis limits
% xlabel('Cache Size')
% 
% 
% plot(RPrecisions,Hvalues);
% xlabel('h value')
