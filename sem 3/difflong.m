 clc;
 clear;
 close all;
 z = 2;
 l = 633*(10^-9);
 x = [.01,.025,.05];
 for i = 1: 3
      a = 2*l*z / x(i);
      fprintf("the slit width when lobe length is %.2d m is %.2d m \n", x(i), a)
 end
fprintf("\n \n for a wavelength of 530 nm \n");

l = 530*(10^-9);

for i = 1: 3
      a = 2*l*z / x(i);
      fprintf("the slit width when lobe length is %.2d m is %.2d m \n", x(i), a)
 end