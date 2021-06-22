function [result] = esDelBarca(Imagen,HistModel1,HistModel2,HistModel3)

result = 0;
esDelBarca = 0;

tamanovertical = size(Imagen,1)/5;
tamanohorizontal = size(Imagen,2)/5;
for i = 1:tamanovertical:(size(Imagen,1) - tamanovertical) 
    iend = i + tamanovertical; 
    for j = 1:tamanohorizontal:(size(Imagen,2) - tamanohorizontal)
        jend = j + tamanohorizontal;
        SubImagen = imcrop(Imagen, [j i jend-j iend-i]);
        imshow(SubImagen);
        HistoImagen = rgbhist(SubImagen,128,1);
        HistSuavitzat = imgaussfilt3(HistoImagen);
        %Comparar histogramas
        distanciaM1 = distanciaEntreHists(HistModel1,HistSuavitzat);
        sumaDistM1 = sum(distanciaM1);
        
        distanciaM2 = distanciaEntreHists(HistModel2,HistSuavitzat);
        sumaDistM2 = sum(distanciaM2);
        
        distanciaM3 = distanciaEntreHists(HistModel3,HistSuavitzat);
        sumaDistM3 = sum(distanciaM3);
        
        if sumaDistM1 <= 0.01
            esDelBarca = esDelBarca + 1;
        end

        if sumaDistM2 <= 0.003
            esDelBarca = esDelBarca + 1;    
        end
        
        if sumaDistM3 <= 0.002
            esDelBarca = esDelBarca + 1;
        end
        
    end 
end

if esDelBarca >= 4
    result = 1;
end


end

