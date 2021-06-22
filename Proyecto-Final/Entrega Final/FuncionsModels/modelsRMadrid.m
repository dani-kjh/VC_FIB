function [hist1,hist2, hist3,hist4] = modelsRMadrid()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('madrid/','03.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [69 57 35 47];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('madrid/','15.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [153 129 87 68];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);;

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('madrid/','25.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [143 148 52 71]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('madrid/','29.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [18 83 51 51];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);


end
