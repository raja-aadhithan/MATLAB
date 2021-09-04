clc;    %clearing the screen
clear;  %clearing the variables
close all;  %closing all the previous windows

x1 = randi([0,9],1,randi(10));%generating the 1st sequence randomly
x2 = randi([0,9],1,randi(10));%generating the 2nd sequence randomly


subplot(3,2,1); %1st subplot
stem(x1,'filled'); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('1st sequence'); %raw input sequence 1

subplot(3,2,2); %2nd subplot
stem(x2,'filled'); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('2nd sequence'); %raw input sequence 2

clin = conv(x1,x2);


subplot(3,2,3); %2nd subplot
stem(clin,'filled'); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('Linear Convolution of x1 and x2'); %Linear Convolution

ccirc = cconv(x1,x2);

subplot(3,2,4); %2nd subplot
stem(ccirc,'filled'); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('Circular Convolution of x1 and x2'); %Circular Convolution

n1 = length(x1); %length of the sequence
n2 = length(x2); %length of the sequence
n = max(n1,n2); % to have same length

if n1~=n2
    x1 = [x1, zeros(1,n-n1)]; %add zeros if needed
    x2 = [x2, zeros(1,n-n2)]; %add zeros if needed
end

ccirc1 = cconv(x1,x2,n1+n2-1);

subplot(3,2,5); %2nd subplot
stem(ccirc1,'filled'); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('Linear convolution using Circular Convolution '); %Circular Convolution
