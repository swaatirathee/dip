//practical 7 b,c
B = imread('C:\Users\itskh\Desktop\images\umbrella.jpg');
I = rgb2gray(B); //convert coloured image to gray scale
subplot(331);
imshow(I);
title('Original image');
//Add salt and pepper noise
J = imnoise(I,'salt & pepper');//default density 0.05
subplot(332);
imshow(J);
title('image with salt & pepper noise');
//removal of salt & pepper noise
kmedian = immedian(J,3); //apply median filter
subplot(333);
imshow(kmedian);
title('image after applying median filter');
//add gaussian noise
A = imnoise(I,'gaussian',0,0.01);
subplot(334);
imshow(A);
title('image with gaussian noise')
//Gaussian Filter
F=fspecial('gaussian',[3,3],0.5)
y = imfilter(I,F);
subplot(335);
imshow(y);
title('image without gaussian noise');
