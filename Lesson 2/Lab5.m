n = -5:5;
x = 2*impseq(-2, -5, 5) - 2*impseq(4, -5, 5);
stem (n, x);
title('Day so');
xlabel('n');
ylabel('y(n)');