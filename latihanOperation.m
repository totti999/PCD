I = imread('tire.tif');
I2 = imadd(I, 75);
figure
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I2), title('Additional Image');

maxI = max(I(:));
minI = min(I(:));

maxI2 = max(I2(:));
minI2 = min(I2(:));

NilaiSumI = sum(sum(I == 255));
NilaiSumI2 = sum(sum(I2 == 255));
NilaiSumX = sum(sum(I == 47));