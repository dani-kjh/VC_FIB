function [result] = reconeixEquip(Imagen,taulaDeModels)

result = 0; % Variable que ens indica si el la imatge satisfà els criteris per considerar que té un jugador del Barça

contatgesEquips = zeros(1,7);
tamanovertical = size(Imagen,1)/5;
tamanohorizontal = size(Imagen,2)/5;


for i = 1*tamanovertical:tamanovertical:(size(Imagen,1) - 2*tamanovertical) 
    iend = i + tamanovertical; 
    for j = 1*tamanohorizontal:tamanohorizontal:(size(Imagen,2) - 2*tamanohorizontal)        
        jend = j + tamanohorizontal;
        SubImagen = imcrop(Imagen, [j i jend-j iend-i]);
        imshow(SubImagen);
        
        %RGB
        %HistoImagen = rgbhist(SubImagen,128,1);
        
        %HSV
        HistoImagen = hsvhist(SubImagen,128,1);
        HistSuavitzat = imgaussfilt3(HistoImagen);
        
        %Comparar histogramas
       puntuacioBarca = puntuacioEquip(taulaDeModels{1,1}, taulaDeModels{1,2}, taulaDeModels{1,3}, taulaDeModels{1,4}, HistSuavitzat);
       
       puntuacioChelsea = puntuacioEquip(taulaDeModels{2,1}, taulaDeModels{2,2}, taulaDeModels{2,3}, taulaDeModels{2,4}, HistSuavitzat);

       puntuacioLiverpool = puntuacioEquip(taulaDeModels{3,1}, taulaDeModels{3,2}, taulaDeModels{3,3}, taulaDeModels{3,4}, HistSuavitzat);

       puntuacioJuventus = puntuacioEquip(taulaDeModels{4,1}, taulaDeModels{4,2}, taulaDeModels{4,3}, taulaDeModels{4,4}, HistSuavitzat);

       puntuacioMilan = puntuacioEquip(taulaDeModels{5,1}, taulaDeModels{5,2}, taulaDeModels{5,3}, taulaDeModels{5,4}, HistSuavitzat);

       puntuacioPSV = puntuacioEquip(taulaDeModels{6,1}, taulaDeModels{6,2}, taulaDeModels{6,3}, taulaDeModels{6,4}, HistSuavitzat);

       puntuacioMadrid = puntuacioEquip(taulaDeModels{7,1}, taulaDeModels{7,2}, taulaDeModels{7,3}, taulaDeModels{7,4}, HistSuavitzat);

       %Ordenats en funció de la taula de histogrames model
       aux = [puntuacioBarca puntuacioChelsea puntuacioLiverpool puntuacioJuventus puntuacioMilan puntuacioPSV puntuacioMadrid];
       
       [result,posicio] = min(aux);
       contatgesEquips(1,posicio) = contatgesEquips(1,posicio) + 1 ;
        
    end
end

[nombreAparicions,index] = max(contatgesEquips);

if nombreAparicions >= 2
    result = index;
end

