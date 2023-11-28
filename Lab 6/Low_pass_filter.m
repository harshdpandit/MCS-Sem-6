% for low pass filter 
% capacitence is 474 nano F
num=[1];
capacitence=474*10^(-9);
resistance=1000;
den=[capacitence*resistance 1];
sys=tf(num,den);
bode(sys);
