clear
%Imagen que coge la parte de delante de la camiseta
ImatgeFront = imread(strcat('barcelona/','22.jpg'));
%Suavizamos la imagen antes de obtener el histograma
ImatgeFront = imgaussfilt3(ImatgeFront);
crop = imcrop(ImatgeFront);
HistogramaFront = rgbhist(crop,128,1);
a = zeros(size(HistogramaFront,1),1);

%Imagen que coge la parte de atras de la camiseta
ImatgeBack = imread(strcat('barcelona/','32.jpg'));
ImatgeBack = imgaussfilt3(ImatgeBack);
crop = imcrop(ImatgeBack);
HistogramaBack = rgbhist(crop,128,1);

%Imagen que coge la parte del costado de la camiseta
ImatgeSide = imread(strcat('barcelona/','17.jpg'));
ImatgeSide = imgaussfilt3(ImatgeSide);
crop = imcrop(ImatgeSide);
HistogramaSide = rgbhist(crop,128,1);


%Contador de cuantas veces aparece el barça en los directorios
cuantosHay = 0;
% listingPSV = dir('psv');
% for ima = 3:size(listingPSV)
%      imagenActual = imread(strcat('psv/',listingPSV(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end
       
listingMADRID = dir('madrid');
for ima = 3:size(listingMADRID)
     imagenActual = imread(strcat('madrid/',listingMADRID(ima).name));
     loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
     if loEs == 1
         cuantosHay = cuantosHay + 1;
     end
end
% 
% listingLIVERPOOL = dir('liverpool');
% for ima = 3:size(listingLIVERPOOL)
%      imagenActual = imread(strcat('liverpool/',listingLIVERPOOL(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end

% listingJUVENTUS = dir('juventus');
% for ima = 3:size(listingJUVENTUS)
%      imagenActual = imread(strcat('juventus/',listingJUVENTUS(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end
% 
% listingCHELSEA = dir('chelsea');
% for ima = 3:size(listingCHELSEA)
%      imagenActual = imread(strcat('chelsea/',listingCHELSEA(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end
% 
% listingACMILAN = dir('acmilan');
% for ima = 3:size(listingACMILAN)
%      imagenActual = imread(strcat('acmilan/',listingACMILAN(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end

% listingBARCELONA = dir('barcelona');
% for ima = 3:size(listingBARCELONA)
%      imagenActual = imread(strcat('barcelona/',listingBARCELONA(ima).name));
%      loEs = esDelBarca(imagenActual, HistogramaFront, HistogramaBack, HistogramaSide);
%      if loEs == 1
%          cuantosHay = cuantosHay + 1;
%      end
% end


