clc
clear all
x=[1 2 3 4];
y=[2 3 4 1];
yy=xcorr(x,y);
stem(yy)