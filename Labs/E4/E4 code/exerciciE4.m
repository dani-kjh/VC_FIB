A = imread('Wally.png');
I = rgb2hsv(A);
ImF = I;
ImF(:,:,1) = medfilt2(I(:,:,1), [1 4]);
ImF(:,:,2) = medfilt2(I(:,:,2), [1 4]);
ImF(:,:,3) = medfilt2(I(:,:,3), [1 4]);
Groc = ImF(:,:,1) > 0.1389 & ImF(:,:,1) < 0.1667; %0.1389 = 50 /360 i 0.1667 = 60/360
Negre = ImF(:,:,3) < 0.2;
SE7 = strel('line', 7, 90);
LiniesGrogues = imclose(Groc, SE7);
LiniesNegres = imclose(Negre, SE7);
 RES = LiniesGrogues&LiniesNegres;
 SE1 = strel('disk',1);
 RES = imopen(RES, SE1);
 SE4 = strel('disk', 4);
 RES = imdilate(RES,SE4);
Gray = rgb2gray(A);
RESULT = cat(3, Gray, Gray, Gray);
RESULT(:,:,1) = RESULT(:,:,1)+(uint8(RES)*255);
imshow(RESULT);



