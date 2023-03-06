function [matrix, center_value] = rand_3d(m)

if mod(m,2)==0
   disp('Please insert an odd value');
   matrix = 0;
   center_value = 0;
   return
else
    matrix = rand(m,m,m);
    center_value = matrix(m/2+0.5,m/2+0.5,m/2+0.5);
end
