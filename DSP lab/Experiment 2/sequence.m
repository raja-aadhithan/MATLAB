clc;    %clearing the screen
clear;  %clearing the variables
close all;  %closing all the previous windows

x1 = randi([0,9],1,randi(10));%generating the 1st sequence randomly
x2 = randi([0,9],1,randi(10));%generating the 2nd sequence randomly
n1 = length(x1); %length of the sequence
n2 = length(x2); %length of the sequence
n = max(n1,n2); % to have same length

if n1~=n2
    x1 = [x1, zeros(1,n-n1)]; %add zeros if needed
    x2 = [x2, zeros(1,n-n2)]; %add zeros if needed
end

subplot(5,2,1); %1st subplot
stem(0:n-1,x1); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('1st sequence'); %raw input sequence 1

subplot(5,2,2); %2nd subplot
stem(0:n-1,x2); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('2nd sequence'); %raw input sequence 2

% Amplitude Modulation
add = x1+ x2; %addition of two arrays
subplot(5,2,3); %3rd subplot
stem(0:n-1,add); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('addition of two sequence'); %addition of arrays

mul = x1 .* x2; %multiplication of two arrays
subplot(5,2,4); %3rd subplot
stem(0:n-1,mul); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('multiplication of two sequence'); %multiplication of arrays

atten = x1 .* .25; %attenuation of 1st array
subplot(5,2,5); %5th subplot
stem(0:n-1,atten); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('attenuation of 1st sequence'); %attenuation of 1st array

ampl = x1 .* 5; %amplification of 1st array
subplot(5,2,6); %5th subplot
stem(0:n-1,ampl); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('amplification of 1st sequence'); %amplification of 1st array

subplot(5,2,7); %7th subplot
stem(0:n-1,-x1); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('amplitude inversion of sequence 1'); %amplitude inversion of sequence 1


% Time Modulation

subplot(5,2,8); %8th subplot
stem((0:n-1)/10,x2); %discrete values of n/10 length
xlabel('time');
ylabel('amplitude');
title('time scaling of 2nd sequence'); %time scaling of 2nd sequence

subplot(5,2,9); %9th subplot
stem(-n+1:0,x2); %discrete values of n length
xlabel('time');
ylabel('amplitude');
title('time shifting of 2nd sequence'); %time shifting of 2nd sequence

subplot(5,2,10); %10th subplot
stem(-n+1:0,x2); %time reversed discrete values of n length
xlabel('time');
ylabel('amplitude');
title('time reversal of 2nd sequence'); %time reversal of 2nd sequence
