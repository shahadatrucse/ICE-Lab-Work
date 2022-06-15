%Encoding
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
zero = 0;
state=0;
for i=1:length(bits)
    if bits(i)==0
        zero=zero + 1;
    else
        state=mod(state+1,2);
        zero=0;
        
    end
    if zero==4
        bits(i)=-1;
        if state==0
            bits(i-3)=1;
        end
        zero=0;
        state=0;
    end
end

opp=1;
for i=1:length(bits)
    if bits(i)== 1
        opp= opp * (-1);
        x((i-1)*n+1:i*n)=opp;
    end
    if bits(i) ==-1
        x((i-1)*n +1: i*n)=opp;
    end
end

plot(t,x,"LineWidth",3,"Color","r");
xlim([0,12]);
ylim([-2,2]);
grid on;
title("Encoding HDB3");
    
        
        