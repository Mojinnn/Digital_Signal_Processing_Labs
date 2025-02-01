function [y, n] = sigadd (x1, n1, x2, n2)
n = min(min(n1),min(n2)):max(max(n1):max(n2));
y1 = zeros(1, length(n));
y2 = y1;
y1(find((n >= min(n1)) & (n <= max(n1)) == 1)) = x1;
y2(find((n >= min(n2)) & (n <= max(n2)) == 1)) = x2;
y = y1 + y2;
subplot(3, 1, 1); stem(n1, x1); axis([-2 10 -1 10]);
subplot(3, 1, 2); stem(n2, x2);axis([-2 10 -1 10]);
subplot(3, 1, 3); stem(n, y);axis([-2 10 -1 10]);
end