function [ results,size ] = commonFriends( F1,n1,F2,n2 )
results = zeros(1098,1);
size=0;
for i=1:n1
    for j=1:n2
        if F1(i) == F2(j)
            results(size+1) = F1(i);
            size = size +1;
            break;
        end
    end
end

end

