clear all;
close all;
clc;

f=5;

t=0:0.01:pi;

x=100*sin(f*t).*exp(-t*0.78);
subplot(2,1,1);

plot(t,x,'r');
title("Periodic sinusoidal sequences in continuous time");
xlabel("Time");
ylabel("X");
subplot(2,1,2);
stem(t,x,'g');
title("Periodic sinusoidal sequences in discrete time");
xlabel("Time");
ylabel("X");


%noise
%plot (x + 2*randn(size(t)));
