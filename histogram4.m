I = imread("circuit.tif");
figure, subplot(2,2,1), imshow(I), title("Image");
subplot(2,2,2), imhist(I,256), title("Histogram Citra I")
subplot(2,2,3), imhist(I,64), title("Histogram Citra I 64 bins")
subplot(2,2,4), imhist(I,32), title("Histogram Citra I 32 bins")
