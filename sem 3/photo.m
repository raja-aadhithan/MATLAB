po = 5;
o = 0;
a=0;
q =[];

for a = 0 :15 :90
    for o = 0:10:360
        p = po*(cos(a)^2 )* (cos(o - a)^2);
        t = a/15 + 1;
        r = o/10 + 1;
        q(t,r) = p;
    end
end
s = 0:10:360;
plot (s,q(1:1,:))