function [ highest ] = rankH( P,sizesOfP,h )
counts = zeros(63731,1);%There are 63731 vertices 1 to 63731 we will look who has in P more
[k,~,~]=size(P);
for i=1:k
    for j=i+1:k
        for x=1:sizesOfP(i,j)
            counts(P(i,j,x)) = counts(P(i,j,x)) + 1;
        end
    end
end

[~,sorted] = sort(counts,'descend');
highest = sorted(1:h);% Get max ranked h elements and return.

end

