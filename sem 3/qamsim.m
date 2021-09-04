clc;clear;close all;
M = 16;
s = (0:M-1);
y = qammod(s,M);
scatterplot(y),xlim( [ -5 5 ]) , ylim( [ -5 5 ]),
xlabel('in phase'), ylabel('quadrature');

EbN0dB=20 ;
 EbN0=10^(EbN0dB/10);
 n=(1/sqrt(2))*[randn(1,length(y))+1j*randn(1,length(y))];
 sigma=sqrt(1/((log2(16))*EbN0));
 r = y +sigma*n;
 scatterplot(r)
 