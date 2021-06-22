clear

taulaDeModels = inicialitzaTaulaModels();

resultats = zeros(36,1);

llegir_imatges = dir('imatges/*.jpg');
for k = 1:length(llegir_imatges) %recorre número de archivos guardados en el directorio
    nomDirectori = 'imatges/'; %Recorre el diretorio
    Imatge = llegir_imatges(k).name; %Obtiene el nombre de los archivos
    imagenActual = imread(strcat(nomDirectori,Imatge));% lee las imagenes
    equip = reconeixEquip(imagenActual,taulaDeModels);
                  
end
    






