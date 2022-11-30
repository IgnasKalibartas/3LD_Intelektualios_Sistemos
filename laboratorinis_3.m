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
    F1 = exp(-(x(i)-c1)^2/(2*r1^2));
    F2 = exp(-(x(i)-c2)^2/(2*r2^2));
end

% 2) Sugeneruojami atsitiktiniai svoriai. Pradines mokymo vertes.
w1 = randn(1);
w2 = randn(1);
w0 = randn(1);
n = 0.15;

for m = 1:10000
    for j = 1:20
        y_apsk(j) = F1*w1+F2*w2+w0;
        e = y(j) - y_apsk(j);
        %atnaujinami svoriai
        if e ~= 0
            w1 = w1+n*e*F1;
            w2 = w2+n*e*F2;
            w0 = w0+n*e;
        end
    end
end

plot(x, y_apsk,x,y,'r')



