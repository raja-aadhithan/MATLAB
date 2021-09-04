
clc
clear all
close all
data = importdata('EEG1_1c31.txt');% loading data
Ts=2;% sampling period
Fs=500;%sampling frequency
[N,nu]=size(data);%obtain size of data
t=(1:N)*Ts;%generates time vector
h=figure;
plot(t,data,'r');% plot of 16 channels together
title('EEG DATA')
grid on
h1=figure;
plot(t,data(:,1), 'b-')
figure(h1);hold on
plot(t,data(:,5),  'r-')
figure(h1);hold on
plot(t,data(:,10), 'm-')
figure(h1);hold on
plot(t,data(:,15), 'c-')
figure(h1);hold on
plot(t,data(:,16), 'k-')
legend('Channel 1', 'Channel 5', 'Channel 10', 'Channel 15','channel 16');