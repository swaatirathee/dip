//Program No. 2
//part a
A = imread('C:\Users\itskh\Desktop\images\flower.jpg');
B = imcomplement(A); //Negative Image
figure;
subplot(331);
imshow(A);
title('Original Image');
subplot(332);
imshow(B);
title('Part(a)- Negative Image');
//part b
imagerotate = imrotate(A,45); //rotate the image by 45 degree
subplot(333);
imshow(imagerotate);
title('Part(b)- Rotate Image');
//part c
C = rgb2gray(A); //convert rgb to gray image
[m n] = size(C); //returns size of image
t = input('Enter the threshold value'); //let t be 60
for i = 1:m
for j=1:n
if A(i,j)<t then
Athres(i,j)=0; //sets intensity 0 if intensity < threshold
else
Athres(i,j)=255; //sets intensity 255 if intensity > threshold
end
end
end
subplot(334);
imshow(Athres);
title('(part c) using threshold value');
xlabel(sprintf('threshold value is %g',t))
//part d
//contrast stretching
A = imread('C:\Users\itskh\Desktop\images\umbrella.jpg')
a = A*0.5 //increase contrast
b = A*1; //decrease contrast
subplot(335);
imshow(a);
title('(part c) increase in contrast');
subplot(336);
imshow(b);
title('(part d) decrease in contrast');
