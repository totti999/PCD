
X1 = ([200 100 100; 0 10 50; 50 250 120]);
Y1 = ([100 220 230 ; 45 95 120; 205 100 0]);
W = X1 + Y1

fmax = max(W(:))
fmin = min(W(:))


Z = uint8(255.0*double((W-fmin))/double((fmax-fmin)))
Z1 = imadd(X1,Y1)

W1 = X1 - Y1

Z2 = imsubtract(X1,Y1)
Z3 = imabsdiff(Y1,X1)
Z4 = immultiply(Y1,X1)
Z6 = imdivide(X1,Y1)
A = imdivide(imadd(X1, imadd(Y1,Z2)), 3)

B = uint32(X1) + uint32(Y1) 
C = uint8(X1) + uint8(Y1) 
D = C + uint8(Z2);

hasil1 = imlincomb(1/3,X1, 1/3,Y1, 1/3,Z2, 'uint8')

%procedure

