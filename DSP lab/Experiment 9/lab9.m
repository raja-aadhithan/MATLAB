clc
clear
disp('The type of Windows are: 1.Rectangular 2.Hamming 3.Hann 4.Kaiser')
c=input('Choose the type of Window: ');
disp('Enter the type of filter')
disp('1. Low pass 2.High Pass 3. Bandpass filter 4. Bandstop filter')
d=input('Choose the filter type: ');
n=input('Enter the order of the filter: ');
wn=input('Enter the frequency: ');
n1=input('Enter the number of evaluation points: ');
nm=mod(n,2);
if nm==1
 n=n+1;
end
if c==1
 if d==1
 b = fir1(n ,wn,'low',rectwin(n+1));
 freqz(b,1,n1);
 title('Low Pass Filter with Rectangular Window');
 elseif d==2
 b = fir1(n ,wn,'high',rectwin(n+1));
 freqz(b,1,n1);
 title('High Pass Filter with Rectangular Window');
 theta = angle(z);
 elseif d==3
 b = fir1(n ,wn,'pass',rectwin(n+1));
 freqz(b,1,n1);
 title('Bandpass Filter with Rectangular Window');
 elseif d==4
 b = fir1(n ,wn,'stop',rectwin(n+1));
 freqz(b,1,n1);
 title('Bandstop Filter with Rectangular Window');
 end
elseif c==2
 if d==1
 b= fir1(n,wn,'low',hamming(n+1));
 freqz(b,1,n1);
 title('Low Pass Filter with Hamming Window');
 elseif d==2
 b= fir1(n,wn,'high',hamming(n+1));
 freqz(b,1,n1);
 title('High Pass Filter with Hamming Window');
 elseif d==3
 b= fir1(n,wn,'pass',hamming(n+1));
 freqz(b,1,n1);
 title('Bandpass Filter with Hamming Window');
 elseif d==4
 b= fir1(n,wn,'stop',hamming(n+1));
 freqz(b,1,n1);
 title('Bandstop Filter with Hamming Window');
 end
elseif c==3
 if d==1
 b= fir1(n,wn,'low',hann(n+1));
 freqz(b,1,n1);
 title('Low Pass Filter with Hann Window');
 elseif d==2
 b= fir1(n,wn,'high',hann(n+1));
 freqz(b,1,n1);
 title('High Pass Filter with Hann Window');
 elseif d==3
 b= fir1(n,wn,'pass',hann(n+1));
 freqz(b,1,n1);
 title('Bandpass Filter with Hann Window');
 elseif d==4
 b= fir1(n,wn,'stop',hann(n+1));
 freqz(b,1,n1);
 title('Bandstop Filter with Hann Window');
 end
elseif c==4
 if d==1
 b= fir1(n,wn,'low',kaiser(n+1));
 freqz(b,1,n1);
 title('Low Pass Filter with Kaiser Window');
 elseif d==2
 b= fir1(n,wn,'high',kaiser(n+1));
 freqz(b,1,n1);
 title('High Pass Filter with Kaiser Window');
 elseif d==3
 b= fir1(n,wn,'pass',kaiser(n+1));
 freqz(b,1,n1);
 title('Bandpass Filter with Kaiser Window');

 elseif d==4
 b= fir1(n,wn,'stop',kaiser(n+1));
 freqz(b,1,n1);
 title('Bandstop Filter with Kaiser Window');
else
 disp('Invalid input');
 end

end
figure(2);
phasedelay(b,512);
title('Phase delay of the designed filter');
figure(3);
phasez(b);
title('Phase Response of the designed filter');
z = freqz(b,1);
theta = angle(z);
theta = theta';
disp('Phase of designed filter: ');
disp(theta);
