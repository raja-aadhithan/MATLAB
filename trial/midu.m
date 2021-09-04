clc; clear all;
a=[];
s = 100;
for i = 1:100
    a(i) = i/100*s;
    s = s - a(i);
end
k = a(1);
for i = 2:100
    if a(i)>a(i-1)
        k = a(i);
        m = i;
    end
end
fprintf("the maximum value is: \n %d at location %d \n",k,m);
plot(a)  