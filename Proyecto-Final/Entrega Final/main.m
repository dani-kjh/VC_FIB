clear

taulaDeModels = inicialitzaTaulaModels();

resultatsReals = inicialitzaReals();
resultats = zeros(252,1);

%1=Barca
%2=Chelsea
%3=Liverpool
%4=Juventus
%5=Milan
%6=PSV
%7=Madrid
% 
listingBARCELONA = dir('barcelona');
for ima = 3:size(listingBARCELONA)
     imagenActual = imread(strcat('barcelona/',listingBARCELONA(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
     resultats(ima - 2,1) = equip;
end

listingCHELSEA = dir('chelsea');
for ima = 3:size(listingCHELSEA)
     imagenActual = imread(strcat('chelsea/',listingCHELSEA(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
     resultats((ima-2)*2,1) = equip;
end

listingLIVERPOOL = dir('liverpool');
for ima = 3:size(listingLIVERPOOL)
     imagenActual = imread(strcat('liverpool/',listingLIVERPOOL(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
     resultats((ima-2)*3,1) = equip;
end

listingJUVENTUS = dir('juventus');
for ima = 3:size(listingJUVENTUS)
     imagenActual = imread(strcat('juventus/',listingJUVENTUS(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
    resultats((ima-2)*4 ,1) = equip;
end

listingACMILAN = dir('acmilan');
for ima = 3:size(listingACMILAN)
     imagenActual = imread(strcat('acmilan/',listingACMILAN(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
    resultats((ima-2)*5,1) = equip;
end

listingPSV = dir('psv');
for ima = 3:size(listingPSV)
     imagenActual = imread(strcat('psv/',listingPSV(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
     resultats((ima-2)*6,1) = equip;
end
%        
listingMADRID = dir('madrid');
for ima = 3:size(listingMADRID)
     imagenActual = imread(strcat('madrid/',listingMADRID(ima).name));
     equip = reconeixEquip(imagenActual,taulaDeModels);
     resultats((ima-2)*7,1) = equip;
end


C = confusionmat(resultatsReals,resultats);
confusionchart(C);



