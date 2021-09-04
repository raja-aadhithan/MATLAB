clc;
clear;
close all;
for d = 9 : 15
    b = dec2bin(d)
    g = bin2gray(b)
    disp({d b g})
end