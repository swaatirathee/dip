//practical 5 part b histogram equalization without using standard scilab command
path='C:\Users\itskh\Desktop\images\butterfly01.jpg';
F=imread(path);
F=rgb2gray(F);
[rows cols]=size(F);
G=F;
myhist=zeros(256,1);
for k=0 : 255
myhist(k+1)=length(find(F==k));
end
cdf=zeros(256,1);
cdf(1)=myhist(1);
for k=2 : 256
cdf(k)=cdf(k-1)+myhist(k);
end
cumprob=cdf/(rows*cols);
equalizedhist=round(cumprob*255);
for i=1 : cols
for j=1 : rows
G(i,j)=equalizedhist(F(i,j) + 1);
if(F(i,j)==m)
G(i,j)=equalizedhist(m+1);
end
end
end

myeqhist=zeros(256,1);
for k=0 : 255
myeqhist(k+1)=length(find(G==k));
end
figure(1);
subplot(2,1,1);
imshow(G);
title('Original Image');
subplot(2,1,2);
bar(myhist);
title('Histogram of Original Image');
figure(2);
subplot(2,1,1);
imshow(F);
title('Histogram Equalized Image');
subplot(2,1,2);
bar(myeqhist);
title('Equalized Histogram of Image');
