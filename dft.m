clc;
clear all;
fs=8000;
ts=1/fs;
N=8;
n=0:0.01:N-1;
x=sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts + 3*pi/4);
X = zeros(1,N);
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n)*exp(-2j*pi*(n-1)*(m-1)/N);
    end
end

rX = real(X);
iX = imag(X);
subplot(2,2,1);
plot(abs(rX));
title('real part of DFT');
subplot(2,2,2);
plot(iX);
title('imaginary part of DFT');
ln=length(X);
x=zeros(1,ln);

for i=1:ln
    for n=1:ln
        x(i)=x(i)+((1/ln)*X(n)*exp(2*pi*j*(i-1)*(n-1)/ln));
    end
end
subplot(2,2,3);
rx = real(x);
ix = imag(x);
plot(rx);
title('real part of Inverse DFT');
subplot(2,2,4);
plot(ix);
title('imaginary part of Inverse DFT');