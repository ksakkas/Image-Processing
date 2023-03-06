function arnitiki = arnitiko(I)

arnitiki = zeros(size(I,1),size(I,2),size(I,3));
if size(I,3) == 1
    arnitiki = 255 - I;
elseif size(I,3) == 3
    arnitiki(:,:,1) = 255 - I(:,:,1);
    arnitiki(:,:,2) = 255 - I(:,:,2);
    arnitiki(:,:,3) = 255 - I(:,:,3);
end 

% Enallaktika arnitiki = 255 - I afoy ayto tha kanei thn praksh se ola ta kanalia


%------Command Window------------
I = imread('lena.png');
I_gray = rgb2gray(I);
k = arnitiko(I_gray);
figure, imshow(uint8(k))

%------Command Window------------
I = imread('lena.png');
k = arnitiko(I);
figure, imshow(uint8(k))
