function dd=day_diff(m1,d1,m2,d2)
    
if (isscalar(m1)&&  isscalar(d1) && isscalar(m2) && isscalar(d2)&&(mod(m1,1)==0) && (mod(d1,1)==0)&& (mod(m2,1)==0)&& (mod(d2,1)==0))

if((m1==2 && d1>28)||( m2==2 && d2>28)||(m1==11 && d1>30)||( m2==11 && d2>30)||(m1==1 && d1>31)||( m2==1 && d2>31)...
    || (m1==6 && d1>30)||( m2==6 && d2>30)||(m1==7 && d1>31)||( m2==7 && d2>31)||(m1==8 && d1>31)||( m2==8 && d2>31)...
    ||(m1==9 && d1>30)||( m2==9 && d2>30)||(m1==10 && d1>31)||( m2==10 && d2>31)||(m1==3 && d1>31)||( m2==3 && d2>31)...
    ||(m1==0 || d1==0)||( m2==0 || d2==0)||(m1<0 || d1<0)||( m2<0 || d2<0))

    dd=-1;
    return;
    
else
  
M=[31 28 31 30 31 30 31 31 30 31 30 31];

b1=d1+ sum(M(1:(m1-1)))
b2=d2+sum(M(1:(m2-1)))
dd=abs(b1-b2);


end;
else
dd=-1;
    return;
end


