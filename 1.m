f1=4; %kHz
f2=8; %kHz
f3=16; %kHz

a1=10;
a2=20;
a3=40;

n=1000;

x=a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t)+a3*sin(2*pi*f3*t)
subplot(2,1,1);
plot(t,x);
