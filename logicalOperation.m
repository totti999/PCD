X = imread("x.png");
Y = imread("y.png");
Y = imresize(Y,[128,128]);
X = imresize(X,[128,128]);

X_bw = im2bw(X);
Y_bw = im2bw(Y);

hasil_and = bitand(X_bw,Y_bw);
hasil_or = bitor(X_bw,Y_bw);
hasil_notX = bitcmp(X);
hasil_notY = bitcmp(Y);
hasil_xor = bitxor(X_bw,Y_bw);
hasil_1 = bitand((hasil_notX), Y);

subplot(3,3,6), imshow(hasil_and); title('X_bw and Y_bw');
subplot(3,3,7), imshow(hasil_or); title('X_bw or Y_bw');
subplot(3,3,3), imshow(hasil_xor); title('X_bw xor Y_bw');
subplot(3,3,4), imshow(hasil_notX); title('not X');
subplot(3,3,5), imshow(hasil_notY); title('not Y');
subplot(3,3,1), imshow(X); title('X');
subplot(3,3,2), imshow(Y); title('Y');
subplot(3,3,8), imshow(hasil_1); title('not X and Y');



