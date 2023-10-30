
%citra asli dan cdf
imageOri = imread('pout.tif');
[count, bin] = imhist(imageOri);
c1 = cumsum(count)./numel(imageOri);

%citra hasil ekualisasi hist dan cdf
img_he = histeq(imageOri,256);
[count, bin] = imhist(img_he);
c2 = cumsum(count)./numel(img_he);

%citra haail peregangan kontras dan cdf
img_limit = stretchlim(imageOri);
i_regang = imadjust(imageOri, img_limit, []);
[count, bin] = imhist(i_regang);
c3 = cumsum(count)./numel(i_regang);


figure
%citra asli dan cdf
subplot(3,3,1) , imshow(imageOri), title('citra asli');
subplot(3,3,2) , imhist(imageOri), title('histogram citra asli');
subplot(3,3,3), stairs(c1), title('cdf citra asli');

%citra hasil ekualisasi hist dan cdf
subplot(3,3,4), imshow(img_he), title('citra histogram ekualisasi');
subplot(3,3,5), imhist(img_he), title('histogram hasil ekualisasi');
subplot(3,3,6), stairs(c2), title('cdf citra hasil ekualisasi');

%citra haail peregangan kontras dan cdf
subplot(3,3,7),imshow(i_regang), title("Citra peregangan kontras");
subplot(3,3,8), imhist(i_regang), title('histogram peregangan kontras');
subplot(3,3,9), stairs(c3),  title('cdf citra hasil peregangan');
