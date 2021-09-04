clc;clear;close all;
M = 16;
N = 1000;
x = randi([0,1],1,4*N);
yy = [];
yx = [];
for i = 1:4:length(x)
  
  if x(i+3) == 0 
    b = 3;
  else 
    b = 1;
  end

 if x(i+2) == 0
    b = -b;
  end
  
  if x(i+1) == 0
    a =3;
  else 
    a =1;
  end
 
  if x(i) == 0
    a = -a;
  end
  
   yy = [yy a];
   yx = [yx b];
   
   a = 0;
   b = 0;
  
   
end

scatter( yy , yx) ,xlabel('in phase'), ylabel('quadrature'),
 xlim( [ -5 5 ]) , ylim( [ -5 5 ]);
  
 
 