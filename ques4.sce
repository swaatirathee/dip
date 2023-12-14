//program 4
I1 = imread('C:\Users\itskh\Desktop\images\img8.jpg');
A1 = imresize(I1,[200,200]);
A = rgb2gray(A1);
subplot(321);
imshow(A);
title('originial image 1');
I2 = imread('C:\Users\itskh\Desktop\images\group.jpg');
B1 = imresize(I2,[200,200]);
B = rgb2gray(B1);
subplot(322);
imshow(B);
title('original image 2');
//part a
C = bitand(A,B);
subplot(323);
imshow(C);
title('(part a) and(&) operation');
//part b
D = bitor(A,B);
subplot(324);
imshow(D);
title('(part b) or(|) operation');
//part d
F = bitcmp(B); //Negative Image
subplot(325);
imshow(F);
title('Part(d)- Negative Image');
