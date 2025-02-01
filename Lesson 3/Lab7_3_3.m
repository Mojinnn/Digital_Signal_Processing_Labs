b = [1 0 -1];
a = [1 0 -0.81];

[R, p, C] = residuez(b, a)

zplane(b, a);

[H, w] = freqz(b, a, 200, 'whole');
magH = abs(H(1:101));
phaH = angle(H(1:101));

figure;
subplot(2, 1, 1);
plot(w(1:101)/pi, magH);

subplot(2, 1, 2);
plot(w(1:101)/pi, phaH);



% a = [1 0 -1];
% b = [1 0 -0.81];
% 
% %Cau b
% % Tinh cac vi tri cac diem cuc va he so khai trien H(z) thanh tong cac phan
% % thuc don gian
% [R, p, C] = residuez(a, b)
% 
% %Cau c
% %Phan bo diem cuc va khong diem tren mat phang Z
% figure;
% zplane(a, b);
% title('Phan bo diem cuc va khong diem tren mat phang Z');
% 
% %Cau d
% %Tim dap ung tan so bang cach danh gia 200 diem roi rac cua H(z) tren duong
% %tron don vi
% [H,w] = freqz(a, b, 200, 'whole');
% magH = abs(H(1:101));
% phaH = angle(H(1:101));
% 
% figure;
% subplot(2, 1, 1);
% plot(w(1:101)/pi, magH);
% grid on;
% title('Magnitude Part');
% xlabel('Frequency in pi unit');
% ylabel('Magnitude');
% 
% subplot(2, 1, 2);
% plot(w(1:101)/pi, phaH);
% grid on;
% title('Phase Part');
% xlabel('Frequency in pi unit');
% ylabel('Phase');
% 
% %Tim dap ung xung h(n) cua he thong
% syms n z;
% H = 1.2346 + (-0.1173*z)./(z+0.9) + (-0.1173*z)./(z-0.9);
% h = iztrans(H, z, n);
% disp(h);