% Metatroph xrvmatwn
function I_HSV = HSV(I_RGB)

I_HSV = zeros(size(I_RGB,1),size(I_RGB,2),size(I_RGB,3));

% Ypologismos toy 
for i=1:size(I_RGB,1)
    for j=1:size(I_RGB,2)
        rgb = double([I_RGB(i,j,1) I_RGB(i,j,2) I_RGB(i,j,3)]);
        rgb_tonos = double(rgb./255);
        Cmax = max(rgb_tonos);
        Cmin = min(rgb_tonos);
        Delta = Cmax - Cmin;
        
        % Ypologismos toy H
        if Cmax == rgb_tonos(1)
            H = 60*(mod((rgb_tonos(2)-rgb_tonos(3))/Delta,6));
        elseif Cmax == rgb_tonos(2)
            H = 60*((rgb_tonos(3)-rgb_tonos(1))/Delta) + 2;
        elseif Cmax == rgb_tonos(3)
            H = 60*((rgb_tonos(1)-rgb_tonos(2))/Delta) + 4;
        elseif Delta == 0
            H = 0;
        end
        I_HSV(i,j,1) = H;
        
        % Ypologismos toy S
        if Cmax == 0
            S = 0;
        else
            S = double(Delta/Cmax);
        end
        I_HSV(i,j,2) = S;
        
        % Ypologismos toy V
        V = Cmax
        I_HSV(i,j,3) = Cmax;
    end
end

% ---- Command Window ----
I = imread('lena.png');
I_hsv_custom = HSV(I_rgb);
figure, imshow(I_hsv_custom)
