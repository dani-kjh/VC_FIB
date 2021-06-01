function [RES] = localBinE6(I,K)

    [f c] = size(I);
    RES = I(ceil(f/2),1); %linia central
    suma = sum(I);
    mean = suma /f;
    RES = ((RES - uint8(mean)) > K)*255; 
    
end

