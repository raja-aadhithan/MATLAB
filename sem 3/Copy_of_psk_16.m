clc;clear;close all;
N = 1000;
i = randi([0,1],1,4*N);
yy = [];
for x = 1:4:length(i)
  
 if     i(x)==0 && i(x+1)==0 && i(x+2)==0 && i(x+3)==0
     s= 0;
 elseif i(x)==0 && i(x+1)==0 && i(x+2)==0 && i(x+3)==1
     s= 1;
 elseif i(x)==0 && i(x+1)==0 && i(x+2)==1 && i(x+3)==0
     s= 2;
 elseif i(x)==0 && i(x+1)==0 && i(x+2)==1 && i(x+3)==1
     s= 3;
 elseif i(x)==0 && i(x+1)==1 && i(x+2)==1 && i(x+3)==0
     s= 4;
 elseif i(x)==0 && i(x+1)==1 && i(x+2)==1 && i(x+3)==1
     s= 5;
 elseif i(x)==0 && i(x+1)==1 && i(x+2)==0 && i(x+3)==0
     s= 6;
 elseif i(x)==0 && i(x+1)==1 && i(x+2)==0 && i(x+3)==1
     s= 7;
 elseif i(x)==1 && i(x+1)==1 && i(x+2)==0 && i(x+3)==0
     s= 8;
 elseif i(x)==1 && i(x+1)==1 && i(x+2)==0 && i(x+3)==1
     s= 9;
 elseif i(x)==1 && i(x+1)==1 && i(x+2)==1 && i(x+3)==0
     s= 10;
 elseif i(x)==1 && i(x+1)==1 && i(x+2)==1 && i(x+3)==1
     s= 11;
 elseif i(x)==1 && i(x+1)==0 && i(x+2)==1 && i(x+3)==0
     s= 12;
 elseif i(x)==1 && i(x+1)==0 && i(x+2)==1 && i(x+3)==1
     s= 13;
 elseif i(x)==1 && i(x+1)==0 && i(x+2)==0 && i(x+3)==0
     s= 14;
 elseif i(x)==1 && i(x+1)==0 && i(x+2)==0 && i(x+3)==1
     s= 15;
 end
 th = s *22.5;
 p = cosd(th) + j *sind(th);
 yy=[yy p];
   
end

scatterplot( yy ) ,xlabel('in phase'), ylabel('quadrature'),grid("on"),
 xlim( [ -1.2 1.2 ]) , ylim( [ -1.2 1.2 ]);
 EbN0dB=20 ;
 EbN0=10^(EbN0dB/10);
 n=(1/sqrt(2))*[randn(1,length(yy))+1j*randn(1,length(yy))];
 sigma=sqrt(1/((log2(16))*EbN0));
 r = yy +sigma*n;
 scatterplot(r)
 