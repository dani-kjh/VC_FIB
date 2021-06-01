A = double(imread('_MG_7735.JPG'))/255;
B = double(imread('_MG_7737.JPG'))/255;

DIF = abs(A-B);
maxim = max(DIF(:));
DIF = DIF/maxim;
%imshow(DIF);

Bd = imtranslate(B,[20, -20]);
DIF = abs(A-Bd);
maxim = max(DIF(:));
DIF = DIF/maxim;
%imshow(DIF);


Am = (A+Bd)/2;
Am = imlocalbrighten(Am, 0.7);
Am = imadjust(Am, [.12 .12 .12; 1 1 1],[]);

%Z = imadjust(rgb2gray(Am));
montage({A,Am});