%ori image
imageOri = imread('pout.tif');

%blurred image
fBlur = fspecial("average",5);
iBlur = imfilter(imageOri, fBlur);

%shrink blur image
iBlurShrink = imadjust(iBlur, stretchlim(iBlur),[0 0]);

%substraction image
isharpSubst = imsubtract(imageOri, iBlurShrink);

%sharpen image
iSharp = imadjust(isharpSubst);


figure
%citra 
subplot(2,5,1), imshow(imageOri), title('citra asli');
subplot(2,5,2), imshow(iBlur), title('citra blur');
subplot(2,5,3), imshow(iBlurShrink), title('citra shrink blur');
subplot(2,5,4), imshow(isharpSubst), title('citra substraction');
subplot(2,5,5), imshow(iSharp), title('citra Sharpen');

%histogram
subplot(2,5,6), imhist(imageOri), title('histogram citra ori');
subplot(2,5,7), imhist(iBlur), title(' histogram citra blur');
subplot(2,5,8), imhist(iBlurShrink), title('histogram citra shrink blur');
subplot(2,5,9), imhist(isharpSubst), title('histogram citra substraction');
subplot(2,5,10), imhist(iSharp), title('histogram citra Sharpen');



