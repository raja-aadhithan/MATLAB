clc;
clear;
close all;
N = 100; % number of symbols
x = randi([0,1],1,4*N); % generates random variables 

% generates the 7 bit code for 4 bit message signal

s =[];
for i = 1:4:length(x)
    s = [s , x(i)];
    s = [s , x(i+1)];
    s = [s , x(i+2)];
    s = [s , xor(xor(x(i),x(i+1)),x(i+2))];
    s = [s , x(i+3)];
    s = [s , xor(xor(x(i),x(i+1)),x(i+3))];
    s = [s , xor(xor(x(i),x(i+2)),x(i+3))];
end
p = s;
d1 = [];
d2 = [];
d3 = [];
for i = 1:7:length(s)
    y=randi([0,6],1,1);
    p(i+y)=not(s(i+y));
    yy=0;
    yy = (s(i)*64 + s(i+1)*32 + s(i+2)*16 + s(i+3)*8 + s(i+4)*4 + s(i+5)*2 + s(i+6));
    d1 = [d1, yy];
    yx=0;
    yx = p(i)*64 + p(i+1)*32 + p(i+2)*16 + p(i+3)*8 + p(i+4)*4 + p(i+5)*2 + p(i+6);
    d2 = [d2, yx];
end

for i = 1:length(s)
    d(i) = s(i)-p(i);
end
%plot(d)

%decoding
e = [];
ee = [];
g = p;
for i = 1:7:length(p)
    if xor(xor(xor(p(i),p(i+1)),p(i+2)),p(i+3)) == 0
        e(1) = 0;
    else
        e(1) = 1;
    end
    if xor(xor(xor(p(i),p(i+1)),p(i+4)),p(i+5)) == 0
        e(2) = 0;
    else
        e(2) = 1;
    end
    if xor(xor(xor(p(i),p(i+2)),p(i+4)),p(i+6)) == 0
        e(3) = 0;
    else
        e(3) = 1;
    end
    f = e(3)*1 + e(2)*2 + e(1)*4 ;
    ee = [ee, f];
    t = 7 - f; 
    g(i+t) = not(p(i+t));
    
    yu=0;
    yu = g(i)*64 + g(i+1)*32 + g(i+2)*16 + g(i+3)*8 + g(i+4)*4 + g(i+5)*2 + g(i+6);
    d3 = [d3, yu];
end
subplot(2,1,1)
plot ( d2 - d1 );
subplot(2,1,2)
plot( d3 - d1 );