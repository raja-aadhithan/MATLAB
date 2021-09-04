function [f, P1] = fourier(fps, nFrames, yf)

T=1/fps;
L = size(yf,2);             % Length of signal
t = (0:L-1)*T;        % Time vector
Y = fft(yf);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
%P1(2:end-1) = 2*P1(2:end-1);
f = (fps*(0:(L/2))/L)*60;

[pks, locs] = max(P1);
bpm = f(locs);

