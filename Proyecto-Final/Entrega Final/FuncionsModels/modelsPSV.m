function [hist1,hist2, hist3,hist4] = modelsPSV()

%Imagen que coge la parte de delante de la camiseta
ImatgeFront1 = imread(strcat('psv/','02.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront1 = imgaussfilt3(ImatgeFront1);
rect1 = [186,1.305000000000001e+02,90,119];
crop = imcrop(ImatgeFront1, rect1);
%RGB
%hist1 = rgbhist(crop,128,1);
%HSV
hist1 = hsvhist(crop,128,1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('psv/','07.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
rect2= [233,54,45,65];
crop = imcrop(ImatgeBack,rect2);
%RGB
%hist2 = rgbhist(crop,128,1);
%HSV
hist2 = hsvhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('psv/','30.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
rect3 = [108,75,33,57]; 
crop = imcrop(ImatgeSide, rect3);
%RGB
%hist3 = rgbhist(crop,128,1);
%HSV
hist3 = hsvhist(crop,128,1);

%Imagen que coge la parte de delante de la camiseta
ImatgeFront2 = imread(strcat('psv/','33.jpg'));
ImatgeFront2 = imgaussfilt3(ImatgeFront2);
rect4 = [93.999999999999990,101,53.000000000000014,61];
crop = imcrop(ImatgeFront2,rect4);
%RGB
%hist4 = rgbhist(crop,128,1);
%HSV
hist4 = hsvhist(crop,128,1);
end