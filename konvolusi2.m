%Filter Emboss
img = imread('cameraman.tif');

%kernel atau filter
emboss_1 = [ 0 1 0; 0 0 0; 0 -1 0]; %emboss horizontal 
emboss_2 = [ 1 0 0; 0 0 0; 0 0 -1]; %emboss diagona 45 derajat
emboss_3 = [ 0 0 0; 1 0 -1; 0 0 0]; %emboss vertikal
emboss_4 = [ 0 0 1; 0 0 0; 0 -1 0]; %emboss diagonal 135 derajat

hasil_1 = imfilter(img, emboss_1, 'conv');
hasil_2 = imfilter(img, emboss_2, 'conv');
hasil_3 = imfilter(img, emboss_3, 'conv');
hasil_4 = imfilter(img, emboss_4, 'conv');

subplot(2,3,1); imshow(img); title("Citra Asli");
subplot(2,3,2); imshow(hasil_1); title("Citra Emboss Horizontal");
subplot(2,3,3); imshow(hasil_2); title("Citra Emboss Diag. 45");
subplot(2,3,4); imshow(hasil_3); title("Citra Emboss Vertikal");
subplot(2,3,5); imshow(hasil_4); title("Citra Emboss Diag. 135");