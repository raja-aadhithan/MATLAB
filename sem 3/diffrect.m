clc;
clear;
close all;
z = 1;
l = 633*(10^-9);
x = 0.02;
y = 0.01;
a = 2*l*z/x;
b = 2*l*z/y;
fprintf("the dimension of the slit is %.2d x %.2d sq.m",a,b);