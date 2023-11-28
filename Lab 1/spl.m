function ydot=spl(t,y)
global alpha omega beta
%alpha=4;omega=pi;beta=20;
ydot=[y(2,1);-alpha*y(2,1)-beta*y(1,1)]+[0;1]*(-8*omega*sin(omega*t)-2*(omega^2)*cos(omega*t)+40*cos(omega*t));
