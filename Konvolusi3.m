%Sharpening (Penajaman) : memeperjelas detail suatu citra

img = imread("cameraman.tif");
kernel_1 = fspecial("average",5);
kernel_2 = fspecial("unsharp");

%skema ke-3
sharp_img3 = imfilter(img, kernel_2);

sharp_img2 = imfilter(img, kernel_1);
sharp_img2 = imsubtract(img, sharp_img2);
sharp_img2 = imadd(img, sharp_img2);

[count1, bin1] = imhist(img);
c1 = cumsum(count1)./numel(img);

[count2, bin2] = imhist(sharp_img2);
c2 = cumsum(count2)./numel(img);

[count3, bin3] = imhist(sharp_img3);
c3 = cumsum(count3)./numel(img);

subplot(3,3,1); imshow(img); title("Citra Asli");
subplot(3,3,2); imshow(sharp_img2); title("Citra Penajaman 1");
subplot(3,3,3); imshow(sharp_img3); title("Citra Penajaman 2");

subplot(3,3,4); imhist(sharp_img3); title("Citra Asli Histogram");
subplot(3,3,5); imhist(sharp_img3); title("Histogram penamajam 1");
subplot(3,3,6); imhist(sharp_img3); title("Histogram penajaman 2");

subplot(3,3,7); stairs(c1); title("CDF Citra Asli");
subplot(3,3,8); stairs(c2); title("CDF Penajaman 1");
subplot(3,3,9); stairs(c3); title("CDF Penajaman 2");

%tf = cumsum (imhist(img)); tf_normalisasi= tf/max(tf); figure, plot (tf_normalisasi); title("CDF Citra Asli");
%tf2 = cumsum (imhist(sharp_img2)); tf2_normalisasi= tf2/max(tf); figure, plot (tf2_normalisasi); title("CDF Penajaman 1");
%tf3 = cumsum (imhist(sharp_img3)); tf3_normalisasi= tf3/max(tf); figure, plot (tf3_normalisasi); title("CDF Penajaman 2");

