amp_message=2;
amp_carrier=3;
frequency_message=3;
frequency_carrier=10;

T=10;
t=0:1/1000:T;

message=amp_message.*sin(2*pi*frequency_message*t);
subplot(3,1,1);
plot(t,message,"r");
title("Message");

carrier=amp_carrier.*sin(2*pi*frequency_carrier*t);
subplot(3,1,2);
plot(t,carrier,"b");
title("carrier");

%modulated=(amp_carrier + message).*carrier;
modulated= message + carrier;
subplot(3,1,3);
plot(t,modulated);
title("Modulated");
