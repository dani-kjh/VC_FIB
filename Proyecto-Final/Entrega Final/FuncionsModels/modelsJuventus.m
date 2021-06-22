function [hist1,hist2, hist3,hist4] = modelsJuventus()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('juventus/','19.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [48,114,49,53];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('juventus/','16.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [106,1.349999999999999e+02,1.110000000000000e+02,1.459999999999999e+02];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('juventus/','15.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [24,1.120000000000000e+02,104,99.000000000000030]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('juventus/','10.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [49.999999999999986,247,47,52];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);


end