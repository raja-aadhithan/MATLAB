clc;
clear;
close all;
type = input('Enter the type of filter-1.Low Pass,2. High Pass,3.Band Pass,4. Band Stop: ');
win = input('Enter the type of window- 1.Rectangular, 2.Hamming, 3.Hann,4. Kaiser: ');
n = input('Enter the order of the filter: ');

if(type == 1)
 n1 = input('Enter the cutoff frequency(in multiples of pi) : ');
 if(win == 1)
 fil = fir1(n,n1,'low',rectwin(n+1));
 freqz(fil,1);
 title('Low Pass Filter with Rectangular Window');

 elseif(win == 2)
 fil = fir1(n,n1,'low',hamming(n+1));
 freqz(fil,1);
 title('Low Pass Filter with Hamming Window');

 elseif(win == 3)
 fil = fir1(n,n1,'low',hann(n+1));
 freqz(fil,1);
 title('Low Pass Filter with Hann Window');

 elseif(win == 4)
 fil = fir1(n,n1,'low',kaiser(n+1));
 freqz(fil,1);
 title('Low Pass Filter with Kaiser Window');
 end
elseif(type == 2)
 n1 = input('Enter the cutoff frequency(in multiples of pi) : ');
 if(mod(n,2))
 n=n+1;
 end
 if(win == 1)
 fil = fir1(n,n1,'high',rectwin(n+1));
 freqz(fil,1);
 title('High Pass Filter with Rectangular Window');

 elseif(win == 2)
 fil = fir1(n,n1,'high',hamming(n+1));
 freqz(fil,1);
 title('High Pass Filter with Hamming Window');

 elseif(win == 3)
 fil = fir1(n,n1,'high',hann(n+1));
 freqz(fil,1);
 title('High Pass Filter with Hann Window');

 elseif(win == 4)
 fil = fir1(n,n1,'high',kaiser(n+1));
 freqz(fil,1);
 title('High Pass Filter with Kaiser Window');
 end

elseif(type == 3)
 n1 = input('Enter the first cutoff frequency(in multiples of pi): ');
 n2 = input('Enter the second cutoff frequency(in multiples of pi): ');
 if(win == 1)
 fil = fir1(n,[n1 n2],'bandpass',rectwin(n+1));
 freqz(fil,1);
 title('Band Pass Filter with Rectangular Window');

 elseif(win == 2)
 fil = fir1(n,[n1 n2],'bandpass',hamming(n+1));
 freqz(fil,1);
 title('Band Pass Filter with Hamming Window');

 elseif(win == 3)
 fil = fir1(n,[n1 n2],'bandpass',hann(n+1));
 freqz(fil,1);
 title('Band Pass Filter with Hann Window');

 elseif(win == 4)
 fil = fir1(n,[n1 n2],'bandpass',kaiser(n+1));
 freqz(fil,1);
 title('Band Pass Filter with Kaiser Window');
 end
elseif(type == 4)
 n1 = input('Enter the first cutoff frequency(in multiples of pi): ');
 n2 = input('Enter the second cutoff frequency(in multiples of pi): ');
 if(mod(n,2))
 n=n+1;
 end
 if(win == 1)
 fil = fir1(n,[n1 n2],'stop',rectwin(n+1));
 freqz(fil,1);
 title('Band Stop Filter with Rectangular Window');

 elseif(win == 2)
 fil = fir1(n,[n1 n2],'stop',hamming(n+1));
 freqz(fil,1);
 title('Band Stop Filter with Hamming Window');

 elseif(win == 3)
 fil = fir1(n,[n1 n2],'stop',hann(n+1));
 freqz(fil,1);
 title('Band Stop Filter with Hann Window');

 elseif(win == 4)
 fil = fir1(n,[n1 n2],'stop',kaiser(n+1));
 freqz(fil,1);
 title('Band Stop Filter with Kaiser Window');
 end
end
figure(2);
impz(fil);
title('Impulse Response of the designed filter');
figure(3);
stepz(fil);
title('Step Response of the designed filter');