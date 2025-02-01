syms z n;
X =(z/2)./(z-1) - (z/2)./(z-(1/3));
x = iztrans(X, z, n);
disp(x);