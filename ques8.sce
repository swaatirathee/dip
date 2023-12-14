//practical 8
//Write and execute programs to use spatial low pass and high pass filter
a1 = imread('C:\Users\itskh\Desktop\images\butterfly01.jpg');
a1 = rgb2gray(a1);;
subplot(221);
imshow(a1);
title('Original Image');
a = double(a1);
[m,n] = size(a);
w = [1 1 1;1 1 1;1 1 1];
for i=2:m-1;
for j=2:n-1
b(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j-1)+w(9)*a(i+1,j-1)]/9
end
end
c=uint8(b);
subplot(222);
imshow(c);
title('Image of Average Filter');
//High Pass Filter
//Laplacian Kernel
subplot(223);
imshow(a1);
title('Original Image');
a=double(a1);
[m,n] = size(a);
w = [0 -1 0,-1 4 -1,0 -1 0];
for i=2:m-1;
for j=2:n-1
d(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j-1)+w(9)*a(i+1,j-1)]/9
end
end
c = uint8(d);
subplot(224);
imshow(c);
title('Image of high pass Filter')
