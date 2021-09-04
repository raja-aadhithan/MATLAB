clc;clear;close all;
N = 1000;
x = randi([0,1],1,4*N);
s =[];
for i = 1:4:length(x)
    
    s(int(i/4)*7)    =x(i);
    s(int(i/4)*7 + 1)=x(i+1);
    s(int(i/4)*7 + 2)=x(i+2);
    s(int(i/4)*7 + 3)=xor(xor(x(i),x(i+1)),x(i+2));
    s(int(i/4)*7 + 4)=x(i+3);
    s(int(i/4)*7 + 5)=x(i)xor(x(i+1))xor(x(i+3));
    s(int(i/4)*7 + 6)=x(i)xor(x(i+2))xor(x(i+3));
    
end
s[]