I_rgb = imread('pool.png’); 
IR = I_rgb(:,:,1); 

               
Gx = [1  0 -1; +2  0  -2;  1  0 -1]; 
Gy = [1  2  1;  0  0   0; -1 -2 -1];

               
I_grad_x = conv2(IR,Gx); 
I_grad_y = conv2(IR,Gy);                
               
I_grad = sqrt(I_grad_x.^2 + I_grad_y.^2); 
               
               
figure, imshow(uint8(I_grad_x)) 
figure, imshow(uint8(I_grad_y))
 
figure, imshow(uint8(I_grad))

               
[Gmag, Gdir] = imgradient(IR,'sobel');
figure, imshow(uint8(Gmag))
 
