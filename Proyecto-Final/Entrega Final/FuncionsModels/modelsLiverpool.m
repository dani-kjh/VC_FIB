function [hist1,hist2, hist3,hist4] = modelsLiverpool()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('liverpool/','16.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [282 75 35 64];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);;

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('liverpool/','11.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [274 84 54 60];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('liverpool/','06.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [112 125 67 123]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('liverpool/','10.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [310 153 51 61];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);


end