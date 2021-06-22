function H = rgbhist(I,nBins,Nind)
% RGBHIST: color Histogram of an RGB image.
%
% nBins   : number of bins per EACH color => histogram is 'nBins^3' long.
% Nind    : Normalization index
%
%           0 -> Un-Normalized historam
%           1 -> l1 normalized
%           2 -> l2 normalized
%
% H       : The vectorized histogram.
%
% Author  : Mopuri K Reddy, SERC, IISc, Bengalur, INDIA.
% Date    : 25/10/2013.
if (size(I, 3) ~= 3)
    error('rgbhist:numberOfSamples', 'Input image must be RGB.')
end
if(nargin<3)
    Nind=0;
    % Default is un-normalized histogram
end

H=zeros([nBins nBins]);
for i=1:size(I,1)
    for j=1:size(I,2)
        p=double(reshape(I(i,j,:),[1 3])); %Ajuntem els valors RGB del píxel i,j en una matriu 1x3
     if ~(p(1) <= 65 && p(2) <= 65 && p(3) <= 65)
        %Fem que el color sigui invariant a la iluminació 
        p(1) = p(1)/(p(1) + p(2) + p(3));
        p(2) = p(2)/(p(1) + p(2) + p(3));
        %p(3) = p(3)/(p(1) + p(2) + p(3));
        %
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
% We can use 'reshape' to get back to 3D histogram
