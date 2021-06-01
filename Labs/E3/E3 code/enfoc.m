function [m] = enfoc(I)
[f c] = size(I);
f4 = ceil(f/4);
c4 = ceil(c/4);
M = I(f4:3*f4, c4:3*f4);
m = mean(mean(M));
end

