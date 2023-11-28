function ydot=spl(t,y)
global alpha omega
ydot=[y(2,1);-alpha*y(2,1)]+[0;1]*(-8*omega*sin(omega*t)-2*(omega^2)*cos(omega*t));