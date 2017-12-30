%Runtime Settings
global maxFriends
global k
global currentCache
global h
h=5;
k=5;
maxFriends=1098;%maxFriends is 1098 in our test data. This is useful for creating arrays
currentCache= [1,2,3,4,5];




[adjList, sizes]=readGraph();%This reads the graph and convert it to the adj. list.
%i'th row of the adjList has the friends of the i'th user. sizes are the
%friend number of i'th user
targetUsers=randomlyMarkUsers(100);
[P,sizeOfCommonFriends]=createPMatrix(adjList,sizes,currentCache,k);% Now that we have our P matrix
topH=rankH(P,sizeOfCommonFriends,h);%Get the top ranked h users.


