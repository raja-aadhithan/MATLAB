%Study of single bit error detection and correction using Hamming code using MATLAB
% T Raja Aadhithan

clc;
clear;
close all;
N = 100; % number of symbols
x = randi([0,1],1,4*N); % generates random variables 

% empty strings to be used for further use
d1 = [];
d2 = [];
d3 = [];
yy = 0;
yx = 0;
yu = 0;
yu = 0;
e = [];
ee = [];

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

% generates a single bit error at every symbol

p = s;
for i = 1:7:length(s)
    y=randi([0,6]); % picks a random position to make error
    p(i+y)=not(s(i+y));
    
    yy = (s(i)*64 + s(i+1)*32 + s(i+2)*16 + s(i+3)*8 + s(i+4)*4 + s(i+5)*2 + s(i+6));
    d1 = [d1, yy]; % converting 7 bit binary to decimal to use at plot 

    yx = p(i)*64 + p(i+1)*32 + p(i+2)*16 + p(i+3)*8 + p(i+4)*4 + p(i+5)*2 + p(i+6);
    d2 = [d2, yx]; % converting 7 bit binary to decimal to use at plot 
end



%decoding error bit and generating the originla singal using hamming code


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
    t = 7 - (e(3)*1 + e(2)*2 + e(1)*4 );
    g(i+t) = not(p(i+t)); % repairing the erred bit
    
  
    yu = g(i)*64 + g(i+1)*32 + g(i+2)*16 + g(i+3)*8 + g(i+4)*4 + g(i+5)*2 + g(i+6);
    d3 = [d3, yu]; % converting 7 bit binary to decimal to use at plot 
end

%plotting the graphs

subplot(2,1,1)
plot ( d2 - d1 ),xlabel('message'), ylabel('difference');
subplot(2,1,2)
plot( d3 - d1 ),xlabel('message'), ylabel('difference');