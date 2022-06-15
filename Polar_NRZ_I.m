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
k=-1;
for i=1:length(bits)
    if bits(i)== 1
        k=k*(-1);
        x((i-1)*n+1:i*n)=k;
    else
        x((i-1)*n+1:i*n)=k;
    end
end
plot(t,x,"LineWidth",3,"Color","r");
xlim([0,10]);
ylim([-2,2]);
grid on;
title("Encoding Polar NRZ I");
   
%Decoding
counter=0;
k=-1;
for i=1:length(t)
    if t(i)>counter
        counter=counter + 1;
        if x(i)~=k
            result(counter)=1;
            k=k*(-1);
        else
            result(counter)=0;
        end
    end
end
            
disp(result);
        
        
