% for high pass filter 
capacitence=474*10^(-9);
resistance=10000;
num=[capacitence*resistance 0];
den=[capacitence*resistance 1];
sys=tf(num,den);
bode(sys);