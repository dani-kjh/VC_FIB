function [H] = hsvhist(I,nBins,Nind)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
I = rgb2hsv(I);

H=zeros([nBins nBins]);
for i=1:size(I,1)
    for j=1:size(I,2)
        p=double(reshape(I(i,j,:),[1 2])); %Ajuntem els valors RGB del píxel i,j en una matriu 1x3
        p=uint8(floor(p*(nBins)))+1; %Assignem els valors al bin corresponent del histograma (per aixo fem 256/nbins)
        if p(1) == nBins + 1
            p(1) = nBins;
        end
         if p(2) == nBins + 1
            p(2) = nBins;
         end
%          if p(3) == nBins + 1
%             p(3) = nBins;
%          end
        H(p(1),p(2))=H(p(1),p(2))+1; %Guardem els valors a les corresponents columnes del resultat
    end
end
H=H(:);

% Un-Normalized histogram
if(Nind==1)
    H=H./sum(H);
    % l1 normalization
else if(Nind==2)
        H=normc(H);
        % l2 normalization
    end
end

