function mirrored = mirroring(I)

mirrored = zeros(size(I,1),size(I,2));
count = 1;
for i = size(I,2):-1:1
    mirrored(:,count) = I(:,i);
    count = count + 1;
end


%--------Command Window----------
I = imread('cameraman.tif');
m = mirroring(I);
figure, imshow(uint8(m))
