clc;
clear all;
clear;
fps=100;
vec=importdata('2.txt');
[X Y Z]=pca(vec);
sig = Y;
figure(1)
plot(sig)
title('Raw Data');
sig1 = sig - mean (sig ); % cancel DC conponents
sig1 = sig1/ max( abs(sig1 )); % normalize to one
% LPF (1-z^-6)^2/(1-z^-1)^2
b=[1 0 0 0 0 0 -2 0 0 0 0 0 1];
a=[1 -2 1];
h_LP=filter(b,a,[1 zeros(1,12)]); % transfer function of LPF
x2p = conv (sig1 ,h_LP);
%x2 = x2 (6+[1: N]); %cancel delay
x2p = x2p/ max( abs(x2p )); % normalize , for convenience .
figure(2);
plot(x2p);
title('Filtered Data');
