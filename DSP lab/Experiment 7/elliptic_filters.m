%Write a MATLAB Script to design the Butterworth, Chebyshev type-1, Chebyshev type-2 and Elliptic filters based on
%1. Bilinear Transformation
%2. Impulse Invariant Transformation
clc;
clear;
close all;
type = input('Enter the type of filter(Low Pass= 1, High Pass= 2,Band Pass= 3, Band Stop= 4): ');
g = input('Enter the design of filter( Butterworth= 1, Chebyshev type1= 2, Chebyshev type2= 3, Elliptic= 4 ): ');
k = input('Enter the type of Filter discretization functions(Bilinear= 1, Impulse Invariant= 2 ): ');
rp = input('Enter the pass band ripple: ');
rs = input('Enter the stop band attenuation: ');
wp = input('Enter the pass band frequency(Hz): ');
ws = input('Enter the stop band frequency(Hz): ');
fs = input('Enter the sampling frequency(Hz): ');
wp = wp/(fs/2);
ws = ws/(fs/2);
if(type == 1)
 if(g == 1)
 [n,wn] = buttord(wp,ws,rp,rs);
 [b,a] = butter(n,wn,'low');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Low Pass Butterworth Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Low Pass Butterworth Filter',n));

 elseif(g == 2)
 [n,wp] = cheb1ord(wp,ws,rp,rs);
 [b,a] = cheby1(n,rp,wp,'low');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Low Pass Chebyshev Type 1 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Low Pass Chebyshev Type 1 Filter',n));

 elseif(g == 3)
 [n,ws] = cheb2ord(wp,ws,rp,rs);
 [b,a] = cheby2(n,rs,ws,'low');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Low Pass Chebyshev Type 2 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Low Pass Chebyshev Type 2 Filter',n));

 elseif(g == 4)
 [n,wp] = ellipord(wp,ws,rp,rs);
 [b,a] = ellip(n,rp,rs,wp,'low');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Low Pass Elliptic Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Low Pass Elliptic Filter',n));
 end
elseif(type == 2)
 if(g == 1)
 [n,wn] = buttord(wp,ws,rp,rs);
 [b,a] = butter(n,wn,'high');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital High Pass Butterworth Filter',n));
figure(2);
 freqz(b,a,1024,fs);
 title(sprintf('n = %d Analog High Pass Butterworth Filter',n));

 elseif(g == 2)
 [n,wp] = cheb1ord(wp,ws,rp,rs);
 [b,a] = cheby1(n,rp,wp,'high');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital High Pass Chebyshev Type 1 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog High Pass Chebyshev Type 1 Filter',n));
 
 elseif(g == 3)
 [n,ws] = cheb2ord(wp,ws,rp,rs);
 [b,a] = cheby2(n,rs,ws,'high');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital High Pass Chebyshev Type 2 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog High Pass Chebyshev Type 2 Filter',n));

 elseif(g == 4)
 [n,wp] = ellipord(wp,ws,rp,rs);
 [b,a] = ellip(n,rp,rs,wp,'high');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital High Pass Elliptic Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog High Pass Elliptic Filter',n));
 end

elseif(type == 3)
 if(g == 1)
 [n,wn] = buttord(wp,ws,rp,rs);
 [b,a] = butter(n,wn,'bandpass');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandpass Butterworth Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandpass Butterworth Filter',n));

 elseif(g == 2)
 [n,wp] = cheb1ord(wp,ws,rp,rs);
 [b,a] = cheby1(n,rp,wp,'bandpass');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandpass Chebyshev Type 1 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandpass Chebyshev Type 1 Filter',n));

 elseif(g == 3)
 [n,ws] = cheb2ord(wp,ws,rp,rs);
 [b,a] = cheby2(n,rs,ws,'bandpass');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandpass Chebyshev Type 2 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandpass Chebyshev Type 2 Filter',n));

 elseif(g == 4)
 [n,wp] = ellipord(wp,ws,rp,rs);
 [b,a] = ellip(n,rp,rs,wp,'bandpass');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandpass Elliptic Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandpass Elliptic Filter',n));
 end
elseif(type == 4)
 if(g == 1)
 [n,wn] = buttord(wp,ws,rp,rs);
 [b,a] = butter(n,wn,'stop');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandstop Butterworth Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandstop Butterworth Filter',n));

 elseif(g == 2)
 [n,wp] = cheb1ord(wp,ws,rp,rs);
 [b,a] = cheby1(n,rp,wp,'stop');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandstop Chebyshev Type 1 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandstop Chebyshev Type 1 Filter',n));

 elseif(g == 3)
 [n,ws] = cheb2ord(wp,ws,rp,rs);
 [b,a] = cheby2(n,rs,ws,'stop');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandstop Chebyshev Type 2 Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandstop Chebyshev Type 2 Filter',n));

 elseif(g == 4)
 [n,wp] = ellipord(wp,ws,rp,rs);
 [b,a] = ellip(n,rp,rs,wp,'stop');
 if(k ==1)
 [bz,az] = bilinear(b,a,fs);
 elseif(k==2)
 [bz,az] = impinvar(b,a,fs);
 end
freqz(bz,az,1024,fs);
title(sprintf('n = %d Digital Bandstop Elliptic Filter',n));
figure(2);
freqz(b,a,1024,fs);
title(sprintf('n = %d Analog Bandstop Elliptic Filter',n));
 end
end 