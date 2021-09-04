clc;
pin = 60 * 10^-6;
pout = 40;
minpout = .1 * 10^-6;
maxloss= 10*(log10(.1/60));
fprintf("maximum loss  = %d dB",maxloss);
dis = -maxloss/2;
fprintf("\nmaximum distance without loss  = %d km",dis);
x = [10^7 2*10^6 10^5 10^4 5000];
for i = 1:5
    a = 7.801*10^6/x(i);
    if a<dis
        fprintf("\nno loss for bandwidth %d bps",x(i));
    else
        fprintf("\nop power is less than min required power for bandwidth %d bps",x(i));
    end
end