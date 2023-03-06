% Αρχικοποίηση Παραμέτρων

angle_rad = deg2rad(47);            
scaleY = 0.6
scaleX = 0.6
translateX = -300;                  
translateY = 400;                   
Sx = 0.8; 
Sy = 0.7;


% Rotation (Περιστροφή)
Matrix_for_rotation = [ cos(angle_rad)   sin(angle_rad)   0;
                 		   -sin(angle_rad)   cos(angle_rad)   0;
                              0                0          1];


% Mirroring (Κατοπτρισμός)
Matrix_for_reflection = [1  0  0;
                     		 0 -1  0;
                         0  0  1]; 


% Scaling (Kλιμάκωση)
Matrix_for_scaling = [scaleX    0     0;
                         0   scaleY   0;
                         0      0     1];


% Translation (Μετατόπιση)
Matrix_for_translate = [1        0     translateX;
                      	0        1     translateY;
                  	    0        0          1    ];


% Shear Y (Παραμόρφωση στον Κατακόρυφο Άξονα)
Matrix_for_shearY = [1       0     0;
                     Sy      1     0;
                     0       0     1];


% Shear Χ (Παραμόρφωση στον Οριζόντιο Άξονα)
Matrix_for_shearX = [1      0     0;
                     0      1     0;
                     0      Sx    1]; 
