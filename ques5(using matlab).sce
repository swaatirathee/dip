//practical 5 part a histogram equalization using standard scilab command
B = imread('C:\Users\itskh\Desktop\images\flower.jpg');
A = rgb2gray(B);
[counts,cells] = imhist(A);
scf(0)
imshow(A)
scf(1)
plot2d3('gnn',cells,counts);
title("Histogram plot of Original Image");
Theq = imhistequal(A);
[counts,cells]=imhist(Theq);
scf(2)
imshow(Theq);
scf(3)
plot2d3('gnn',cells,counts);
title('Histogram of Histogram Equalized Image');
