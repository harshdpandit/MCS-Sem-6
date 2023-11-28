close all;
clc;
resistance= 10000; %Ohms
capacitance= 470 *10^-9; %Farad
inductance= 1; %Henry
%for band pass filter:
num=[resistance*capacitance 0];
den=[inductance*capacitance resistance*capacitance 1];
sys=tf(num,den);
sys
bode(sys);
