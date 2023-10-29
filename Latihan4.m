%sharpening :memperjelas detail suatu citra

img = imread("cameraman.tif");
kernel_1 = fspecial('average', 5)
kernel_2 = fspecial('unsharp');

%skema ke-3 
sharp_img3 = imfilter(img, kernel_2);

sharp_img2 = imfilter(img, kernel_1);
sharp_img2 = imsubtract(img, sharp_img2);
sharp_img2 = imadd(img, sharp_img2);

[count, bin] = imhist(img);
c1 = cumsum(count)./numel(img);
[count2, bin2] = imhist(sharp_img2);
c1 = cumsum(count)./numel(img);
c2 = cumsum(count2)./numel(img);
[count3, bin3] = imhist(sharp_img3);
c3 = cumsum(count3)./numel(img);

%tampilkan citra asli, citra hasil penajaman
subplot(3,3,1); imshow(img); title("Citra Asli");
subplot(3,3,2); imshow(sharp_img3); title("Citra Penajaman 2");
subplot(3,3,3); imshow(sharp_img2); title("Citra Pemajaman 3");

%tampilkan histogram citra asli, citra hasil penajaman
subplot(3,3,4); imhist(img); title("Histogram Asli");
subplot(3,3,5); imhist(sharp_img3); title("Histogram Penajaman 2");
subplot(3,3,6); imhist(sharp_img2); title("Histogram Pemajaman 3");

%tampilkan kurva cdf citra asli asli, citra hasil penajaman
subplot(3,3,7); stairs(c1); title("CDF Citra Asli");
subplot(3,3,8); stairs(c2); title("CDF Penajaman 2");
subplot(3,3,9); stairs(c3); title("CDF Penajaman 3");





