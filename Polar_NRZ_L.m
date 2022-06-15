%%Encoding
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
    if bits(i)==0
        x((i-1)*n+1:i*n)=1;
    else
        x((i-1)*n+1:i*n)=-1;
    end
end
plot(t,x,"LineWidth",3,"Color","r");
xlim([0 ,10]);
ylim([-2,2]);
grid on;
title("Encoding Polar NRZ L");

%Decoding
counter=0;
for i=1:length(t)
    if t(i)>counter
        counter =counter +1;
        if x(i)==1 
            result(counter)=0;
        else
            result(counter)=1;
        end
    end
end
disp("Decoding Polar NRZ L");
disp(result);
        