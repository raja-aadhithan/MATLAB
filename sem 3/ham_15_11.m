%Study of single bit error detection and correction using Hamming code using MATLAB
% T Raja Aadhithan

clc;
clear;
close all;
N = 3; % number of symbols
x = randi([0,1],1,11*N); % generates random variables 

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

a =[];
for i = 1:11:length(x)
    s = [];
    s = [s, 0]; %parity
    s = [s, 0]; %1st semi parity
    s = [s, 0]; %2nd semi parity
    s = [s , x(i)]; %1,4 bit
    s = [s, 0]; %3rd semi parity
    s = [s , x(i+1)]; %2,2 bit
    s = [s , x(i+2)]; %2,3 bit
    s = [s , x(i+3)]; %2,4 bit
    s = [s, 0]; %4th semi parity
    s = [s , x(i+4)]; %3,2 bit
    s = [s , x(i+5)]; %3,3 bit
    s = [s , x(i+6)]; %3,4 bit
    s = [s , x(i+7)]; %4,1 bit
    s = [s , x(i+8)]; %4,2 bit
    s = [s , x(i+9)]; %4,3 bit
    s = [s , x(i+10)]; %4,4 bit
    s(2) = xor(s(4),xor(s(8),xor(s(12),xor(s(16),xor(s(14),xor(s(6),s(10)))))));
    s(3) = xor(s(4),xor(s(8),xor(s(12),xor(s(16),xor(s(7),xor(s(11),s(15)))))));
    s(5) = xor(s(13),xor(s(14),xor(s(15),xor(s(16),xor(s(6),xor(s(7),s(8)))))));
    s(9) = xor(s(10),xor(s(11),xor(s(12),xor(s(13),xor(s(14),xor(s(15),s(16)))))));
    sbit = 0;
    for j = 2:12
        sbit = xor(sbit,s(j));
    end
    s(1) = sbit;
    a = [a , s];
end

% generates a single bit error at every symbol

p = a;
for i = 1:16:length(a)
    y=randi([0,15]); % picks a random position to make error
    p(i+y)=not(a(i+y));
    
    yy = 0;
    for j = 0:15
    yy = yy + a(i+j)*2^(j-1); 
    end
    d1 = [d1, yy]; % converting 16 bit binary to decimal to use at plot 

    yx = 0;
    for j = 0:15
    yx = yx + p(i+j)*2^(j-1); 
    end
    d2 = [d2, yx]; % converting 16 bit binary to decimal to use at plot 
end



%decoding error bit and generating the originla singal using hamming code


g = p;
for i = 0:16:length(p)-1
    if xor(p(i+4),xor(p(i+8),xor(p(i+12),xor(p(i+16),xor(p(i+14),xor(p(i+6),p(i+10))))))) == 0
        e(2) = 0;
    else
        e(2) = 1;
    end
    if xor(p(i+4),xor(p(i+8),xor(p(i+16),xor(p(i+12),xor(p(i+7),xor(p(i+11),p(i+15))))))) == 0
        e(3) = 0;
    else
        e(3) = 1;
    end
    if xor(p(i+13),xor(p(i+14),xor(p(i+15),xor(p(i+16),xor(p(i+6),xor(p(i+7),p(i+8))))))) == 0
        e(5) = 0;
    else
        e(5) = 1;
    end
    if xor(p(i+10),xor(p(i+11),xor(p(i+12),xor(p(i+13),xor(p(i+14),xor(p(i+15),p(i+16))))))) == 0
        e(9) = 0;
    else
        e(9) = 1;
    end
    
    if p(i+2) == e(2)
        disp('clear 1');
        c24 = 0;
    else
        c24 = 1;
    end
    
    if p(i+3) == e(3)
        disp('clear 2');
        c34 = 0;
    else
        c34 = 1;
    end
    
    
    if p(i+5) == e(5)
        disp('clear 3');
        r24 = 0;
    else
        r24 = 1;
    end
    
    if p(i+9) == e(9)
        disp('clear 4');
        r34 = 0;
    else
        r34 = 1;
    end
    
    cc = c24*1 + c34*2 + 1;
    cr = r24*1 + r34*2 ;
    errbit = cr*4 + cc;
    g(errbit) = not(p(i+errbit)); % repairing the erred bit
    
  
    yu = 0;
    for j = 1:16
    yu = yu + g(i+j)*2^(j-1); 
    end
    d3 = [d3, yu]; % converting 16 bit binary to decimal to use at plot
end

if g - a == 0
    disp('sucess')
else
    disp('error')
end
% %plotting the graphs
subplot(2,1,1)
plot ( d2 - d1 ),xlabel('message'), ylabel('difference');
subplot(2,1,2)
plot( d3 - d1 ),xlabel('message'), ylabel('difference');
