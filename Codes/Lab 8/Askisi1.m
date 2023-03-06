I = imread('shapes.png’); 
figure, imshow(I);

I_bin = (I(:,:,1) > 0) | (I(:,:,2) > 0) | (I(:,:,3) > 0);
figure, imshow(I_bin)

           
I_labeled = bwlabel(I_bin);
stats_red = regionprops(I_labeled,I(:,:,1),'Area','Eccentricity','Perimeter', 'MeanIntensity', 'PixelValues');
stats_green = regionprops(I_labeled,I(:,:,2),'MeanIntensity', 'PixelValues');
stats_blue = regionprops(I_labeled,I(:,:,3),'MeanIntensity', 'PixelValues');

           
I_max_area = (I_labeled == 5);
figure, imshow(I_max_area)
