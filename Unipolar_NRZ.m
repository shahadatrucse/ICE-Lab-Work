%%Encoding
clc;
clear;
bits=input("Given an array: ");
n=100;
bitrate=1;
T=length(bits) / bitrate;
N=length(bits)*n;
dt=T/N;
t=0:dt:T;
x=zeros(1,length(t));

for i=1:length(bits)
    if bits(i)== 1
        x((i-1)*n+1:i*n)=1;
    end
end
plot(t,x,"LineWidth",3,"Color",'r');
xlim([0,20]);
ylim([-2,2]);
grid on;
title("Unipolar NRZ Encoding");

%%Decoding
counter=0;
for i=1:length(t)
    if t(i)>counter
        counter=counter + 1;
        result(counter)=x(i);
    end
end
disp("Unipolar NRZ Decoding:");
disp(result);