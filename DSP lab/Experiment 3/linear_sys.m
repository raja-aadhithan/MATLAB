clc;    %clearing the screen
clear;  %clearing the variables
close all;  %closing all the previous windows

x1 = randi([1,9],1,randi([5,10]));%generating the 1st sequence randomly
x2 = randi([1,9],1,randi([5,10]));%generating the 2nd sequence randomly
n1 = length(x1); %length of the sequence
n2 = length(x2); %length of the sequence
n = max(n1,n2); % to have same length

if n1~=n2
    x1 = [x1, zeros(1,n-n1)]; %add zeros if needed
    x2 = [x2, zeros(1,n-n2)]; %add zeros if needed
end

subplot(3,2,1);
stem(x1);
xlabel('time');
ylabel('amplitude');
title('1st sequence'); %raw input sequence 1

subplot(3,2,2);
stem(x2);
xlabel('time');
ylabel('amplitude');
title('2nd sequence'); %raw input sequence 2
    
a = randi([1,9]);%scaling constant
fprintf('scaling constant is : %d\n',a);

y1 = a*x1;
y2 = a*x2;
x3 = x1 + x2;
y3 = a*x3;
y4 = y1+y2;
linear(y3,y4,1)

l1 = a*x1.^2;
l2 = a*x2.^2;
l3 = a*(x1+x2).^2;
l4 = l1+l2;
linear(l3,l4,2)


function  linear(c1,c2,s)

subplot(3,2,2*s+1);
stem(c1);
xlabel('time');
ylabel('amplitude');
title(sprintf('output 1 of system %d',s));

subplot(3,2,2*s+2);
stem(c2);
xlabel('time');
ylabel('amplitude');
title(sprintf('output 2 of system %d',s));

if c1 == c2
    fprintf('system %d is a linear system \n',s)
else
    fprintf('system %d is a non linear system \n',s) 
end
end