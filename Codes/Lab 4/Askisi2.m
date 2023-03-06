I = imread('trapezio.png’); 
I = logical(I(:,:,1));


figure, imshow(I)
I_transform = zeros(size(I,1),size(I,2));


% Αρχικοποίηση Παραμέτρων
angle_rad = deg2rad(47);            
scaleY = 0.6
scaleX = 0.6
translateX = -300;                  
translateY = 400;                   
Sx = 0.8; 
Sy = 0.7;

           
affine_matrix =Matrix_for_translate;

 for i = 1:size(I,1) 
    for j = 1:size(I,2) 
        XY_new = round(affine_matrix*[i;j;1]);
      
       if XY_new(1) > 0 & XY_new(1) < size(I,1) & XY_new(2) > 0 & XY_new(2) < size(I,2)
            I_transform(XY_new(1), XY_new(2)) = I(i,j);
        end        
    end
end
     
figure, imshow(I_transform)
