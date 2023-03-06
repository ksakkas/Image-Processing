I = imread('cameraman.tif’); 
level = graythresh(I);

BW = im2bw(I,level); 
imshow(BW)
