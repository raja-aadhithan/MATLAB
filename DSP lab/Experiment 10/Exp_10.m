clc; 
clear all;
close all;
ecg=load('C:\Users\Aadhithan\Downloads\PPG\2.txt');
ppg=load('C:\Users\Aadhithan\Downloads\PPG\2.txt');
f_s=250;
N=length(ecg);
t=[0:N-1]/f_s; %time period(total sample/Fs )
figure
plot(t,ecg); title(' ECG Data plotting ')             
xlabel('time')
ylabel('amplitude')
z=ppg(200:950,1); % PPG signal
figure
plot(z,'r');
title('PPG Data Ploting');
xlabel('time');
ylabel('amplitude');
w=50/(250/2);
bw=w;
[num,den]=iirnotch(w,bw); % notch filter implementation 
ecg_notch=filter(num,den,ecg);
figure,
N1=length(ecg_notch);
t1=[0:N1-1]/f_s;
plot(t1,ecg_notch,'b'); title('Filtered ECG signal ')             
xlabel('time')
ylabel('amplitude')
w=50/(250/2);
bw=w;
fs_ppg=700
[a,b]=iirnotch(w,bw); % notch filter implementation 
ppg_notch=filter(a,b,ppg);
N2=length(ppg);
t1=[0:N2-1]/fs_ppg
figure
plot(t1,ppg_notch,'r'); title('Filtered PPG signal ')             
xlabel('time')
ylabel('amplitude')
%% Task 2-a
figure, subplot 211% study useage of subplot under help section 
plot(t,ecg); title('ECG Data plotting ')             
xlabel('time')
ylabel('amplitude')
legend(' ORIGINAL ECG SIGNAL')
subplot 212
plot(t1,ecg_notch,'r'); title('Filtered ECG signal ')             
xlabel('time')
ylabel('amplitude')
legend(' Flitered ECG SIGNAL')

figure
subplot 211% study useage of subplot under help section 
plot(z); title('PPG Data plotting ')             
xlabel('time')
ylabel('amplitude')
legend(' ORIGINAL PPG SIGNAL')
subplot 212
plot(t1,ppg_notch,'r'); title('Filtered ECG signal ')             
xlabel('time')
ylabel('amplitude')
legend(' Flitered PPG SIGNAL')

%% plot the Both signal Original and FILter signal
figure, plot(t(1:201),ecg(1:201),'r');
title('Data plotting for 0 to 0.804 time frame')             
xlabel('time')
ylabel('amplitude')
hold on
figure
plot(t1(1:201),ecg_notch(1:201),'g');             
legend('ORIGINAL ECG SIGNAL',' Flitered ECG SIGNAL')
plot(t1(1:201),z(1:201),'y'); 
title('Data plotting for 0 to 0.804 time frame')
legend('ORIGINAL ppg SIGNAL',' Flitered ppg SIGNAL')
hold off
