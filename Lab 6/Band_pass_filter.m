% for high pass filter 
num_high=[0.035 0];
den_high=[0.035 1];
sys_high=tf(num_high,den_high);
bode(sys_high);

% for low pass filter 
num_low=[1];
den_low=[0.035 1];
sys_low=tf(num_low,den_low);
bode(sys_low);

%for band pass filter

sys_band=sys_low*sys_high;
%sys_band=1/sys_band;
bode(sys_band);
