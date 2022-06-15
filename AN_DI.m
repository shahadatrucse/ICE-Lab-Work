clc;
clear;
a=2;
f=50;
fs=100;
%T=10;
t=0:0.01:10;
%ts=0:10:1000;

x=a*sin(2*3.14*f*t);
subplot(3,1,1);
plot(t,x,"r");
title("Analig");

y=a*sin(2*3.14*f/fs*t);
subplot(3,1,2);
stem(y);
axis([0,length(y),-2,2]);

