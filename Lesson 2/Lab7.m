
nx = [0:5];
x = ones(1, length(nx));

nh = [0:3];
h = zeros(1, length(nh));

for i = 1:length(nh)
    if nh(i) >= 0 && nh(i) < 4
        h(i) = 1 - (1/4)*nh(i);
    end
end

[y, ny] = conv_m(x, nx, h, nh);

stem(ny, y);
title('Phep chap');
xlabel('n');
ylabel('y[n]');
grid on;