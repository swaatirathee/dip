//program 3
Aimage = imread('C:\Users\itskh\Desktop\images\flower.jpg');
Agray = rgb2gray(Aimage);
A = imresize(Aimage,[200,200]);
meanA = mean2(Agray);
Bimage = imread('C:\Users\itskh\Desktop\images\butterfly.jpg');
Bgray = rgb2gray(Bimage);
B = imresize(Bimage,[200,200]);
meanB = mean2(Bgray);
figure;
subplot(421);
imshow(A);
title('Original Image 1');
subplot(422);
imshow(Agray);
title('Gray Scale Image 1');
xlabel(sprintf('mean value : %g',meanA))
subplot(423);
imshow(B);
title('Original Image 2');
subplot(424);
imshow(Bgray);
title('Gray Scale Image 2');
xlabel(sprintf('mean value : %g',meanB))
//part a - Addition of two images
Addimage = imadd(A,B);
Add_gray = rgb2gray(Addimage);
meanAddimage = mean2(Add_gray);
subplot(425);
imshow(Addimage);
title('image 3 = Addition of image 1 and 2');
subplot(426);
imshow(Add_gray);
title('Gray Scale Image for Additon');
xlabel(sprintf('mean value : %g',meanAddimage))
//part b - Subtract one image from another
subtractimage = imsubtract(Addimage,A);
subtract_gray = rgb2gray(subtractimage);
meansubtractimage= mean2(subtract_gray);
subplot(427);
imshow(subtractimage);
title('Subtract image 1 from 3');
subplot(428);
imshow(subtract_gray);
title('Gray Scale Image for Subtraction');
xlabel(sprintf('mean value : %g',meansubtractimage))
