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
k=1;
for i=1:length(bits)
    if bits(i) == 1
        x((i-1)*n+1:i*n)=k;
        k=k * (-1);
    end
end
plot(t,x,"LineWidth",3,"Color","r");
xlim([0,10]);
ylim([-2,2]);
grid on;
title("Encoding AMI");

%%Decoding
counter = 0;
lastbit =1;
for i=1:length(t)
    if t(i)>counter
        counter = counter+1;
        if x(i)==0
            result(counter)=0;
        else 
            result(counter)=1;
        end
    end
end
disp("Decoding of AMI");
disp(result);
        