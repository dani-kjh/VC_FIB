function [resultat] = distanciaEntreHists(HistogramaBase,HistAComparar)
%De moment fem servir la distancia Euclidea
resultat = zeros(size(HistogramaBase,1),1);
for i = 1:size(HistogramaBase,1)
%     asota = (HistogramaBase(i,1)+ HistAComparar(i,1) );
%     if asota == 0
%         resultat(i) = 0;
%     else
%        %chi-quadrat
%        resultat(i) = ( (HistogramaBase(i,1) - HistAComparar(i,1) )^2 /(HistogramaBase(i,1)+ HistAComparar(i,1) ) );
%      Euclidia
       resultat(i) = ( (HistogramaBase(i,1) - HistAComparar(i,1) )^2 );
%     end
end

