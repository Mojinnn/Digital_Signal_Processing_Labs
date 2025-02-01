function m = mod(n, N)
m = rem(n,N);
m = m + N;
m = rem(m, N);
end
