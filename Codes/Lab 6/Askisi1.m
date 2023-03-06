I = imread('art3.gif’);
figure, imshow(logical(I));

disk_mask = strel('disk',1);

      
% Πράξη Διαστολής
I_eroded = imerode(I, disk_mask);
figure, imshow(logical(I_eroded))


% Πράξη Συστολής
I_dilated = imdilate(I, disk_mask);
figure, imshow(logical(I_dilated));


% Μορφολογικό Άνοιγμα
I_opened = imopen(I, disk_mask);
figure, imshow(logical(I_opened))


% Μορφολογικό Κλείσιμο
I_closed = imclose(I, disk_mask);
figure, imshow(logical(I_closed))


% Εντοπισμός Ακμών
I_edges = I - I_eroded;
figure, imshow(logical(I_edges))
