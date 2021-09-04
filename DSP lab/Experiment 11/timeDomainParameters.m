function [pp,ff,fp,pf,ppbyff,ppbyfp,fpbyff,fpbypf,plht,crti,sarea,darea,totalarea,ratioarea,deti,AI,RI,npks]=timeDomainParameters (signal,fps)
nFrames=length(signal);  % Signal length
t = [0:nFrames-1]/fps;
%--------face------------------------------------------
[peaks, peak_pos,foots, foot_pos] = peakdetect(fps, nFrames, signal);

peaks=peaks(2:end);
foots=foots(2:end);
peak_pos=peak_pos(2:end);
foot_pos=foot_pos(2:end);
npks=length(peak_pos);
figure(5)
plot(t,signal, peak_pos/fps,peaks,'*r',foot_pos/fps,signal(foot_pos),'*m')  %see how the peaks looks
xlabel('time')
ylabel('amplitude')

prompt={'SIGNAL OK'};
title='ENTER 0 OR 1';
answer=inputdlg(prompt,title);
ans= str2num(answer{1});

if ans == 1
    prompt={'foot no.'};
    title='DETAILS_ENTER 0 OR 1';
    answer=inputdlg(prompt,title);
    foot = str2num(answer{1});
    
    pp=(peak_pos(foot+1)-peak_pos(foot))/fps;
    ff=(foot_pos(foot+1)-foot_pos(foot))/fps;
    fp=(peak_pos(foot)-foot_pos(foot))/fps;
    pf=(foot_pos(foot+1)-peak_pos(foot))/fps;
    ppbyff=pp/ff;
    ppbyfp=pp/fp;
    fpbyff=fp/ff;
    fpbypf=fp/pf;
    plht=peaks(foot)-foots(foot);
    crti=(peak_pos(foot)-foot_pos(foot))/fps;
    
    prompt={'Dicrotic present??'};
    title='DETAILS_ENTER 0 OR 1';
    answer=inputdlg(prompt,title);
    D = str2num(answer{1});
    
    if D==1
         prompt={'ENTER PEAK NUMBER??'};
         title='ENTER PEAK NUMBER??';
         answer=inputdlg(prompt,title);
         dicro = str2num(answer{1});
        
        x_f=signal(peak_pos(dicro)+3:foot_pos(dicro+1)-3);
        y_axis2=x_f(3:length(x_f));
        y_axis1=x_f(1:length(x_f)-2);
        slope=y_axis2-y_axis1;
        
        [val pos]=min(abs(slope));
        poss=round(pos);
        value=x_f(poss);
        
        location=poss+peak_pos(dicro)+3;
        values=signal(location);
        
        figure(6)
        plot(t,signal, peak_pos/fps,peaks,'*r',foot_pos/fps,signal(foot_pos),'*m', location/fps,values,'*k')  %see how the peaks looks
        xlabel('time')
        ylabel('amplitude')
        
        prompt={'Dicrotic peaks detected properly??'};
        title='DETAILS_ENTER 0 OR 1';
        answer=inputdlg(prompt,title);
        di = str2num(answer{1});
        
        if di==1
            
            Scurve=signal(peak_pos(dicro):location);
            Dcurve=signal(location:foot_pos(dicro+1));
            in=min(Scurve);
            Scurve=Scurve+abs(in);
            in=min(Dcurve);
            Dcurve=Dcurve+abs(in);
            ts=[0:length(Scurve)-1]/fps;
            td=[0:length(Dcurve)-1]/fps;
            
            sarea=trapz(ts,Scurve);
            darea=trapz(td,Dcurve);
            totalarea=sarea+darea;
            ratioarea=darea/sarea;
            deti=(location-peak_pos(dicro))/fps;
            AI= (value-foots(dicro))/(peaks(dicro)-foots(dicro));
            RI=1-AI;
        else
            
            sarea=0;
            darea=0;
            totalarea=0;
            ratioarea=0;
            deti=0;
            AI=0;
            RI=0;
        end
    else
        
        sarea=0;
        darea=0;
        totalarea=0;
        ratioarea=0;
        deti=0;
        AI=0;
        RI=0;
    end
else
    pp=0;
    ff=0;
    fp=0;
    pf=0;
    ppbyff=0;
    ppbyfp=0;
    fpbyff=0;
    fpbypf=0;
    plht=0;
    crti=0;
    sarea=0;
    darea=0;
    totalarea=0;
    ratioarea=0;
    deti=0;
    AI=0;
    RI=0;
end