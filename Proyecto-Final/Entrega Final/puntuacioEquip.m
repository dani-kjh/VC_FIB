function [result] = puntuacioEquip(hist1,hist2,hist3,hist4, histActual)

        distanciaM1 = distanciaEntreHists(hist1,histActual);
        sumaDistM1 = sum(distanciaM1);
        
        distanciaM2 = distanciaEntreHists(hist2,histActual);
        sumaDistM2 = sum(distanciaM2);
        
        distanciaM3 = distanciaEntreHists(hist3,histActual);
        sumaDistM3 = sum(distanciaM3);
        
        distanciaM4 = distanciaEntreHists(hist4,histActual);
        sumaDistM4 = sum(distanciaM4);
       
       aux = [sumaDistM1 sumaDistM2 sumaDistM3 sumaDistM4];
       
       result = mean(aux);
end

