clc
clear all
close all;
x=zeros(1,20);
x1=[x,ones(1,100)];
n=1:120;
y=0;

for i=1:120
    y(i)=1/6*x1(i);
    for j=1:5
        if(i>j)
            y(i)=y(i)+(1/6)*x1(i-j)
        else
        end
        
    end
end
stem(n,y)
    
       
    

