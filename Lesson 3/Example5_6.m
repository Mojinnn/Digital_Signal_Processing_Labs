xn = stepseq(0, 0, 3) - stepseq(4, 0, 3);
n = [0:3];

%Cau a: Tinh toan dtft va ve do thi bien do, pha
k = [0:1000];
w = (pi/1000)*k;
X = xn*(exp(-j*pi/500).^(n'*k));

magX = abs(X);
phaX = angle(X);

figure;
subplot (2, 1, 1);
plot(w/pi, magX);
grid on;

subplot (2, 1, 2);
plot(w/pi, phaX);
grid on;


%Cau b: Tinhs 4 diem DFT
N = 4;
[Xk] = dft(xn, N);
magXk = abs(Xk)
phaXk = angle(Xk)*180/pi

figure;
subplot (2, 1, 1);
stem((0:N-1), magXk);
grid on;

subplot (2, 1, 2);
stem((0:N-1), phaXk);
grid on;