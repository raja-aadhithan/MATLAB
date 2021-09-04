function [psd,domFreq]= FreqDomainParameters( signal, fps, person)
% person='name';
signal=signal(:,:);
nFrames=length(signal);

%%--HR estimation-------------------------------%%
[f, P1] = fourier(2*fps, nFrames, signal);
figure(1)
plot(f,P1)
title('Calculating BPM')
xlabel('freq(Hz)')
ylabel('|P1(f)|') 
% t=(0:nFrames-2)/fps;
% plot(t,sig)

%%---------------PSD of entire signal-----------------
w=hanning(100);
Q=pwelch(signal,w,50,100,fps);
plot(Q)
xlabel('freg(Hz)')
ylabel('power/freq (dB/Hz)')
title('Welch PSD estimate')
[VAL, POS]=max(Q);
psd=POS;
%%---------dominant freq per slot------------------------

w=hanning(100);
[S, F, T, P ]=spectrogram(signal,w,50,100,fps,'yaxis');
imagesc(T,F,log10(abs(S)));colorbar;
set(gca, 'YDir', 'Normal')
xlabel('time(sec)')
ylabel('freq(Hz)')
title('spectrogram') 
saveas(gcf,person,'png')

for i=1:length(T)
    [VALUE, POSI]=max(P(:,i));
    domFreq(i)=F(POSI);
end
plot(domFreq)
ylabel('slot')
ylabel('freq(Hz)')
title('dominant freqs at different slots') 
saveas(gcf,person,'jpg')
%%---------------STFT

%% Periodicity
% dif=s1-mean(s1);
% per=pwelch(dif,w,25,50,fs);
% plot(per)
% xlabel('freg(Hz)')
% ylabel('power/freq (dB/Hz)')
% title('Welch PSD estimate')
% [VAL POS]=max(per)

%%default spectrogram
% figure(2)
% spectrogram(s1,[],[],[],fs,'yaxis');colorbar;
% saveas(gcf, person,'png')
