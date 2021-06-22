function [result] = inicialitzaReals()
result = zeros(252,1);

for i = 1:252
  result(i,1) = idivide(int64(i),int64(36),'ceil');
end

