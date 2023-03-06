I = imread('cameraman.tif’); 
hist = imhist(I,256); 

           
% Οπτικοποίηση Ιστογράμματος   
x = 0:1:255; 
figure, plot(x,hist); 

           
threshold = 50;
I_segmented = (I > 50);

figure, imshow(I)
figure, imshow(I_segmented)
 
