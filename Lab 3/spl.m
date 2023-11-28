function ydot=spl(t,y)
global omega
%omega=12;
ydot=[0 1 0; 0 0 1;-4032 -756 -48]*[y(1,1);y(2,1);y(3,1)]+[0;0;1]*(748*4*sin(omega*t)+45*48*cos(omega*t)-4032*cos(omega*t)/3 +...
    -4*(omega^2)*sin(omega*t)+3*48*cos(omega*t)+16*4*sin(omega*t));