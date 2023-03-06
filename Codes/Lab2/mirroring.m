function mirrored = mirroring(I)

mirrored = zeros(size(I,1),size(I,2));
count = 1;
for i = size(I,2):-1:1
    mirrored(:,count) = I(:,i);
    count = count + 1;
end
    
%---------Command Window------------
I = imread('lena.png’);
I_gray = rgb2gray(I);
I_mirror=mirroring(I_gray);
figure, imshow('lena.png')
figure, imshow(I_gray)
figure, imshow(uint8(I_mirror))
