I = imread('Noise_salt_and_pepper.png’);
filtered = uint8(zeros(size(I,1),size(I,2))); 
megethos_parathyrou = 3; 
offset = (megethos_parathyrou/2) - 0.5;
parathyro = zeros(megethos_parathyrou,megethos_parathyrou);
           
for i=1+offset:size(I,1)-offset   
    for j=1+offset:size(I,2)-offset 
        parathyro(:,:)=I(i-offset:i+offset,j-offset:j+offset); 
        filtered(i,j) = uint8(round(mean2(parathyro)));  
    end
end

figure, imshow(I) 
figure, imshow(filtered)
