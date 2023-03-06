I = imread('custom2.png’);
% I = I(:,:,1);
figure, imshow(logical(I))
disk_mask = strel('disk’,5,0);


% Μορφολογικά Ανοιχτή Εικόνα                  
I_opened = imopen(I, disk_mask);
figure, imshow(logical(I_opened))

  
% Μορφολογικά Κλειστή Εικόνα   
I_closed = imclose(I, disk_mask);
figure, imshow(logical(I_closed))
