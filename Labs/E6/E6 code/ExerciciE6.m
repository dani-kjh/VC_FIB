I = rgb2gray(imread('DN2.jpg'));
% imshow(I)

perc = 0.649; % millor valor. Amb 0.8 dona un resultat raro.
llindar = globalBinE6(I,perc); %per sota d'aquest valor hi ha el 1-perc de píxels, per sobre perc
BW = I > llindar;
%  imshow(BW)
 
CC = bwconncomp(BW);
R = regionprops(CC, 'BoundingBox', 'Area'); % ho faig servir per agafar les dimensions del full

J = imcrop(BW, [184 191 1178 1655]); %extret de R
% imshow(J);

AfterColFilt = colfilt(I, [10 10], 'sliding', @localBinE6, 10); 
% imshow(AfterColFilt, []);

SE = strel('disk',3);
RES = imopen(AfterColFilt, SE);
imshow(RES);
 
 CCA = bwconncomp(RES);
 measurements = regionprops(CCA,'BoundingBox');
 