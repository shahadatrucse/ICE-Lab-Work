%Encoding
clc;
clear;
bits=input("Given an array: ");
bitrate=1;
n=100;
T=length(bits)/bitrate;
N=length(bits)*n;
dt=T/N;
t=0:dt:T;
x=zeros(1,length(t));
con_zero=0;
for i=1:length(bits)
    if bits(i)==0
        con_zero = con_zero+1;
    end
    if con_zero == 8
        bits(i-4)=-1;
        bits(i-3)=1;
        bits(i-1)=-1;
        bits(i)=1;
        con_zero=0;
    end
end
state=1;
for i=1:length(bits)
    if bits(i) == 1
        state=state * (-1);
        x((i-1)*n+1:i*n)=state;
    end
    if bits(i) ==-1
         x((i-1)*n+1:i*n)=state;
    end
        
    
end

plot(t,x,"LineWidth",3,"Color","r");
xlim([0,10]);
ylim([-2,2]);
grid on;
title("Encoding B8ZS");
    
    