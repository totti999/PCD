img = [ 1 2 3; 4 5 6; 7 8 9];
kernel = [2 1 0.; 1 1 -1; 0 -1 -2];

%flip kernel 180 derajat
f1 = flip(kernel,1)     %90 derajat
f2 = flip(f1,2)         %180 derajat

hasil = imfilter(img, kernel, 'conv' ,'same')
