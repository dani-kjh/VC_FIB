function [resultat] = distanciaEntreHists(HistogramaBase,HistAComparar)
%De moment fem servir la distancia Euclidea
resultat = zeros(size(HistogramaBase,1),1);
for i = 1:size(HistogramaBase,1)
    resultat(i) = (HistogramaBase(i,1) - HistAComparar(i,1))^2;
end

