% for low pass filter 
close all;
clc;
resistance= 10000; %Ohms
capacitance= 470 *10^-9; %Farad
inductance= 1; %Henry
num=[1];
den=[resistance*capacitance 1];
sys=tf(num,den);
sys
bode(sys);
