% function y = circonvt(x1, x2, N);
% if length(x1) > N;
%     error('N phai lon hon do dai cua x1');
% end
% if length(x2) > N;
%     error('N phai lon hon do dai cua x2');
% end
% 
% x1 = [x1 zeros(1, N-length(x1))];
% x2 = [x2 zeros(1, N-length(x2))];
% 
% n = 1:N-1;
% m = [0: 1: N-1];
% x2 = x2(mod(-m, N) + 1);
% 
% H = zeros(N, N);
% for n = 1:1:N
%     H(n,:) = cirshftt(x2, n-1, N);
% end
% y = x1*conj(H');
% end

function y = circonvt(x1, x2, N);
if length(x1) > N
    error('Sai do dai');
end
if length(x2) > N
    error('Sai do dai');
end

x1 = [x1 zeros(1,N-length(x1))];
x2 = [x2 zeros(1,N-length(x2))];

y = zeros(1,N);

for n=0:N-1
    for m=0:N-1
        y(n+1) = y(n+1) + x1(m+1)*x2(mod(n-m, N)+1);
    end
end

end
