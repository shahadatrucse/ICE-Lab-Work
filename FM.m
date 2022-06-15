clc;
clear;

amp_message=2;
amp_carrier=4;
frequency_message=2;
frequency_carrier=8;
m=2;%amp_message/amp_carrier;
T=5;
t=0:0.001:T;

message=amp_message.*sin(2*pi*frequency_message*t);
subplot(3,1,1);
plot(t,message,"r");
title("Message");

carrier=amp_carrier.*sin(2*pi*frequency_carrier*t);
subplot(3,1,2);
plot(t,carrier,"b");
title("Carrier");

modulated=amp_carrier.*sin((2*pi*frequency_carrier*t)+(m*sin(2*pi*frequency_message*t)));
subplot(3,1,3);
plot(t,modulated);
title("Modulated");