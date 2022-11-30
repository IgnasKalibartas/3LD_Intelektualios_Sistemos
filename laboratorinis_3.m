clear all
clc

x = 0.1:1/22:1;
y = (1 + 0.6*sin(2*pi*x/0.7)) + 0.3*sin(2*pi*x)/2;
%plot(x,y)
% pasirinkti centrai
c1 = 0.20;
c2 = 0.89;
r1 = 0.15;
r2 = 0.16;

%Gauso f-jos: F = exp(-(x-c)^2/(2*r^2));

for i = 1:20
    F1(i) = exp(-(x(i)-c1)^2/(2*r1^2));
    F2(i) = exp(-(x(i)-c2)^2/(2*r2^2));
end
plot(x,F1, x,F2,x,y)