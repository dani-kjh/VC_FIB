function [hist1,hist2, hist3,hist4] = modelsMilan()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('acmilan/','30.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [52 117 63 78];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('acmilan/','29.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [103 88 97 118];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('acmilan/','21.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [134 105 48 76]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('acmilan/','07.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [67 107 122 88];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);


end

