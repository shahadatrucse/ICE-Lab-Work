bits = [1 0 1 1 0];
bitrate = 1; % bits per second
n = 1000; % sample points per bit
T = length(bits) / bitrate; % total time
N = length(bits) * n; % total points
dt = T / N; % time each point will take

t = 0:dt:T; % time domain
x = zeros(1,length(t)); % amplitude domain

%%encoding
for i = 1:length(bits)
    if bits(i) == 1
        x((i-1)* n + 1 : i * n) = 1;
    end
end

plot(t, x, 'Linewidth', 3, 'Color', 'r');
hold on;
plot(xlim, [0 0], '-r')
hold off;
ax = gca;
ax.XGrid = 'on';
ax.YGrid = 'off';
ax.GridAlpha = 0.5;
title('Encoded Signal');

%%decoding
counter = 0;
for i = 1:length(t)
    if t(i) > counter
        counter = counter + 1;
        result(counter) = x(i);
    end
end

disp(result);