X = linspace(0,3*pi);

subplot(7,3,1);
plot(X,Y), xlabel('X'), ylabel('Y');
Y = cos(X);
title('fungsi cos');

subplot(7,3,2);
plot(X,y1), xlabel('X'), ylabel('Y1');
y1 = sin(X);
title('fungsi sin');

subplot(7,3,3);
plot(X,y2), xlabel('X'), ylabel('Y2');
y2 = tan(X);
title('fungsi tangen');

A= [5 12 8 ; 2 7 9 ; 18 15 22 ];
subplot(7,3,4);
bar(A);
title('fungsi daigram batang');

subplot(7,3,5);
bar3(A);
title('fungsi diagram batang 3D');

x1 = linspace(-4,4,20);
subplot(7,3,6);
y3 = exp(-x1.*x1);
stairs(x1,y3);
title('fungsi diagram tangga');

subplot(7,3,7);
histogram(x1);
title('fungsi histogram');

subplot(7,3,8);
polarhistogram(x1);
title('fungsi histogram sudut');

subplot(7,3,9);
compass(X);
title('fungsi kompass');

subplot(7,3,[10,12]);
[A,B] = meshgrid(-8:.5:8);
R = sqrt(A.^2+B.^2);
Z = sin(5*R)./R;
surf(Z);

subplot(7,3,[13,21]);
image = imread("akainu.jpg");
imshow(image);






