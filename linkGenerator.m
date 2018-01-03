function [ userIDs] = linkGenerator()
%UserIDs are stored in variable "userIDs", new generated txt file is "merger.txt"

userIDs = randi([1 63698], 1, 20);
userIDs = sort(userIDs,'ascend');
linkM = zeros(20);
linkM(1,:) = [0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 1 0];
linkM(2,:) = [0 0 1 0 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1];
linkM(3,:) = [0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0];
linkM(4,:) = [0 0 0 0 0 1 1 0 1 1 0 1 1 0 1 0 1 0 1 1];
linkM(5,:) = [0 0 0 0 0 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0];
linkM(6,:) = [0 0 0 0 0 0 1 0 1 0 1 0 0 1 1 0 0 0 0 0];
linkM(7,8)  = 1;
linkM(8,9)  = 1;
linkM(8,16) = 1;
linkM(10,18)= 1;
linkM(13,18)= 1;
linkM(17,18)= 1;

%Read Input Data
%CHANGE "test.txt" if you're using different filename.
fileID = fopen('test.txt', 'r');
S = textscan(fileID, '%d %d %d %d\r\n');
A = zeros([817035 4]);
A(:,1) = S{1,1};
A(:,2) = S{1,2};
A(:,3) = S{1,3};
A(:,4) = S{1,4};
fclose(fileID);

%Create new input file using the simulated links
fileID = fopen('merger.txt','w+');

kSize = size(A,1);
k = 1;
for i = 1:size(linkM,1)
   %Iterate k until we come to the user
   while k < kSize && A(k,1) < userIDs(i)
       fprintf(fileID,'%d %d %d %d\r\n',A(k,1),A(k,2),A(k,3),A(k,4));
       k=k+1;
   end
   %Iterate k until we have a link with user
   for j = i+1:size(linkM,2)
      while k < kSize && A(k,1) <= userIDs(i) && A(k,2) < userIDs(j)
           fprintf(fileID,'%d %d %d %d\r\n',A(k,1),A(k,2),A(k,3),A(k,4));
           k=k+1;
      end
      %Establish link
      if linkM(i,j) == 1
          fprintf(fileID,'%d %d %d %d\r\n',userIDs(i),userIDs(j),1,0);
      end
   end
end
while k < kSize
       fprintf(fileID,'%d %d %d %d\r\n',A(k,1),A(k,2),A(k,3),A(k,4));
       k=k+1;
end
fclose(fileID);