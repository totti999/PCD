img1 = imread('pout.tif');
m2 = linspace(0,1,256);
[img2 T] = histeq(img1, m2);
tf =  cumsum(imhist(img2));
tf_normalisasi = tf/max(tf);
figure,plot(tf_normalisasi)

tf1 = cumsum(imhist(img1));
tf1_normalisasi = tf1/max(tf1);
figure,plot(tf1_normalisasi);
