A = rgb2gray(imread('_61A5845.jpg'));
B = rgb2gray(imread('_61A5855.jpg'));
C = rgb2gray(imread('_61A5861.jpg'));


hv = fspecial('sobel');
hh = hv';

Iv = imfilter(double(C),hv);
Ih = imfilter(double(C),hh);
S = abs(Iv) + abs(Ih);
%imshow(S, []);
% Ma = enfoc(S);
% Mb = enfoc(S);
Mc = enfoc(S);