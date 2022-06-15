%Encoding
clc;
clear;
bits=input("Given an array: ");
n=100;
bitrate=1;
T=length(bits)/bitrate;
N=length(bits)*n;
dt=T/N;
t=0:dt:T;
x=zeros(1,length(t));

for i=1:length(bits)
    if bits(i) == 1
        x((i-1)*n+1:(i-1)*n+n/2)=-1;
        x((i-1)*n+n/2+1:i*n)=1;
    else 
        x((i-1)*n+1:(i-1)*n+n/2)=1;
        x((i-1)*n+n/2+1:i*n)=-1;
    end
end
plot(t,x,"LineWidth",3,"Color","r");
xlim([0,10]);
ylim([-2,2]);
grid on;
title("Encoding Polar RZ");

%%Decoding
counter = 0;

for i=1:length(t)
    if t(i)>counter
        counter = counter+1;
        if x(i)==-1
            result(counter)=1;
        else
            result(counter)=0;
        end
    end
end
disp("Decoding of Polar RZ");
disp(result);
        