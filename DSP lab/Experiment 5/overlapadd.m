clc;
clear;
close all;
disp('Enter the method through which you want to do linear convolution-');
c = input('(Overlap-Add Method = 1; Overlap-Save Method=2): ');
x1 = input('Enter the input sequence: ');
x2 = input('Enter the impulse sequence: ');
n1 = length(x1);
n2 = length(x2);
b = n2-1;
Ls = n1+n2-1;
L = floor(n1/n2);
N = L+n2-1;
if c == 1
x1 = [x1 zeros(1,N)];
sum = 0;
for k=0:N-1
xk=x1(k*L+1:k*L+L);
xk=[xk zeros(1,L-1)];
yk=cconv(xk,x2,N);
yk=[yk zeros(1,n1-1)];
yk=circshift(yk,L*k);
sum=sum+yk;
end
y=sum(1:Ls);
y = round(y,0);
disp('Convolution using Overlap-Add Method-');
disp(y);
elseif c ==2
K = floor((n1+b-1)/L);
x1 = [zeros(1,b) x1 zeros(1,N-1)];
for i = 0:K
xi = x1(i*L+1:i*L+N);
y(i+1,:) = cconv(xi,x2,N);
end
y = round(y,0);
y = y(:,n2:N)';
y = y(:)';
disp('Convolution using Overlap-Save Method-');
disp(y);
end