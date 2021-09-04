clc;clear;close all;
M = 8;
s = (0:M-1);
y = qammod(s,M);
scatterplot(y),xlim( [ -5 5 ]) , ylim( [ -5 5 ]),
xlabel('in phase'), ylabel('quadrature');