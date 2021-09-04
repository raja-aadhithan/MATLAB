clc;
clear all;
clear;

fps=100;
vec=importdata('2.txt');
[X Y Z]=pca(vec);
approx=Y;
sig=approx;

figure(1)
plot(sig)
R = filterUnit(fps, sig);
saveas(gcf, 'raw_2_aligned','png')

figure(2)
plot(R)
saveas(gcf, 'fil_2_aligned','png')

R=[R R R];
sig1 = sig - mean (sig );    % cancel DC conponents
sig1 = sig1/ max( abs(sig1 )); % normalize to one
% LPF (1-z^-6)^2/(1-z^-1)^2
b=[1 0 0 0 0 0 -2 0 0 0 0 0 1];
a=[1 -2 1];
h_LP=filter(b,a,[1 zeros(1,12)]); % transfer function of LPF

x2p = conv (sig1 ,h_LP);
%x2 = x2 (6+[1: N]); %cancle delay
x2p = x2p/ max( abs(x2p )); % normalize , for convenience .

figure(3)
plot(x2p)
saveas(gcf, 'new_fil_2_aligned','png')

prompt={'SEEN SIGNALS?'};
% Create all your text fields with the questions specified by the variable prompt.
title='PLOT';
% The main title of your input dialog interface.
answer=inputdlg(prompt,title);
SEEN = str2num(answer{1});


prompt={'R NO.','Age:','Medical Condition:','Time of Day:','SBP:','DBP:'};
% Create all your text fields with the questions specified by the variable prompt.
title='DETAILS';
% The main title of your input dialog interface.
answer=inputdlg(prompt,title);
READING_NO = str2num(answer{1});
Age = str2num(answer{2});
Medical_Condition = str2num(answer{3});
Time_of_Day = str2num(answer{4});
SBP = str2num(answer{5});
DBP = str2num(answer{6});


%%
% [pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI]=timeDomainParameters(R,fps);
[pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI,npks]=timeDomainParameters(sig1,fps);
%     else
%         [pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI]=timeDomainParameters(SR(c(i):c(i)+124),fps);
%     
%     end
time=length(sig1)/fps;
bpm=(npks/time)*60
name='2';
fps=100;
[psd,domFreq]=FreqDomainParameters( sig1, fps,name);

    DATA1(1)=READING_NO;
    DATA1(2)=Age;
    DATA1(3)=Medical_Condition;
    DATA1(4)=Time_of_Day;
    DATA1(5)=SBP;
    DATA1(6)=DBP;
    DATA1(7)=pp;
    DATA1(8)=ff;
    DATA1(9)=fp;
    DATA1(10)=pf;
    DATA1(11)=ppbyff;
    DATA1(12)=ppbyfp;
    DATA1(13)=fpbyff;
    DATA1(14)=fpbypf;
    DATA1(15)=plht;
    DATA1(16)=crti;
    DATA1(17)=bpm;
    DATA1(18)=psd;
    DATA1(19)=domFreq(1);
    DATA1(20)=sarea;
    DATA1(21)=darea;
    DATA1(22)=totalarea;
    DATA1(23)=ratioarea;
    DATA1(24)=deti;
    DATA1(25)=AI;
    DATA1(26)=RI;
    
    DATA2=DATA1(:,7:26);
    
       dlmwrite('NEWD.txt',DATA1,'-append')
        dlmwrite('NEWNOD.txt',DATA2,'-append')
%     end