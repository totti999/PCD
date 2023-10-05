I = imread('akainu.jpg');

%rotate 30 derajat
I_rotate = maketform('affine', [cosd(90) -sind(90) 0; sind(90) cosd(90) 0; 0 0 1]);

hasil_rotasi = imtransform(I, I_rotate);
imshow(hasil_rotasi);

%Scaling

I_scale = maketform('affine', [3.5 0 0; 0 3.5 0; 0 0 1]);
hasil_scaling = imtransform(I, I_scale);

%Translation
matriks_I = [1 0 0; 0 1 0;25 15 1];
I_translation = maketform('affine', matriks_I);
hasil_translasi = imtransform(I, I_translation, 'Xdata', [1 (size(I,2)+ matriks_I(3,1))],'Ydata', [1 (size(I,1)+matriks_I(3,2))], 'FillValues',128);

%Shear


subplot(2,3,1), imshow(I); title("ori");
subplot(2,3,2), imshow(hasil_rotasi); title("rotasi 90 derajat");
subplot(2,3,3), imshow(hasil_scaling); title("scaling 3.5");
subplot(2,3,4), imshow(hasil_translasi); title("translation");