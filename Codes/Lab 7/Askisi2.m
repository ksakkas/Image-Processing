I = imread('lena.png’);
Ired = I(:,:,1);

           
% Μέθοδοι Ανίχνευσης Ακμών           
I_bin_roberts = edge(Ired,'Roberts');
I_bin_sobel = edge(Ired,'Sobel');
I_bin_prewitt = edge(Ired,'Prewitt');
I_bin_log = edge(Ired,'log');
I_bin_canny = edge(Ired,'Canny');

       
figure, imshow(Ired)
title('initial')
figure, imshow(I_bin_roberts)
title('Roberts')
figure, imshow(I_bin_sobel)
title('Sobel')
figure, imshow(I_bin_prewitt)
title('Prewitt')
figure, imshow(I_bin_log)
title('LoG')
figure, imshow(I_bin_canny)
title('Canny')
           
           
figure, 
subplot(3,2,1), imshow(Ired)
subplot(3,2,2), imshow(I_bin_roberts)
subplot(3,2,3), imshow(I_bin_sobel)
subplot(3,2,4), imshow(I_bin_prewitt)
subplot(3,2,5), imshow(I_bin_log)
subplot(3,2,6), imshow(I_bin_canny)
