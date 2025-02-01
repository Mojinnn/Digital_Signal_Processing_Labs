h = [-1 2 3 1 4 -3 2 4 -5 5 1];

M = length(h);
n = [0:M-1];
[Hr, w, c, L] = Hr_Type3(h);
a,L
amax = max(a) + 1;
amin = min(a) - 1;

%Cau a: Loai 3 vi so phan tu le va gia tri khong doi xung

%Cau b: Day dap ung xung cua bo loc
subplot(2,2,1);
stem(n, h);
grid on;
axis([-1 2*L+1 amin amax]);
title('Impulse Response');
xlabel('n');
ylabel('h(n)');

%Cau c: Cac he so cua bo loc
subplot(2,2,3);
stem(0:L, a);
grid on;
axis([-1 2*L+1 amin amax]);
title('a(n) coefficients');
xlabel('n');
ylabel('a(n)');

%Cau d: Ham do lon cua dap ung tan so
subplot(2,2,2);
plot(w/pi, Hr);
grid on;
title('Type-3 Amplitude Response');
xlabel('Frequency in pi units');
ylabel('Hr');


%Cau e: Phan bo diem cuc va khong diem
subplot(2,2,4);
zplane(h, 1);
title('Pole-Zero Plot');
