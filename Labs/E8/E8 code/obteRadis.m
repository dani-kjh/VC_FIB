function [llistaRadis] = obteRadis(CC,f,c)

llistaRadis = zeros(1,CC.NumObjects);
for i = 1:CC.NumObjects
    [F,C] = ind2sub([f,c], CC.PixelIdxList{i});
    b = boundary([F,C]);
    % some boundary measures
    c_center = mean(C(b)); % center
    f_center = mean(F(b));
    %min and max radius
    min_r = sqrt(min((C(b) - c_center).^2 + (F(b) - f_center).^2)); 
    max_r = sqrt(max((C(b) - c_center).^2 + (F(b) - f_center).^2)); 
    r = min_r /max_r;
    llistaRadis(1,i) = r;
end

end

