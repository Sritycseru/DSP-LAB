clc
clear all
x=[1 2 3 4];
y=[2 3 4 1];
xy=flip(y);
n=length(x);
h=length(y);

for i=1:n+h-1;
    yy(i)=0;
end
for i=1:n
    for j=1:h
         yy(i+j-1)=yy(i+j-1)+x(i)*xy(j);
    end 
end

stem(yy)