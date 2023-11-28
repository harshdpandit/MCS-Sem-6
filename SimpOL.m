%program to simulate a simple open loop system
%numerical integration
clear all
global alpha omega
alpha=4;omega=10;
yzero=2;ydotzero=0;
options=odeset('MaxStep',1e-2);
[t1,y1]=ode45(@spl,[0 25],[yzero;ydotzero],options);
figure(1)
plot(t1,y1(:,1),'blue')
xlabel('time')
ylabel('displ')
grid on
hold on
plot(t1,y1(:,2),'green')
hold on
%
legend('Theta','Thetadot')
%Phase Space plot
figure(2)
plot(y1(:,1),y1(:,2))
xlabel('Theta')
ylabel('Thetadot')