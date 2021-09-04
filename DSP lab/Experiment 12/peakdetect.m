function [peaks, peak_pos,foots, foot_pos] = peakdetect(fps, nFrames, yr)

N=length(yr);  % Signal length
seconds=nFrames/fps;
fs = N/seconds;  % Sampling rate 
t = [0:N-1]/fs;

mr=-1*yr;
k=round(fs/2);

[peaks, peak_pos]= findpeaks(yr, 'MINPEAKHEIGHT',0,'MINPEAKDISTANCE' ,k); % find peaks of ppg % finding peak after every k samples
[foots, foot_pos]= findpeaks(mr, 'MINPEAKHEIGHT',0,'MINPEAKDISTANCE' ,k); %find foots of ppg % finding foot after every k samples
foots=yr(foot_pos);

if peak_pos(1)<foot_pos(1)
    peak_pos=peak_pos(2:end);
    peaks=peaks(2:end);
end
if foot_pos(end)>peak_pos(end)
    foot_pos=foot_pos(1:end-1);
    foots=foots(1:end-1);
end
