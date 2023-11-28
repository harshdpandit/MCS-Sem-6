%Lead Compensator Design
%plot the forward path Bode plot
num=1334;den=[1 4 0];
sys=tf(num,den);
figure(1)
bode(sys)
grid on
%plot the Lead Compensator Bode plot
lambda=6.0348;tau1=0.0071;
numldc=[lambda*tau1 1];denldc=lambda*[tau1 1];
sysldc=tf(numldc,denldc);
figure(2)
bode(sysldc)
grid on
%plot the uncompenstaed closed loop step response 
% versus the compensated closed loop step response
numol=1334;denol=[1 4 1334];
sysol=tf(numol,denol);
figure(3)
step(sysol)
hold on
numcl=1334*lambda*numldc;
dencl=conv(denldc,[1 4 0]);
syscl=tf(numcl,[0 0 numcl]+dencl);
step(syscl)
grid on
