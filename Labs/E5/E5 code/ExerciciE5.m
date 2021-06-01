Lab = imread('Laberint.png');
Puntiniciverd = Lab(:,:,2);
Puntinicivermell = Lab(:,:,1);
Puntiniciblau = Lab(:,:,3);

Puntiniciverd = Puntiniciverd - Puntinicivermell - Puntiniciblau;
Puntiniciblau = Puntiniciblau  - Puntinicivermell - Puntiniciverd;

Puntiniciblau = Puntiniciblau > 0;
Puntiniciverd = Puntiniciverd > 0;
 % imshow(Puntiniciverd)
 % imshow(Puntiniciblau)

SE = strel('disk', 1);

camiblau = Puntiniciblau;

camiverd = Puntiniciverd;
n = 0;
while n < 1500
    camiverd = imdilate(camiverd,SE) & Lab;
    n = n + 1;
end
%  imshow(uint8(camiverd)*255);

n = 0;
while n < 1900
    camiblau = imdilate(camiblau,SE) & Lab;
    n = n + 1;
end
%  imshow(uint8(camiblau)*255);


