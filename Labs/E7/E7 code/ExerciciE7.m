Image = imread('washington.jpg');
isRgb = 3 == size(Image,3);
imshow(Image);


rect = getrect();
ImHSV = rgb2hsv(Image);
[f,c] = size(ImHSV(:,:,1));

Hx = sin(ImHSV(:,:,1));
Hx = Hx(:);
Hy = cos(ImHSV(:,:,1));
Hy = Hy(:);
S = ImHSV(:,:,2);
S = S(:);
V = ImHSV(:,:,3);
V = V(:);

O = [Hx Hy S V];
k = 20;
C = kmeans(O,k);

IC = reshape(C, f,c);
rgb = label2rgb(IC);
% imshow(rgb);

h = images.roi.Rectangle(gca, 'Position', [rect(1) rect(2) rect(3) rect(4)]); % trobat a internet xd
MASK = createMask(h);
% imshow(MASK);
H = [C, MASK(:)];

[num0 num1] = createHISTS(H, 20);

RES = num1 > num0;

pixelsfigura = pertanyA(H,RES);
% postfiltre = colfilt(pixelsfigura, [5 5], 'sliding', @mean);
imshow(pixelsfigura,[]);




