function [Resultat] = pertanyA(MatriuH, hist)


[files columnes] = size(MatriuH);
Resultat = zeros(files,1);
for i = 1:files
    if hist(MatriuH(i,1)) == 1
        Resultat(i) = 1;
    end
end

        
end