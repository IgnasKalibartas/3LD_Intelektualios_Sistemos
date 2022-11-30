clear all
clc

x = 0.1:1/22:1;
y = (1 + 0.6*sin(2*pi*x/0.7)) + 0.3*sin(2*pi*x)/2;
plot(x,y)
% pasirinkti centrai
c1 = 0.19;
c2 = 0.9;
r1 = 0.13;
r2 = 0.17;

%Gauso f-jos: F = exp(-(x-c)^2/(2*r^2));

for i = 1:20
    F1 = exp(-(x(i)-c1)^2/(2*r1^2));
    F2 = exp(-(x(i)-c2)^2/(2*r2^2));
end