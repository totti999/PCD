I = imread('eight.tif');
I_HE = histeq(I,256);
figure, subplot(2,2,1), imshow(I), title("Citra Asli");
subplot(2,2,2), imhist(I), title("Histogram Citra Asli");
subplot(2,2,3), imshow(I_HE), title("Citra hasil HE")
subplot(2,2,4), imhist(I_HE), title("Histogram Citra Asli");

% cdf : cumulative distribution function
I_hist = imhist(I_HE);
tf = cumsum(I_hist);
tf_normalisasi = tf/max(tf);
figure, plot(tf_normalisasi);