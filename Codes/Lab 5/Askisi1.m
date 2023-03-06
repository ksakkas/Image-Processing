I = imread('lenna2.png’);
I = I(:,:,1);
orizontia_diastash = size(I,2);
katakoryfh_diastash = size(I,1);
I_equal = zeros(size(I,1),size(1,2)); 
histogram = zeros(size(1,256));


for level = 0:255
	I_level = (I == level);
	histogram(level+1) = sum(sum(I_level));
end


% Συνάρτηση Αθροιστικής Πυκνότητας
for level = 0:255
	cum_hist(level+1) = sum(histogram(1:(level+1))); 
	norm_cum_hist(level+1) = floor(cum_hist(level+1)/(orizontia_	diastash*katakoryfh_diastash)*255);
end

for i = 1:size(I,1)
	for j = 1:size(I,2)
		I_equal(i,j) = norm_cum_hist(I(i,j)+1); 
	end
end
figure, imshow(I)
figure, imshow(uint8(I_equal))


% Επαλήθευση με τις Συναρτήσεις της MatLab
hist = imhist(I,256); 
J = histeq(I,256);
figure, imshow(J)
