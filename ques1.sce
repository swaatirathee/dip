//question 1 commands
 Write program to read and display digital image using 
MATLAB or SCILAB
a) Become familiar with SCILAB/MATLAB Basic commands
//part a
Declaring matrices
Code :- A=[1 2 3; 4 5 6; 7 8 9]


Populating matrix elements with zeros
Code :- B=zeros(3,3)



Knowing size of matrix
Code :- [rowz, cols]=size(A)
//partb
b) Read and display image in SCILAB/MATLAB
Read an image
Code :- myImage=imread('C:\Users\itskh\Desktop\images\tulips.jpg')

Display an image
Code :- imshow(myImage)
//partc
c) Resize given image
Size of image
Code :- [Rows, Cols] = size(myImage)


Resize of image : ---Code :- imresize(myImage,[256,256])

d) Convert given color image into gray-scale imageCode :-
myGrayImage=rgb2gray(myImage) imshow(myGrayImage)


e) Convert given color/gray-scale image into black & white imageCode :-
myBWImage=im2bw(myImage,0.5) imshow(myBWImage)

f) Draw image profile
Code :- improfile(myImage)

g) Separate color image in three R G & B planes Red
Code :- RED=myImage(:,:,1)
 imshow(RED)
 
 - GREEN=myImage(:,:,2) 
 imshow(GREEN)


- BLUE=myImage(:,:,3)


h) Create color image using R, G and B three separate planes
Code :- newImage=cat(3,RED,BLUE,GREEN) 
 imshow(newImage)


i) Flow control and LOOP in SCILAB
Flow Control
Code :- if ImageData(r, c) > 
threshold then ThresholdedImage(r, c) = 255; else
ThresholdedImage(r, c) = 0;
End
Loop
Code :- myImage=imread(„/home/chv/test.bmp‟) [Rows, Cols] = 
size(myImage)
total = 0; for rowIndex = 1:Rows for colIndex = 1:Cols total = total + 
ImageData(rowIndex,colIndex); 
end end average=total/(Rows*Cols)



j) Write given 2-D data in image file
Code :- imwrite(ImageData, ' Testout.bmp', 'bmp');

