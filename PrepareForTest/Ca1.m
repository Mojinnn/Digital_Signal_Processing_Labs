%Find the Impulse response, Step response and find the zeros Z and poles P with the unit circle for reference of the following LTI system:
%y(n) - y(n-1) +0.9y(n-2) = x(n)

a = [1 -1 0.9];
b = [1];

%Find the Impulse response
[x1, n1] = impseq(0,-40, 40);
h = filter(b, a, x1);

subplot(3, 1, 1);
stem(n1, h);
grid on;
title('Dap ung xung');
xlabel('n');
ylabel('x(n)');

%Find the Impulse response
[x2, n2] = stepseq(0, -40, 40);
y = filter(b, a, x2);
subplot(3, 1, 2);
stem(n2, y);
grid on;
title('Dap ung he thong');
xlabel('n');
ylabel('x(n)');

subplot(3, 1, 3);
zplane(b, a);
title ('Zplane');




function [x, n] = impseq(n0, n1, n2);
n = n1:n2;
x = ((n-n0) == 0);
end

function [x, n] = stepseq(n0, n1, n2);
n = n1:n2;
x = ((n-n0) >= 0);
end
