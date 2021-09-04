clc;
clear all;
clear;
fps=100;
vec=importdata('2.txt');
[X Y Z]=pca(vec);
sig = Y;
figure(1)
plot(sig)
title('Raw Data');
sig1 = sig - mean (sig ); % cancel DC conponents
sig1 = sig1/ max( abs(sig1 )); % normalize to one
% LPF (1-z^-6)^2/(1-z^-1)^2
b=[1 0 0 0 0 0 -2 0 0 0 0 0 1];
a=[1 -2 1];
h_LP=filter(b,a,[1 zeros(1,12)]); % transfer function of LPF
x2p = conv (sig1 ,h_LP);
%x2 = x2 (6+[1: N]); %cancel delay
x2p = x2p/ max( abs(x2p )); % normalize , for convenience .
figure(2);
plot(x2p);
title('Filtered Data');
nFrames=length(sig1); % Signal length
t = [0:nFrames-1]/fps;
[peaks, peak_pos,foots, foot_pos] = peakdetect(fps, nFrames, sig1);
peaks=peaks(2:end);
foots=foots(2:end);
peak_pos=peak_pos(2:end);
foot_pos=foot_pos(2:end);
npks=length(peak_pos);
figure(3)
plot(t,sig1, peak_pos/fps,peaks,'*r',foot_pos/fps,sig1(foot_pos),'*m')
title('Peak Detection');
[pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI,npks]=timeDomainParameters(sig1,fps);
% else
% [pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI]=timeDomainParameters(SR(c(i):c(i)+124),fps);
% 
% end
time=length(sig1)/fps;
bpm=(npks/time)*60
name='2';
DATA1(1)=pp;
DATA1(2)=ff;
DATA1(3)=fp;
DATA1(4)=pf;
DATA1(5)=ppbyff;
DATA1(6)=ppbyfp;
DATA1(7)=fpbyff;
DATA1(8)=fpbypf;
DATA1(9)=plht;
DATA1(10)=crti;
DATA1(11)=bpm;
DATA1(12)=sarea;
DATA1(13)=darea;
DATA1(14)=totalarea;
DATA1(15)=ratioarea;
DATA1(16)=deti;
DATA1(17)=AI;
DATA1(18)=RI;
dlmwrite('NEWD.txt',DATA1,'-append')