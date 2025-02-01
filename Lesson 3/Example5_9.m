n = 0:10;
x = 10.*(0.8).^n;

%Cau a
y = x(mod(-n, 11)+1);

subplot(2, 1, 1);
stem(n, x);
title('x(n) before fold');

subplot(2, 1, 2);
stem(n, y);
title('x(n) after fold');

%Cau b
