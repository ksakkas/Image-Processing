I = imread('shapes.png’); 
figure, imshow(I);
         
I_bin = (I(:,:,1) > 0) | (I(:,:,2) > 0) | (I(:,:,3) > 0);
figure, imshow(I_bin)
           

I_labeled = bwlabel(I_bin);
stats_red = regionprops(I_labeled,I(:,:,1),'Area','Eccentricity','Perimeter', 'MeanIntensity', 'PixelValues’);
stats_green = regionprops(I_labeled,I(:,:,2),'MeanIntensity', 'PixelValues');
stats_blue = regionprops(I_labeled,I(:,:,3),'MeanIntensity', 'PixelValues');


I_max_area = (I_labeled == 5);
features = zeros(length(stats_red),5);


% Εξαγωγή Χαρακτηριστικών
for i=1:length(stats_red)
    features(i,1) = stats_red(i).Area;
    features(i,2) = stats_red(i).Eccentricity;
    features(i,3) = stats_red(i).Perimeter;
    features(i,4) = stats_red(i).MeanIntensity;
    features(i,5) = stats_green(i).MeanIntensity;
    features(i,6) = stats_blue(i).MeanIntensity;
    features(i,7) = (4*stats_red(i).Area*pi)/(stats_red(i).Perimeter)^2;
end


% Εκτέλεση του k-means
[idx,C] = kmeans(features(:,7),3);


% Αρχικοποίηση Μηδενικών Πινάκων 
sxhma1 = zeros(size(I_bin,1),size(I_bin,2));
sxhma2 = zeros(size(I_bin,1),size(I_bin,2));
sxhma3 = zeros(size(I_bin,1),size(I_bin,2));


for i=1:length(idx)
   if idx(i) == 1
       sxhma1 = sxhma1 + (I_labeled == i);
   elseif idx(i) == 2
       sxhma2 = sxhma2 + (I_labeled == i);
   else 
       sxhma3 = sxhma3 + (I_labeled == i);  
   end
end
 
 
figure, imshow(sxhma1)
figure, imshow(sxhma2)
figure, imshow(sxhma3)
