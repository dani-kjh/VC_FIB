function [llindar] = globalBinE6(I,perc)

h = imhist(I);
chist = cumsum(h);
totalPixels = chist(end);

chistU = chist > (totalPixels - totalPixels*perc);
llindar = find(chistU,1); %per sota d'aquest valor hi ha el 1-perc de píxels, per sobre perc
end

