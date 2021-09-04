clc; clear; close all;%setup

t = (-1:0.1:1);
x = (-3:0.1:3);

impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
exp = exp(t);
sine = sin(x);
rand = randi([0,1],1,21);

subplot(3,2,1);
stem(t,impulse)
xlabel('time')
ylabel('amplitude')
title('impulse function')

subplot(3,2,2);
stem(t,unitstep)
xlabel('time')
ylabel('amplitude')
title('unitstep function')

subplot(3,2,3);
stem(t,ramp)
xlabel('time')
ylabel('amplitude')
title('ramp function')

subplot(3,2,4);
stem(t,exp)
xlabel('time')
ylabel('amplitude')
title('exponential function')

subplot(3,2,5);
stem(x,sine)
xlabel('time')
ylabel('amplitude')
title('sine wave')

subplot(3,2,6);
stem(t,rand)
xlabel('time')
ylabel('amplitude')
title('random function')