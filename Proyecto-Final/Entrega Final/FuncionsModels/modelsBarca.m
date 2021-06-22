function [hist1,hist2, hist3,hist4] = modelsBarca()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('barcelona/','22.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [67 158 89 117];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('barcelona/','11.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [19 99 67 113];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('barcelona/','21.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [200.5 110.5 56 130]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('barcelona/','29.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [90.5 187.5 145 194];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);
end

