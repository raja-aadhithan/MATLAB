%clearing consoles and variables
clear;
clc;
close all;

I = imread(['images/rbg.jpg']); %reading the image

figure, imshow(I); %display the input image

G = im2gray(I);%converting to gray image

c = input("enter the color \n 1-red \n 2-green \n 3-blue");
A = I(:,:,c); % fetching the desired color

F = imsubtract(A,G); %comparision matrix
F = im2bw(F,0.12);

% compare each pixel value to comparision matrix
x = size(F);
a=[];
for i = 1:3
    s = I(:,:,i); % get values of 2d matrix
    for j = 1:x(1)
        for k = 1:x(2)
            uint8a(j,k) = s(j,k)*uint8(F(j,k));
            %uint8 is used to convert to integer
        end
    end
   o(:,:,i) = uint8a;
end

figure, imshow(o);  % output


CODES TO SEE INTERMEDIATE FIGURES 

subplot(2,3,2);
imshow(G);     grayscale

subplot(2,3,3);
imshow(A);

subplot(2,3,4);
imshow(F); % black and white output
