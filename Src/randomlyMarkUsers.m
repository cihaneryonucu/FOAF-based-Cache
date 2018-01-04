function [ markedVertices ] = randomlyMarkUsers(n)
markedVertices = zeros(n,1);
r=randi(63731,n,1);
markedVertices(r) = 1;
end

