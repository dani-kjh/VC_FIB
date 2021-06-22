function [hist1,hist2,hist3,hist4] = modelsChelsea()


ImatgeFront1 = imread(strcat('chelsea/','11.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [51.5 103.5 83 105];
crop = imcrop(ImatgeFront1,rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('chelsea/','32.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [341.5 193.5 67 87];
crop = imcrop(ImatgeBack, rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('chelsea/','25.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [123.5 90.5 48 84]; 
crop = imcrop(ImatgeSide,rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('chelsea/','29.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [106.5 111.5 44 55];
crop = imcrop(ImatgeFront2, rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);

end

