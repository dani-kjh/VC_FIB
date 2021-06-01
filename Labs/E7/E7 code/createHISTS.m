function [Hist0,Hist1] = createHISTS(A,nClusters)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Hist0 = zeros(1,nClusters);
Hist1 = zeros(1,nClusters);

[files columnes] = size(A);
for i = 1:files
    if A(i,2) == 0
        Hist0(A(i,1)) = Hist0(A(i,1)) + 1;
    else
         Hist1(A(i,1)) = Hist1(A(i,1)) + 1;
    end
end

        
end

