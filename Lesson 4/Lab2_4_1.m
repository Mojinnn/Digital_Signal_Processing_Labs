h = [-4 1 -1 -2 5 6 5 -2 -1 1 -4];

M = length(h);
n = [0:M-1];
[Hr, w, a, L] = Hr_Type1(h);
amax = max(a) + 1;
amin = min(a) - 1;

%Cau a: Day la bo loc loai 1 vi so le va doi xung

%Cau b: Bieu dien day dap ung xung cua bo loc
subplot(2,2, 1);
stem(n, h);
grid on;
axis([-1 2*L+1 amin amax]);
title ('Impulse Response');
xlabel('n');
ylabel('h(n)');

%Cau c: Tinh va bieu dien cac he so cua bo loc
subplot(2, 2, 3);
stem([0:L], a);
grid on;
axis([-1 2*L+1 amin amax]);
title('a(n) coefficients');
xlabel('n');
ylabel('a(n)');

%Cau d: Ham do lon cua dap ung tan so 
subplot(2, 2, 2);
plot(w/pi, Hr);
grid on;
title('Type-1 Amplitude Response');
xlabel('Frequency in pi units');
ylabel('Hr');

%Cau e: Phan bo diem cuc va diem khong
subplot(2, 2, 4);
zplane(h, 1);
title('Pole-Zero Plot');
 


