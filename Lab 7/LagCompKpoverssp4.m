%Lag Compensator Design
%plot the forward path Bode plot
num=1334;den=[1 4 0];
sys=tf(num,den);
figure(1)
bode(sys)
grid on
%plot the Lead Compensator Bode plot
beta=58.8844;tau2=1/0.4;
numlgc=[tau2 1];denlgc=[beta*tau2 1];
syslgc=tf(numlgc,denlgc);
figure(2)
bode(syslgc)
grid on
%plot the uncompenstaed closed loop step response 
% versus the compensated closed loop step response
numol=1334;denol=[1 4 1334];
sysol=tf(numol,denol);
figure(3)
step(sysol)
hold on
numcl=1334*numlgc;
dencl=conv(denlgc,[1 4 0]);
syscl=tf(numcl,[0 0 numcl]+dencl);
step(syscl)
grid on
