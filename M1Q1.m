%Lead Compensator Design
%plot the forward path Bode plot
num=17772.4*3;den=[1 3 16];
sys=tf(num,den);
figure(1)
bode(sys)
grid on
%plot the Lead Compensator Bode plot
lambda=17.61;tau1=0.0005038;
numldc=[lambda*tau1 1];denldc=lambda*[tau1 1];
sysldc=tf(numldc,denldc);
figure(2)
bode(sysldc)
grid on
%plot the uncompenstaed closed loop step response 
% versus the compensated closed loop step response
numol=3*17772.4;denol=[1 3 16+(3*17772.4)];
sysol=tf(numol,denol);
figure(3)
step(sysol)
hold on
numcl=3*17772.4*lambda*numldc/3;
dencl=conv(denldc,[1 3 16]);
syscl=tf(numcl,[0 0 numcl]+dencl);
step(syscl)
grid on
