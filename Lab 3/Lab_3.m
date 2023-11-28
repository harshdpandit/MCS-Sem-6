%program to simulate a simple open loop system
%numerical integration
%H036 Harsh Pandit 
%Lab 3
clear all
global omega
omega=12;
yzero=1;ydotzero=2;yint=0;
options=odeset('MaxStep',1e-2);
[t1,y1]=ode45(@spl,[0 25],[yint;yzero;ydotzero],options);
figure(1)
plot(t1,y1(:,2),'blue')
xlabel('time')
ylabel('displ')
grid on
hold on
plot(t1,y1(:,3),'green')
hold on
%
legend('Theta','Thetadot')
%Phase Space plot
figure(2)
plot(y1(:,1),y1(:,2))
xlabel('Theta')
ylabel('Thetadot')