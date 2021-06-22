function [taulaModels] = inicialitzaTaulaModels()

%1=Barca
%2=Chelsea
%3=Liverpool
%4=Juventus
%5=Milan
%6=PSV
%7=Madrid

taulaModels = cell(7,4);

[res1B,res2B,res3B,res4B] = modelsBarca();

taulaModels{1,1} = res1B;
taulaModels{1,2} = res2B;
taulaModels{1,3} = res3B;
taulaModels{1,4} = res4B;

[res1C,res2C,res3C,res4C] = modelsChelsea();
taulaModels{2,1} = res1C;
taulaModels{2,2} = res2C;
taulaModels{2,3} = res3C;
taulaModels{2,4} = res4C;

[res1L,res2L,res3L,res4L] = modelsLiverpool();
taulaModels{3,1} = res1L;
taulaModels{3,2} = res2L;
taulaModels{3,3} = res3L;
taulaModels{3,4} = res4L;

[res1J,res2J,res3J,res4J] = modelsJuventus();

taulaModels{4,1} = res1J;
taulaModels{4,2} = res2J;
taulaModels{4,3} = res3J;
taulaModels{4,4} = res4J;

[res1M,res2M,res3M,res4M] = modelsMilan();

taulaModels{5,1} = res1M;
taulaModels{5,2} = res2M;
taulaModels{5,3} = res3M;
taulaModels{5,4} = res4M;

[res1P,res2P,res3P,res4P] = modelsPSV();
taulaModels{6,1} = res1P;
taulaModels{6,2} = res2P;
taulaModels{6,3} = res3P;
taulaModels{6,4} = res4P;

[res1R,res2R,res3R,res4R] = modelsRMadrid();

taulaModels{7,1} = res1R;
taulaModels{7,2} = res2R;
taulaModels{7,3} = res3R;
taulaModels{7,4} = res4R;

end

