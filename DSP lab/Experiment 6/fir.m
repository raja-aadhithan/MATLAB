clc;%clear console
clear;%clear variables
close all;%close all figures
n = 20;%order of filter
fp = 200;%pass band frequency
fs = 600;%stop band frequency
f = 2000;%sampling frequency
wp = 2*(fp/f);%pass band frequency in rads
ws = 2*(fs/f);%stop band frequency in rads
window_1 = boxcar(n+1);%rectangular window
window_2 = hamming(n+1);%hamming windoe
window_3 = hanning(n+1);%hanning window
window_4 = kaiser(n+1); %kaiser window

%attaching all the doubles to use in loop conveniently 
y  = [window_1 ,window_2 ,window_3 ,window_4]; 

%to be used in titles
name = ["rectangular","hamming","hanning","kaiser"];

%ploting loops
for i = 1:4
    window = y(1:n+1,i);%takes one window at a time
    t = ["high","low","bandpass","stop"];%four different types of filter
    
    for x = 1:length(t)
        if x < 3
            wn = wp;%single frequency for high and low pass filters
        else
            wn = [wp,ws];%two frequencies for band filters
        end
        
        b = fir1(n,wn,t(x),window);%filter function
        [H,w] = freqz(b,1);%transfer function
        
        figure (i)%individual figures for each window
        
        subplot(4,2,2*x-1)
        plot(w/pi,20*log(abs(H)));%magnitude
        xlabel('normalized frequency');
        ylabel('mag in db');
        title ('mag response for ' + name(i) + ' as '+ t(x) +' pass filter ');
        
        subplot(4,2,2*x)
        plot(w/pi,angle(H));%phase
        xlabel('normalized frequency');
        ylabel('angle');
        title ('phase response for ' + name(i) +' as '+ t(x) +' pass filter ');
    end
end
