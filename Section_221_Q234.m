clear all;
close all;
clc;

fs = 18e3;
f = 5;

t = 0:0.01:pi; ;

x = 100*sin(f*t).*exp(-t*0.78);
xn = x + 14*randn(size(x));  % added noise
xn(100) = 150; %outlier #1
xn(150)= -100; %outlier #2
xn(200)= 150; %outlier #3
N=3;
xf = zeros(size(xn));
xfgnu = zeros(size(xn));
fk = 1/N*ones(N,1);
%filter implementation
for idx = N:length(xn)
  xf(idx)= sum(xn(idx-N+1:idx))/N; %Average calculation
end


xfgnu = filter(fk,1,xn); %pre initializes our filter to get rid of jump fk = filter kernel

figure
subplot(3,1,1)
plot(t,x) %plot normal sin curve
grid minor
xlabel('Samples')
ylabel('Amplitude')
title ('Original Signal')
subplot(3,1,2)
plot (t,xn) %plot noisy sin curve
grid minor
xlabel('Samples')
ylabel('Amplitude')
title('Noisy Signal')
subplot(3,1,3)
hold on
plot (t,xf) %plot noisy sin curve
plot(t, xfgnu)
grid minor
xlabel('Samples')
ylabel('Amplitude')
title('Smoothed Signal')
