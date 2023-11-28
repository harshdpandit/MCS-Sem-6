function ydot=spl(t,y)
global alpha omega
%alpha=4;omega=6;
ydot=[y(2,1);-22*y(2,1)-120*y(1,1)]+[0;1]*(48*sin(omega*t)+9*omega*cos(omega*t)...
    -18*omega*sin(omega*t)+19*18*cos(omega*t)+104*3*sin(omega*t));