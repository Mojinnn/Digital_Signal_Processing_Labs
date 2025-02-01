N = [-40:80];
b = [1];
a = [1 -1 0.9];

[x1, n1] = impseq (0, -40, 80);
h = filter (b, a, x1);
subplot(2, 1, 1);
stem(n1, h);
grid on;
title('Dap ung xung');
xlabel('n');
ylabel('h(n)');

[x2, n2] = stepseq (0, -40, 80);
y = filter(b, a, x2);
subplot(2, 1, 2);
stem(n2, y);
grid on;
title('Dap ung cua he thong');



% N = [-40:80];
% 
% a = [1];
% b = [1 -1 0.9];
% 
% %Dap ung xung don vi nen dau vao la xung don vi
% [x1, n1] = impseq(0, -40, 80);
% 
% h = filter (a, b, x1);
% 
% subplot(2, 1, 1);
% stem(n1,h);
% title('Dap ung xung don vi');
% xlabel('n');
% ylabel('h[n]');
% grid on;
% 
% %Dap ung cua he thong voi buoc nhay don vi
% [x2, n2] = stepseq(0, -40, 80);
% 
% y = filter(a, b, x2);
% 
% subplot(2, 1, 2);
% stem(n2, y);
% title('Dap ung he thong voi buoc nhay don vi');
% xlabel('n');
% ylabel('y[n]');
% grid on;