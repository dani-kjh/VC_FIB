clear 
Image = rgb2gray(imread('Joc_de_caracters.jpg'));
[f,c] = size(Image);
BI = Image < 128; %lletres estan en negre
CC = bwconncomp(BI);
props = regionprops(CC,'Extent', 'Solidity','Eccentricity');

llistaRadi = obteRadis(CC,f,c);
Sol = [props.Solidity];
Ecc = [props.Eccentricity];
Ext = [props.Extent];
X = [Ext; Sol; Ecc; llistaRadi;]';

OUT = {'0' '1' '2' '3' '4' '5' '6' '7' '8' '9' 'B' 'C' 'D' 'F' 'G' 'H' 'J' 'K' 'L' 'M' 'N' 'P' 'R' 'S' 'T' 'V' 'W' 'X' 'Y' 'Z'};
Classifier = TreeBagger(100,X,OUT');

I = rgb2gray(imread('Joc_de_caracters_deformats.jpg'));
[f,c] = size(I);
BI = I < 128; % separem el background
% figure;
BI = bwmorph(BI, 'majority'); % Necessari per joc de caracters 2
% imshow(BI);
CC = bwconncomp(BI);
props = regionprops(CC,'Extent', 'Solidity','Eccentricity');

llistaRadi = obteRadis(CC,f,c);
Sol = [props.Solidity];
Ecc = [props.Eccentricity];
Ext = [props.Extent];
X = [Ext; Sol; Ecc; llistaRadi;]'; 

[label,score] = predict(Classifier,X);

% mostrem el resultat mes probable
table(Classifier.ClassNames,label,max(score)','VariableNames',{'Name','Label','Score'});