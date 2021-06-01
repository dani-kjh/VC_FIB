x = rand(1,100) + rand();
y = rand().*x + rand(1,100)/10;
xp = x - mean(x);
yp = y - mean(y);
c = cov(xp, yp);
[evectors, evalues] = eig(c);
[val,ind] = max(diag(evalues));
theta = -pi/2-atan2(evectors(ind,1), -evectors(ind,2));
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
rp = R * [xp;yp];
figure
scatter(rp(1,:),rp(2,:));
